<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Settings;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function index()
    {
        $data['adminSettings'] = Settings::all()->sortBy('settings_must');

        return view('backend.settings.index', compact('data'));
    }

    public function sortable()
    {
        foreach ($_POST['item'] as $key => $value) {
            $settings = Settings::find(intval($value));
            $settings->settings_must = intval($key);
            $settings->save();
        }
        echo true;
    }

    public function destroy($id)
    {
        $setting = Settings::find($id);
        if ($setting->delete()) {
            return back()->with('success', 'İşlem Başarılı');
        }
        return back()->with('error', 'İşlem Başarısız');
    }

    public function edit($id)
    {
        $setting = Settings::where('id', $id)->first();
        return view('backend.settings.edit')->with('setting', $setting);
    }

    public function update(Request $request, $id)
    {
        if ($request->hasFile('settings_value')){
            $request->validate([
                'settings_value'=>'required|image|mimes:jpg,jpeg,png|max:2048'
            ]);
            $fileName=uniqid().'.'.$request->settings_value->getClientOriginalExtension();
            $request->settings_value->move(public_path('images/settings'),$fileName);
            $request->settings_value=$fileName;
        }

        $setting = Settings::Where('id', $id)->update(
            [
                'settings_value' => $request->settings_value,
            ]
        );
        if ($setting) {
            $path='images/settings/'.$request->old_file;
            if (file_exists($path)){
                @unlink(public_path($path));
            }
            return back()->with('success', 'Düzenleme işlemi başarılı');
        }
        return back()->with('error', 'Düzenleme işlemi başarısız');
    }
}

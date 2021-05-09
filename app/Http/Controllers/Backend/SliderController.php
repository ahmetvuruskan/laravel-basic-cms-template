<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Sliders;
use Illuminate\Support\Str;

class SliderController extends Controller
{

    public function index()
    {
        $data['slider'] = Sliders::all()->sortBy('slider_must');
        return view('backend.sliders.index', compact('data'));
    }


    public function create()
    {
        return view('backend.sliders.createslider');
    }


    public function store(Request $request)
    {
        $request->validate([
            'slider_url' => 'active_url',
            'slider_content' => 'required',
            'slider_title' => 'required|min:5'
        ]);

        if (strlen($request->slider_slug) > 3) {
            $slug = Str::slug($request->slider_slug);
        } else {
            $slug = Str::slug($request->slider_title);
        }

        if ($request->hasFile('slider_file')) {
            $request->validate([
                'slider_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->slider_file->getClientOriginalExtension();
            $request->slider_file->move(public_path('images/sliders'), $fileName);
        } else {
            $fileName = null;
        }


        $slider = Sliders::insert(
            [
                'slider_title' => $request->slider_title,
                'slider_slug' => $slug,
                'slider_url' => $request->slider_url,
                'slider_file' => $fileName,
                'slider_content' => $request->slider_content,
                'slider_status' => $request->slider_status
            ]
        );
        if ($slider) {
            return redirect(route('slider.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function show($id)
    {

    }

    public function edit($id)
    {
        $slider = Sliders::where('id', $id)->first();
        return view('backend.sliders.editslider')->with('slider', $slider);
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'slider_url' => 'active_url',
            'slider_content' => 'required',
            'slider_title' => 'required|min:5'
        ]);
        if (strlen($request->slider_slug) > 3) {
            $slug = Str::slug($request->slider_slug);
        } else {
            $slug = Str::slug($request->slider_title);
        }

        if ($request->hasFile('slider_file')) {
            $request->validate([
                'slider_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->slider_file->getClientOriginalExtension();
            $request->slider_file->move(public_path('images/sliders'), $fileName);
            $slider = Sliders::where('id', $id)->update(
                [
                    'slider_title' => $request->slider_title,
                    'slider_slug' => $slug,
                    'slider_url' => $request->slider_url,
                    'slider_file' => $fileName,
                    'slider_content' => $request->slider_content,
                    'slider_status' => $request->slider_status
                ]
            );
            $path = 'images/sliders/' . $request->old_file;
            if (file_exists($path)) {
                @unlink(public_path($path));
            }
        } else {
            $slider = Sliders::where('id', $id)->update(
                [
                    'slider_title' => $request->slider_title,
                    'slider_slug' => $slug,
                    'slider_url' => $request->slider_url,
                    'slider_content' => $request->slider_content,
                    'slider_status' => $request->slider_status
                ]
            );
        }

        if ($slider) {

            return redirect(route('slider.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function destroy($id)
    {
        $slider = Sliders::find(intval($id));
        if ($slider->delete()) {
            return 1;
        }
        return 0;
    }

    public function sortable()
    {
        foreach ($_POST['item'] as $key => $value) {
            $slider = Sliders::find(intval($value));
            $slider->slider_must = intval($key);
            $slider->save();
        }
        echo true;
    }
}

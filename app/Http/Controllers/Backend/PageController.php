<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pages;
use Illuminate\Support\Str;

class PageController extends Controller
{

    public function index()
    {
        $data['page'] = Pages::all()->sortBy('page_must');

        return view('backend.pages.index', compact('data'));
    }


    public function create()
    {
        return view('backend.pages.createpage');
    }


    public function store(Request $request)
    {
        $request->validate([

            'page_content' => 'required',
            'page_title' => 'required|min:5'
        ]);

        if (strlen($request->page_slug) > 3) {
            $slug = Str::slug($request->page_slug);
        } else {
            $slug = Str::slug($request->page_title);
        }

        if ($request->hasFile('page_file')) {
            $request->validate([
                'page_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->page_file->getClientOriginalExtension();
            $request->page_file->move(public_path('images/pages'), $fileName);
        } else {
            $fileName = null;
        }


        $page = Pages::insert(
            [
                'page_title' => $request->page_title,
                'page_slug' => $slug,//$request->page_slug,//todo seodan geçir...
                'page_file' => $fileName,
                'page_content' => $request->page_content,
                'page_status' => $request->page_status
            ]
        );
        if ($page) {
            return redirect(route('page.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function show($id)
    {

    }

    public function edit($id)
    {
        $page = Pages::where('id', $id)->first();
        return view('backend.pages.editpage')->with('page', $page);
    }


    public function update(Request $request, $id)
    {
        $request->validate([

            'page_content' => 'required',
            'page_title' => 'required|min:5'
        ]);
        if (strlen($request->page_slug) > 3) {
            $slug = Str::slug($request->page_slug);
        } else {
            $slug = Str::slug($request->page_title);
        }

        if ($request->hasFile('page_file')) {
            $request->validate([
                'page_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->page_file->getClientOriginalExtension();
            $request->page_file->move(public_path('images/pages'), $fileName);
            $page = Pages::where('id', $id)->update(
                [
                    'page_title' => $request->page_title,
                    'page_slug' => $slug,
                    'page_file' => $fileName,
                    'page_content' => $request->page_content,
                    'page_status' => $request->page_status
                ]
            );
            $path = 'images/pages/' . $request->old_file;
            if (file_exists($path)) {
                @unlink(public_path($path));
            }
        } else {
            $page = Pages::where('id', $id)->update(
                [
                    'page_title' => $request->page_title,
                    'page_slug' => $slug,

                    'page_content' => $request->page_content,
                    'page_status' => $request->page_status
                ]
            );
        }

        if ($page) {

            return redirect(route('page.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function destroy($id)
    {
        $page = Pages::find(intval($id));
        if ($page->delete()) {
            return 1;
        }
        return 0;
    }

    public function sortable()
    {
        foreach ($_POST['item'] as $key => $value) {
            $page = Pages::find(intval($value));
            $page->page_must = intval($key);
            $page->save();
        }
        echo true;
    }
}

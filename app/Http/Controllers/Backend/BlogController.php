<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blogs;
use Illuminate\Support\Str;

class BlogController extends Controller
{

    public function index()
    {
        $data['blog'] = Blogs::all()->sortBy('blog_must');

        return view('backend.blogs.index', compact('data'));
    }


    public function create()
    {
        return view('backend.blogs.createblog');
    }


    public function store(Request $request)
    {
        $request->validate([

            'blog_content' => 'required',
            'blog_title' => 'required|min:5'
        ]);

        if (strlen($request->blog_slug) > 3) {
            $slug = Str::slug($request->blog_slug);
        } else {
            $slug = Str::slug($request->blog_title);
        }

        if ($request->hasFile('blog_file')) {
            $request->validate([
                'blog_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->blog_file->getClientOriginalExtension();
            $request->blog_file->move(public_path('images/blogs'), $fileName);
        } else {
            $fileName = null;
        }


        $blog = Blogs::insert(
            [
                'blog_title' => $request->blog_title,
                'blog_slug' => $slug,//$request->blog_slug,//todo seodan geçir...
                'blog_file' => $fileName,
                'blog_content' => $request->blog_content,
                'blog_status' => $request->blog_status
            ]
        );
        if ($blog) {
            return redirect(route('blog.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function show($id)
    {

    }

    public function edit($id)
    {
        $blog = Blogs::where('id', $id)->first();
        return view('backend.blogs.editblog')->with('blog', $blog);
    }


    public function update(Request $request, $id)
    {
        $request->validate([

            'blog_content' => 'required',
            'blog_title' => 'required|min:5'
        ]);
        if (strlen($request->blog_slug) > 3) {
            $slug = Str::slug($request->blog_slug);
        } else {
            $slug = Str::slug($request->blog_title);
        }

        if ($request->hasFile('blog_file')) {
            $request->validate([
                'blog_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->blog_file->getClientOriginalExtension();
            $request->blog_file->move(public_path('images/blogs'), $fileName);
            $blog = Blogs::where('id', $id)->update(
                [
                    'blog_title' => $request->blog_title,
                    'blog_slug' => $slug,
                    'blog_file' => $fileName,
                    'blog_content' => $request->blog_content,
                    'blog_status' => $request->blog_status
                ]
            );
            $path = 'images/blogs/' . $request->old_file;
            if (file_exists($path)) {
                @unlink(public_path($path));
            }
        } else {
            $blog = Blogs::where('id', $id)->update(
                [
                    'blog_title' => $request->blog_title,
                    'blog_slug' => $slug,

                    'blog_content' => $request->blog_content,
                    'blog_status' => $request->blog_status
                ]
            );
        }

        if ($blog) {

            return redirect(route('blog.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function destroy($id)
    {
        $blog = Blogs::find(intval($id));
        if ($blog->delete()) {
            return 1;
        }
        return 0;
    }

    public function sortable()
    {
        foreach ($_POST['item'] as $key => $value) {
            $blog = Blogs::find(intval($value));
            $blog->blog_must = intval($key);
            $blog->save();
        }
        echo true;
    }
}

<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blogs;


class FeBlogController extends Controller
{
    public function index()
    {
        $data['blog'] = Blogs::all()->sortBy('blog_must');
        return view('frontend.blog.index', compact('data'));
    }

    public function detail($slug)
    {
        $blogList=Blogs::limit(5)->orderBy('blog_must','desc')->get();
        $blog=Blogs::where('blog_slug',$slug)->first();
        return view('frontend.blog.detail',compact('blog','blogList'));
    }

}

<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pages;

class FePageController extends Controller
{
    public function detail($slug)
    {
        $pageList=Pages::limit(5)->orderBy('page_must','desc')->get();
        $page=Pages::where('page_slug',$slug)->first();
        return view('frontend.page.detail',compact('page','pageList'));
    }

}

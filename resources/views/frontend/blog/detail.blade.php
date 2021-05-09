@extends('frontend.layout')
@section('title','Blog Detay')
@section('content')
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">{{$blog->blog_title}}</h1>


        <div class="row">

            <!-- Post Content Column -->
            <div class="col-lg-8">

                <!-- Preview Image -->
                <img class="img-fluid rounded" src="/images/pages/{{$blog->blog_file}}" alt="">

                <hr>

                <!-- Date/Time -->
                <p> Yayınlama zamanı {{$blog->created_at->format('d-m-Y h:i') }}</p>

                <hr>

                <!-- Post Content -->
                <p class="lead">{!!$blog->blog_content  !!}</p>


                <hr>


            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-4">


                <div class="card my-4">
                    <h5 class="card-header">Popüler Bloglar</h5>
                    <div class="card-body">
                        <ul class="list-group">
                            @foreach($blogList as $list)
                                <a  href="{{route('feblog.detail',['slug'=>$list->blog_slug])}}"> <li  class="list-group-item">{{$list->blog_title}}</li></a>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div>

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
@endsection
@section('css') @endsection
@section('jss') @endsection

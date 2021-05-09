@extends('frontend.layout')
@section('title','Sayfa detay')
@section('content')
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">{{$page->page_title}}</h1>


        <div class="row">

            <!-- Post Content Column -->
            <div class="col-lg-8">

                <!-- Preview Image -->
                <img class="img-fluid rounded" src="/images/pages/{{$page->page_file}}" alt="">

                <hr>

                <!-- Date/Time -->
                <p> Yayınlama zamanı {{$page->created_at->format('d-m-Y h:i') }}</p>

                <hr>

                <!-- Post Content -->
                <p class="lead">{!!$page->page_content  !!}</p>


                <hr>


            </div>

            <!-- Sidebar Widgets Column -->
            <div class="col-md-4">


                <div class="card my-4">
                    <h5 class="card-header">Popüler Bloglar</h5>
                    <div class="card-body">
                        <ul class="list-group">
                            @foreach($pageList as $list)
                                <a  href="{{route('fepage.index',['slug'=>$list->page_slug])}}"> <li  class="list-group-item">{{$list->page_title}}</li></a>
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

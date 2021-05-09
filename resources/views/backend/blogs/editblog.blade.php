@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Blog Düzenele</h3>
            </div>
            <div class="box-body">
                <form action="{{route('blog.update',$blog->id)}}" enctype="multipart/form-data" method="post">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control"  name="blog_file" type="file">
                            </div>
                        </div>
                    </div>
                    @isset($blog->blog_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/blogs/{{$blog->blog_file}}" alt="">
                                </div>
                            </div>
                            @endisset
                            <div class="form-group">
                                <label>Başlık</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$blog->blog_title}}"
                                               name="blog_title">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Slug</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$blog->blog_slug}}"
                                               name="blog_slug">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>İçerik</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <textarea class="form-control" id="ckeditor"
                                                  name="blog_content">{{$blog->blog_content}}</textarea>
                                        <script>
                                            CKEDITOR.replace('ckeditor');
                                        </script>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Durum</label>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <select name="blog_status" class="form-control">
                                                @if($blog->blog_status)
                                                    <option selected value="1">Aktif</option>
                                                    <option value="0">Pasif</option>
                                                @else
                                                    <option value="1">Aktif</option>
                                                    <option selected value="0">Pasif</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <input type="hidden" name="old_file" value="{{$blog->blog_file}}">

                                <div align="right" class="box box-footer">
                                    <button type="submit" class="btn btn-success">Yeni Ekle</button>
                                </div>
                            </div>

                </form>
            </div>
        </div>
    </section>

@endsection
@section('css') @endsection
@section('js') @endsection

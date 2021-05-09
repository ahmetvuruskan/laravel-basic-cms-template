@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Slider Düzenele</h3>
            </div>
            <div class="box-body">
                <form action="{{route('slider.update',$slider->id)}}" enctype="multipart/form-data" method="post">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control"  name="slider_file" type="file">
                            </div>
                        </div>
                    </div>
                    @isset($slider->slider_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/sliders/{{$slider->slider_file}}" alt="">
                                </div>
                            </div>
                            @endisset
                            <div class="form-group">
                                <label>Başlık</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$slider->slider_title}}"
                                               name="slider_title">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Slug</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$slider->slider_slug}}"
                                               name="slider_slug">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Url</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$slider->slider_url}}"
                                               name="slider_url">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>İçerik</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <textarea class="form-control" id="ckeditor"
                                                  name="slider_content">{{$slider->slider_content}}</textarea>
                                        <script>
                                            CKEDITOR.replace('ckeditor');
                                        </script>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Durum</label>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <select name="slider_status" class="form-control">
                                                @if($slider->slider_status)
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

                                <input type="hidden" name="old_file" value="{{$slider->slider_file}}">

                                <div align="right" class="box box-footer">
                                    <button type="submit" class="btn btn-success">Kaydet</button>
                                </div>
                            </div>

                </form>
            </div>
        </div>
    </section>

@endsection
@section('css') @endsection
@section('js') @endsection

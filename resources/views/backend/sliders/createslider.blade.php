@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Slider Ekleme</h3>
            </div>
            <div class="box-body">
                <form action="{{route('slider.store')}}" enctype="multipart/form-data" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" required name="slider_file" type="file">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Başlık</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="slider_title">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Slug</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="slider_slug">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>URL</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text"
                                       name="slider_url">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label>İçerik</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <textarea class="form-control" id="ckeditor" name="slider_content"> </textarea>
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
                                        <option selected value="1">Aktif</option>
                                        <option value="0">Pasif</option>
                                    </select>
                                </div>
                            </div>
                        </div>



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

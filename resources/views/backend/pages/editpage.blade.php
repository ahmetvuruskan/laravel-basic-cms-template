@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Sayfa Düzenele</h3>
            </div>
            <div class="box-body">
                <form action="{{route('page.update',$page->id)}}" enctype="multipart/form-data" method="post">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control"  name="page_file" type="file">
                            </div>
                        </div>
                    </div>
                    @isset($page->page_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/pages/{{$page->page_file}}" alt="">
                                </div>
                            </div>
                            @endisset
                            <div class="form-group">
                                <label>Başlık</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$page->page_title}}"
                                               name="page_title">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Slug</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$page->page_slug}}"
                                               name="page_slug">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>İçerik</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <textarea class="form-control" id="ckeditor"
                                                  name="page_content">{{$page->page_content}}</textarea>
                                        <script>
                                            CKEDITOR.replace('ckeditor');
                                        </script>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Durum</label>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <select name="page_status" class="form-control">
                                                @if($page->page_status)
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

                                <input type="hidden" name="old_file" value="{{$page->page_file}}">

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

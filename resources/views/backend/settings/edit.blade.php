@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Settings</h3>
            </div>
            <div class="box-body">
                <form action="{{route('settings.update',['id'=>$setting->id])}}" enctype="multipart/form-data"
                      method="post">
                    @csrf
                    <div class="form-group">
                        <label>Açıklama</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="settings_description"
                                       value="{{$setting->settings_description}}">
                            </div>
                        </div>
                    </div>
                    @if($setting->settings_type=='file')
                        <div class="form-group">
                            <label>Dosya Yükle</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <input class="form-control" required name="settings_value" type="file">
                                </div>
                            </div>
                        </div>
                    @endif

                        <div class="form-group">
                            <label>İçerik</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    @if($setting->settings_type=='text')
                                        <input class="form-control" name="settings_value" required type="text"
                                               value="{{$setting->settings_value}}">
                                    @endif
                                    @if($setting->settings_type=='textarea')
                                        <textarea class="form-control"
                                                  name="settings_value">{{$setting->settings_value}}</textarea>
                                    @endif
                                    @if($setting->settings_type=='ckeditor')
                                        <textarea class="form-control" id="ckeditor"
                                                  name="settings_value">{{$setting->settings_value}}</textarea>
                                    @endif
                                        @if($setting->settings_type=='file')
                                            <img width="100" src="/images/settings/{{$setting->settings_value}}" >
                                        @endif
                                    <script>
                                        CKEDITOR.replace('ckeditor');
                                    </script>
                                </div>
                            </div>
                            @if($setting->settings_type=='file')
                                <input type="hidden" name="old_file" value="{{$setting->settings_value}}" >
                            @endif
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

@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Kullanıcı Ekleme</h3>
            </div>
            <div class="box-body">
                <form action="{{route('user.store')}}" enctype="multipart/form-data" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" required name="user_file" type="file">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Ad Soyad</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="name">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Kullanıcı Adı</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="email">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Şifre</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control" type="password"
                                       name="password">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">

                        <div class="form-group">
                            <label>Durum</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <select name="user_status" class="form-control">
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

@extends('backend.layout')
@section('content')

    <section class="content-header">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Kullanıcı Düzenele</h3>
            </div>
            <div class="box-body">
                <form action="{{route('user.update',$user->id)}}" enctype="multipart/form-data" method="post">
                    @method('PUT')
                    @csrf
                    <div class="form-group">
                        <label>Resim Seç</label>
                        <div class="row">
                            <div class="col-xs-12">
                                <input class="form-control"  name="user_file" type="file">
                            </div>
                        </div>
                    </div>
                    @isset($user->user_file)
                        <div class="form-group">
                            <label>Yüklü Görsel</label>
                            <div class="row">
                                <div class="col-xs-12">
                                    <img width="100" src="/images/users/{{$user->user_file}}" alt="">
                                </div>
                            </div>
                            @endisset
                            <div class="form-group">
                                <label>Ad Soyad</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="text" value="{{$user->name}}"
                                               name="name">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Kullanıcı adı</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="email" value="{{$user->email}}"
                                               name="email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Şifre</label>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <input class="form-control" type="password"  name="password">
                                        <small>Şifreyi değiştirmek istemiyorsanız lütfen boş bırakın!</small>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">


                                <div class="form-group">
                                    <label>Durum</label>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <select name="user_status" class="form-control">
                                                @if($user->user_status)
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

                                <input type="hidden" name="old_file" value="{{$user->user_file}}">

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

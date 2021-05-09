@extends('frontend.layout')
@section('title','İletişim sayfası')
@section('content')
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <h1 class="mt-4 mb-3">Bize Ulaşın
        </h1>

        <hr>
        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-lg-8 mb-4">
                <!-- Embedded Google Map -->
                <div class="col-lg-8 mb-4">
                    <h3>İletişim Formu</h3>
                    @if(session()->has('success'))
                        <div class="alert alert-danger">
                          <p>{{session('success')}}</p>
                        </div>
                    @endif
                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{{$error}}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form method="POST" action="#">
                        @csrf
                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Ad Soyad:</label>
                                <input type="text" class="form-control" placeholder="Ad Soyad" name="name" >
                            </div>
                        </div>

                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Mail:</label>
                                <input type="email" class="form-control" placeholder="Mail adresiniz" name="email">
                            </div>
                        </div>

                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Telefon:</label>
                                <input type="text" class="form-control" placeholder="Telefon numaranız" name="phone">
                            </div>
                        </div>

                        <div class="control-group form-group">
                            <div class="controls">
                                <label>Mesajınız:</label>
                                <textarea class="form-control"  name="message" id="" cols="100"
                                          rows="10"></textarea>
                            </div>
                        </div>


                        <div id="success"></div>
                        <!-- For success/fail messages -->
                        <button type="submit" class="btn btn-primary">Gönder</button>
                    </form>
                </div>
            </div>
            <!-- Contact Details Column -->
            <div class="col-lg-4 mb-4">
                <h3>Adres Bilgileri</h3>
                <p>
                    {!! $adres !!}
                    <br>{{$il}}/{{$ilce}}
                    <br>
                    {{$phone_gsm}}
                    <br>
                    {{$phone_sabit}}
                    <br>
                    {{$mail}}
                </p>

            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->

        <!-- /.row -->

    </div>
@endsection
@section('css') @endsection
@section('jss') @endsection

<!DOCTYPE html>
<html lang="tr">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="{{$description}}">
    <meta name="author" content="">

    <title>@yield('title')</title>

    <!-- Bootstrap core CSS -->
    <link href="/frontend/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/frontend/css/modern-business.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="{{route('home.index')}}">AFV CMS</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="{{route('home.index')}}">Anasayfa</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('feblog.index')}}">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('fepage.index',$slug)}}">Sayfalar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('contact.index')}}">Bize Ulaşın</a>
                </li>





            </ul>
        </div>
    </div>
</nav>

@yield('content')

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">{{$footer}}</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="/frontend/vendor/jquery/jquery.min.js"></script>
<script src="/frontend/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/custom.js"></script>
</body>

</html>

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- Outbuster External CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap"
        rel="stylesheet" type="text/css" media="all">
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="{!! url('assets/css/owl.carousel.css') !!}">
    <link rel="stylesheet" href="{!! url('assets/css/styles.css') !!}" type="text/css" media="all">
</head>

@yield('body')

<!-- outbusters Header -->
<header>
    <div class="header-main">
        <div class="header-left-part">
            <a href="#0" class="logo-wrap">
                <img src="assets/images/logo.png" alt="main-logo">
            </a>
            <nav>
                <ul class="navigation">
                    <li class="menu-item"><a href="{{ route('category.index') }}">Tous les films</a></li>
                    <li class="menu-item down-arrow"><a href="#0">Nos catégories</a>
                        <ul class="dropdown">
                            @foreach (App\Models\MpArtworkCategory::get() as $item)
                                <li><a href="#0">{!! $item->category !!}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="menu-item down-arrow"><a href="#0">Nos tags</a>
                        <ul class="dropdown">
                            @foreach (App\Models\MpArtworkTag::get() as $item)
                                <li><a href="#0">{!! $item->tag !!}</a></li>
                            @endforeach
                        </ul>
                    </li>
                    <li class="menu-item down-arrow"><a href="#0">Aides</a>
                        <ul class="dropdown">
                            <li><a href="#0">Mon abonnement</a></li>
                            <li><a href="#0">Mon parrainage</a></li>
                            <li><a href="#0">Mon profil</a></li>
                            <li><a href="#0">Ma playlist</a></li>
                            <li><a href="#0">Mes paiements</a></li>
                            <li><a href="#0">Mes téléchargements</a></li>
                            <li><a href="#0">Gestion des profils</a></li>
                            <li><a href="#0">Se déconnecter</a></li>
                        </ul>
                    </li>
                    <li class="menu-item d-none"><a href="#0" class="btn"><img
                                src=" assets/images/btn-image.png" alt="">ESSAI GRATUIT</a></li>
                    <li class="menu-item d-none"><a href="#0" class="search-btn"><img
                                src="assets/images/search.png" alt="">Recherche</a></li>
                    <li class="menu-item d-none"><a href="#0" class="btn user-login-btn">S’identifier</a></li>
                </ul>
                <button class="close-nav" type="button"><span class="navbar-toggler-icon"></span></button>
            </nav>
        </div>


        @auth
            {{ auth()->user()->username }}
            <ul class="header-right-part">
                <li class="d-block"><a href="#0" class="btn"><img src="{!! url('assets/images/btn-image.png') !!}" alt="">ESSAI
                        GRATUIT</a></li>
                <li class="d-block"><a href="#0" class="search-btn"><img src="{!! url('assets/images/search.png') !!} "
                            alt="">Recherche</a></li>
                <li class="d-block"><a href="#0" class="videos">Mes vidéos</a></li>
                <li><a href="#0" class="bell-btn"><img src="{!! url('assets/images/bell.png') !!}" alt=""><span>9+</span></a>
                </li>
                <li><a href="#0" class="go-to-profile"><img src="{!! url('assets/images/profile-image.png') !!} " alt=""></a>
                    <ul class="profile-option dropdown">
                        <li><a href="#0">Mon abonnement</a></li>
                        <li><a href="#0">Mon parrainage</a></li>
                        <li><a href="#0">Mon profil</a></li>
                        <li><a href="#0">Ma playlist</a></li>
                        <li><a href="#0">Mes paiements</a></li>
                        <li><a href="#0">Mes téléchargements</a></li>
                        <li><a href="#0">Gestion des profils</a></li>
                        <li><a href="{{ route('logout.perform') }}">Se déconnecter</a></li>
                    </ul>
                </li>
                <button class="navbar-toggler" type="button"><span class="navbar-toggler-icon"></span></button>
            </ul>
        @endauth

        @guest
            <ul class="header-right-part">
                <li class="d-block"><a href="#0" class="btn"><img src="assets/images/btn-image.png"
                            alt="">ESSAI
                        GRATUIT</a></li>
                <li class="search d-block"><a href="#0" class="search-btn"><img src="assets/images/search.png"
                            alt="">Recherche</a></li>
                <li class="search d-block"><a href="#0" class="btn user-login-btn">S’identifier</a></li>
                <button class="navbar-toggler" type="button"><span class="navbar-toggler-icon"></span></button>
            </ul>
        @endguest
    </div>
</header>

@yield('content')

<!-- search popup -->
<div class="search-pop popup">
    <h1 class="form-title">Recherche</h1>
    <form class="form">
        <input type="text" class="form-control" name="search" id="search" placeholder="Search">
        <button type="submit" class="form-control btn" name="submit"><img src="assets/images/search.png"
                alt=""></button>
    </form>
</div>

<!-- Outbuster Scripts -->
<script src="{!! url('assets/js/jquery.min.js') !!}"></script>
<script src="{!! url('assets/js/owl.carousel.min.js') !!}"></script>
<script src="{!! url('assets/js/scripts.js') !!}"></script>
<script>
    $(document).ready(function() {
        //Owl Carousel Script
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1.2,
                    nav: true,
                    loop: false
                },
                400: {
                    items: 2,
                    nav: false,
                    loop: false
                },
                650: {
                    items: 3,
                    nav: false,
                    loop: false
                },
                900: {
                    items: 4,
                    nav: true,
                    loop: false,
                    margin: 20
                },
                1600: {
                    items: 5,
                    nav: true,
                    loop: false,
                    margin: 20
                }
            }
        });
    });
</script>
</body>

</html>

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

<body class="profile">

    <!-- Header -->
    <header>
        <div class="header-main">
            <div class="header-left-part">
                <a href="#0" class="logo-wrap">
                    <img src="images/logo.png" alt="main-logo">
                </a>
            </div>
            <ul class="header-right-part">
                <li><a href="#0" class="go-to-profile"><img src="images/profile-image.png" alt=""></a>
                    <ul class="profile-option dropdown">
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
            </ul>
        </div>
    </header>


    <main>
        <!-- my account -->
        <section class="my-account">
            <div class="container">
                <h1 class="section-title">Mon compte</h1>
                <ul class="mobile-menu d-none">
                    <li><a href="#0">Mon abonnement</a></li>
                </ul>
                <ul class="option">
                    <li><a href="#0">Mon abonnement</a></li>
                    <li><a href="#0">Mon parrainage</a></li>
                    <li><a href="#0">Mon profil</a></li>
                    <li><a href="#0">Ma playlist</a></li>
                    <li><a href="#0">Mes paiements</a></li>
                    <li><a href="#0" class="active">Gestion des profils</a></li>
                </ul>

                <div class="content my-subcription11">
                    <div class="status">
                        <h2 class="inner-title">Type d’abonnement</h2>
                        <p>Choisir une formule d’abonnement</p>
                    </div>
                    <div class="plans">
                        <label class="radio-lebel" id="radio">
                            <input type="radio" checked="checked" name="radio">
                            <span class="checkmark"></span>
                            <div class="plan-text">
                                <div class="txt">
                                    <h3 class="plan-title">Formule découverte 7 jours - 3,5 €</h3>
                                    <p>Accès illimités aux films & séries</p>
                                </div>
                                <span class="action" id="action">Choisir cette formule</span>
                            </div>
                        </label>
                        <label class="radio-lebel" id="radio">
                            <input type="radio" name="radio">
                            <span class="checkmark"></span>
                            <div class="plan-text">
                                <div class="txt">
                                    <h3 class="plan-title">Formule mensuelle 30 jours - 9,99 €</h3>
                                    <p>Accès illimités aux films & séries</p>
                                </div>
                                <span class="action" id="action">Choisir cette formule</span>
                            </div>
                        </label>
                        <label class="radio-lebel" id="radio">
                            <input type="radio" name="radio">
                            <span class="checkmark"></span>
                            <div class="plan-text">
                                <div class="txt">
                                    <h3 class="plan-title">Formule annuelle 365 jours - 99 €</h3>
                                    <p>Accès illimités aux films & séries</p>
                                </div>
                                <span class="action" id="action">Choisir cette formule</span>
                            </div>
                        </label>
                        <div class="btn-wrap">
                            <a class="btn btn-gray" href="#0">Annuler</a>
                            <a href="#0" class="btn btn-black">Valider ma formule</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>




    <!-- Outbuster Scripts -->
    <script src="{!! url('assets/js/jquery.min.js') !!}"></script>
    <script src="{!! url('assets/js/owl.carousel.min.js') !!}"></script>
    <script src="{!! url('assets/js/scripts.js') !!}"></script>
</body>

</html>

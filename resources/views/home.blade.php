@extends('layouts.app')
@section('content')
    <!-- outbusters Header -->
    <header>
        <div class="header-main">
            <div class="header-left-part">
                <a href="#0" class="logo-wrap">
                    <img src="assets/images/logo.png" alt="main-logo">
                </a>
                <nav>
                    <ul class="navigation">
                        <li class="menu-item"><a href="#0">Tous les films</a></li>
                        <li class="menu-item down-arrow"><a href="#0">Nos catégories</a>
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
                        <li class="menu-item down-arrow"><a href="#0">Nos tags</a>
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
            <ul class="header-right-part">
                <li class="d-block"><a href="#0" class="btn"><img src="assets/images/btn-image.png"
                            alt="">ESSAI
                        GRATUIT</a></li>
                <li class="search d-block"><a href="#0" class="search-btn"><img src="assets/images/search.png"
                            alt="">Recherche</a></li>
                <li class="search d-block"><a href="#0" class="btn user-login-btn">S’identifier</a></li>
                <button class="navbar-toggler" type="button"><span class="navbar-toggler-icon"></span></button>
            </ul>
        </div>
    </header>

    <!-- outbuster Main -->
    <main>

        <div class="views">
            <a href="javascript:void(0);" class="list-view"><span>&nbsp;</span></a>
            <a href="javascript:void(0);" class="grid-view"><span>&nbsp;</span></a>
        </div>

        <!-- banner -->
        <div class="banner-wrap">
            <div class="banner">
                <div class="img-wrap"><img src="assets/images/banner-img.jpg" alt="banner" class="banner-image"></div>
                <div class="banner-text">
                    <div class="small-title"> <img src="assets/images/small-title-logo.png" alt="title-logo">FILM</div>
                    <h1 class="title">Bruna<br> Surfistinha</h1>
                    <h2 class="sub-title">Confessions d'une call girl surfeuse - VO</h1>
                        <p>Adoptée par une famille aisée contre laquelle elle se rebelle à l’âge de 17 ans, Raquel quitte
                            tout, y compris ses études, pour devenir call girl sous le prénom de Bruna. Comme certains de
                            ses clients lui trouvent une allure de surfeuse, elle adopte le patronyme de Surfistinha et
                            raconte son expérience dans un blog qui fait sensation.</p>
                        <div class="btn-wrap">
                            <a href="#0" class="btn-style2">PLAY <img src="assets/images/play-btn.png" alt="play">
                            </a>
                            <a href="#0" class="btn-style2">INFORMATIONS <img src="assets/images/info-btn.png"
                                    alt="info"> </a>
                        </div>
                </div>
            </div>
        </div>

        <!-- popular-videos slider -->
        <section class="popular-videos">
            <div class="slider slider1">
                <div class="section-title">
                    <h2>Populaire sur OUT<span>BUSTER</span></h2>
                </div>
                <div class="owl-carousel owl-theme">
                    <div class="item"><img src="assets/images/slider-img1.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img2.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img3.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img4.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img5.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img6.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img1.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img2.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img3.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img4.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img5.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img6.jpg" alt="slider"></div>
                </div>
                <div class="owl-carousel owl-theme">
                    <div class="item"><img src="assets/images/slider-img1.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img2.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img3.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img4.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img5.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img6.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img1.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img2.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img3.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img4.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img5.jpg" alt="slider"></div>
                    <div class="item"><img src="assets/images/slider-img6.jpg" alt="slider"></div>
                </div>
            </div>
        </section>
    </main>


    <!-- login popup-->
    <div class="login-pop popup">
        <h1 class="form-title">S’identifier</h1>
        <form name="myForm" class="form">
            <input type="text" class="form-control" required="" name="email" id="email"
                placeholder="Email">
            <input type="password" class="form-control" required="" name="password" id="password"
                placeholder="Mot de passe">
            <a href="#0" class="forgot-password">Mot de passe oublié ?</a>
            <button type="submit" class="form-control btn" name="submit">S’identifier</button>
            <div class="form-group">
                <div class="checkbox-div">
                    <input class="custom-checkbox" id="identity" type="checkbox" value="value1">
                    <label class="checkbox-lebel" for="identity">Se souvenir de moi</label>
                </div>
                <a href="#0" class="help">besoin d'aide ?</a>
            </div>
        </form>
        <p>Première visite sur OUTBUSTER ?<br> Nous vous invitons à vous inscrire</p>
        <a href="#0" class="btn inscription-btn">S’inscrire</a>
    </div>


    <!-- sign-up popup-->
    <div class="signup-pop popup">
        <h1 class="form-title">Inscription OUTBUSTER</h1>
        <form name="myForm" class="form">
            <div class="row">
                <div class="col-12">
                    <input type="text" class="form-control" required="" name="email" id="name"
                        placeholder="Pseudo" autocomplete="off">
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" required="" name="email" id="email"
                        placeholder="email">
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" required="" name="cEmail" id="cEmail"
                        placeholder="Confirmation - Email">
                </div>
                <div class="col-6">
                    <input type="password" class="form-control" required="" name="password" id="password"
                        placeholder="Mot de passe">
                </div>
                <div class="col-6">
                    <input type="text" class="form-control" name="cPassword" id="cPassword"
                        placeholder="Confirmation - Mot de passe">
                </div>
            </div>
            <p>Cette page est protégée par Google reCAPTCHA <br>pour nous assurer que vous n'êtes pas un robot. </p>
            <button type="submit" class="form-control btn" name="submit">S’identifier</button>
        </form>
    </div>

    <!-- search popup -->
    <div class="search-pop popup">
        <h1 class="form-title">Recherche</h1>
        <form class="form">
            <input type="text" class="form-control" name="search" id="search" placeholder="Search">
            <button type="submit" class="form-control btn" name="submit"><img src="assets/images/search.png"
                    alt=""></button>
        </form>
    </div>
@endsection

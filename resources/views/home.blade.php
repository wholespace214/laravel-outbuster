@extends('layouts.app')

@section('body')

    <body class="home">
    @endsection

    @section('content')
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
                        <h1 class="title"> {!! $film->film_original_title !!} </h1>
                        <h2 class="sub-title"> {!! $film->film_tagline !!} </h1>
                            <p> {!! $film->film_synopsis !!} </p>
                            <div class="btn-wrap">
                                <a href="#0" class="btn-style2">PLAY <img src="assets/images/play-btn.png"
                                        alt="play">
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
            <form method="post" name="myForm" class="form" action="{{ route('login.perform') }}">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <input type="text" class="form-control" required="" name="username" id="email"
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
            <form name="myForm" method="post" class="form" action="{{ route('register.perform') }}">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="row">
                    <div class="col-12">
                        <input type="text" class="form-control" required="" name="username" id="name"
                            placeholder="Pseudo" autocomplete="off">
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" required="" name="email" id="email"
                            placeholder="email">
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" required="" name="email_confirmation"
                            id="cEmail" placeholder="Confirmation - Email">
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" required="" name="password" id="password"
                            placeholder="Mot de passe">
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" name="password_confirmation" id="cPassword"
                            placeholder="Confirmation - Mot de passe">
                    </div>
                </div>
                <p>Cette page est protégée par Google reCAPTCHA <br>pour nous assurer que vous n'êtes pas un robot. </p>
                <button type="submit" class="form-control btn" name="submit">S’identifier</button>
            </form>
        </div>
    @endsection

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
            {{-- <div id="errors-list"></div> --}}
            <form method="post" name="myForm" id="login" class="form" action="{{ route('login.perform') }}">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <input type="text" class="form-control" required="" name="email" id="email"
                    placeholder="Email">
                <input type="password" class="form-control" required="" name="password" id="password"
                    placeholder="Mot de passe">
                <a href="#0" class="forgot-password forgotten-password-btn">Mot de passe oublié ?</a>
                <button type="submit" class="form-control btn" name="submit">S’identifier</button>
                <div class="form-group">
                    <div class="checkbox-div">
                        <input class="custom-checkbox" id="identity" type="checkbox" name="remember" value="1">
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
            {{-- <div id="register-errors-list"></div> --}}
            <form name="myForm" method="post" id="register" class="form" action="{{ route('register.perform') }}">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="row">
                    <div class="col-12">
                        <input type="text" class="form-control" required="" name="username" id="rusername"
                            placeholder="Pseudo" autocomplete="off">
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" required="" name="email" id="remail"
                            placeholder="email">
                    </div>
                    <div class="col-6">
                        <input type="text" class="form-control" required="" name="email_confirmation"
                            id="remail_confirmation" placeholder="Confirmation - Email">
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" required="" name="password" id="rpassword"
                            placeholder="Mot de passe">
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" name="password_confirmation"
                            id="rpassword_confirmation" placeholder="Confirmation - Mot de passe">
                    </div>
                </div>
                <p>Cette page est protégée par Google reCAPTCHA <br>pour nous assurer que vous n'êtes pas un robot. </p>
                <button type="submit" class="form-control btn" name="submit">S’identifier</button>
            </form>
        </div>

        <!-- forgotten password popup-->
        <div class="forgotten-password-pop popup">
            <h1 class="form-title">Mot de passe oublié ?</h1>
            <p class="forgotten-password-text">
                Veuillez saisir votre adresse email personnelle
                dans le formulaire ci-dessous, un lien va être
                envoyé afin de réinitialiser votre mot de passe.
            </p>
            <form name="myForm" class="form" action="{{ route('forget') }}" method="post">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <input type="text" class="form-control" required="" name="email" id="email"
                    placeholder="Email">
                <button type="submit" class="form-control btn" name="submit">Valider</button>
            </form>
        </div>


        <script>
            $(function() {
                // handle submit event of form
                $(document).on("submit", "#login", function() {
                    var e = this;
                    // change login button text before ajax
                    // $(this).find("[type='submit']").html("LOGIN...");

                    $.post($(this).attr('action'), $(this).serialize(), function(data) {

                        // $(e).find("[type='submit']").html("LOGIN");
                        if (data.status) { // If success then redirect to login url
                            window.location = data.redirect_location;
                        }
                    }).fail(function(response) {
                        // handle error and show in html
                        // $(e).find("[type='submit']").html("LOGIN");
                        $(".alert").remove();
                        var erroJson = JSON.parse(response.responseText);
                        // alert(erroJson)
                        for (var err in erroJson) {
                            if (err == "email") {
                                $("#email").addClass("border-red");
                            } else if (err == "password") {
                                $("#password").addClass("border-red");
                            } else {
                                $("#email").addClass("border-red");
                                $("#password").addClass("border-red");
                            }
                            for (var errstr of erroJson[err])
                                $("#errors-list").append("<div class='alert alert-danger'>" + errstr +
                                    "</div>");
                        }

                    });
                    return false;
                });

                $(document).on("submit", "#register", function() {
                    var e = this;
                    // change register button text before ajax
                    // $(this).find("[type='submit']").html("Register...");

                    $.post($(this).attr('action'), $(this).serialize(), function(data) {

                        // $(e).find("[type='submit']").html("REGISTER");
                        if (data.status) { // If success then redirect to login url
                            window.location = data.redirect_location;
                        }
                    }).fail(function(response) {
                        // handle error and show in html
                        // $(e).find("[type='submit']").html("REGISTER");
                        $(".alert").remove();
                        var erroJson = JSON.parse(response.responseText);
                        // alert(erroJson)
                        for (var err in erroJson) {
                            alert(err);
                            if (err == "email") {
                                $("#remail").addClass("border-red");
                            } else if (err == "password") {
                                $("#rpassword").addClass("border-red");
                            } else if (err == "password_confirmation") {
                                $("#rpassword_confirmation").addClass("border-red");
                            } else if (err == "username") {
                                $("#rusername").addClass("border-red");
                            } else {
                                $("#remail").addClass("border-red");
                                $("#remail_confirmation").addClass("border-red");
                                $("#rpassword").addClass("border-red");
                                $("#rusername").addClass("border-red");
                                $("#rpassword_confirmation").addClass("border-red");
                            }
                            for (var errstr of erroJson[err])
                                $("#register-errors-list").append("<div class='alert alert-danger'>" +
                                    errstr +
                                    "</div>");
                        }

                    });
                    return false;
                });

                $("#email").on("change", function() {
                    $(this).removeClass("border-red");
                })
                $("#password").on("change", function() {
                    $(this).removeClass("border-red");
                })
            });
        </script>

        <style>
            .alert {
                margin-bottom: 10px;
                color: red;
            }

            .border-red {
                border: 1px solid red !important;
            }
        </style>
    @endsection

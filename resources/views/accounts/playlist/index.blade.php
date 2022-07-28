@extends('layouts.account')
@section('content')
    <div class="content ">
        <h2 class="title">Ma playlist</h2>
        <ul class="category-list">
            <li><a href="#0">Films</a></li>
        </ul>
        <div class="list">
            <div class="row">
                @foreach ($playlist as $item)
                    <div class="col">
                        <div class="image"><img src="{!! url('assets/images/series1.jpg') !!}" alt=""></div>
                        <div class="category-pop category-minimize">
                            <a href="javascript:void(0);" class="close-item"><span>&nbsp;</span></a>
                            <div class="banner-wrap">
                                <div class="banner">
                                    <div class="img-wrap">
                                        <img src="{!! url('assets/images/max-banner-image.jpg') !!}" alt="banner" class="banner-image">
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="activities">
                                        <div class="activity-buttons">
                                            <a href="#0" class="add"><img src="{!! url('assets/images/play-btn.png') !!}"
                                                    alt="Play"></a>
                                            <a href="#0" class="heart"><img src="{!! url('assets/images/heart-icon.png') !!}"
                                                    alt="Heart"></a>
                                        </div>
                                        <a href="#0" class="extract"><img src="{!! url('assets/images/extract-icon.png') !!}"
                                                alt="Extract"></a>
                                    </div>
                                    <h2 class="title">Love and other cults</h2>
                                    <div class="production-text">
                                        <ul class="production-details">
                                            <li>Film<span class="dash">-</span>Classification : <strong>PG13</strong></li>
                                            <li>Genre :<strong> Drame initiatique</strong></li>
                                            <li>categorie :<strong> Completement a l'est</strong></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="category-pop category-maximize">
                            <a href="javascript:void(0);" class="close-item"><span></span></a>
                            <div class="banner-wrap">
                                <div class="banner">
                                    <div class="img-wrap">
                                        <img src="{!! url('assets/images/max-banner-image.jpg') !!}" alt="banner" class="banner-image">
                                    </div>
                                </div>
                                <div class="details">
                                    <div class="activities">
                                        <div class="activity-buttons">
                                            <a href="#0" class="btn">Lecture</a>
                                            <a href="#0" class="heart"><img src="{!! url('assets/images/heart-icon.png') !!}"
                                                    alt="Heart"></a>
                                        </div>
                                    </div>
                                    <h2 class="title">Love and other cults - 16+</h2>
                                    <p>Ai n'a pas vraiment eu de chance dans la loterie de la vie. Rejetée par sa mère, elle
                                        grandit pendant 7 ans dans une secte fanatique religieuse, avant que le gourou ne se
                                        fasse embarquer par la police. Livrée à elle-même elle enchaîne différents milieux
                                        et
                                        l'apprentissage des codes sociaux dans l'espoir de se trouver une place.<br>Toutes
                                        fréquentations est bonne à prendre, même les plus sombres. Pourvu qu'on y trouve un
                                        peu
                                        d'amour.</p>
                                    <div class="production-text">
                                        <ul class="production-details">
                                            <li>film<strong> japonais</strong></li>
                                            <li>categorie:<strong> Completement a l'est</strong></li>
                                            <li>Genre:<strong> Drame initiatique</strong></li>
                                            <li>Realise:<strong> Eiji Uchida</strong></li>
                                            <li>Avac:<strong> Sairi Ito, Kaito Yoshimua, Kenta Suga</strong></li>
                                            <li>Duree:<strong> 1h35</strong></li>
                                            <li>Film en:<strong> VOST</strong></li>
                                        </ul>
                                        <div class="tags">
                                            <h3>TAGS :</h3>
                                            <ul>
                                                <li>#Kiss&cry - #dramakif</li>
                                                <li>#bourpifs - #gangstermania</li>
                                                <li>#no brain no pain</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="critic-container">
                                        <div class="critic-wrapper">
                                            <div class="critics-content">
                                                <h2 class="critic-title">CE QU’ON EN PENSE SUR</h2>
                                                <a href="#0" class="critic-website">
                                                    <img src="{!! url('assets/images/senscritique.png') !!}" class="critic-logotype">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="critic">
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nisi dolor,
                                                cursus
                                                sit amet dictum id, laoreet quis erat. Vivamus ut massa magna. Integer
                                                fringilla
                                                sit amet massa molestie pellentesque. Curabitur non lorem id est molestie
                                                sollicitudin ut quis lorem. Nunc lacinia ligula id lorem semper, a congue
                                                tortor
                                                tempor...
                                            </p>
                                        </div>
                                        <div class="complete-criticism">
                                            <a href="#0" class="complete-criticism-link">
                                                Voir la critique complète sur SENSCRITIQUE
                                            </a>
                                        </div>
                                    </div>
                                    <div class="pros-container">
                                        <div class="pros-wrapper">
                                            <div class="pros-content">
                                                <h2 class="pros-title">Pourquoi ?</h2>
                                            </div>
                                        </div>
                                        <div class="pros">
                                            <p>
                                                Les sortilèges, Les films de genre, Le rouge
                                            </p>
                                        </div>
                                    </div>
                                    <div class="cons-container">
                                        <div class="cons-wrapper">
                                            <div class="cons-content">
                                                <h2 class="cons-title">Pourquoi pas ?</h2>
                                            </div>
                                        </div>
                                        <div class="cons">
                                            <p>
                                                Le maniérisme, Le spiritisme, Les trucs en "-isme"
                                            </p>
                                        </div>
                                    </div>
                                    <div class="more-videos">
                                        <h4 class="title">Titres similaires</h4>
                                        <div class="row">
                                            <div class="col-4">
                                                <div class="item-box">
                                                    <img src="{!! url('assets/images/more-video-image.jpg') !!}" alt="more-video">
                                                    <div class="item-detail">
                                                        <h4>The king of pigs - 18+</h4>
                                                        <p>A l'école de la violence</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="item-box">
                                                    <img src="{!! url('assets/images/more-video-image.jpg') !!}" alt="more-video">
                                                    <div class="item-detail">
                                                        <h4>The king of pigs - 18+</h4>
                                                        <p>A l'école de la violence</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="item-box">
                                                    <img src="{!! url('assets/images/more-video-image.jpg') !!}" alt="more-video">
                                                    <div class="item-detail">
                                                        <h4>The king of pigs - 18+</h4>
                                                        <p>A l'école de la violence</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
            {{-- <ul class="pagination">
                <li><a href="#0">1</a></li>
                <li><a href="#0">2</a></li>
                <li><a href="#0">3</a></li>
                <li><a href="#0">4</a></li>
            </ul> --}}
        </div>
    </div>
@endsection

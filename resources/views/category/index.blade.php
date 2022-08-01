@extends('layouts.app')
@section('body')

    <body>
    @endsection
    @section('content')
        <!-- Main -->

        <main>

            <!-- Views -->
            <div class="views">
                <a href="javascript:void(0);" class="list-view"><span>&nbsp;</span></a>
                <a href="javascript:void(0);" class="grid-view"><span>&nbsp;</span></a>
            </div>

            <!-- Categories -->
            <section class="categories">
                <div class="title-wrap">
                    <h2>Categories</h2>
                    <select name="categories" id="categories">
                        <option value="0"></option>
                        @foreach (App\Models\MpArtworkCategory::get() as $item)
                            <option {{ Request::segment(2) == $item->id ? 'selected' : '' }} value="{{ $item->id }}">
                                {!! $item->category !!}</option>
                        @endforeach
                    </select>
                </div>
                <div class="list">
                    <div class="row">

                        @foreach ($films as $item)
                            <div class="col">
                                <div class="image"><img src="{!! url('assets/images/categories-list1.jpg') !!}" alt=""></div>
                                <div class="category-pop category-minimize" value={{ $item->id }}>

                                </div>

                                {{--  --}}
                                <div class="category-pop category-maximize" value={{ $item->id }}>
                                </div>
                            </div>
                        @endforeach

                        {{-- <div class="category-pop category-minimize" id="ttt"></div> --}}
                    </div>
            </section>
            @include('layouts.popular-video')
        </main>

        <script>
            $(document).ready(function() {
                $('select').on('change', function() {

                    if (this.value == "0") {
                        window.location.href = "{{ route('category.index') }}";
                    } else {
                        var url = "{{ route('category.showfilm', ':id') }}";
                        url = url.replace(':id', this.value);
                        window.location.href = url;
                    }
                });

                // Film Click
                $('.list .col .image').click(function() {
                    $(this).parent().siblings().find('.category-minimize, .category-maximize').removeClass(
                        'show');
                    var div = $(this).parent().find('.category-minimize');

                    var url = "{{ route('film.info', ':id') }}";
                    url = url.replace(':id', div.attr('value'));

                    $.get(url, function(data, status) {
                        if (status == 'success') {
                            div.html(
                                "<a href='javascript:void(0);' class='close-item'><span>&nbsp;</span></a>" +
                                "<div class='banner-wrap'><div class='banner'><div class='img-wrap'><img src='{!! url('assets/images/categories-list1.jpg') !!}' alt='banner' class='banner-image'></div></div>" +
                                "<div class='details'>" +
                                "<div class='activities'><div class='activity-buttons'><a href='#0' class='add'><img src='{!! url('assets/images/play-btn.png') !!}'alt='Play'></a><a href='#0' class='heart'><img src='{!! url('assets/images/heart-icon.png') !!}'alt='Play'></a></div><a href='#0' class='extract'><img src='{!! url('assets/images/extract-icon.png') !!}'alt='Extract'></a></div>" +
                                "<h2 class='title'>" + data.film.film_original_title + "</h2>" +
                                "<div class='production-text'><ul class='production-details'>" +
                                "<li>Film<span class='dash'>-</span>Classification :<strong> " +
                                (data.rating ? data.rating
                                    .certification_letter : '') + "</strong></li>" +
                                "<li>Genre : " + data.genre.map((item) => ("<strong> " +
                                    item.genre +
                                    "</strong>")) + "</li>" +
                                "<li>categorie : " + data.category.map((item) => ("<strong> " +
                                    item.category +
                                    "</strong>")) + "</li>" +
                                "</ul></div></div>"
                            );
                            div.addClass('show');
                        }
                    }).fail(function(response) {
                        console.log(response);
                    });
                });

                $('body').on('click', '.close-item', function(e) {
                    $(".category-maximize, .category-minimize").removeClass("show");
                    $("html").removeClass("overflow");
                })

                // Film Details
                $('body').on('click', '.extract', function(e) {
                    var div = $(this).parents(".col").find(".category-maximize");
                    $(this).parents(".col").find(".category-minimize").removeClass("show");
                    $("html").addClass("overflow");


                    var url = "{{ route('film.details', ':id') }}";
                    url = url.replace(':id', div.attr('value'));


                    $.get(url, function(data, status) {
                        if (status == 'success') {

                            var tags = "";
                            for (var i = 0; i < data.tag.length; i++) {
                                tags += "<li>" + data.tag[i].tag + "</li>";
                            }

                            div.html(
                                "<a href='javascript:void(0);' class='close-item'><span>&nbsp;</span></a>" +
                                "<div class='banner-wrap'><div class='banner'><div class='img-wrap'><img src='{!! url('assets/images/max-banner-image.jpg') !!}' alt='banner' class='banner-image'></div></div>" +
                                "<div class='details'>" +
                                "<div class='activities'><div class='activity-buttons'><a href='#0' class='btn'>Lecture</a><a href='#0' class='heart'><img src='{!! url('assets/images/heart-icon.png') !!}'alt='Play'></a></div></div>" +
                                "<h2 class='title'>" + (data.rating ? data.rating
                                    .certification_letter : '') + "</h2>" +
                                "<p>" + data.film.film_synopsis + "</p>" +
                                "<div class='production-text'><ul class='production-details'>" +
                                "<li>Film<span class='dash'>-</span>Classification :<strong> " +
                                (data.rating ? data.rating
                                    .certification_letter : '') + "</strong></li>" +
                                "<li>Categorie : <strong>" + data.category.map((item) => (item
                                    .category)) + "</strong></li>" +
                                "<li>Genre : " + data.genre.map((item) => ("<strong> " +
                                    item.genre +
                                    "</strong>")) + "</li>" +
                                "<li>" + (data.crew ? data.crew.film_crew_occupation : '') +
                                "<strong>" +
                                (data.crew ? data.crew.film_crew_name : '') +
                                "</strong></li>" +
                                "<li>Avac : " + data.cast.map((item) => ("<strong> " +
                                    item.film_cast_name +
                                    "</strong>")) + "</li>" +
                                "<li>Durée:<strong> " + data.film.film_running_time +
                                "</strong></li>" +
                                "<li>Durée:<strong> " + data.film.film_version +
                                "</strong></li></ul>" +
                                "<div class='tags'><h3>TAGS: </h3><ul>" + tags + "</ul>" +
                                "</div></div>"
                            );
                            div.addClass('show');
                        }
                    }).fail(function(response) {
                        console.log(response);
                    });
                })
            })
        </script>
    @endsection

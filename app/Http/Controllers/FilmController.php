<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Film;
use App\Models\FilmRatingSystem;
use App\Models\MpArtworkGenre;
use App\Models\MpArtworkCategory;
use App\Models\GpCountry;
use App\Models\FilmCrewMember;
use App\Models\FilmCastMember;
use App\Models\MpArtworkTag;

class FilmController extends Controller
{
    public function filmInfo($id)
    {
        $film = Film::find($id);
        $rating = FilmRatingSystem::where('film_id', $id)->first();
        $genre = MpArtworkGenre::whereIn('id', explode(',', $film->film_genre))->get();
        $category =MpArtworkCategory::whereIn('id', explode(',', $film->film_category))->get();

        return response()->json(['film'=>$film, 'rating'=>$rating, 'genre'=> $genre, 'category'=>  $category ]);
    }

    public function filmDetails($id)
    {
        $film = Film::find($id);
        $rating = FilmRatingSystem::where('film_id', $id)->first();
        $genre = MpArtworkGenre::whereIn('id', explode(',', $film->film_genre))->get();
        $category = MpArtworkCategory::whereIn('id', explode(',', $film->film_category))->get();
        $country = GpCountry::find($id);
        $crew = FilmCrewMember::where('film_id', $id)->first();
        $cast = FilmCastMember::where('film_id', $id)->get();
        $tag = MpArtworkTag::whereIn('id', explode(',', $film->film_tag))->get();

        return response()->json(['film'=>$film, 'rating'=>$rating, 'genre'=> $genre, 'category'=>  $category, 'country' => $country, 'crew' => $crew, 'cast' => $cast, 'tag'=> $tag ]);
    }
}

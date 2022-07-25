<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MpArtworkCategory;
use App\Models\MpArtworkTag;
use App\Models\Film;

class HomeController extends Controller
{
    public function index()
    {
        $category = MpArtworkCategory::get();
        $tag = MpArtworkTag::get();
        $film = Film::find(1);
        return view('home', ['category' => $category, 'tag' => $tag, 'film' => $film ]);
    }
}

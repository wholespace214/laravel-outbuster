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
        $film = Film::where('home', 1)->get();
        return view('home', ['film' => $film[0] ]);
    }
}

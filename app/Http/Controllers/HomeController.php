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
        $film = Film::find(1);
        return view('home', ['film' => $film ]);
    }
}

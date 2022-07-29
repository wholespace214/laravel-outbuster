<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Film;

class CategoryController extends Controller
{
    public function index()
    {
        $films = Film::get();
        return view('category.index', ['films' => $films]);
    }

    public function showFilm($id)
    {
        $films = Film::where('film_category', 'like', "%$id%")->get();
        return view('category.index', ['films' => $films]);
    }
}

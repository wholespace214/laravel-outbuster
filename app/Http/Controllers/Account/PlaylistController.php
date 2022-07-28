<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserPlaylist;

class PlaylistController extends Controller
{
    /**
     * Show Profile View.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $playlist = UserPlaylist::get();
        return view('accounts.playlist.index', ['playlist' => $playlist]);
    }
}

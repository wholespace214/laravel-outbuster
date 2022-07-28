<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SubscriptionController extends Controller
{
    /**
     * Show Subscription view.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('accounts.subscription.subscription');
    }

    /**
     * Show Type view.
     *
     * @return \Illuminate\Http\Response
     */
    public function type()
    {
        return view('accounts.subscription.subscription1');
    }

    /**
     * Show Payment view.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  string  $id
     * @return \Illuminate\Http\Response
     */
    public function payment(Request $request, $id)
    {
        return view('accounts.subscription.subscription2', ["type"=> $id]);
    }
}

<?php

namespace App\Http\Controllers\Account;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    /**
     * Show Profile View.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('accounts.profile.index');
    }

    /**
     * Update Profile.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $this->validate($request, [
            'username' => 'required|string|max:255',
            'email' => "required|email",
        ]);

        $data;

        if($request['password'] !=''){
            $data = [
                'username' => $request['username'],
                'email' => $request['email'],
                'date_of_birth' => $request['date_of_birth'],
                'gender' => $request['gender'],
                'country_id' => $request['country_id'],
                'address' => $request['address'],
                'zip_code' => $request['zip_code'],
                'city' => $request['city'],
                'newsletter_subscription' => $request['newsletter_subscription'],
                'password' => bcrypt($request['password']),
            ];
        }else {
            $data = [
                'username' => $request['username'],
                'email' => $request['email'],
                'date_of_birth' => $request['date_of_birth'],
                'gender' => $request['gender'],
                'country_id' => $request['country_id'],
                'address' => $request['address'],
                'zip_code' => $request['zip_code'],
                'city' => $request['city'],
                'newsletter_subscription' => $request['newsletter_subscription'],
            ];
        }

        User::where('id', Auth::id())->update($data);
        return redirect()->back();
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Password;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Support\Facades\Hash;
use Mail;

class ForgotPasswordController extends Controller
{
        /**
       * Write code on Method
       *
       * @return response()
       */
      public function submitForgetPasswordForm(Request $request)
      {

       $request->validate(['email' => 'required|email']);

        $status = Password::sendResetLink(
            $request->only('email')
        );

        return $status === Password::RESET_LINK_SENT
                ? back()->with(['status' => __($status)])
                : back()->withErrors(['email' => __($status)]);
      }
      /**
       * Write code on Method
       *
       * @return response()
       */
      public function showResetPasswordForm(Request $request, $token) {
         return view('auth.reset-password', ['token' => $token, 'email'=> $request->email]);
      }

      /**
       * Write code on Method
       *
       * @return response()
       */
      public function submitResetPasswordForm(Request $request)
      {
            $request->validate([
                'token' => 'required',
                'email' => 'required|email',
                'password' => 'required|min:8|confirmed',
            ]);

            $status = Password::reset(
                $request->only('email', 'password', 'password_confirmation', 'token'),
                function ($user, $password) {
                    $user->forceFill([
                        'password' =>  $password
                    ])->setRememberToken(Str::random(60));

                    $user->save();

                    event(new PasswordReset($user));
                }
            );

            Mail::send('auth.new-password', function($message) use($request){
                $message->to($request->email);
                $message->from(env('MAIL_FROM_ADDRESS'), env('APP_NAME'));
                $message->subject('New Password');
            });

            return $status === Password::PASSWORD_RESET
                        ? redirect()->route('home')->with('status', __($status))
                        : back()->withErrors(['email' => [__($status)]]);
      }
}

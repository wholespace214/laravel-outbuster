<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['namespace' => 'App\Http\Controllers'], function()
{

    Route::get('/', 'HomeController@index')->name('home');

    Route::get('/category-list', 'CategoryController@index')->name('category.index');

    Route::group(['middleware' => ['guest']], function()
    {
        /**
         * Register Routes
         */
        Route::post('/register', 'RegisterController@register')->name('register.perform');

        /**
         * Login Routes
         */
        Route::post('/login', 'LoginController@login')->name('login.perform');

        /**
         * Forget Routes
         */
        Route::post('/forget-password', 'ForgotPasswordController@submitForgetPasswordForm')->name('forget');

        /**
         * Password reset view Routes
         */
        Route::get('/reset-password/{token}', 'ForgotPasswordController@showResetPasswordForm')->name('password.reset');

        /**
         * Password update Routes
         */
        Route::post('/reset-password', 'ForgotPasswordController@submitResetPasswordForm')->name('password.update');
    });

    Route::group(['middleware' => ['auth']], function() {
        /**
         * Logout Routes
         */
        Route::get('/logout', 'LoginController@logout')->name('logout.perform');

        /**
         * Verification Routes
         */
        Route::get('/email/verify', 'VerificationController@show')->name('verification.notice');
        Route::get('/email/verify/{id}/{hash}', 'VerificationController@verify')->name('verification.verify')->middleware(['signed']);
        Route::post('/email/resend', 'VerificationController@resend')->name('verification.resend');
    });

    // Route::group(['middleware' => ['auth','verified']], function() {
    Route::group(['middleware' => ['auth']], function() {
        /**
         * Dashboard Routes
         */
        Route::get('/account', function () {
            return view('welcome');
        });

        Route::group(['namespace' => 'Account'], function()
        {
            /**
             * Account Profile Routes
             */
            Route::get('account/profile', 'ProfileController@index')->name('account.profile');

            /**
             * Account Profile Update Routes
             */
            Route::post('account/profile', 'ProfileController@update')->name('account.profile.update');


            /**
             * Account Playlist Routes
             */
            Route::get('account/playlist', 'PlaylistController@index')->name('account.playlist');
        });

        /**
         * Account Subscription Routes
         */
        // Route::get('/account/subscription', 'Account\SubscriptionController@index')->name('account.subscription');
        // Route::get('/account/subscription_type', 'Account\SubscriptionController@type')->name('account.subscription');
        // Route::get('/account/subscription_payment/{id}', 'Account\SubscriptionController@payment')->name('account.subscription');
    });
});

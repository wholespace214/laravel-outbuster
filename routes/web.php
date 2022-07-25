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

    Route::get('/', 'HomeController@index')->name('home.index');

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
    });

    Route::group(['middleware' => ['auth']], function() {
        /**
         * Logout Routes
         */
        Route::get('/logout', 'LoginController@logout')->name('logout.perform');

        /**
         * Verification Routes
         */
        Route::get('/email/verify', 'VerificationController@show')->name('verification.email');
        Route::get('/email/verify/{id}/{hash}', 'VerificationController@verify')->name('verification.verify')->middleware(['signed']);
        Route::post('/email/resend', 'VerificationController@resend')->name('verification.resend');
    });

    Route::group(['middleware' => ['auth','verified']], function() {
        /**
         * Dashboard Routes
         */
        Route::get('/account', function () {
            return view('welcome');
        });
    });
});

<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::auth();
Route::group(['middleware' => ['auth']], function () {
    Route::get('/', function () {
        return view('dashboard');
    });
    Route::get('/profile', 'ProfileController@index');
    Route::get('/lock', 'ProfileController@lock');
    Route::post('/relogin', 'ProfileController@relogin');
    Route::get('/home', 'HomeController@index');
    Route::get('/other', 'HomeController@coming');
    Route::get('/dashboard', 'HomeController@dashboard');
    Route::resource('/corporate', 'CorporateController');
    Route::resource('/government', 'GovernmentController');
    Route::resource('/composer', 'ComposerController');
    Route::resource('/publisher', 'PublisherController');
    Route::resource('/performer', 'PerformerController');
    Route::resource('/producer', 'ProducerController');
    Route::resource('/cmo', 'CmoController');
});
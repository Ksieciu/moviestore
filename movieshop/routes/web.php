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

Route::get('/', function () {
    return redirect('/movies');
});


// Route::get('/about', function(){
//     return view('pages.about');
// });

Route::get('/movies', 'MoviesController@show_all')->name('movie.store');
Route::post('/movies', 'MoviesController@show_by_category');
Route::get('/movies/{movie}', 'MoviesController@show_one_movie')->name('show.movie');

Route::get('/add/{movie}', 'CartController@addToCart')->name('cart.add');
Route::get('/cart', 'CartController@showCart')->name('cart.show');
Route::get('/cart/remove/{movie}', 'CartController@removeFromCart')->name('cart.remove');
// Route::post('/cart/update/{movie}', 'CartController@update')->('cart.update');
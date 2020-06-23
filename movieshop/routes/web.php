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

// odpowiedzialny za logowanie/rejestrację
Route::get('/home', 'HomeController@index')->name('home');
Auth::routes();

//wyświetlanie filmów
Route::get('/movies', 'MoviesController@show_all')->name('movie.store');
Route::post('/movies', 'MoviesController@show_by_category');
Route::get('/movies/{movie}', 'MoviesController@show_one_movie')->name('show.movie');

//dodawanie/usuwanie z koszyka, wyświetlanie
Route::get('/add/{movie}', 'CartController@addToCart')->name('cart.add');
Route::get('/cart', 'CartController@showCart')->name('cart.show');
Route::get('/cart/remove/{movie}', 'CartController@removeFromCart')->name('cart.remove');
// Route::post('/cart/update/{movie}', 'CartController@update')->('cart.update');

//checkout
// Route::get('/checkout', 'CheckoutController@')->name('checkout')->middleware('auth');


//Admin panel routes with authorization
Route::middleware('admin')->group(function(){
    Route::view('/admin', 'pages/admin');

    // list of future admin routes
    // Route::get('/admin/movies', controller);
    // Route::get('/admin/movies/{movie}', controller);
    // Route::post('/admin/movies/{movie}, updateMovie@controller);
    // Route::get('/admin/accounts', controller);
    // Route::get('/admin/orders', controller); ???

});




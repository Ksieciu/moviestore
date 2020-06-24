<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect('/movies');
});

// Auth builtin routes
Route::get('/home', 'HomeController@index')->name('home');
Auth::routes();

// showing movies
Route::get('/movies', 'MoviesController@show_all')->name('movie.store');
Route::post('/movies', 'MoviesController@show_by_category');
Route::get('/movies/{movie}', 'MoviesController@show_one_movie')->name('show.movie');

// adding/removing from cart
Route::get('/add/{movie}', 'CartController@addToCart')->name('cart.add');
Route::get('/cart', 'CartController@showCart')->name('cart.show');
Route::get('/cart/remove/{movie}', 'CartController@removeFromCart')->name('cart.remove');

//checkout
Route::get('/checkout', 'CartController@shippingInfo')->name('shippingForm')->middleware('auth');
Route::put('/checkout', 'CartController@checkout')->name('checkoutAddress')->middleware('auth');

//Admin panel routes with authorization
Route::middleware('admin')->group(function(){
    Route::view('/admin', 'admin/admin');

    // List all movies in catalog
    Route::get('/admin/movies', 'AdminPanelController@show_all')->name('admin.listMovies');

    // Routes for showing, updating and deleting movies from catalog
    Route::get('/admin/movies/{movie}', 'AdminPanelController@show_movie')->name('admin.showMovie');
    Route::put('/admin/movies/{movie}', 'AdminPanelController@update_movie')->name('admin.updateMovie');
    Route::delete('/admin/movies/{movie}', 'AdminPanelController@delete_movie')->name('admin.deleteMovie');
    Route::post('/admin/movies/{movie}', 'AdminPanelController@add_category_to_movie')->name('admin.addCategory');
    Route::delete('/admin/movies/{movie}/{category}', 'AdminPanelController@delete_movie_category')->name('admin.deleteCategory');

    // Adding new movie to catalog
    Route::view('/admin/movie/create', 'admin/createMovie')->name('admin.createMovieForm');
    Route::post('/admin/movie/create', 'AdminPanelController@create_movie')->name('admin.createMovie');
});

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout')->name('logout');

// if wrong url then show string
Route::fallback(function(){
    return "Wygląda na to, że zawędrowałeś za daleko!";
});




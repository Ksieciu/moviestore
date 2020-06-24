<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Movies;
use App\Categories;


class AdminPanelController extends Controller
{
    // get all movies in database, order them by title and paginate
    function show_all(){
        $movies = Movies::orderBy('title', 'asc')->paginate(20);

        return view('admin.adminlistMovies', ['movies'=>$movies]);
    }

    // show one movie info, based on given id. return infos about movie, movie category(pivot between movies and category) and all categories
    function show_movie($id){
        $movie = Movies::find($id);
        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

    // update all info of movie based in sent POST input(with PUT method) and given id
    function update_movie(Request $request, $id){

        // if($request->has('update_info')){
        // }
        $movie = Movies::find($id);
        $movie->title = $request->input('title');
        $movie->picture = $request->input('picture');
        $movie->release_date = $request->input('release_date');
        $movie->price = $request->input('price');
        $movie->description = $request->input('description');
        $movie->save();
        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

    // delete movie with given id
    function delete_movie($id){
        $movie = Movies::find($id);
        $movie->delete();

        return redirect()->route('admin.listMovies');
    }

    // get movie_id and category_id and detach pivot table from movie
    function delete_movie_category($movie_id, $category_id){
        $movie = Movies::find($movie_id);
        $movie->categories()->detach($category_id);

        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

    // find movie by given id, then take category id from request and attach both to create pivot
    function add_category_to_movie(Request $request, $movie_id){
        $movie = Movies::find($movie_id);
        $movie->categories()->attach($request->input('categories'));

        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

    function create_movie(Request $request){
        $movie = new Movies;
        $movie->title = $request->input('title');
        $movie->picture = $request->input('picture');
        $movie->release_date = $request->input('release_date');
        $movie->price = $request->input('price');
        $movie->description = $request->input('description');
        $movie->save();

        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return redirect()->route('admin.showMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
        // return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }


}

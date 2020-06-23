<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Movies;
use App\Categories;


class AdminPanelController extends Controller
{
    function show_all(){
        $movies = Movies::orderBy('title', 'asc')->paginate(20);

        return view('admin.adminlistMovies', ['movies'=>$movies]);
    }

    

    function show_movie($id){
        $movie = Movies::find($id);
        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

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


    function delete_movie_category($movie_id, $category_id){
        $movie = Movies::find($movie_id);
        $movie->categories()->detach($category_id);

        $movie_categories = $movie->Categories;
        $categories = Categories::all();

        return view('admin.adminEditMovie', ['movie'=>$movie, 'movie_categories'=>$movie_categories, 'categories'=>$categories]);
    }

    function delete_movie($id){
        $movie = Movies::find($id);
        $movie->delete();

        return redirect()->route('admin.listMovies');
    }

    function add_category_to_movie($id){
        
    }


}

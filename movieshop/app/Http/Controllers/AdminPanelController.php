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

    function delete_movie($id){
        $movie = Movies::find($id);
        $movie->delete();

        return show_all();
    }

    function edit_movie($id){
        $movie = Movies::find($id);
        $categories = $movie->Categories;

        return view('admin.adminEditMovie', ['movie'=>$movie, 'categories'=>$categories]);
    }


}

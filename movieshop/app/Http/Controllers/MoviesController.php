<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Movies;
use App\Categories;


class MoviesController extends Controller
{
    // get all movie from Movies table, order by release date and paginate
    function show_all(){
        $movies = Movies::orderBy('release_date', 'desc')->paginate(20);
        $categories = Categories::orderBy('name')->get();

        return view('store', ['movies'=>$movies, 'categories'=>$categories, 'chosen_category'=>'Wszystkie']);
    }

    // get all info and categories about one movie with given id
    function show_one_movie($id){
        $movie = Movies::find($id);
        $categories = $movie->Categories;

        return view('pages.movie', ['movie'=>$movie, 'categories'=>$categories]);
    }

    // show movies from chosen category and sort
    function show_by_category(Request $request){
        $category = $request->input('categories');
        $sorting = $request->input('sort');

        if($category == 'Wszystkie'){
            $movies = Movies::orderBy($sorting, 'desc')->paginate(20);
        } else {
            $movies = Movies::whereHas('categories', function($q) use($category){
                $q->where('name', $category);
            }) 
            ->orderBy($sorting, 'desc')
            ->paginate(20);
        }

        $categories = Categories::all();
        return view('/store', ['movies'=>$movies, 'categories'=>$categories, 'chosen_category'=>$category]);
    }
}

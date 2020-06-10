<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Movies;
use App\Categories;

class MoviesController extends Controller
{
    function show_all(){
        // $movies = DB::table('movies')->paginate(20);
        $movies = Movies::orderBy('release_date', 'desc')->paginate(20);
        $categories = Categories::orderBy('name')->get();

        return view('store', ['movies'=>$movies, 'categories'=>$categories, 'chosen_category'=>'Wszystkie']);
    }

    function show_one_movie($id){
        $movie = Movies::find($id);
        return view('pages.movie')->with('movie', $movie);
    }

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

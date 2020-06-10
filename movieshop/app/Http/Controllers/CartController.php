<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Movies;
use App\Cart;
use Session;

class CartController extends Controller
{
    
    function addToCart(Request $request, Movies $movie){
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($movie, $movie->id);

        Session::put('cart', $cart);

        return redirect()->route('movie.store');
    }
    
    function showCart(){
        if(!Session::has('cart')){
            return view('pages.shopping-cart');
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('pages.shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);

    }

}

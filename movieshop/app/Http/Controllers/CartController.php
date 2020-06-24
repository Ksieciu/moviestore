<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Movies;
use App\Cart;
use App\User;
use App\Order;
use App\ShippingInfo;
use Carbon\Carbon;
use Session;
use Auth;


class CartController extends Controller
{
    // func checking if there already is cart in Sessio, if there is then creates new cart with old cart data, otherwise creates new cart with default data
    function addToCart(Request $request, Movies $movie){
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($movie, $movie->id);

        Session::put('cart', $cart);

        return redirect()->route('movie.store');
    }
    
    // func showing all items stored in cart session
    function showCart(){
        if(!Session::has('cart')){
            return view('pages.shopping-cart');
        }

        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('pages.shopping-cart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    // func for removing item from cart
    function removeFromCart($id){
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);

        //check if there is any item left in session cart, if not then cart clear session data
        if(count($cart->items) > 0){
            Session::put('cart', $cart);
        } else {
            Session::forget('cart');
        }

        return redirect()->route('cart.show');
    }

    // func for checking if currently logged user already has shipping info. If he has, then we will print it in input form fields in blade.
    function shippingInfo(){
        if(!Session::has('cart')){
            return view('pages.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $user = Auth::user();
        $shipping_data = ShippingInfo::where('user_id', $user->id)->get();

        return view('pages.checkout', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice, 'shippingInfo' => $shipping_data]);
    }

    function checkout(Request $request){
        if(!Session::has('cart')){
            return view('pages.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $user = Auth::user();
        // $shipping_data = User::find($user->id)->shipping_info;
        $shipping_data = ShippingInfo::updateOrCreate(
            ['user_id' => $user->id],
            ['user_id' => $user->id,
            'name' => $request->input('name'),
            'surname' => $request->input('surname'),
            'country' => $request->input('country'),
            'city' => $request->input('city'),
            'street' => $request->input('street')]
        );

        $order = new Order;
        $order->user_id = $user->id;
        $order->shipping_id = $shipping_data->id;
        $order->total_cost = $cart->totalPrice;
        $order->paid = FALSE;
        $order->payment_type = $request->payment;
        $order->created_at = Carbon::now()->toDateTimeString();
        $order->save();
        Session::forget('cart');
        
        return redirect()->route('movie.store');
    }

}

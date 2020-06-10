@extends('layouts.navbar')

@section('content')
    @if(Session::has('cart'))
    <div class="inner-page-container">
        <div class="cart-list-container">
            <div class="cart-main-container">
                <div class="items-cart-container">      
                @foreach($products as $product)
                    <div class="row">
                        <div class="item-container">
                            <div class = "item-picture-container">
                                <img src="{{ $product['item']['picture'] }}">
                            </div>
                                <div class="item-title">{{ $product['item']['title'] }}</div>
                        </div>
                    </div>
                @endforeach
                </div>
            </div>
        </div>
    </div>
    @else

    @endif

    

@endsection
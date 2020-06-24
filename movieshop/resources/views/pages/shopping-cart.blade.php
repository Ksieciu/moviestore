@extends('layouts.navbar')

@section('content')
    <div class="cart-page-header">Koszyk</div>
    @if(Session::has('cart'))
    
    <div class="cart-inner-page-container">
        
        <div class="cart-list-container">
            <div class="cart-main-container">
                <div class="cart-items-header">
                    <div class="item-header">Produkt</div>
                    <div class="item-header-numbers">
                        <div class="item-header-quantity">Ilość</div>
                        <div class="item-header-price">Cena</div>
                    </div>
                    <div class="item-header-remove">Usuń</div>
                </div>
                <div class="items-cart-container">      
                @foreach($products as $product)
                    <div class="row">
                        <div class="item-container">
                            <div class="item-container-info">
                                <div class = "item-picture-container">
                                    <img src="{{ $product['item']['picture'] }}">
                                </div>
                                <div class="item-info">{{ $product['item']['title'] }}</div>
                                <div class="item-numbers">
                                    <div class="item-quantity">
                                        <input type="number" value={{ $product['qty'] }} id="cart-item-quantity"><br>
                                        <button type="submit">Zmień</button>
                                    </div>
                                    <div class="item-price">* {{ $product['item']['price'] }} = {{ $product['price'] }}</div>
                                    
                                </div>
                                {{-- <a href="{{ route('cart.update', $movie->id, $) }}"> --}}
                                    <div class="remove-item">
                                        <a href="{{ route('cart.remove', $product['item']['id']) }}">
                                            <img src="{{ url('/images/recycle-bin.svg') }}">
                                        </a>
                                    </div>
                                {{-- </a> --}}
                            </div>
                        </div>
                    </div>
                @endforeach
                </div>
            </div>
        </div>
        <div class="cart-right-info-container">
            <div class="cart-summary-header">Podsumowanie</div>
            <div class="cart-summary-container">
                
            </div>
            <div class="cart-summary">
                <div class="summary-span-container">
                    <span class="items-cost">Koszt produktów: {{ $totalPrice }}</span><br>
                    <span class="shipping-cost">Koszt dostawy: 12.99</span><br>
                    <span class="Final-cost">Koszt całkowity: {{ $totalPrice + 12.99 }}</span>
                </div>
            </div>
            <div class="checkout-button-container">
                <a href="{{ route('shippingForm') }}"><button>Checkout</button></a>
            </div>
        </div>
    </div>

    @else
    <div class="cart-inner-page-container">
        <div class="cart-list-container">
            <div class="cart-main-container">
                <div class="cart-items-header">
                    <div class="item-header">Produkt</div>
                    <div class="item-header-numbers">
                        <div class="item-header-quantity">Ilość</div>
                        <div class="item-header-price">Cena</div>
                    </div>
                    <div class="item-header-remove">Usuń</div>
                </div>
                <div class="items-cart-container">      
                    <div class="row">
                        <div class="item-container">
                            <div class="item-container-info">
                                Koszyk jest pusty!
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cart-right-info-container">
            <div class="cart-summary-header">Podsumowanie</div>
            <div class="cart-summary-container">
                
            </div>
            <div class="cart-summary">
                <div class="summary-span-container">
                    <span class="shipping-cost">Koszt dostawy: 12.99</span><br>
                    <span class="Final-cost">Koszt całkowity: 12.99</span>
                </div>
            </div>
        </div>
    </div>
    @endif

@endsection

@extends('layouts.navbar')

@section('content')
    <div class="cart-page-header">Szczegóły zamówienia</div>
    
    <div class="cart-inner-page-container">
        
        <div class="cart-list-container">
            <div class="cart-main-container">
                <div class="shipping-info-container"> 
                    @if (empty($shippingInfo[0]))
                    <form method="POST">
                        <div class="shipping-title">
                            <b>Adres Dostawy</b>
                        </div><br>
                        @csrf
                        @method('PUT')
                        <div class="movie-icon-url-container">
                            Imię:<br>
                            <input class="input-box-details" name="name" required>
                        </div><br>
                        <div class="movie-title-container">
                            Nazwisko:<br> 
                            <input class="input-box-details" name="surname" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Kraj:<br>
                            <input class="input-box-details" name="country" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Miasto:<br>
                            <input class="input-box-details" name="city" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Ulica:<br>
                            <input class="input-box-details" name="street" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            <label for="categories">Płatność: </label><br>
                            <select name="payment" id="payment">
                                <option value="cash">Za Pobraniem</option>
                                <option value="bank transfer">Przelew</option>
                            </select>
                        </div><br>
                        <button type="submit" class="update-btn" value="Confirm and Checkout" name="shipping_info">Przejdź do płatności</button><br>
                    </form>
                    @else
                    <form method="POST">
                        @method('PUT')
                        @csrf
                        <div class="shipping-title">
                            <b>Adres Dostawy</b>
                        </div><br>
                        <div class="movie-icon-url-container">
                            Imię:<br>
                            <input class="input-box-details" name="name" value="{{ $shippingInfo[0]->name }}" required>
                        </div><br>
                        <div class="movie-title-container">
                            Nazwisko:<br> 
                            <input class="input-box-details" name="surname" value="{{ $shippingInfo[0]->surname }}" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Kraj:<br>
                            <input class="input-box-details" name="country" value="{{ $shippingInfo[0]->country }}" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Miasto:<br>
                            <input class="input-box-details" name="city" value="{{ $shippingInfo[0]->city }}" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            Ulica:<br>
                            <input class="input-box-details" name="street" value="{{ $shippingInfo[0]->street }}" required>
                        </div><br>
                        <div class="movie-realese-date-container">
                            <label for="categories">Płatność: </label><br>
                            <select name="payment" id="payment">
                                <option value="cash">Za Pobraniem</option>
                                <option value="bank transfer">Przelew</option>
                            </select>
                        </div><br>
                        <button type="submit" class="update-btn" value="Confirm and Checkout" name="shipping_info">Confirm and Checkout</button><br>
                    </form>
                    @endif
                    
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

            
        </div>
    </div>

@endsection

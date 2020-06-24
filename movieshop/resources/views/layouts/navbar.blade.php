<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href={{ asset('css/style1.css') }} rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel&display=swap" rel="stylesheet"><body>
    <div>
        <header>
            <nav class="movie-navbar">
                <div class="nav-left">
                    <ul class="navbar-left-elements">
                        <li class="searchBox">
                            <div class="searchBox-container">
                                {{-- search icon --}}
                                <input type="search" id="search-navbar-input", placeholder="Wyszukaj" value>
                            </div>
                        </li>
                        <li>
                            <div></div>
                        </li>
                    </ul>
                </div>
                <div class="navbar-site-logo">
                    <a id="site-logo" href="{{ route('movie.store') }}">Movie Store</a>
                </div>
                <ul class="nav-right">
                    <li class="navbar-home">
                        <a href="{{ route('movie.store') }}">
                            <img src="{{ url('/images/home.svg') }}">
                        </a>
                    </li>
                    <li class="navbar-basket">
                        <a href="{{ route('cart.show') }}">
                            <img src="{{ url('/images/shopping-bag-add.svg') }}">
                            <span>
                                {{ Session::has('cart') ? Session::get('cart')->totalQty : '' }}
                            </span>
                        </a>
                    </li>
                    <div class="dropdown"> 
                   <button class="dropbtn">     <img src="{{ url('images/account.svg') }}"> </button>
                        <div class="dropdown-content"">
                            <a href="/login">Logowanie</a>
                            <a href="/register">Rejestracja</a>
                            <a href="{{ route('logout') }}">Wyloguj</a>
                           
                        </div>
                    
                  
                </ul>
            </nav>
        </header>
    </div>
    
@yield('content')
</body>
</html>
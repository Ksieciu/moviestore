<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href={{ asset('css/style1.css') }} rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital@1&display=swap" rel="stylesheet">
    <title>{{ config('app.name', 'Movie Store') }}</title>
</head>
<body>
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
                    <a id="site-logo" href="#">Movie Store</a>
                </div>
                <ul class="nav-right">
                    <li class="navbar-basket"><a href="#">Basket</a></li>
                    <li class="dropdown-account-menu"> |||
                        <ul class="dropdown-account-list">
                            <li>Log In/Sign In</li>
                            <li>My Account</li>
                            <li>About</li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>
    </div>
    
@yield('content')
</body>
</html>
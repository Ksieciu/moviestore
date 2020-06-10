<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href={{ asset('css/style.css') }} rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital@1&display=swap" rel="stylesheet">
    <title>{{ config('app.name', 'Movie Store') }}</title>
</head>
<body>
    <nav>
        
        <ul class="nav-links">
            <div class="nav-left">
                <li>
                    <div class="menu">
                        <div class="line1"></div>
                        <div class="line2"></div>
                        <div class="line3"></div>
                    </div>
                </li>
                <li><a href="#"></a></li>
            </div>
            <div class="logo">
                <h4>Movie Store</h4>
            </div>
            <div class="nav-right">
                <li><a href="#">Account</a></li>
                <li><a href="#">Basket</a></li>
            </div> 
        </ul>
    </nav>
    @yield('content')
</body>
</html>
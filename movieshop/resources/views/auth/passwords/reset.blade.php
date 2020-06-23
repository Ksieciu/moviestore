<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href={{ asset('css/auth.css') }} rel="stylesheet">
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
                    <li class="dropdown-account-menu"> 
                        <img src="{{ url('images/account.svg') }}">
                        {{-- <ul class="dropdown-account-list">
                            <li>Log In/Sign In</li>
                            <li>My Account</li>
                            <li>About</li>
                        </ul> --}}
                    </li>
                </ul>
            </nav>
        </header>
    </div>
    
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.update') }}">
                        @csrf
                        
                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $email ?? old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
Koaskdalsdasda
                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Reset Password') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

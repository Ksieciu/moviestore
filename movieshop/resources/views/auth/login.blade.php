@extends('layouts.navbar')

@section('content')
<link href={{ asset('css/auth.css') }} rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="login-header">{{ __('Logowanie') }}</div>

                <div class="login-wrapper">
                    <form method="POST" action="{{ route('login') }}">
                        @csrf

                        <div class="login-box">
                            <label for="email" class="label-style">{{ __('Adres e-mail:') }}</label>   <br>   
                            <input id="email" placeholder="Podaj adres e-mail" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                            <br> @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            <label for="password" class="label-style">{{ __('Hasło:') }}</label><br>
                                <input id="password" placeholder="Wprowadź hasło"  type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                                <br>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Zapamiętaj mnie') }}
                                    </label>
<br>
                                <br>
                       
                            
                                <button type="submit" class="btn-login">
                                    {{ __('Zaloguj') }}
                                </button><br><br>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Zapomniałeś hasła?') }}
                                    </a>
                                @endif


                           
                                </div>


                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

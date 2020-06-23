@extends('layouts.navbar')

@section('content')
<link href={{ asset('css/auth.css') }} rel="stylesheet">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">

                <div class="login-header">{{ __('Rejestracja') }}</div>

                <div class="login-wrapper">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="login-box">
                            <label for="email" class="label-style">{{ __('Adres e-mail') }}</label>
                            <br>
                                <input id="email" type="email" placeholder="Wprowadź adres e-mail" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                                <br>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            <label for="password" class="label-style">{{ __('Hasło') }}</label>
                            <br>
                                <input id="password" placeholder="Wprowadź hasło" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                <br>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            <label for="password-confirm" class="label-style">{{ __('Potwiedź hasło') }}</label>
                            <br>
                                <input id="password-confirm" placeholder="Potwierdź swoje hasło" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                                <br><br>
                                <button type="submit" class="btn-login">
                                    {{ __('Rejestruj') }}
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

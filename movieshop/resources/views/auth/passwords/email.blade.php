{{-- we should extends here our layout --}}
@extends('layouts.navbar')

@section('content')
<link href={{ asset('css/auth.css') }} rel="stylesheet">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="login-header">{{ __('Resetowanie hasła') }}</div>

                <div class="login-wrapper">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="login-box">
                         <br>   <label for="email"  class="label-style">{{ __('Adres e-mail:') }}</label>
<br>
                                <input id="email" placeholder="Podaj adres e-mail" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                        
                        
<br>
                                <button type="submit" class="btn-login">
                                    {{ __('Wyślij link do resetowania hasła') }}
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

@extends('layouts.navbar')

@section('content')
<link href={{ asset('css/admin.css') }} rel="stylesheet">
 
    <div class="login-header">{{ __('Zaplecze administracyjne') }}</div>
<div class="wrapper-admin">
    <div class="container-1">
        <img src="{{ url('/images/movie-catalogue.png') }}">
        <a href="{{ route('admin.listMovies') }}">Katalog filmów</a> 
    </div>
    <div class="container-2">
     <img src="{{ url('/images/users.png') }}"> Tutaj będą jakieś ikony
        <a href="{{ route('admin.listMovies') }}">Zarządzaj użytkownikami</a>
    </div>
</div>


    
    {{-- <a href="{{ route('admin.accounts') }}">Zarządzaj kontami użytkowników</a> --}}

@endsection

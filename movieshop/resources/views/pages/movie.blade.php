@extends('layouts.main')

@section('content')
    <div class="back-button-container">
        <a href="/movies" class="back-button">Powrót</a>
    </div>
    <div class="page-container">
        <div class="inner-page-container">
            <div class="movie-picture-container">
                {{$movie}}
                {{-- <img src="{{ $movie->picture }}"> --}}
            </div>
        </div>
    </div>
    

@endsection
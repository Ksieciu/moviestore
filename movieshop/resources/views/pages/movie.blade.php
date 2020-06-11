@extends('layouts.navbar')

@section('content')
    <div class="movie-info-page-header">Informacje o filmie</div>
    <div class="back-button-container">
        <a href="/movies" class="back-button">Powrót</a>
    </div>
    <div class="page-container">
        <div class="inner-page-container">
            <div class="movie-all-info-container">
                <div class="movie-picture-container">
                    <div class="movie-info-picture">
                        <img src="{{ $movie->picture }}">
                    </div>
                </div>
                <div class="movie-title-container">
                    Tytuł: {{ $movie->title }}</div>
                <div class="movie-realese-date-container">
                    Data Premiery:{{ $movie->release_date }}</div>
                <div class="movie-categories-container">
                    Kategorie: 
                    @foreach($categories as $category)
                        {{ $category->name }},
                    @endforeach
                </div>
                <div class="movie-description-container">
                    Opis: {{ $movie->description }}
                </div>
            </div>
            
        </div>
    </div>
    

@endsection
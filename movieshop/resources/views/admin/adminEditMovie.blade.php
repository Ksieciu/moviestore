@extends('layouts.navbar')

@section('content')
    <div class="movie-info-page-header">Informacje o filmie</div>
    <div class="page-container">
        <div class="movie-info-inner-page-container">
            <div class="movie-all-info-border">
                <div class="movie-all-info-container">
                    <div class="movie-info-picture-container">
                        <div class="movie-info-picture">
                            <img src="{{ $movie->picture }}">
                        </div>
                    </div>
                    <article class="movie-article-all-info">
                        <div class="movie-title-container">
                            Tytuł:<br> {{ $movie->title }}</div><br>
                        <div class="movie-realese-date-container">
                            Data Premiery:<br>
                            {{ $movie->release_date }}</div><br>
                        <div class="movie-categories-container">
                            Kategorie:<br> 
                            @foreach($categories as $category)
                                @if (!$loop->last)
                                {{ $category->name }},
                                @else
                                {{ $category->name }}
                                @endif
                            @endforeach
                        </div><br>
                        <div class="movie-description-container">
                            Opis: <br>{{ $movie->description }}
                        </div><br>
                    </article>
                </div>
            </div>
        </div>
    </div>
@endsection
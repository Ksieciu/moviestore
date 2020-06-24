@extends('layouts.navbar')

@section('content')
<link href={{ asset('css/admin.css') }} rel="stylesheet">
 
<div class="login-header">{{ __('Katalog filmów') }}</div>

<div class="page-container">
    <div class="inner-page-container">

        <div class="movies-list-container">      
        @foreach($movies as $movie)
            <div class="row">
                <div class="movie-non-clickable-container">
                    <div class="movie-container">
                        <div class = "movie-picture-container">
                            <img src="{{ $movie->picture }}">
                        </div>
                        <article class="movie-info-container">
                            <div class="movie-title">{{ $movie->title }}</div>
                            Premiera: {{ $movie->release_date }}<br>
                            Cena: {{ $movie->price }}<br>
                        </article>
                        <button><a href="{{ route('admin.showMovie', $movie->id) }}">EDIT</a></button>
                        <form action="{{route('admin.deleteMovie', $movie->id)}}" method="POST">
                            @method('DELETE')
                            @csrf
                            <button type="submit">Delete</button>               
                        </form>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
    </div>
    <div class="pagination-container">
        <div class="paginate-inside">
            {{ $movies->links() }}
        </div>
        <button type="submit" class="btn-add">
            <a href="{{ route('admin.createMovieForm') }}">
                {{ __(' + Dodaj film') }}
            </a>
        </button><br> 
    </div>
   
</div>

@endsection

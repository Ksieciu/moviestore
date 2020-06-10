@extends('layouts.main')

@section('content')
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="{{ url("scripts/image_slider.js") }}"></script>
<div class="coming-soon">
    Coming Soon!
</div>
<div class="slider-wrapper">
    <div class="top-images-container">
        {{-- we can add here loop with pictures from db --}}
        <div class="image-top">
            <img src="{{ url('/images/1.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/2.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/3.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/4.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/5.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/6.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/7.webp') }}">
        </div>
        {{-- <div class="image-top">
            <img src="{{ url('/images/8.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/9.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/10.webp') }}">
        </div>
        <div class="image-top">
            <img src="{{ url('/images/11.webp') }}">
        </div> --}}
    </div>
</div>
    {{-- tutaj jakiś obraz --}}
<div class="catalog-header">
    <div class="catalog-header-text">
        Katalog Filmów
    </div>
</div>

<div class="page-container">
    <div class="inner-page-container">
        <div class='categories-container'>
            <div class="categories-panel">
                <div class="categories-box">
                    <div class="filter-text">
                        <h4>Kategorie</h4>
                    </div>
                    <div class="filter-filler">
                         
                    </div>
                </div>
                <div class="categories-list">
                    {{-- print categories in loop? --}}
                    <div class="category-box">
                        <a href="#">Akcja</a>
                    </div>
                    <div class="category-box">
                        <a href="#">Familijny</a>
                    </div>
                    <div class="category-box">
                        <a href="#">Komediowy</a>
                    </div>
                    
                </div>
            </div>
        </div>

        <div class="movies-list-container">      
        @foreach($movies as $movie)
            <div class="row">
                <div class="movie-container">
                    <div class = "movie-picture-container">
                        <img src="{{ $movie->picture}}">
                    </div>
                    <article class="movie-info-container">
                        <div class="movie-title">{{ $movie->title }}</div>
                        Premiera: {{ $movie->release_date }}<br>
                        Cena: {{ $movie->price }}<br>
                    </article>
                </div>
            </div>
        @endforeach
        </div>
        

    </div>
</div>
@endsection
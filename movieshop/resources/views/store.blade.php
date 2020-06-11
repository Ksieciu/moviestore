@extends('layouts.navbar')

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
<div class="catalog-header">
    <div class="catalog-header-text">
        Katalog Filmów
    </div>
</div>

<div class="filter-bar">
    <div class="categories-header-container">
            <div class="chosen-category">
                {{ $chosen_category }}
            </div>
            <form action="movies" method="POST" class="categories-filter-container">
                @csrf
                <label for="categories">Kategoria: </label>
                <select name="categories" id="categories">
                    <option value="Wszystkie">All</option>
                @foreach($categories as $category)
                    <option value="{{ $category->name }}">{{ $category->name }}</option>
                @endforeach
                </select>
                <div></div>
                <label for="sort">Sortuj według: </label>
                <select name="sort" id="sort">
                    <option value="release_date">Daty Premiery</option>
                    <option value="title">Tytułu</option>
                    <option value="price">Ceny</option>
                </select>
                <div><input type="submit" value="wybierz"></div>
            </form>
    </div>
    <div class="sort-container">
        <form action="" method="post"></form>
    </div>
</div>

<div class="page-container">
    <div class="inner-page-container">

        <div class="movies-list-container">      
        @foreach($movies as $movie)
            <div class="row">
                <div class="movie-non-clickable-container">
                    <div class="movie-container">
                        <a href="/movies/{{ $movie->id }}">
                            <div class = "movie-picture-container">
                                <img src="{{ $movie->picture }}">
                            </div>
                            <article class="movie-info-container">
                                <div class="movie-title">{{ $movie->title }}</div>
                                Premiera: {{ $movie->release_date }}<br>
                                Cena: {{ $movie->price }}<br>
                            </article>
                        </a>
                        <a href="{{ route('cart.add', $movie->id) }}">
                            <div class="basket-add-container">
                                <img src="{{ url('/images/shopping-bag-add.svg') }}">
                            </div>
                        </a>
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
    </div>
    
</div>
@endsection
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
                        <form method="POST">
                            @method('PUT')
                            @csrf
                            <div class="movie-icon-url-container">
                                Url plakatu:<br>
                                <input class="input-box-details" name="picture" value="{{ $movie->picture}}" required>
                            </div><br>
                            <div class="movie-title-container">
                                Tytuł:<br> 
                                <input class="input-box-details" name="title" value="{{ $movie->title}}" required>
                            </div><br>
                            <div class="movie-realese-date-container">
                                Data Premiery:<br>
                                <input type="date" class="input-box-details" name="release_date" value="{{ $movie->release_date }}" required>
                            </div><br>
                            <div class="movie-realese-date-container">
                                Cena:<br>
                                <input type="number" step="0.01" class="input-box-details" name="price" value="{{ $movie->price }}" required>
                            </div><br>
                            
                            <div class="movie-description-container">
                                Opis: <br>
                                <input class="input-box-details" name="description" value="{{ $movie->description}}" required>
                            </div><br>
                            <button type="submit" id="update-btn1" value="Update Movie" name="update_info">Aktualizuj film</button>
                        </form><br>

                        <form method="POST"></form>
                        @csrf
                        <div class="movie-categories-container">
                            Kategorie:<br> <br>
                            @foreach($movie_categories as $movie_category)
                                @if (!$loop->last)
                                    <form action="{{route('admin.deleteCategory', [$movie->id, $movie_category->id])}}" method="POST">
                                        {{ $movie_category->name }}
                                        @method('DELETE')
                                        @csrf
                                        <button class="delete" type="submit">Usuń</button>               
                                    </form>
                                @else
                                    <form action="{{route('admin.deleteCategory', [$movie->id, $movie_category->id])}}" method="POST">
                                        {{ $movie_category->name }}
                                        @method('DELETE')
                                        @csrf
                                        <button type="submit">Usuń</button>               
                                    </form><br>
                                @endif
                            @endforeach
                            <form  method="POST" class="categories-add-form">
                                @csrf
                                <label for="categories">Dodaj kategorie: </label><br>
                                <select name="categories" id="categories">
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                                @endforeach
                                </select>
                                <div><button type="submit" name="add_category">Dodaj</div>
                            </form>
                        </div><br>
                    </article>    
            </div><div><a href="{{ route('admin.listMovies')}}"><button id="back" type="submit" name="add_category"><-</div>    
        </div>
    </div>
@endsection
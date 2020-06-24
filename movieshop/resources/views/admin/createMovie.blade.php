@extends('layouts.navbar')

@section('content')
    <div class="movie-info-page-header">Dodaj nowy film do katalogu</div>
    <div class="page-container">
        <div class="movie-info-inner-page-container">
            <div class="movie-all-info-border">
                <div class="movie-all-info-container">
                    <div class="movie-info-picture-container">
                    </div>
                    <article class="movie-article-all-info">
                        <form method="POST">
                            @csrf
                            <div class="movie-icon-url-container">
                                Url plakatu:<br>
                                <input class="input-box-details" name="picture">
                            </div><br>
                            <div class="movie-title-container">
                                Tytuł:<br> 
                                <input class="input-box-details" name="title">
                            </div><br>
                            <div class="movie-realese-date-container">
                                Data Premiery:<br>
                                <input type="date" class="input-box-details" name="release_date">
                            </div><br>
                            <div class="movie-realese-date-container">
                                Cena:<br>
                                <input type="number" step="0.01" class="input-box-details" name="price">
                            </div><br>
                            
                            <div class="movie-description-container">
                                Opis: <br>
                                <input class="input-box-details" name="description">
                            </div><br>
                            <button type="submit" class="update-btn" value="Add movie" name="update_info">Add movie</button>
                        </form><br>
                    </article>
                </div>
            </div>
        </div>
    </div>
@endsection
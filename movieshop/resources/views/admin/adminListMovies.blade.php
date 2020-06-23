@extends('layouts.navbar')

@section('content')
    
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
                        <a href="{{ route('admin.editMovie', $movie->id) }}">EDIT</a>
                        {{-- <a href="{{ route('admin.deleteMovie', $movie->id) }}">DELETE</a> --}}
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
    </div>
    
</div>

@endsection

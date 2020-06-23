@extends('layouts.navbar')

@section('content')
    Elo na stronie admina mordo!

    <a href="{{ route('admin.listMovies') }}">Katalog filmów</a>
    {{-- <a href="{{ route('admin.accounts') }}">Zarządzaj kontami użytkowników</a> --}}

@endsection

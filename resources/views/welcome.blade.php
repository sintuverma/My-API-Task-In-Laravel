@extends('layout')
@section('page_title',' Welcome Page|') 
@section('container')
<div class="row">
    
    <div class="col-md-2"></div>
    <div class="col-md-8">
      <a href="{{url('/api/v1/longest-duration-movies')}}" class="btn btn-warning">(a)Top 10 Movies</a>
      <a href="{{url('/api/Add-Movies-Form')}}" class="btn btn-success">(b)Add Movies</a>
      <a href="{{url('/api/v1/top-rated-movies')}}" class="btn btn-light">(c) Top Rated </a>
      <a href="{{url('/api/v1/genre-movies-with-subtotals')}}" class="btn btn-primary">(d) Genres Subtotal </a>
      <a href="{{url('/api/v1/update-runtime-pages')}}" class="btn btn-info"> (e) Updt Runtime </a>
    </div>
    <div class="col-md-2"></div>
</div>
@endsection

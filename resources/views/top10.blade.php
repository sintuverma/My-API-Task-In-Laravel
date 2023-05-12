@extends('layout')
@section('page_title','Top 10 Movies Page |') {{-- dynamic title section showing --}}
@section('container')

<div class="row">
    
    <div class="col-md-2"></div>
    <div class="col-md-8">
      
      <h2>Top 10 longest Run Time Movies in JSON Data.</h2>
      <h5 class="text-danger">Paste This url(http://127.0.0.1:8000/api/v1/longest-duration-movies) on postman select get then it will show the json data.</h5>
        @php   
              print_r($jsonData); 
        @endphp
        <hr>
        
    <div class="col-md-2"></div>
</div>
@endsection
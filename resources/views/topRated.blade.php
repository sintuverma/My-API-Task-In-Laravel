@extends('layout')
@section('page_title','Top 10 Top RatedMovies |') {{-- dynamic title section showing --}}
@section('container')
<div class="row">
    
    <div class="col-md-2"></div>
    <div class="col-md-8">
        
      <h2>Top Rated Movies List in JSON Form Data.</h2>
      <h5 class="text-danger">Paste This url(http://127.0.0.1:8000/api/v1/top-rated-movies) on postman select get then it will show the json data.</h5>
        @php
          $dataArray = json_decode($topRatedJs, true);
          $i=1;
          print_r($topRatedJs);// top rated data in json format
          //$arrayObj = json_decode($topRatedJs, true);// convert to array object data because json data not print in laravel blade file.
          //print_r($arrayObj); // data in array object format
        @endphp
    
    <table class="table table-dark table-hover">
        <thead>
            <tr>
                <th>Sr No.</th>
                <th>T Const</th>
                <th>Primary Title</th>
                <th>Genres</th>
                <th>Average Rating</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($dataArray as $item)
                <tr>
                    <td>{{ $i }}</td>
                    <td>{{ $item['tconst'] }}</td>
                    <td>{{ $item['primaryTitle'] }}</td>
                    <td>{{ $item['genres'] }}</td>
                    <td>{{ $item['averageRating'] }}</td>
                </tr>
                @php
                  $i++;
                @endphp
            @endforeach
        </tbody>
    </table>
    
@endsection
@extends('layout')
@section('page_title','Add New Movies Page|') 
@section('container')
<div class="row">
  <h5 class="text-danger">Paste This url(http://127.0.0.1:8000//api/v1/new-movie) on postman select post then click on body and fill input and you will get message of success.</h5>
    <div class="col-md-3"></div>
    <div class="col-md-6">
      @php
       $lastChar = substr($tconst, -1);
       
         if (is_numeric($lastChar)) 
         {
             $newLastChar = $lastChar + 1;

             $newString = substr_replace($tconst, strval($newLastChar), -1);
         }
        //echo $newString;
      @endphp  
       <h2> Add New Movies </h2>
        <form action="/api/v1/new-movie" method="post">

            <input type="hidden" name="tconst" value="{{$newString}}">
            
            <div class="mb-3 mt-3">
              <label for="titleType" class="form-label">Title Type:</label>
              <input type="text" class="form-control" id="titleType" placeholder="Enter  Title Type" name="titleType" required>
            </div>
            <div class="mb-3">
              <label for="primaryTitle" class="form-label">Primary Title:</label>
              <input type="text" class="form-control" id="primaryTitle" placeholder="Enter Primary Title" name="primaryTitle" required>
            </div>
            <div class="mb-3">
              <label for="runtimeMinutes" class="form-label">Runtime Minutes:</label>
              <input type="number" class="form-control" id="runtimeMinutes" placeholder="Enter Runtime Minutes " name="runtimeMinutes" required>
            </div>
            <div class="mb-3">
              <label for="genres" class="form-label"> Genres:</label>
              <input type="text" class="form-control" id="genres" placeholder="Enter  Genres" name="genres" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </div>
    <div class="col-md-3"></div>
</div>

@endsection
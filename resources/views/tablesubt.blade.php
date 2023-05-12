@extends('layout')
@section('page_title',' Welcome |') 
@section('container')
<div class="row">
    <h5 class="text-danger">Paste This url(http://127.0.0.1:8000/api/v1/genre-movies-with-subtotals) on postman select get then it will show the json data.</h5>
    <table class="table table-dark table-hover">
        <thead>
            <tr>
                
                <th>Genre</th>
                <th>Primary Title</th>
                <th>Number of Votes </th>
                
            </tr>
        </thead>
        <tbody>
          @php
              $currentGenre = null;
              $totalVotes = 0;
          @endphp
  
          @foreach ($data_query as $result)
              @if ($result->genres !== $currentGenre)
                  @if ($currentGenre !== null)
                      <tr class=" text-primary">
                          <td><span></span></td>
                          <td>Total</td>
                          <td>{{ $totalVotes }}</td>
                      </tr>
                  @endif
                  <tr>
                      <td>{{ $result->genres }}</td>
                      <td>{{ $result->primaryTitle }}</td>
                      <td>{{ $result->numVotes }}</td>
                  </tr>
                  @php
                      $currentGenre = $result->genres;
                      $totalVotes = $result->numVotes;
                  @endphp
              @else
                  <tr>
                      <td>{{ $result->genres }}</td>
                      <td>{{ $result->primaryTitle }}</td>
                      <td>{{ $result->numVotes }}</td>
                  </tr>
                  @php
                      $totalVotes += $result->numVotes;
                  @endphp
              @endif
          @endforeach
  
          <tr >
              <td><span></span></td>
              <td><b>Total</b></td>
              <td>{{ $totalVotes }}</td>
          </tr>
      </tbody>
    </table>
</div>
@endsection

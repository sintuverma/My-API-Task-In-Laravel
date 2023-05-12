@extends('layout')
@section('page_title','Update Run Time Minutes |') 
@section('container')
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
      @if($result!="")
        {!!$result!!}
      @endif
       <h2>Update Run Time Movies </h2>
       <h5 class="text-danger">Paste This url(http://127.0.0.1:8000/api/v1/update-runtime-minutes) on postman select post then it will show the json result success.</h5>
        <form action="/api/v1/update-runtime-minutes" method="post">
            <select name="selectUpdate" id="selectUpdate" class="form-control">
                    <option selected> Select Option </option>
                    <option value="yes"> Update Run Time of Movies </option>
            </select>
            {{-- if you will be selected yet genres runtime will be updated if you dont want update then press home button and go back thank you  --}}
            <button type="submit" class="btn btn-primary mt-3" onclick="myAlert()">Submit</button>
        </form>
    </div>
    <div class="col-md-3"></div>
</div>
<script>
    function myAlert() 
    {
        alert(' Press ctrl+u Read comment below in </select>');
    }
</script>
@endsection
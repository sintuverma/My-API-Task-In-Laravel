<!DOCTYPE html>
<html lang="en">
<head>
  <title>@yield('page_title')</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class=" bg-dark">

<div class="container mt-5 text-primary ">
  
  <a href="{{url('/')}}" class="btn btn-danger"> Home</a>
  
    <h1 class="text-center"><b>  Welcome  My API Task </b></h1>
        @section('container')
        @show
</div>
</body>
</html>
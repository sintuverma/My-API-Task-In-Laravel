<?php

namespace App\Http\Controllers;

use App\Models\Movies;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MoviesController extends Controller
{
    // getting top 10 movies list with details which runs time higher
    public function getLongTimeMovie()
    {
        $movies=Movies::all();
        if($movies->count()>0)
        {
            //return ['movies'=>$movies];
            // SELECT tconst,titleType,primaryTitle,genres,CONVERT(runtimeMinutes, INTEGER) AS runtimeMinutes FROM movies ORDER BY runtimeMinutes DESC limit 10;
             $data = DB::table('movies')
            ->select('tconst', 'titleType', 'primaryTitle', 'genres', DB::raw('CONVERT(runtimeMinutes, SIGNED) AS runtimeMinutes'))
            ->orderBy('runtimeMinutes', 'DESC')
            ->limit(10)
            ->get();
             $jsonData= $data->toJson();
             //return $jsonData; // it will show the data on postman JSON
            return view('top10',['jsonData'=>$jsonData,]);
        }
        else
        {
            return ['movies'=>'Sorry No Data Found'];
        }

        
    }

        // show Add Movies Form
        public function addMoviesForm()
        {
        // getting last row data from movies table
        $result = DB::table('movies')
                 ->orderBy('id', 'desc')
                 ->limit(1)
                 ->value('tconst');
        //print_r($result);
        //die();
        return view('addMovies',['tconst'=>$result,]);
        }

     // function insert new movies in database movies table 

     public function storeMovies(Request $request)
     {    
        // return $formData = $request->post(); //data received in json format
        $formDataMovie = $request->post();
        
        $model = new Movies;
        $model->tconst =$request->post('tconst');
        $model->titleType =$request->post('titleType');
        $model->primaryTitle =$request->post('primaryTitle');
        $model->runtimeMinutes =$request->post('runtimeMinutes');
        $model->genres =$request->post('genres');
        $model->timestamps = false;
        $insert=$model->save();
        if($insert)
        {
              return response()->json([
                 'message' => 'Movie saved successfully',    
             ]);
            
        }
        else
        {
            return response()->json([
                'message' => 'Movie not saved Sorry',
            ]);
        }

     }

     //Top Rated Movies Filerting and sending data on topRated.blade.php page
     public function topRated()
     {
        $movies = DB::table('movies')
        ->join('ratings', 'movies.id', '=', 'ratings.id')
        ->where('ratings.averageRating', '>', 6.0)
        ->select('movies.tconst','movies.primaryTitle','movies.genres','ratings.averageRating')
        ->get();
        //print_r($movies); // data print in array object form
       // die();
        $topRatedJs = json_encode($movies);//  converting json format
        //return $topRatedJs;
        //print_r($topRatedJs);data print in JSON form
        //die();
        return view('topRated',['topRatedJs'=>$topRatedJs,]);
     }

     // subtototal numvotes logic in this function

     public function generes_subtotal_numvotes()
     {
       $result= DB::select(' SELECT genres, primaryTitle, numVotes FROM movies INNER JOIN ratings ON movies.id = ratings.id GROUP BY genres, primaryTitle,numVotes');
       ;
       
        //  echo "<pre>";
        //  print_r($result);
        //  die();
         return view('tablesubt',['data_query'=>$result]);
     }
     // open update page view only
     public function updateRuntimePage()
     {
        $result="";
        return view('updRuntime',['result'=>$result]);
     }

     // updating runtime minutes as genres vice use only sql query
     public function update_runtimeMinutes(Request $request)
     {
        //return $request->post();
       DB::select("UPDATE movies SET runtimeMinutes= CASE genres WHEN 'Documentary' THEN runtimeMinutes +15  WHEN 'Animation' THEN runtimeMinutes +30 ELSE runtimeMinutes +45 END");

        $result="<div class='alert alert-success alert-dismissible fade show' role='alert'>Genres: Documentary->15, Animation->30 And Other->45 minutes run time movies incremented  is updated successfully. <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>";
       
         return view('updRuntime',['result'=>$result]);
     }
     
}

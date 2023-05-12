<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MoviesController;
use App\Http\Controllers\RatingsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
// use api before this route as like this:->127.0.0.1:8000/api/v1/longest-duration-movies
//this api route get top 10 data;
Route::get('/v1/longest-duration-movies',[MoviesController::class,'getLongTimeMovie']);
// this api route open add new movies form page
Route::get('/Add-Movies-Form',[MoviesController::class,'addMoviesForm'])->name('addMoviesForm');//Add-Movies-Form
// this api route add new movies form data into the database movies table
Route::post('/v1/new-movie',[MoviesController::class,'storeMovies']);
//this api route is for get top rated movies form movies table.
Route::get('/v1/top-rated-movies',[MoviesController::class,'topRated']);
// this api route is for sub total numVotes 
Route::get('/v1/genre-movies-with-subtotals',[MoviesController::class,'generes_subtotal_numvotes']);

// this route open to ask the user to update or not
Route::get('/v1/update-runtime-pages',[MoviesController::class,'updateRuntimePage']);

// this route update your runtimeMinutes according to genres
Route::post('/v1/update-runtime-minutes',[MoviesController::class,'update_runtimeMinutes']);

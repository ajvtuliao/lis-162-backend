<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/user/{email}', 'App\Http\Controllers\UserController@check');
Route::get('/members', 'App\Http\Controllers\MemberController@index');
Route::get('/members/member/{id}', 'App\Http\Controllers\MemberController@show');
Route::post('/skills', 'App\Http\Controllers\SkillController@store');
Route::get('/skills', 'App\Http\Controllers\SkillController@index');
Route::get('/skills/{name}', 'App\Http\Controllers\SkillController@show');
Route::post('/members/member/{id}/edit', 'App\Http\Controllers\MemberController@update');
Route::post('/members/member/', 'App\Http\Controllers\MemberController@store');
Route::post('/members/member/{id}/delete', 'App\Http\Controllers\MemberController@destroy');


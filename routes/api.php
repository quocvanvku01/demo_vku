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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'decuong'], function() {
    Route::get('get-list-mon-hoc/{id_gv}', 'Api\decuongController@getlistmonhoc');
    Route::get('get-ke-hoach-giang-day/{id_hocphan}', 'Api\decuongController@getkehoachgiangday');
    Route::get('get-lich-ngay-hom-nay/{id_gv}', 'Api\decuongController@getlichhomnay');
    Route::get('get-lich/{id_gv}', 'Api\decuongController@getlich');

    Route::post('login-goole', 'Api\decuongController@login_google');
    Route::post('insert-lsdn', 'Api\decuongController@insert_lsdn');
});

Route::group(['middleware' => 'api','prefix' => 'auth'], function ($router) {
 
    Route::post('login', 'Api\AuthController@login');
    Route::get('logout', 'Api\AuthController@logout');
    // Route::post('register', 'Api\AuthController@register');
    // Route::post('logout', 'AuthController@logout');
    // Route::post('refresh', 'AuthController@refresh');
    // Route::post('me', 'AuthController@me');

});

Route::get('insert', 'Api\AuthController@insert');
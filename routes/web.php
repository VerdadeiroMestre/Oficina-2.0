<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/cadastrar', function(){
    return view('cadastrar_orçamento');
});

Route::get('/lista', [
    'uses' => 'Orcamento_controller@show',
    'as' => 'orcamento.show'
]);

Route::post('/create', [
    'uses' => 'Orcamento_controller@create',
    'as' => 'orcamento.create'
]);

Route::post('/filtrate', [
    'uses' => 'Orcamento_controller@filtrate',
    'as' => 'orcamento.filtrate'
]);
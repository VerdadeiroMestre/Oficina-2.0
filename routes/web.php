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

/** Rota para a view para cadastrar um orçamento */
Route::get('/cadastrar', function(){
    return view('cadastrar_orçamento');
});

/** Rota para a view que lista os dados (orçamentos) do banco de dados */
Route::get('/lista', [
    'uses' => 'Orcamento_controller@show',
    'as' => 'orcamento.show'
]);

/** Rota que chama um metodo do controller que adicionará o orçamento ao banco de dados */
Route::post('/create', [
    'uses' => 'Orcamento_controller@create',
    'as' => 'orcamento.create'
]);

/** Rota que chama um metodo do controller que filtra os dados */
Route::post('/filtrate', [
    'uses' => 'Orcamento_controller@filtrate',
    'as' => 'orcamento.filtrate'
]);

/** Rota que chama um metodo do controller que adicionará o orçamento ao banco de dados */
Route::get('/orcamentos/{orcamento}/editar', [
    'uses' => 'Orcamento_controller@edit',
    'as' => 'orcamento.editar'
]);

/** Rota que chama um metodo do controller que adicionará o orçamento ao banco de dados */
Route::post('/orcamentos/{orcamento}', [
    'uses' => 'Orcamento_controller@update',
    'as' => 'orcamento.update'
]);

/** Rota que chama um metodo do controller que adicionará o orçamento ao banco de dados */
Route::delete('/orcamentos/{orcamento}', [
    'uses' => 'Orcamento_controller@destroy',
    'as' => 'orcamento.destroy'
]);

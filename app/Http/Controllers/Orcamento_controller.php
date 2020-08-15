<?php

namespace App\Http\Controllers;

use App\Orcamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Orcamento_controller extends Controller
{
    /*
    *   Metodo que gera um pedido
    */
    public function create(Request $request){
        $orcamento = new Orcamento();

        $cliente = $request['cliente'];
        $vendedor = $request['vendedor'];
        $data = $request['data'];
        $hora = $request['hora'];
        $valor = $request['valor'];
        $descricao = $request['descricao'];

        $orcamento->cliente = $cliente;
        $orcamento->vendedor = $vendedor;
        $orcamento->data = $data;
        $orcamento->hora = $hora;
        $orcamento->valor = $valor;
        $orcamento->descricao = $descricao;

        $orcamento->save();
        return redirect()->back();

    }

    /*
    *   Metodo que mostra os pedidos
    */
    public function show(){
        $orcamentos = DB::table('orcamentos')->orderByDesc('data')->get();
        return view('lista',['orcamentos' => $orcamentos]);
    }

    public function filtrate(Request $request){
        if($request['cliente']){
            $orcamentos = DB::table('orcamentos')
            ->where('cliente', 'like' , '%'.$request['cliente'].'%')
            ->orderByDesc('data')->get();
            
        }else if($request['vendedor']){
            $orcamentos = DB::table('orcamentos')
            ->where('vendedor', 'like' , '%'.$request['vendedor'].'%')
            ->orderByDesc('data')->get();

        }else if($request['start']){
            $orcamentos = DB::table('orcamentos')
            ->where([ ['data', '>=', $request['start']] , ['data', '<=', $request['end']] ])
            ->orderByDesc('data')->get();

        }
        return view('lista',['orcamentos' => $orcamentos]);
    }
}

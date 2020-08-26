<?php

namespace App\Http\Controllers;

use App\Orcamento;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\OrcamentoFormRequest;

class Orcamento_controller extends Controller
{
    /** Metodo que cria e salva um orçamento
     * @param request - dados fornecidos pelo usuário que compõem um orçamento
     * @return View - Retorna para a view de cadastro com uma variavel booleana indicando o sucesso da operação
    */
    public function create(OrcamentoFormRequest $request){

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
        return redirect()->back()->with('success', true);

    }


    /** Inicializa a view Lista com as informações de todos os orçamentos
     * @return View - View com todos os orçamentos
    */    
    public function show(){
        $orcamentos = Orcamento::orderBy('data','desc')->paginate(15);
        return view('lista',['orcamentos' => $orcamentos]);
    }

    /** Redireciona para a view de edição de orçamento
     * @return View - View para edição de algum orçamento e uma variavel contendo os dados do orçamento a ser editado
    */    
    public function edit($orcamento_id){
        $orcamento = Orcamento::findOrFail($orcamento_id);
        return view('editar',['orcamento' => $orcamento]);
    }

    /** Atualiza os dados de um orçamento com dados fornecidos pelo usuário e redireciona para a view com todos os orçamentos */ 
    public function update(OrcamentoFormRequest $request ,$orcamento_id){
        $orcamento = Orcamento::findOrFail($orcamento_id);
        
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

        return redirect()->route('orcamento.show');
    }

    /** Deleta um orçamento e redireciona para a view com todos os orçamentos */    
    public function destroy($orcamento_id){
        Orcamento::destroy($orcamento_id);
        return redirect()->route('orcamento.show');
    }


    /**
     * Filtra os dados baseado na requisição do usuário
     * @param Request - dados passados pelo usuário pra filtrar a lista
     * @return View - View com um array com todos os dados já filtrados
     */
    public function filtrate(Request $request){
        if($request['cliente']){
            
            $orcamentos = Orcamento::where('cliente', 'like' , '%'.$request['cliente'].'%')->orderBy('data','desc')->paginate(15);
            
        }else if($request['vendedor']){
            
            $orcamentos = Orcamento::where('vendedor', 'like' , '%'.$request['vendedor'].'%')->orderBy('data','desc')->paginate(15);

        }else if($request['start']){
            
            $orcamentos = Orcamento::where([ ['data', '>=', $request['start']] , ['data', '<=', $request['end']] ])->orderBy('data','desc')->paginate(15);

        }else{
            return redirect()->back()->with('erro', true);
        }
        return view('lista',['orcamentos' => $orcamentos]);
    }
}

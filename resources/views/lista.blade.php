<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Oficina 2.0</title>
  </head>
  <body>
  <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="btn btn-lg text-white" href="/" role="button">Home</a>
        <a class="btn btn-lg text-white" href="/cadastrar" role="button">Cadastrar orçamento</a>
    </nav>
  <!-- /Navbar -->  

  
    <div class="container justify-content-center text-center">
      <!-- Mensagem de erro -->
      @if (session('erro') === true)
        <div class="d-flex justify-content-center text-left">
            <div class="alert alert-danger alert-dismissible w-50 float-center m-4" role="dialog">
                <h4 class="alert-heading">Ouve algum erro</h4>
                <span>Não foi possivel filtrar os dados, os campos não foram preenchidos corretamente.</span>
                <hr>
                <span>Tente novamente.</span>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
      @endif
      <!-- /Mensagem de erro -->

      <!-- Filtrar -->
        <div class="card m-auto col-10">
          <div class=" card-header">
            <Label for="option">Filtrar por:</Label>
            <button class="btn btn-info mx-2" data-toggle="collapse" data-target="#collapseData" aria-expanded="false" aria-controls="collapseData">
              DATA
            </button>
            <button class="btn btn-info mx-2" data-toggle="collapse" data-target="#collapseCliente" aria-expanded="false" aria-controls="collapseCliente">
              CLIENTE
            </button>
            <button class="btn btn-info mx-2" data-toggle="collapse" data-target="#collapseVendedor" aria-expanded="false" aria-controls="collapseVendedor">
              VENDEDOR
            </button>
            <a class="btn btn-warning " href="/lista" role="button">Reset</a>
          </div>
          <div class="card-body " id="accordion" style="height:100px;">
            <div id="collapseData" class="collapse " data-parent="#accordion">
              <form action="{{route('orcamento.filtrate')}}" method="post">
              @csrf
                  <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text" id="start">Inicio</span>
                      </div>
                      <input type="date" name="start" class="form-control" placeholder="Inicio do periodo" aria-describedby="start">
                      <div class="input-group-prepend">
                          <span class="input-group-text" id="end">Fim</span>
                      </div>
                      <input type="date" name="end" class="form-control" placeholder="Fim do periodo" aria-describedby="end">
                      <input type="submit" value="FILTRAR" class="btn btn-warning mx-2">
                  </div>
              </form>
            </div>
            <div id="collapseCliente" class="collapse" data-parent="#accordion">
              <form action="{{route('orcamento.filtrate')}}" method="post">
              @csrf
                  <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text" id="cliente">Cliente</span>
                      </div>
                      <input type="text" name="cliente" class="form-control" placeholder="Nome do cliente" aria-describedby="cliente">
                      <input type="submit" value="FILTRAR" class="btn btn-warning mx-2">
                  </div>
              </form>
            </div>
            <div id="collapseVendedor" class="collapse" data-parent="#accordion">
              <form action="{{route('orcamento.filtrate')}}" method="post">
              @csrf
                  <div class="input-group m-auto">
                      <div class="input-group-prepend">
                          <span class="input-group-text" id="vendedor">Vendedor</span>
                      </div>
                      <input type="text" name="vendedor" class="form-control" placeholder="Nome do Vendedor" aria-describedby="cliente">
                      <input type="submit" value="FILTRAR" class="btn btn-warning mx-2">
                  </div>
              </form>
            </div>
          </div>

          <!-- /Filtrar -->

          <!-- Tabela com os dados -->
          </div>
          <div class="col-12 justify-content-center d-flex">
            <table class="table table-striped table-hover table-bordered col-10">
              <tr class="thead-dark">
                  <th>Data</th>
                  <th>Hora</th>
                  <th>Cliente</th>
                  <th>Vendedor</th>
                  <th>Valor</th>
                  <th>Descricao</th>
                  <th></th>
              </tr>
              @foreach($orcamentos as $orcamento)
              <tr>
                  <td>{{$orcamento->data}}</td>
                  <td>{{$orcamento->hora}}</td>
                  <td>{{$orcamento->cliente}}</td>
                  <td>{{$orcamento->vendedor}}</td>
                  <td>R${{$orcamento->valor}}</td>
                  <td>{{$orcamento->descricao}}</td>
                  <td class="d-flex h-100">
                      <a class="btn btn-sm btn-primary text-white m-auto" href="{{route('orcamento.editar',['orcamento' => $orcamento])}}">EDITAR</a>
                      <form class="d-inline m-auto" action="{{route('orcamento.destroy',['orcamento' => $orcamento])}}" method="POST">
                        @method('delete')
                        @csrf
                        <button class="btn btn-sm btn-danger text-white" type="submit">DELETAR</button>
                      </form>
                  </td>
              </tr>
              @endforeach
            </table>
          </div>
        
          <div class="row">
            <div class="col-12 justify-content-center d-flex">{{$orcamentos->links()}}</div>
          </div>

          <!-- /Tabela com os dados -->
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
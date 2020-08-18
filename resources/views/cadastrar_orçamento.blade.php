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
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="btn btn-lg text-white" href="/" role="button">Home</a>
        <a class="btn btn-lg text-white" href="/lista" role="button">Lista de orçamentos</a>
    </nav>

    @if ($errors->any())
    <div class="d-flex justify-content-center">
        <div class="alert alert-danger alert-dismissible w-50 float-center m-4" role="dialog">
            <h4 class="alert-heading">Ocorreu um erro</h4>
            <span>Parece que os campos não foram preenchidos corretamente.</span>
            <hr>
            <span>Tente novamente.</span>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
        
    @endif

    @if (session('success') === true)
    <div class="d-flex justify-content-center">
        <div class="alert alert-success alert-dismissible w-50 float-center m-4" role="dialog">
            <h4 class="alert-heading">Sucesso</h4>
            <span>Orçamento cadastrado com sucesso</span>
            <hr>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
    @endif

    <div class="container d-flex justify-content-center bg-light rounded">
        <div class="card">
            <div class="card-header">
            <h1>Registrar Orçamento</h1>
            </div>
            <div class="card-body">
                <form action="{{route('orcamento.create')}}" method="post" id="cadastro">
                    @csrf
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="cliente">Cliente</span>
                        </div>
                        <input type="text" name="cliente" class="form-control" placeholder="Nome do cliente" aria-describedby="cliente">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="vendedor">Vendedor</span>
                        </div>
                        <input type="text" name="vendedor" class="form-control" placeholder="Nome do vendedor" aria-describedby="vendedor">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="data">Data</span>
                        </div>
                        <input type="date" name="data" class="form-control" placeholder="Data do orçamento" aria-describedby="data">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="hora">Hora</span>
                        </div>
                        <input type="time" name="hora" class="form-control" placeholder="Hora do orçamento" aria-describedby="hora">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="valor">Valor</span>
                        </div>
                        <input type="number" step="0.01" name="valor" class="form-control" placeholder="Valor do orçamento" aria-describedby="valor">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="cliente">Descrição</span>
                        </div>
                        <textarea class="form-control" aria-describedby="cliente"  form="cadastro" name="descricao"></textarea>
                    </div>
                    <div class="form-group float-right">
                    <button type="submit" class="btn btn-primary" form="cadastro">
                        CADASTRAR
                    </button>
                    </div>
                </form>
            </div>
            
        </div>
        
    </div>

    <!-- Modal -->
    <div class="modal fade" id="success" tabindex="-1" role="dialog" aria-labelledby="successLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="successLabel">Orçamento salvo</h5>
                </div>
                <div class="modal-body">
                    Orçamento salvo com sucesso!
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" form="cadastro">
                        Ok
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
            });
        }, false);
        })();
    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
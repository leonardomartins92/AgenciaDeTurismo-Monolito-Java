<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>Passagens</title>
    <style>
        table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        margin-left: auto;
        margin-right: auto;
        }
    </style>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="pesquisaPacote.jsp">Pacotes</a>
          <a class="nav-link" href="pesquisaPassagem.jsp">Passagens</a>
          <a class="nav-link" href="pesquisaCliente.jsp">Clientes</a>
          <a class="nav-link" href="pesquisaFuncionario.jsp">Funcion�rios</a>
          <a class="nav-link" href="pesquisaEmpresa.jsp">Empresas</a>
          <a class="nav-link" href="pesquisaDestino.jsp">Destinos</a>
          <a class="nav-link" href="pesquisaRanking.jsp">Ranking</a>
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          
        </div>
      </div>
    </div>
  </nav>
</head>
<body style="text-align: center;">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<table class="table table-striped">

    <label for="nome">Nome do Cliente</label>
    <input type="text" name="nome" id="nome">

    <label for="origem">Origem</label>
    <input type="text" name="origem" id="origem">

    <label for="destino">Destino</label>
    <input type="text" name="destino" id="destino"><br>

    <label for="empresa">Empresa</label>
    <input type="text" name="empresa" id="empresa">

    <label for="dataSaida">Data de Saída</label>
    <input type="text" name="dataSaida" id="dataSaida">

    <label for="horaSaida">Hora de Saída</label>
    <input type="text" name="horaSaida" id="horaSaida">

    <br><br>
    <tr>
        <th>ID</th>
        <th>Cliente</th>
        <th>Origem</th>
        <th>Destino</th>
        <th>Empresa</th>
        <th>Data de Saída </th>
        <th>Hora de Saída</th>
        <th colspan="2">Ação</th>
    </tr>
    <tr>
        <td>1</td>
        <td>João</td>
        <td>Juiz de Fora</td>
        <td>Londres</td>
        <td>Gol</td>
        <td>01/01/2021</td>
        <td>13:30</td>
        <div class="list-group">
      <td><a href="manterPassagem.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
      <td><a href="manterPassagem.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
      </div>
    </tr>
    <tr>
        <td>2</td>
        <td>Maria</td>
        <td>Juiz de Fora</td>
        <td>Madrid</td>
        <td>Gol</td>
        <td>01/01/2021</td>
        <td>13:30</td>
        <div class="list-group">
      <td><a href="manterPassagem.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
      <td><a href="manterPassagem.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
      </div>
    </tr>
    <tr>
        <td>3</td>
        <td>José</td>
        <td>Juiz de Fora</td>
        <td>Tokyo</td>
        <td>Gol</td>
        <td>01/01/2021</td>
        <td>13:30</td>
        <div class="list-group">
      <td><a href="manterPassagem.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
      <td><a href="manterPassagem.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
      </div>
    </tr>

</table>
<div class="col-md-2 ">
  <div class="list-group">
    <a href="manterPassagem.jsp?acao=adicionar" class="list-group-item list-group-item-action list-group-item-success">Adicionar</a>
  </div>
  </div>
</body>
</html>
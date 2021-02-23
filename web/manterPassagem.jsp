<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

  <title>Cadastro de Passagem</title>

 
</head>
<body style="width:70%;">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

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
          <a class="nav-link" href="pesquisaFuncionario.jsp">Funcionários</a>
          <a class="nav-link" href="pesquisaEmpresa.jsp">Empresas</a>
          <a class="nav-link" href="pesquisaRanking.jsp" aria-disabled="true">Ranking</a>
        
          
        </div>
      </div>
    </div>
  </nav>



<div class="container">
  <div class="row align-items-start">
    <div class="col">

    </div>
    <div class="col">
      <div class="col">
        <form class="row g-3">
          <div class="col-md-12">
            <h2><span id="acao"></span> Passagem</h2>
            <label for="inputPacote" class="form-label">Pacote</label>
            <select id="inputPacote" class="form-select">
              <option selected>1</option>
              <option>2</option>
              <option>3</option>
            </select>
          </div>
          <div class="col-md-12">
            <label for="inputOrigin" class="form-label">Origem</label>
            <select id="inputOrigin" class="form-select">
              <option selected>Brasil</option>
              <option>México</option>
              <option>Portugal</option>
            </select>
          </div>
          <div class="col-md-12">
            <label for="inputDestiny" class="form-label">Destino</label>
            <select id="inputDestiny" class="form-select">
              <option selected>Brasil</option>
              <option>México</option>
              <option>Portugal</option>
            </select>
          </div>
          <div class="col-md-12">
            <label for="inputCompany" class="form-label">Empresa</label>
            <select id="inputCompany" class="form-select">
              <option selected>GOL</option>
              <option>LATAM</option>
              <option>AZUL</option>
            </select>
          </div>
          <div class="col-md-6">
            <label for="inputDateGo" class="form-label">Data de Ida</label>
            <input type="date" class="form-control" id="inputDateGo">
          </div>
          <div class="col-md-6">
            <label for="inputDateReturn" class="form-label">Data de Ida</label>
            <input type="date" class="form-control" id="inputDateReturn">
          </div>
          <div class="col-12">
            <button type="submit" class="btn btn-primary">Salvar</button>
          </div>



        </form>
      </div>
    </div>
  </div>
</div>


<script src="./Scripts/main.js"></script>
</body>
</html>
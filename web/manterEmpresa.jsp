<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>Cadastro de Empresa</title>

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
         
          <a class="nav-link" href="pesquisaRanking.jsp">Ranking</a>
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          
        </div>
      </div>
    </div>
  </nav>
</head>
<body style="width: 70%;">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<div class="container">
    <div class="row align-items-start">
        <div class="col">

        </div>
        <div class="col">
            <form class="row g-3">
                <h2><span id="acao"></span> Empresa</h2>
                <div class="col-12">
                    <label for="name" class="form-label">Nome</label>
                    <input type="text" class="form-control" id="name" placeholder="">
                </div>
                <div class="col-12">
                    <label for="cnpj" class="form-label">CNPJ</label>
                    <input type="text" class="form-control" id="cnpj" placeholder="">
                </div>

                <div class="col-md-6 ">
                    <label for="inputEmail4" class="form-label">Email</label>
                    <input type="email" class="form-control" id="inputEmail4">
                </div>
                <div class="col-md-6">
                    <label for="inputTelefone" class="form-label">Telefone</label>
                    <input type="text" class="form-control" id="inputTelefone">
                </div>
                <div class="col-md-4">
                    <label for="cep" class="form-label">CEP</label>
                    <input type="text" class="form-control" id="cep" maxlength="9">
                </div>
                <div class="col-md-2">
                    <label for="uf" class="form-label">UF</label>
                    <input type="text" class="form-control" name="uf" id="uf">
                </div>

                <div class="col-md-6">
                    <label for="localidade" class="form-label">Cidade</label>
                    <input type="text" class="form-control" id="localidade">
                </div>

                <div class="col-md-8">
                    <label for="logradouro" class="form-label">Logradouro</label>
                    <input type="text" class="form-control" id="logradouro" placeholder="">
                </div>
                <div class="col-md-4">
                    <label for="numero" class="form-label">Número</label>
                    <input type="text" class="form-control" id="numero" placeholder="">
                </div>
                <div class="col-12">
                    <label for="numero2" class="form-label">Complemento</label>
                    <input type="text" class="form-control" id="numero2" placeholder="">
                </div>

                <div class="col-md-4">
                    <label for="inputType" class="form-label">Tipo</label>
                    <select id="inputType" class="form-select">
                        <option selected>Acomodação</option>
                        <option>Transporte</option>

                    </select>
                </div>
                <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="./Scripts/main.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

  <title>Cadastro de Pacote</title>
  <style>
    table, th{
      border: 1px solid black;
      border-collapse: collapse;
      margin-left: auto;
      margin-right: auto;
    }
    </style>
</head>
<body style="text-align: center;">
  
    <h2><span id="acao"></span> Pacote</h2>
    <p> Pacote número: 1239</p>
    <form method="post" class="header-form">
    <label for="client">Cliente:</label>
    <select name="client" id="client">
      <option value="">Cliente</option>
      <option value="joao">João</option>
      <option value="maria">Maria</option>
      <option value="jose">José</option>
    </select><br>

    <label for="worker">Funcionários:</label>
    <select name="worker" id="worker">
      <option value="">Funcionário</option>
      <option value="joao">João</option>
      <option value="maria">Maria</option>
      <option value="jose">José</option>
    </select><br>

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


<body style="width:70%">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<% if (request.getParameter("acao").equals("excluir")) { 
         request.setAttribute("hide", "disabled");  
         request.setAttribute("linkPassagem", "");
    } 
else{
    request.setAttribute("hide", "" ); 
    request.setAttribute("linkPassagem", "manterPassagem.jsp?acao=adicionar");
}
    
%>  

<div class="container">
  <div class="row align-items-start">
    <div class="col">

<<<<<<< HEAD
      <table>
        <tr>
          <button>
            +
          </button>
        </tr>
        <tr>
          <button>
            -
          </button>
        </tr>
      </th>
      </table>
    </table>
    <table><br>
      <input type="submit" value="Salvar">
      <button>Cancelar</button>
    </table>
  </form>
  <script src="./Scripts/main.js"></script>
=======
    </div>
    <div class="col">
      <div class="col">
        <form class="row g-3">
            <h2>Cadastro de Pacote - <%= request.getParameter("acao")%></h2>  
         <p> Pacote n�mero: 1239</p>
         <div class="col-md-12">
            <label for="inputClient" class="form-label">Cliente</label>
            <select id="inputClient" class="form-select" <%= request.getAttribute("hide")%>>
              <option selected>Jos�</option>
              <option>Maria</option>
              <option>Pedro</option>
            </select>
          </div> 
          <div class="col-md-12">
            <label for="inputStaff" class="form-label">Funcion�rio</label>
            <select id="inputStaff" class="form-select" <%= request.getAttribute("hide")%>>
              <option selected>Bruno</option>
              <option>Leonardo</option>
              <option>Paulo</option>
            </select>
          </div>  
          <div class="col-md-4">
              <button>  +  </button>
              <button>  -  </button>
          </div>
                          
         <div class="card align-items-center" >     
         
               <div class="col-8">   
               <a href="<%= request.getAttribute("linkPassagem")%>" class="list-group-item list-group-item-action list-group-item-primary" >Cadastrar Passagem</a>
               </div>   
               <div class="col-md-8">      
                    
                 <label for="to">Destino:</label>
                    <select name="to" id="to" class="form-select" <%= request.getAttribute("hide")%>>
                      <option value="jf">Juiz de Fora</option>
                      <option value="bh">Belo Horizonte</option>
                      <option value="sp">S�o Paulo</option>
                    </select>
                   </div>
                 <div class="col-md-8">    
                 <label for="corp">Estadia:</label>
                <select name="corp" id="corp" class="form-select" <%= request.getAttribute("hide")%>>
                  <option value="azul">Hotel A</option>
                  <option value="gol">Hotel B</option>
                  <option value="latam">Hostel A</option>
                </select>
                 </div>
                 <div class="col-md-8"> 
                 <label for="dataInicial">Data Inicial</label>
                 <input type="date" name="dataIncial" id="dataIncial" class="form-control" <%= request.getAttribute("hide")%>>
                 </div>
                 <div class="col-md-8"> 
                 <label for="dataFinal">Data Final</label>
                 <input type="date" name="dataFinal" id="dataIncial" class="form-control" <%= request.getAttribute("hide")%>>
                 </div> 
           
         </div>    
      <div class="col-12">
      <button type="submit" class="btn btn-primary">Confirmar</button>
      </div>
        </form>
      </div>
    </div>
  </div>
</div>
>>>>>>> beb65c44dbb094623683f16dc6d703ef842b8885
</body>
</html>
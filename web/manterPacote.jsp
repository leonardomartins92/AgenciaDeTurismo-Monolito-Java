<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

  <title>Cadastro de Pacote</title>
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <script> 
   var cont = 0;
   var color = "primary";
   
   function submeteFormularios(){
		document.form1.submit();
		document.form2.submit();
	}
  
    function addNewTravel() {
      cont++;
      if (cont === 1){
           color = "success";
      }  
      else if (cont === 2){
           color = "dark";
      } 
      else if (cont === 3){
           color = "warning";
      }
      else{
           color = "primary";
      }
      $("div #travelBlock").append(
        '<form class="row g-3">'+     
        '<li class="list-group-item list-group-item-'+color+'">'+
        '<div class="card align-items-center">'+
        '<div class="col-md-8">' +
        '<label for="to">Destino:</label>' +
        '<select name="to" id="to" class="form-select">' +
        '<option value="jf">Juiz de Fora</option>' +
        '<option value="bh">Belo Horizonte</option>' +
        '<option value="sp">S�o Paulo</option>' +
        '</select>' +
        '</div>' +
        '<div class="col-md-8">' +
        '<label for="corp">Estadia:</label>' +
        '<select name="corp" id="corp" class="form-select">' +
        '<option value="azul">Hotel A</option>' +
        '<option value="gol">Hotel B</option>' +
        '<option value="latam">Hostel A</option>' +
        '</select>' +
        '</div>' +
        '<div class="col-md-8">' +
        '<label for="dataInicial">Data Inicial</label>' +
        '<input type="date" name="dataIncial" id="dataIncial" class="form-control">' +
        '</div>' +
        '<div class="col-md-8">' +
        '<label for="dataFinal">Data Final</label>' +
        '<input type="date" name="dataFinal" id="dataIncial" class="form-control">' +
        '</div>' + '<div class="col-8">' +
        '<a href="manterPassagem.jsp?acao=adicionar"' +
        'class="list-group-item list-group-item-action list-group-item-primary">Cadastrar Passagem</a>' +
        '</div>' + '<table class="table table-striped">' +' <tr>' +
        '<th>Origem</th>' +
        '<th>Destino</th>' +
        '<th>Empresa</th>'+
        '<th>Data de Sa�da </th>'+
        '<th> Selecionar</th>'+
        '</tr>'+
        '<tr>'+
        '<td>Juiz de Fora</td>'+
        '<td>Londres</td>'+
        '<td>Gol</td>'+
        '<td>01/01/2021</td>'+
        '<td><input type="checkbox" name="passagem"></td>'+
        '</tr>'+
        '<tr>'+
        '<td>Juiz de Fora</td>'+
        '<td>Madrid</td>'+
        '<td>Gol</td>'+
        '<td>01/01/2021</td>'+
        '<td><input type="checkbox" name="passagem"></td>'+
        '</tr>'+
       '</table>'+
       '</div></li></form><br>');
    }
  </script>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Home</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="pesquisaPacote.jsp">Pacotes</a>
          <a class="nav-link" href="pesquisaPassagem.jsp">Passagens</a>
          <a class="nav-link" href="pesquisaCliente.jsp">Clientes</a>
          <a class="nav-link" href="pesquisaFuncionario.jsp">Funcion�rios</a>
          <a class="nav-link" href="pesquisaEmpresa.jsp">Empresas</a>
    
          <a class="nav-link" href="pesquisaRanking.jsp">Ranking</a>
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>

        </div>
      </div>
    </div>
  </nav>
</head>

<body style="width:70%">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
    crossorigin="anonymous"></script>

  <div class="container">
    <div class="row align-items-start">
      <div class="col">

      </div>
      <div class="col">
        <div class="col">
            
          <form class="row g-3" onsubmit="myFunction()">
            <h2><span id="acao"></span> Pacote</h2>
            <p> Pacote n�mero: 1239</p>
            <div class="col-md-12">
              <label for="inputClient" class="form-label">Cliente</label>
              <select id="inputClient" class="form-select">
                <option selected>Jos�</option>
                <option>Maria</option>
                <option>Pedro</option>
              </select>
            </div>
            <div class="col-md-12">
              <label for="inputStaff" class="form-label">Funcion�rio</label>
              <select id="inputStaff" class="form-select">
                <option selected>Bruno</option>
                <option>Leonardo</option>
                <option>Paulo</option>
              </select>
            </div>
            <div class="col-md-2" style="text-align: center;">
              <a class="list-group-item list-group-item-success" onclick="addNewTravel()"> + </a>

            </div>
            <div class="col-md-2" style="text-align: center;">

              <a class="list-group-item list-group-item-danger" href=""> - </a>
            </div>
             
            <ul class="list-group">
            <form class="row g-3" id="form1">
            <li class="list-group-item">
            <div class="card align-items-center">

               <div class="col-md-8">

                <label for="to">Destino:</label>
                <select name="to" id="to" class="form-select">
                  <option value="jf">Juiz de Fora</option>
                  <option value="bh">Belo Horizonte</option>
                  <option value="sp">S�o Paulo</option>
                </select>
              </div>
              <div class="col-md-8">
                <label for="corp">Estadia:</label>
                <select name="corp" id="corp" class="form-select">
                  <option value="azul">Hotel A</option>
                  <option value="gol">Hotel B</option>
                  <option value="latam">Hostel A</option>
                </select>
              </div>
              <div class="col-md-8">
                <label for="dataInicial">Data Inicial</label>
                <input type="date" name="dataIncial" id="dataIncial" class="form-control">
              </div>
              <div class="col-md-8">
                <label for="dataFinal">Data Final</label>
                <input type="date" name="dataFinal" id="dataIncial" class="form-control">
              </div>
                <div class="col-8">
                <a href="manterPassagem.jsp?acao=adicionar"
                  class="list-group-item list-group-item-action list-group-item-primary">Cadastrar Passagem</a>
              </div>
                <!-- Passagens com cliente igual ao do pacote e com origem ou destino igual ao destino -->
                
            <table class="table table-striped">
                <tr>
                    <th>Origem</th>
                    <th>Destino</th>
                    <th>Empresa</th>
                    <th>Data de Sa�da </th>
                    <th> Selecionar</th>
                </tr>
                <tr>
                    <td>Juiz de Fora</td>
                    <td>Londres</td>
                    <td>Gol</td>
                    <td>01/01/2021</td>
                    <td><input type="checkbox" name="passagem"></td>
                </tr>
                <tr>
                    <td>Juiz de Fora</td>
                    <td>Madrid</td>
                    <td>Gol</td>
                    <td>01/01/2021</td>
                    <td><input type="checkbox" name="passagem"></td>
                </tr>
             </table>
            </div></li></form><br>
           
            <div id="travelBlock"></div><br>
            </ul>
           
            <div class="col-12">
              <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="./Scripts/main.js"></script>
</body>

</html>
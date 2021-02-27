<!DOCTYPE html>
<html lang="pt-br">
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
   
</head>
<body style="text-align: center;">
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
       
        </div>
      </div>
    </div>
  </nav>

    <div class="container">
    <div class="row align-items-start">
    <div class="col">
     <select class="form-select" aria-label="Default select example">
       <option value="1">Id da Passagem</option>
       <option value="1">Id do Pacote</option>
       <option value="2">Origem</option>
  
    </select>
    </div>
    <div class="col">
     <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
    </div>
    <div class="col">
     <button class="btn btn-outline-success" type="submit">Buscar</button>
    </div>
    </div>
               
       
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Pacote</th>
        <th>Origem</th>
        <th colspan="2">Ação</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${passagens}" var="passagem">
         <tr>  
            <td><c:out value="${passagem.id}" /></td>
            <td><c:out value="${passagem.idPacote}" /></td>
            <td><c:out value="${passagem.origem}" /></td>
            <td><a href="manterPassagem.jsp?acao=editar&cod=<c:out value="${passagem.id}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
            <td><a href="manterPassagem.jsp?acao=excluir&cod=<c:out value="${passagem.id}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
         </tr>   
        </c:forEach>
    </tbody>
</table>
<form action="ManterPassagemController?acao=a" method="post">        
<div class="col-md-2 ">
  <div class="list-group">
    <input class="list-group-item list-group-item-action list-group-item-success" type="submit" name="btnIncluir" value="Incluir">
  </div>
  </div>
</form>          
</body>
</html>
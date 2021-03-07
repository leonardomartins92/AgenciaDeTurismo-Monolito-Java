<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Passagens</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>

    <div class="container">
        <div class="row align-items-start">
            <div class="col">
                <select class="form-select" aria-label="Default select example">
                    <option value="1">Id da Passagem</option>
                    <option value="2">Id do Pacote</option>
                    <option value="3">Origem</option>

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
                        <td><a href="ManterPassagemController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${passagem.id}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
                        <td><a href="ManterPassagemController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${passagem.id}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                    </tr>   
            </c:forEach>
            </tbody>
        </table>
             
            <div class="col-md-2 ">
                <div class="list-group">
                     <a href="ManterPassagemController?acao=preparaOperacao&operacao=Adicionar" class="list-group-item list-group-item-action list-group-item-success">Adicionar</a>
                </div>
            </div>
             
    </body>
</html>
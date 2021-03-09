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
                        <td><a href="ManterPassagemController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${passagem.id}" />" class="btn btn-primary btn-sm">Editar</a></td>
                        <td><a href="ManterPassagemController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${passagem.id}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                    </tr>   
            </c:forEach>
            </tbody>
        </table>
             
            <div class="col-md-2 ">
                <div class="list-group">
                     <a href="ManterPassagemController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success">Adicionar</a>
                </div>
            </div>
             
    </body>
</html>
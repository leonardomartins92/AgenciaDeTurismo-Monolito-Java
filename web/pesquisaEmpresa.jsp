<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <title>Empresas</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>

    <table class="table table-striped">


        <thead>
            <tr>
                <th>Nome</th>
                <th>Tipo</th>
                <th colspan="2">Ação</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach items="${empresas}" var="empresa">
                <tr> 
                    <td><c:out value="${empresa.nome}" /></td>
                    <td><c:out value="${empresa.tipo}" /></td>
                    <td><a href="ManterEmpresaController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${empresa.cnpj}" />" class="btn btn-primary btn-sm">Editar</a></td>
                    <td><a href="ManterEmpresaController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${empresa.cnpj}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                </tr>  
            </c:forEach>
        </tbody>

    </table>
    <div class="col-md-2 ">
        <div class="list-group">
            <a href="ManterEmpresaController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success ">Adicionar</a>
        </div>
    </div>
</body>
</html>
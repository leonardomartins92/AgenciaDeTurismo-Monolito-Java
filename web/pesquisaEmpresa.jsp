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


        <label for="nome">Nome da Empresa</label>
        <input type="text" name="nome" id="nome">

        <label for="CNPJ">CNPJ</label>
        <input type="text" name="CNPJ" id="CNPJ">

        <label for="tipo">Tipo</label>
        <input type="text" name="tipo" id="tipo">

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
                    <td><a href="ManterPassagemController?acao=editar&cod=<c:out value="${cliente.cpf}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
                    <td><a href="ManterPassagemController?acao=excluir&cod=<c:out value="${cliente.cpf}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                </tr>  
            </c:forEach>
        </tbody>

    </table>
    <div class="col-md-2 ">
        <div class="list-group">
            <a href="manterEmpresa.jsp?acao=adicionar" class="list-group-item list-group-item-action list-group-item-success">Adicionar</a>
        </div>
    </div>
</body>
</html>
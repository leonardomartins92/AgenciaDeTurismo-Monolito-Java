<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Clientes</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>


    <label for="nome">Nome do Cliente</label>
    <input type="text" name="nome" id="nome">

    <label for="CPF">CPF</label>
    <input type="text" name="CPF" id="CPF">

    <label for="UF">UF</label>
    <input type="text" name="UF" id="UF">

    <label for="Cidade">Cidade</label>
    <input type="text" name="Cidade" id="Cidade"><br><br>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>CPF</th>
                <th colspan="2">Ação</th>
            </tr>
        </thead>

        <tbody>

            <c:forEach items="${clientes}" var="cliente">
                <tr> 
                    <td><c:out value="${cliente.name}" /></td>
                    <td><c:out value="${cliente.email}" /></td>
                    <td><c:out value="${cliente.telefone}" /></td>
                    <td><c:out value="${cliente.cpf}" /></td>
                    <td><a href="ManterClienteController?acao=editar&cod=<c:out value="${cliente.cpf}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
                    <td><a href="ManterClienteController?acao=excluir&cod=<c:out value="${cliente.cpf}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                </tr>  
            </c:forEach>
        </tbody>

    </table>

    <div class="col-md-2 ">
        <div class="list-group">
            <a href="ManterClienteController?acao=adicionar&id=null" class="list-group-item list-group-item-action list-group-item-success">Adicionar</a>
        </div>
    </div>

</body>
</html>
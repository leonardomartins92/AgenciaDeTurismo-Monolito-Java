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
                    <td><a href="ManterClienteController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${cliente.cpf}" />" class="btn btn-primary btn-sm">Editar</a></td>
                    <td><a href="ManterClienteController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${cliente.cpf}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                </tr>  
               
            </c:forEach>
        </tbody>

    </table>

    <div class="col-md-2 ">
                <div class="list-group">
                   <a href="ManterClienteController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success">Adicionar</a>
                </div>
    </div>
</body>
</html>
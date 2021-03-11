<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Pacotes</title>
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
                    <th>CPF do Funcionário</th>
                    <th>CPF do Cliente</th>
                    <th colspan="2">Ação</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${pacotes}" var="pacote">
                    <tr> 
                        <td><c:out value="${pacote.cpfCliente}" /></td> 
                        <td><c:out value="${pacote.cpfFuncionario}" /></td>  
                        <td><a href="ManterPacoteController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${pacote.id}" />" class="btn btn-primary btn-sm">Editar</a></td>
                        <td><a href="ManterPacoteController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${pacote.id}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                    </tr>  
                </c:forEach>
            </tbody> 
        </table>
        
        <form action="ManterPacoteController?acao=preparaOperacao&operacao=Adicionar">
            <div class="col-md-2 ">
                <div class="list-group">
                    <a href="ManterPacoteController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success">Adicionar</a>
                </div>
            </div>
        </form> 

</body>
</html>
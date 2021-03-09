<!DOCTYPE html>
<html lang="pt-br">   
    <head>
        <title>Funcionários</title>
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
                    <th>Nome</th>
                    <th>CPF</th>
                    <th colspan="2">Ação</th>
                </tr>
            </thead> 
            <tbody>

                <c:forEach items="${funcionarios}" var="funcionario">
                    <tr> 
                        <td><c:out value="${funcionario.name}" /></td> 
                        <td><c:out value="${funcionario.cpf}" /></td>  
                        <td><a href="ManterFuncionarioController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${funcionario.cpf}" />" class="btn btn-primary btn-sm">Editar</a></td>
                        <td><a href="ManterFuncionarioController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${funcionario.cpf}" />" class="btn btn-danger btn-sm">Excluir</a></td>
                    </tr>  
                </c:forEach>
            </tbody>      

        </table>
        
            <div class="col-md-2 ">
                <div class="list-group">
                   <a href="ManterFuncionarioController?acao=preparaOperacao&operacao=Adicionar" class="btn btn-success">Adicionar</a>
                </div>
            </div>
          
    </body>
</html>
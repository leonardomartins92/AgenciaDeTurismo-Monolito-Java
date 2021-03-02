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
        <div class="row align-items-start">
            <div class="col">
                <select class="form-select" aria-label="Default select example">
                    <option value="1">Nome do Funcionário</option>
                    <option value="1">CPF</option>
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
                        <td><a href="ManterFuncionarioController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${funcionario.cpf}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
                        <td><a href="ManterFuncionarioController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${funcionario.cpf}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                    </tr>  
                </c:forEach>
            </tbody>      

        </table>
        <form action="ManterFuncionarioController?acao=preparaOperacao&operacao=Adicionar">
            <div class="col-md-2 ">
                <div class="list-group">
                    <input class="list-group-item list-group-item-action list-group-item-success" type="submit" name="btnIncluir" value="Incluir">
                </div>
            </div>
        </form>     
    </body>
</html>
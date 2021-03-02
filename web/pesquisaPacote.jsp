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
        <div class="row align-items-start">
            <div class="col">
                <select class="form-select" aria-label="Default select example">
                    <option value="1">CPF do Funcion�rio</option>
                    <option value="1">CPF do Cliente</option>
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
                    <th>CPF do Funcion�rio</th>
                    <th>CPF do Cliente</th>
                    <th colspan="2">A��o</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${pacotes}" var="pacote">
                    <tr> 
                        <td><c:out value="${pacote.cpfCliente}" /></td> 
                        <td><c:out value="${pacote.cpfFuncionario}" /></td>  
                        <td><a href="ManterPacoteController?acao=editar&cod=<c:out value="${pacote.id}" />" class="list-group-item lisCt-group-item-action list-group-item-primary">Editar</a></td>
                        <td><a href="ManterPacoteController?acao=excluir&cod=<c:out value="${pacote.id}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                    </tr>  
                </c:forEach>
            </tbody> 
        </table>
        
        <form action="ManterPacoteController?acao=adicionar">
            <div class="col-md-2 ">
                <div class="list-group">
                    <input class="list-group-item list-group-item-action list-group-item-success" type="submit" name="btnIncluir" value="Incluir">
                </div>
            </div>
        </form> 

</body>
</html>
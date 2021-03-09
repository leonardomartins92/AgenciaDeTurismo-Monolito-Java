<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Destinos</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>
        
    
        <div class="row align-items-start">
            <div class="col">
                <select class="form-select" aria-label="Default select example">
                    <option value="1">Data Inicial</option>
                    <option value="1">Data Final</option>
                    <option value="1">CNPJ da Empresa</option>
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
                    <th>Data Inicial</th>
                    <th>Data Final</th>
                    <th>CNPJ da Empresa</th>
                    <th colspan="3">Ação</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${destinos}" var="destino">
                    <tr> 
                        <td><c:out value="${destino.dataInicial}" /></td> 
                        <td><c:out value="${destino.dataFinal}" /></td>  
                        <td><c:out value="${destino.cnpjEmpresa}" /></td>
                        <td><a href="ManterDestinoController?acao=preparaOperacao&operacao=Editar&cod=<c:out value="${destino.id}" />" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
                        <td><a href="ManterDestinoController?acao=preparaOperacao&operacao=Excluir&cod=<c:out value="${destino.id}" />" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
                        
                    </tr>  
                </c:forEach>
            </tbody> 
        </table>
        
        <form action="ManterDestinoController?acao=preparaOperacao&operacao=Adicionar">
            <div class="col-md-2 ">
                <div class="list-group">
                    <input class="list-group-item list-group-item-action list-group-item-success" type="submit" name="btnIncluir" value="Incluir">
                </div>
            </div>
        </form> 

</body>
</html>
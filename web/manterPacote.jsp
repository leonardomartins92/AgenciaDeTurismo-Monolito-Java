<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Pacote</title>


        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Pacote</h2>

    <form action="ManterPacoteController?acao=confirmaOperacao&operacao=${operacao}&cod=${idPacote}" method="post">
        <div class="row g-3 justify-content-md-center">
        
        <div class="col-md-4">
            <label for="inputCliente" class="form-label">Cliente</label>
            <select id="inputCliente" class="form-select" name="cpfCliente">
                <c:forEach items="${clientes}" var="cliente">
                    <option <c:if test = "${cpfCliente == cliente.cpf}">selected</c:if>> <c:out value="${cliente.cpf}"/> </option> 
                </c:forEach>
            </select>
        </div>

        <div class="col-md-4">
            <label for="inputFuncionario" class="form-label">Funcionários</label>
            <select id="inputFuncionario" class="form-select" name="cpfFuncionario">
                <c:forEach items="${funcionarios}" var="funcionario">
                    <option <c:if test = "${cpfFuncionario == funcionario.cpf}">selected</c:if>> <c:out value="${funcionario.cpf}"/> </option> 
                </c:forEach>
            </select>
        </div>
        </div><br>        
        <div class="col-4">
            <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
        </div>      

    </form>


    <script src="./Scripts/main.js"></script>

</body>
</html>       
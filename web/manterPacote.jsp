<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Pacote</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script>
            var cont = 0;
            var color = "primary";
            function submeteFormularios() {
                document.form1.submit();
                document.form2.submit();
            }
            function addNewTravel() {
                cont++;
                if (cont === 1) {
                    color = "success";
                }
                else if (cont === 2) {
                    color = "dark";
                }
                else if (cont === 3) {
                    color = "warning";
                }
                else {
                    color = "primary";
                }
                $("div #travelBlock").append(
                        '<li class="list-group-item list-group-item-' + color + '">' +
                        '<div class="card align-items-center">' +
                        '<div class="col-md-8">' +
                        '<label for="to">Destino:</label>' +
                        '<input type="text" name="destino" id="to" class="form-control">' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="corp">Estadia:</label>' +
                        '<select name="corp" id="corp" class="form-select">' +
                        '<option value="azul">Hotel A</option>' +
                        '<option value="gol">Hotel B</option>' +
                        '<option value="latam">Hostel A</option>' +
                        '</select>' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="dataInicial">Data Inicial</label>' +
                        '<input type="date" name="dataIncial" id="dataIncial" class="form-control">' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="dataFinal">Data Final</label>' +
                        '<input type="date" name="dataFinal" id="dataIncial" class="form-control">' +
                        '</div>' + '<div class="col-8">' +
                        '</div>' +
                        '</div></li><br>');
            }
        </script>

        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Pacote</h2>

    <form action="ManterPacoteController?acao=confirmaOperacao&operacao=${operacao}" method="post">
        <div class="row g-3 justify-content-md-center">
        
        <div class="col-md-4">
            <label for="inputClient" class="form-label">Cliente</label>
            <select class="form-select" name="cpfCliente" id="cpfCliente">
                <option> <c:out value="${pacote.cpfCliente}"/> </option>
                <c:forEach items="${clientes}" var="pacote">
                    <option> <c:out value="${cliente.cpf}"/> </option> 
                </c:forEach>
            </select>
        </div>

        <div class="col-md-4">
            <label for="inputClient" class="form-label">Funcionários</label>
            <select class="form-select" name="cpfFuncionario" id="cpfFuncionario">
                <option> <c:out value="${pacote.cpfFuncionario}"/> </option>
                <c:forEach items="${funcionarios}" var="pacote">
                    <option> <c:out value="${funcionario.cpf}"/> </option> 
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
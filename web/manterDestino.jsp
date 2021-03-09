<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Destino</title>


        <%@ include file = "header.jsp" %>

    <div class="col">
        <div class="col">
            <form class="row g-3" action="ManterPassagemController?acao=confirmaOperacao&operacao=${operacao}" method="post">
                <div class="col-md-12">
                    <h2><span id="operacao"></span> Destino</h2>
                    <label for="inputPacote" class="form-label">Pacote</label>
                    <select class="form-select" name="idPacote" id="idPacote">
                        <option> <c:out value="${destino.idPacote}"/> </option>
                        <c:forEach items="${pacotes}" var="pacote">
                           <option> <c:out value="${pacote.id}"/> </option> 
                        </c:forEach>
                    </select>   
                </div>
                        
                <div class="col-md-12">
                    <label for="inputOrigin" class="form-label">Data Inicial</label>
                    <input type="text" name="origin" id="inputOrigin" class="form-control" value="<c:out value="${destino.dataInicial}"/>"  >
                </div>
                
                <div class="col-md-12">
                    <label for="inputDestiny" class="form-label">Data Final</label>
                    <input type="text" name="destino" id="inputDestiny" class="form-control" value="<c:out value="${destino.dataFinal}"/>" >
                </div>
                
                <div class="col-md-12">
                    <label for="inputCompany" class="form-label">Empresa</label>
                    <select id="inputCompany" class="form-select" name="nomeEmpresa">
                        <option selected><c:out value="${nomeEmpresa}"/></option>
                        <c:forEach items="${empresas}" var="empresa">
                           <option> <c:out value="${empresa.nome}"/> </option> 
                        </c:forEach>
                    </select>
                </div>
                
                <div class="col-12">
                    <button type="submit" class="btn btn-primary" >Salvar</button>
                </div>
        </form>
    </div>
    <script src="./Scripts/main.js"></script>
            
</body>
</html>
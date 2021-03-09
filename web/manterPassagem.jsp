<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Passagem</title>


        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Passagem</h2>
    
        <div class="col">
        <div class="col">
            <form class="row g-3 justify-content-center" action="ManterPassagemController?acao=confirmaOperacao&operacao=${operacao}" method="post">
                <div class="col-md-1">
                    <label for="inputCod" class="form-label">Código</label>
                    <input type="text" name="id" id="inputCod" class="form-control" value="<c:out value="${passagem.id}"/>" disabled >
                </div>
                
                <div class="col-md-1">
                   
                    <label for="inputPacote" class="form-label">Pacote</label>
                    <select class="form-select" name="idPacote" id="idPacote">
                        <option> <c:out value="${passagem.idPacote}"/> </option>
                        <c:forEach items="${pacotes}" var="pacote">
                           <option> <c:out value="${pacote.id}"/> </option> 
                        </c:forEach>
                        
                    </select>
               </div>
                        
                <div class="col-md-2">
                    <label for="inputCompany" class="form-label">Empresa</label>
                    <select id="inputCompany" class="form-select" name="nomeEmpresa">
                        <option selected><c:out value="${nomeEmpresa}"/></option>
                        <c:forEach items="${empresas}" var="empresa">
                           <option> <c:out value="${empresa.nome}"/> </option> 
                        </c:forEach>
                    </select>        
                </div>
                <div class="row g-3 justify-content-md-center">
                    <div class="col-md-2">
                    <label for="inputOrigin" class="form-label">Origem</label>
                    <input type="text" name="origin" id="inputOrigin" class="form-control" value="<c:out value="${passagem.origem}"/>"  >
                </div>
                <div class="col-md-2">
                    <label for="inputDestiny" class="form-label">Destino</label>
                    <input type="text" name="destino" id="inputDestiny" class="form-control" value="<c:out value="${passagem.destino}"/>" >
                </div>
                    
                    
                </div>
                <div class="row g-3 justify-content-md-center">
                
                <div class="col-md-2">
                    <label for="inputDateGo" class="form-label">Data de Ida</label>
                    <input type="text" class="form-control" name="dataIda" id="inputDateGo" value="<c:out value="${passagem.dataIda}"/>"  >
                </div>
                <div class="col-md-2">
                    <label for="inputDateReturn" class="form-label">Data de Volta</label>
                    <input type="text" class="form-control" name="dataVolta" id="inputDateReturn" value="<c:out value="${passagem.dataVolta}"/>" >
                </div>
                </div>
                <div class="col-4">
                    <button type="submit" class="btn btn-primary" >Salvar</button>
                </div>

            </form>
        </div>
    </div>
</div>
</div>


 <script src="./Scripts/main.js"></script>
</body>
</html>
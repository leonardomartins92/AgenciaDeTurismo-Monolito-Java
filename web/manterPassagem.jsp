<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Passagem</title>


        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Passagem</h2>
    
       
            <form  action="ManterPassagemController?acao=confirmaOperacao&operacao=${operacao}" method="post">
                <div class="row g-3 justify-content-center">
                <div class="col-md-1">
                    <label for="cod" class="form-label">Código</label>
                    <input type="text" name="cod" id="cod" class="form-control" value="<c:out value="${passagem.id}"/>" readonly>
                </div>
                
                <div class="col-md-1">
                   
                    <label for="idPacote" class="form-label">Pacote</label>
                    <select class="form-select" name="idPacote" id="idPacote">
                        <option> <c:out value="${passagem.idPacote}"/> </option>
                        <c:forEach items="${pacotes}" var="pacote">
                           <option> <c:out value="${pacote.id}"/> </option> 
                        </c:forEach>
                        
                    </select>
               </div>
                        
                <div class="col-md-2">
                    <label for="cnpjEmpresa" class="form-label">Empresa</label>
                    <select id="cnpjEmpresa" class="form-select" name="cnpjEmpresa">
                        <option value="${passagem.cnpjEmpresa}"  selected><c:out value="${nomeEmpresa}"/></option>
                        <c:forEach items="${empresas}" var="empresa">
                           <option value="${empresa.cnpj}"> <c:out value="${empresa.nome}"/> </option> 
                        </c:forEach>
                    </select>        
                </div>
                        
                        
                <div class="row g-3 justify-content-md-center">
                    <div class="col-md-2">
                    <label for="origem" class="form-label">Origem</label>
                    <input type="text" name="origem" id="origem" class="form-control" value="<c:out value="${passagem.origem}"/>"  >
                </div>
                <div class="col-md-2">
                    <label for="destino" class="form-label">Destino</label>
                    <input type="text" name="destino" id="destino" class="form-control" value="<c:out value="${passagem.destino}"/>" >
                </div>
                    
                    
                </div>
                <div class="row g-3 justify-content-md-center">
                
                <div class="col-md-2">
                    <label for="dataIda" class="form-label">Data de Ida</label>
                    <input type="text" class="form-control" name="dataIda" id="dataIda" value="<c:out value="${passagem.dataIda}"/>"  >
                </div>
                <div class="col-md-2">
                    <label for="dataVolta" class="form-label">Data de Volta</label>
                    <input type="text" class="form-control" name="dataVolta" id="dataVolta" value="<c:out value="${passagem.dataVolta}"/>" >
                </div>
                </div>
                
                <div class="col-4">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
                </div>

            </form>
   <script src="./Scripts/main.js"></script>
 
</body>
</html>
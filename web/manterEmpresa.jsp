<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de Empresa</title>

        <%@ include file = "header.jsp" %>
        <h2><span id="operacao"></span> Empresa</h2>
        
    <div class="col">
        <form  action="ManterEmpresaController?acao=confirmaOperacao&operacao=${operacao}" method="post">
            <div class="row g-3 justify-content-md-center">
            <div class="col-3">
                <label for="nome" class="form-label">Nome</label>
                <input type="text" class="form-control" id="nome" name="nome" placeholder=""  value="${empresa.nome}">
            </div>
            <div class="col-3">
                <label for="cnpj" class="form-label">CNPJ</label>
                <input type="text" class="form-control" id="cnpj" name="cnpj" placeholder=""  value="${empresa.cnpj}">
            </div>

            <div class="col-md-2 ">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4" name="email"  value="${empresa.email}">
            </div>
            </div>
             <div class="row g-3 justify-content-md-center">
            <div class="col-md-3">
                <label for="inputTelefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="inputTelefone" name="telefone"  value="${empresa.telefone}">
            </div>
            <div class="col-md-2">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" name="cep" maxlength="9"  value="${empresa.cep}">
            </div>
            <div class="col-md-1">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" id="uf" name="uf" value="${empresa.uf}">
            </div>
            <div class="col-md-2">
                <label for="inputType" class="form-label">Tipo</label>
                <select id="inputType" name="tipo" class="form-select">
                <c:forEach items="${tipos}" var="tipo">
                    <option <c:if test = "${empresa.tipo == tipo}">selected</c:if>><c:out value="${tipo}" /></option>
                </c:forEach>

                </select>
            </div>
             </div>
             <div class="row g-3 justify-content-md-center">
            
            <div class="col-md-2">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="localidade" name="localidade" value="${empresa.localidade}">
            </div>

            <div class="col-md-3">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" name="logradouro" placeholder=""  value="${empresa.logradouro}">
            </div>
            <div class="col-md-1">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" name="numero" placeholder=""  value="${empresa.numero}">
            </div>
            <div class="col-2">
                <label for="numero2" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="numero2" name="complemento" placeholder=""  value="${empresa.complemento}">
            </div>

             </div><br>
            <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
            
            <div class="col-12">
                <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
            </div>
        </form>
    </div>

<script src="./Scripts/main.js"></script>
</body>
</html>
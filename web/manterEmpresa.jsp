<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de Empresa</title>

        <%@ include file = "header.jsp" %>

    <div class="col">
        <form class="row g-3" action="ManterEmpresaController?acao=confirmaOperacao&operacao=${operacao}" method="post">
            <h2><span id="operacao"></span> Empresa</h2>
            <div class="col-12">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" placeholder=""  value="${empresa.nome}">
            </div>
            <div class="col-12">
                <label for="cnpj" class="form-label">CNPJ</label>
                <input type="text" class="form-control" id="cnpj" placeholder=""  value="${empresa.cnpj}">
            </div>

            <div class="col-md-6 ">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4"  value="${empresa.email}">
            </div>
            <div class="col-md-6">
                <label for="inputTelefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="inputTelefone"  value="${empresa.telefone}">
            </div>
            <div class="col-md-4">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" maxlength="9"  value="${empresa.cep}">
            </div>
            <div class="col-md-2">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" name="uf" id="uf"  value="${empresa.uf}">
            </div>

            <div class="col-md-6">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="localidade"  value="${empresa.localidade}">
            </div>

            <div class="col-md-8">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" placeholder=""  value="${empresa.logradouro}">
            </div>
            <div class="col-md-4">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" placeholder=""  value="${empresa.numero}">
            </div>
            <div class="col-12">
                <label for="numero2" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="numero2" placeholder=""  value="${empresa.complemento}">
            </div>

            <div class="col-md-4">
                <label for="inputType" class="form-label">Tipo</label>
                <select id="inputType" class="form-select">
                <c:forEach items="${tipos}" var="tipo">
                    <option <c:if test = "${empresa.tipo == tipo}">selected</c:if>><c:out value="${tipo}" /></option>
                </c:forEach>

                </select>
            </div>
            <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
            </div>
        </form>
    </div>
</div>
</div>
<script src="./Scripts/main.js"></script>
</body>
</html>
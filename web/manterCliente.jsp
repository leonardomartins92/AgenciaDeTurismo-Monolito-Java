<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cadastro de Cliente</title>
        <%@ include file = "header.jsp" %>

    <div class="col">
        <form class="row g-3" action="ManterClienteController?acao=confirmaOperacao&operacao=${operacao}" method="post">
            <h2><span id="operacao"></span> Cliente</h2>
            <div class="col-12">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" placeholder="" value="${cliente.name}">
            </div>
            <div class="col-12">
                <label for="cpf" class="form-label">CPF</label>
                <input type="text" class="form-control" id="cpf" placeholder="" value="${cliente.cpf}">
            </div>

            <div class="col-md-6 ">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4" value="${cliente.email}">
            </div>
            <div class="col-md-6">
                <label for="inputTelefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="inputTelefone" value="${cliente.telefone}">
            </div>
            <div class="col-md-4">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" maxlength="9" value="${cliente.cep}">
            </div>
            <div class="col-md-2">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" name="uf" id="uf" value="${cliente.uf}">
            </div>

            <div class="col-md-6">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="localidade" value="${cliente.cidade}">
            </div>

            <div class="col-md-8">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" placeholder="" value="${cliente.logradouro}">
            </div>
            <div class="col-md-4">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" placeholder="" value="${cliente.numero}">
            </div>
            <div class="col-12">
                <label for="numero2" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="numero2" placeholder="" value="${cliente.complemento}">
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



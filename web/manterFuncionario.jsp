<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <title>Cadastro de Funcionários</title>

        <%@ include file = "header.jsp" %>
    <div class="col">
        <form class="row g-3">
            <h2><span id="acao"></span> Funcionário</h2>
            <div class="col-12">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" placeholder="">
            </div>
            <div class="col-12">
                <label for="cpf" class="form-label">CPF</label>
                <input type="text" class="form-control" id="cpf" placeholder="">
            </div>

            <div class="col-md-6 ">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4">
            </div>
            <div class="col-md-6">
                <label for="inputTelefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="inputTelefone">
            </div>
            <div class="col-md-4">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" maxlength="9">
            </div>
            <div class="col-md-2">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" name="uf" id="uf">
            </div>

            <div class="col-md-6">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="localidade">
            </div>

            <div class="col-md-8">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" placeholder="">
            </div>
            <div class="col-md-4">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" placeholder="">
            </div>
            <div class="col-12">
                <label for="numero2" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="numero2" placeholder="">
            </div>
            <div class="col-md-8">
                <label for="inputPassword" class="form-label">Senha</label>
                <input type="password" class="form-control" id="inputPassword" placeholder="">
            </div>
            <div class="col-md-4">
                <label for="inputFunction" class="form-label">Função</label>
                <select id="inputFunction" class="form-select">
                    <option selected>Vendedor</option>
                    <option>Gerente</option>
                </select>
            </div>

            <div class="col-12">
                <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
                <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
            </div>
        </form>
    </div>
</div>
</div>
<script src="./Scripts/main.js"></script>
</body>
</html>
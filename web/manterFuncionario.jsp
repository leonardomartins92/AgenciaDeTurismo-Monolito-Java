<!DOCTYPE html>
<html lang="pt-br">
    <head>

        <title>Funcionários</title>

        <%@ include file = "header.jsp" %>
        
    <h2><span id="operacao"></span> Funcionário</h2><br>
            
    <div class="col">
        <form  action="ManterFuncionarioController?acao=confirmaOperacao&operacao=${operacao}" method="post">
            <div class="row g-3 justify-content-md-center">
            <div class="col-4">
                <label for="nome" class="form-label">Nome</label>
                <input type="text" class="form-control" id="nome" name="nome" value="<c:out value="${funcionario.name}"/>">
            </div>
            <div class="col-2">
                <label for="cpf" class="form-label">CPF</label>
                <input type="text" class="form-control" id="cpf" name="cpf" value="<c:out value="${funcionario.cpf}"/>">
            </div>

            <div class="col-md-3 ">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="<c:out value="${funcionario.email}"/>">
            </div>
        </div>
          <div class="row g-3 justify-content-md-center">  
            <div class="col-md-2">
                <label for="telefone" class="form-label">Telefone</label>
                <input type="text" class="form-control" id="telefone" name="telefone" value="<c:out value="${funcionario.telefone}"/>">
            </div>
            <div class="col-md-2">
                <label for="cep" class="form-label">CEP</label>
                <input type="text" class="form-control" id="cep" maxlength="9" name="cep" value="<c:out value="${funcionario.cep}"/>">
            </div>
            <div class="col-md-2">
                <label for="uf" class="form-label">UF</label>
                <input type="text" class="form-control" name="uf" id="uf" value="<c:out value="${funcionario.uf}"/>">
            </div>

            <div class="col-md-3">
                <label for="localidade" class="form-label">Cidade</label>
                <input type="text" class="form-control" id="localidade" name="localidade" value="<c:out value="${funcionario.cidade}"/>">
            </div>
          </div>
          <div class="row g-3 justify-content-md-center">
            <div class="col-md-4">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input type="text" class="form-control" id="logradouro" name="logradouro"  value="<c:out value="${funcionario.logradouro}"/>">
            </div>
            <div class="col-md-2">
                <label for="numero" class="form-label">Número</label>
                <input type="text" class="form-control" id="numero" name="numero"  value="<c:out value="${funcionario.numero}"/>">
            </div>
            <div class="col-3">
                <label for="complemento" class="form-label">Complemento</label>
                <input type="text" class="form-control" id="complemento" name="complemento" value="<c:out value="${funcionario.complemento}"/>">
            </div>
          </div>
          <div class="row g-3 justify-content-md-center">
            <div class="col-md-2">
                <label for="senha" class="form-label">Senha</label>
                <input type="password" class="form-control" id="senha" name="senha" value="<c:out value="${funcionario.senha}"/>">
            </div>
            <div class="col-md-2">
                <label for="funcao" class="form-label">Função</label>
                <select id="funcao" name="funcao" class="form-select">
                    <c:forEach items="${tipos}" var="tipo">
                    <option <c:if test = "${funcionario.tipo == tipo}">selected</c:if>><c:out value="${tipo}" /></option>
                </c:forEach>

                </select>
            </div>
          </div><br>
            <div class="col-4">
                <div class="form-group"><script src="./Scripts/ViaCep.js"></script></div>
                <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
            </div>
        </form>
    </div>
<script src="./Scripts/main.js"></script>
</body>
</html>
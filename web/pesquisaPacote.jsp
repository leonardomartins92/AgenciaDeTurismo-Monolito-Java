<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Pacotes</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                margin-left: auto;
                margin-right: auto;
            }
        </style>

        <%@ include file = "header.jsp" %>

    <table class="table table-striped">


        <label for="nomeCliente">Nome do Cliente</label>
        <input type="text" name="nomeCliente" id="nomeCliente">

        <label for="nomeFuncionario">Nome do Funcionário</label>
        <input type="text" name="nomeFuncionario" id="nomeFuncionario">

        <label for="destino">Destino</label>
        <input type="text" name="destino" id="destino">

        <label for="estadia">Estadia</label>
        <input type="text" name="estadia" id="estadia">

        <label for="duracao">Duração</label>
        <input type="text" name="duracao" id="duracao"><br><br>
        <tr>
            <th>ID</th>
            <th>Cliente</th>
            <th>Funcionário</th>
            <th>Destino</th>
            <th>Estadia</th>
            <th>Duração</th>
            <th colspan="2">Ação</th>
        </tr>
        <tr>
            <td>1</td>
            <td>João</td>
            <td>Maria</td>
            <td>
                <ul>
                    <li>Belo Horizonte</li>
                    <li>Londres</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>IBIS</li>
                    <li>Quest Liverpool City Centre</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>1 dia</li>
                    <li>10 dias</li>
                </ul>
            </td>
        <div class="list-group">
            <td><a href="manterPacote.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
            <td><a href="manterPacote.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
        </div>
    </tr>

    <tr>
        <td>2</td>
        <td>Maria</td>
        <td>José</td>

        <td>
            <ul>
                <li>São Paulo</li>
                <li>Madrid</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>IBIS</li>
                <li>Riu Plaza Espanha</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>1 dia</li>
                <li>10 dias</li>
            </ul>
        </td>
    <div class="list-group">
        <td><a href="manterPacote.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
        <td><a href="manterPacote.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
    </div>
</tr>

<tr>
    <td>3</td>
    <td>José</td>
    <td>João</td>

    <td>
        <ul>
            <li>Rio de Janeiro</li>
            <li>Tokyo</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>IBIS</li>
            <li>Hotel Sunroute Plaza Shinjuku</li>
        </ul>
    </td>
    <td>
        <ul>
            <li>1 dia</li>
            <li>10 dias</li>
        </ul>
    </td>
<div class="list-group">
    <td><a href="manterPacote.jsp?acao=editar" class="list-group-item list-group-item-action list-group-item-primary">Editar</a></td>
    <td><a href="manterPacote.jsp?acao=excluir" class="list-group-item list-group-item-action list-group-item-danger">Excluir</a></td>
</div>
</tr>
</table>
<div class="col-md-2 ">
    <div class="list-group">
        <a href="manterPacote.jsp?acao=adicionar" class="list-group-item list-group-item-action list-group-item-success">Adicionar</a>
    </div>
</div>
</body>
</html>
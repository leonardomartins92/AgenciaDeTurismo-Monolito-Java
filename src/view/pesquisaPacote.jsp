<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pacotes</title>
    <style>
        table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        margin-left: auto;
        margin-right: auto;
        }
    </style>
</head>
<body style="text-align: center;">
<table>
    <label for="filtro">Opções de filtro</label><br>

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
        <th>IdPassagens</th>
        <th>Destino</th>
        <th>Estadia</th>
        <th>Duração</th>
    </tr>
    <tr>
        <td>1</td>
        <td>João</td>
        <td>Maria</td>
        <td>
            <ul>
                <li>1</li>
                <li>2</li>
            </ul>
        </td>
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
    </tr>

    <tr>
        <td>2</td>
        <td>Maria</td>
        <td>José</td>
        <td>
            <ul>
                <li>3</li>
                <li>4</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>São Paulo</li>
                <li>Madrid</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>IBIS</li>
                <li>Riu Plaza España</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>1 dia</li>
                <li>10 dias</li>
            </ul>
        </td>
    </tr>

    <tr>
        <td>3</td>
        <td>José</td>
        <td>João</td>
        <td>
            <ul>
                <li>5</li>
                <li>6</li>
            </ul>
        </td>
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
    </tr>
</table>
</body>
</html>
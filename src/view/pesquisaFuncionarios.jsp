<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta de Funcionários</title>
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

<label for="filtro">Opções de filtro</label><br>

<label for="nome">Nome do Cliente</label>
<input type="text" name="nome" id="nome">

<label for="CPF">CPF</label>
<input type="text" name="CPF" id="CPF"><br><br>

  <table>
    <tr>
      <th>ID</th>
      <th>Nome</th>
      <th>E-mail</th>
      <th>Telefone</th>
      <th>CPF</th>
    </tr>
    <tr>
      <td>1</td>
      <td>João</td>
      <td>joaozinho123@gmail.com</td>
      <td>+55 (32) 99999-9999</td>
      <td>00000000000000000</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Maria</td>
      <td>mariazinha123@gmail.com</td>
      <td>+55 (32) 99999-9999</td>
      <td>00000000000000000</td>
    </tr>
    <tr>
      <td>3</td>
      <td>José</td>
      <td>josezinho123@gmail.com</td>
      <td>+55 (32) 99999-9999</td>
      <td>00000000000000000</td>
    </tr>
  </table>
</body>
</html>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro de Pacote</title>
  <style>
    table, th{
      border: 1px solid black;
      border-collapse: collapse;
      margin-left: auto;
      margin-right: auto;
    }
    </style>
</head>
<body style="text-align: center;">
  
    <h2><span id="acao"></span> Pacote</h2>
    <p> Pacote número: 1239</p>
    <form method="post" class="header-form">
    <label for="client">Cliente:</label>
    <select name="client" id="client">
      <option value="">Cliente</option>
      <option value="joao">João</option>
      <option value="maria">Maria</option>
      <option value="jose">José</option>
    </select><br>

    <label for="worker">Funcionários:</label>
    <select name="worker" id="worker">
      <option value="">Funcionário</option>
      <option value="joao">João</option>
      <option value="maria">Maria</option>
      <option value="jose">José</option>
    </select><br>

    

    <table id="div" class="center">
      <th>
      
      <label for="passage">Passagem</label>
      <button formaction="cadastroPassagem.html">Cadastrar Passagem</button><br><br>

      <label for="to">Destino:</label>
      <select name="to" id="to">
        <option value="">Destino</option>
        <option value="jf">Juiz de Fora</option>
        <option value="bh">Belo Horizonte</option>
        <option value="sp">São Paulo</option>
      </select><br>

      <label for="corp">Estadia:</label>
      <select name="corp" id="corp">
        <option value="">Empresa</option>
        <option value="azul">Azul</option>
        <option value="gol">Gol</option>
        <option value="latam">Latam</option>
      </select><br>

      <label for="dataInicial">Data Inicial</label>
      <input type="date" name="dataIncial" id="dataIncial"><br>
      <label for="dataFinal">Data Final</label>
      <input type="date" name="dataFinal" id="dataFinal"><br>


      <table>
        <tr>
          <button>
            +
          </button>
        </tr>
        <tr>
          <button>
            -
          </button>
        </tr>
      </th>
      </table>
    </table>
    <table><br>
      <input type="submit" value="Salvar">
      <button>Cancelar</button>
    </table>
  </form>
  <script src="./Scripts/main.js"></script>
</body>
</html>
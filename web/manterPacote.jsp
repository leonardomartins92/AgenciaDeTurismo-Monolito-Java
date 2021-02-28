<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Cadastro de Pacote</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script>
            var cont = 0;
            var color = "primary";

            function submeteFormularios() {
                document.form1.submit();
                document.form2.submit();
            }

            function addNewTravel() {
                cont++;
                if (cont === 1) {
                    color = "success";
                }
                else if (cont === 2) {
                    color = "dark";
                }
                else if (cont === 3) {
                    color = "warning";
                }
                else {
                    color = "primary";
                }
                $("div #travelBlock").append(
                        '<form class="row g-3">' +
                        '<li class="list-group-item list-group-item-' + color + '">' +
                        '<div class="card align-items-center">' +
                        '<div class="col-md-8">' +
                        '<label for="to">Destino:</label>' +
                        '<select name="to" id="to" class="form-select">' +
                        '<option value="jf">Juiz de Fora</option>' +
                        '<option value="bh">Belo Horizonte</option>' +
                        '<option value="sp">São Paulo</option>' +
                        '</select>' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="corp">Estadia:</label>' +
                        '<select name="corp" id="corp" class="form-select">' +
                        '<option value="azul">Hotel A</option>' +
                        '<option value="gol">Hotel B</option>' +
                        '<option value="latam">Hostel A</option>' +
                        '</select>' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="dataInicial">Data Inicial</label>' +
                        '<input type="date" name="dataIncial" id="dataIncial" class="form-control">' +
                        '</div>' +
                        '<div class="col-md-8">' +
                        '<label for="dataFinal">Data Final</label>' +
                        '<input type="date" name="dataFinal" id="dataIncial" class="form-control">' +
                        '</div>' + '<div class="col-8">' +
                        '<a href="manterPassagem.jsp?acao=adicionar"' +
                        'class="list-group-item list-group-item-action list-group-item-primary">Cadastrar Passagem</a>' +
                        '</div>' +
                        '</div></li></form><br>');
            }
        </script>

        <%@ include file = "header.jsp" %>

    <div class="col">
        <div class="col">

            <form class="row g-3" onsubmit="myFunction()">
                <h2><span id="acao"></span> Pacote</h2>
                <p> Pacote número: 1239</p>
                <div class="col-md-12">
                    <label for="inputClient" class="form-label">Cliente</label>
                    <select id="inputClient" class="form-select">
                        <option selected>José</option>
                        <option>Maria</option>
                        <option>Pedro</option>
                    </select>
                </div>
                <div class="col-md-12">
                    <label for="inputStaff" class="form-label">Funcionários</label>
                    <select id="inputStaff" class="form-select">
                        <option selected>Bruno</option>
                        <option>Leonardo</option>
                        <option>Paulo</option>
                    </select>
                </div>
                <div class="col-md-2" style="text-align: center;">
                    <a class="list-group-item list-group-item-success" onclick="addNewTravel()"> + </a>

                </div>
                <div class="col-md-2" style="text-align: center;">

                    <a class="list-group-item list-group-item-danger" href=""> - </a>
                </div>

                <ul class="list-group">
                    <form class="row g-3" id="form1">
                        <li class="list-group-item">
                            <div class="card align-items-center">

                                <div class="col-md-8">

                                    <label for="to">Destino:</label>
                                    <select name="to" id="to" class="form-select">
                                        <option value="jf">Juiz de Fora</option>
                                        <option value="bh">Belo Horizonte</option>
                                        <option value="sp">São Paulo</option>
                                    </select>
                                </div>
                                <div class="col-md-8">
                                    <label for="corp">Estadia:</label>
                                    <select name="corp" id="corp" class="form-select">
                                        <option value="azul">Hotel A</option>
                                        <option value="gol">Hotel B</option>
                                        <option value="latam">Hostel A</option>
                                    </select>
                                </div>
                                <div class="col-md-8">
                                    <label for="dataInicial">Data Inicial</label>
                                    <input type="date" name="dataIncial" id="dataIncial" class="form-control">
                                </div>
                                <div class="col-md-8">
                                    <label for="dataFinal">Data Final</label>
                                    <input type="date" name="dataFinal" id="dataIncial" class="form-control">
                                </div>
                                <div class="col-8">
                                    <a href="manterPassagem.jsp?acao=adicionar"
                                       class="list-group-item list-group-item-action list-group-item-primary">Cadastrar Passagem</a>
                                </div>

                            </div></li></form><br>

                    <div id="travelBlock"></div><br>
                </ul>

                <div class="col-12">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
<script src="./Scripts/main.js"></script>
</body>

</html>
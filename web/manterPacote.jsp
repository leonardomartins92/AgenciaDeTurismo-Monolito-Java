<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Pacote</title>

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
                        '<li class="list-group-item list-group-item-' + color + '">' +
                        '<div class="card align-items-center">' +
                        '<div class="col-md-8">' +
                        '<label for="to">Destino:</label>' +
                        '<input type="text" name="destino" id="to" class="form-control">'+
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
                        '</div>' +
                        '</div></li><br>');
            }
        </script>

        <%@ include file = "header.jsp" %>

    <div class="col">
        <div class="col">

            <form class="row g-3" onsubmit="myFunction()">
                <h2><span id="acao"></span> Pacote</h2>
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
                
                <div class="col-md-12" style="text-align: center;">    
                <ul class="list-group align-items-center">
                    
                        <li class="list-group-item ">
                      
                            <label for="to">Destino:</label>
                                    <input type="text" name="destino" id="to" class="form-control">
                               
                                    <label for="corp">Estadia:</label>
                                    <select name="corp" id="corp" class="form-select">
                                        <option value="azul">Hotel A</option>
                                        <option value="gol">Hotel B</option>
                                        <option value="latam">Hostel A</option>
                                    </select>
                               
                                    <label for="dataInicial">Data Inicial</label>
                                    <input type="date" name="dataIncial" id="dataIncial" class="form-control">
                                
                                    <label for="dataFinal">Data Final</label>
                                    <input type="date" name="dataFinal" id="dataIncial" class="form-control">
          
                            </li><br>

                    <div id="travelBlock"></div><br>
                </ul>
                </div>
                
                <div class="col-12">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Confirmar</button>
                </div>
            </form>
        </div>
    <script src="./Scripts/main.js"></script>
            
</body>
</html>       
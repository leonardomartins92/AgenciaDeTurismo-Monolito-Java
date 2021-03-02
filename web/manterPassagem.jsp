<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <title>Passagem</title>


        <%@ include file = "header.jsp" %>

    <div class="col">
        <div class="col">
            <form class="row g-3">
                <div class="col-md-12">
                    <h2><span id="operacao"></span> Passagem</h2>
                    <label for="inputPacote" class="form-label">Pacote</label>
                    <select class="form-select" name="idPacote" id="idPacote">
                        <option> 1 </option>
                        <option> 2 </option>
                    </select>
                    
                </div>
                <div class="col-md-12">
                    <label for="inputOrigin" class="form-label">Origem</label>
                    <input type="text" name="origin" id="inputOrigin" class="form-control">
                </div>
                <div class="col-md-12">
                    <label for="inputDestiny" class="form-label">Destino</label>
                    <input type="text" name="destiny" id="inputDestiny" class="form-control">
                </div>
                <div class="col-md-12">
                    <label for="inputCompany" class="form-label">Empresa</label>
                    <select id="inputCompany" class="form-select">
                        <option selected>GOL</option>
                        <option>LATAM</option>
                        <option>AZUL</option>
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="inputDateGo" class="form-label">Data de Ida</label>
                    <input type="date" class="form-control" id="inputDateGo">
                </div>
                <div class="col-md-6">
                    <label for="inputDateReturn" class="form-label">Data de Ida</label>
                    <input type="date" class="form-control" id="inputDateReturn">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary" id="botaoSubmit">Salvar</button>
                </div>



            </form>
        </div>
    </div>
</div>
</div>


<script src="./Scripts/main.js"></script>
</body>
</html>
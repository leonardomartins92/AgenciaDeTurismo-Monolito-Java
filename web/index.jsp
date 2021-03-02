<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <title>Login</title>

    </head>
    <body   style="background-image: url('./assets/login.jpg');">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>


        <div class="align-items-start d-flex justify-content-center form-check" style="text-align: center">   
            <form action="IndexController" method="post">
             <h1>Login</h1> <br>
             <label for="exampleInputEmail1" class="form-label" >CPF</label> 
             <input type="text" class="form-control" name="cpf" style="width:400px " id="exampleInputEmail1" aria-describedby="emailHelp">
             <br><label for="exampleInputPassword1" class="form-label">Senha</label>                      
             <br><input type="password" class="form-control" name="senha"  style="width:400px " id="exampleInputPassword1" >
             <br><button type="submit" class="btn btn-primary">Entrar</button>                          
            </form>    
               
        </div>
    </body>

</html>




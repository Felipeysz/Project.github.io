<?php
if(isset($_POST['submit'])){
  include_once 'conexao.php';

  $login = $_POST['login'];

  // Para proteger a senha é preciso usar o metedo para codificar a senha cadastradas. Usando o o password_hash para encapsular a variavel e metodo PASSWORD_DEFAULT. Vai faze token da senha e cadastrar no banco no lugar do numero digitado no frontend.
  $senha = password_hash($_POST['senha'],PASSWORD_DEFAULT);

  // Variavel 
  $sql = "INSERT INTO administradores (login,senha) VALUES ('$login','$senha')";
  
  // Pegando retorno de variaveis que inserir dados ao banco

  //metodo da versão antiga do php.
  //$resultado = mysqli_query($conexao, $sql); 
  // -> exercutar direto na variavel
  $resultado = $conexao ->query($sql); 


}

?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
  </script>
  <title>Cadastro de Senha</title>
  <style>
    .topo{
      color: white;
      padding: 5px 380px 5px 20px;
      
        
      
    }
    .topo h1{
      padding: 5px 10px;
      
      
    }
    .topo h1 span{
      color: orange;
      font-weight: 600;
      display: flex;
      justify-content: center;
    }

    body{
      height: 100vh;
      
    }

    main{
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
      color: white;
    }

    .box{
      background: rgba(0, 0, 0, .5);
      border-radius: 10px;
      padding: 20px;
      width: 600px;
      display: flex;
      justify-content: space-around;
    }
  </style>

</head>


<body class="bg-primary bg-gradient">

  <header class="navbar bg-dark navbar-dark topo">
    <a href="index.html"><img src="img/icons8-kenny-mccormick.svg" alt="icon"></a>
    
   
    <h1>SISTEMA DE CADASTRO SENHA <br>
    <span>TELA DE CADASTRO</span>  
    </h1>

  </header>
  <main>
  <section class="box">

  <form action="cad_admin.php" method="POST">
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Login</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="login">
    </div>
  </div>

  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Senha</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputEmail3" name="senha">
    </div>
  </div>

  
  
  <input type="submit" class="btn btn-warning" name="submit"></input>
  <?php
  if (!empty($resultado)){
    echo "Enviado ok";
  }
?>
</form>
  </section>
  </main>
</body>
</html>
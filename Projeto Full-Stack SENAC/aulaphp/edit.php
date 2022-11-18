<?php

  session_start();
  include_once 'conexao.php';

  if(!empty($_GET['id'])){
    $id = $_GET['id'];
    $sqlselect = "SELECT * FROM alunos WHERE id='$id'";
    $resultado = $conexao->query($sqlselect);

    if($resultado->num_rows>0){
      while($alunos = mysqli_fetch_assoc($resultado)){
        $nome = $alunos['nome'];
        $email = $alunos['email'];
        $serie = $alunos['serie'];
        $matricula = $alunos['matricula'];
        $data_nasc = $alunos['data_nasc'];
        $escolaridade = $alunos['escolaridade'];
        $telefone = $alunos['telefone'];
      }
    }else{
      header('Location:sistema.php');
    }
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
    <a href="index.html"><img src="/img/estudando.png" alt="icon"></a>
    
   
    <h1>SISTEMA DE CADASTRO ESCOLAR <br>
    <span>Tela de Atualização</span>  
    </h1>

  </header>
  <main>
  <section class="box">

  <form action="saveedit.php" method="POST">
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Nome</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" name="nome" value="<?php echo $nome ?>">
    </div>
  </div>

  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" name="email" value="<?php echo $email ?>">
    </div>
  </div>

  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Serie</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputEmail3" name="serie" value="<?php echo $serie ?>">
    </div>
  </div>

  <div class="row mb-3">
    <label for="inputEmail3" class=" col-form-label" >Matricula</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="inputEmail3" name="matricula" value="<?php echo $matricula ?>">
    </div>
  </div>

  <div class="row mb-3">
    <label for="inputEmail3" class=" col-form-label" >Data de Nascimento</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="inputEmail3" name="data_nasc" value="<?php echo $data_nasc ?>">
    </div>
  </div>

  <fieldset class="">
    <legend class="col-form-label col-sm-2 pt-0">Escolaridade</legend>

    <div class="col-sm-10">
      <div class="form-check">
        <input class="form-check-input" type="radio" name="escolaridade" id="gridRadios1" value="fundamental" <?php echo $escolaridade == 'fundamental' ? 'checked' : '' ?>>
        <label class="form-check-label" for="gridRadios1">Fundamental</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="escolaridade" id="gridRadios2" value="medio" <?php echo $escolaridade == 'medio' ? 'checked' : '' ?>>
        <label class="form-check-label" for="gridRadios2" >Médio</label>
      </div>
    </div>

    
  <div class="row mb-4 me-9">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Telefone</label>
    <div class="col-sm-11">
      <input type="tel" class="form-control" id="inputEmail3" name="telefone" value="<?php echo $telefone ?>">
    </div>
  </div>
  </fieldset>

  <input type="hidden" name="id" value="<?php echo $id ?>">
  
  <button type="submit" class="btn btn-warning" name="update">ATUALIZAR</button>


</form>
  </section>
  </main>
</body>
</html>
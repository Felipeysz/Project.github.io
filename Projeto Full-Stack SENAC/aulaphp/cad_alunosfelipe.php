<?php
// Aguarda o envia pelo botao pelo usuario 
 if(isset($_POST['submit'])){ 
//Faz a conexao com o Mysql
  include_once 'conexao.php';
// 
  $nome = $_POST['nome'];
  $email = $_POST['email'];
  $serie = $_POST['serie'];
  $matricula = $_POST['matricula'];
  $data_nasc = $_POST['data_nasc'];
  $escolaridade = $_POST['escolaridade'];
  $telefone = $_POST['telefone'];
// Joga dentro da variavel o comando sql de insercao
  $sql = "INSERT INTO alunos (nome,email,serie,matricula,data_nasc,escolaridade,telefone) 
  VALUES ('$nome','$email','$serie','$matricula','$data_nasc','$escolaridade','$telefone')";
// Executa o comando acima 'sql'
  $resultado = $conexao->query($sql);

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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <title>Document</title>
  <style>
    .topo {
      color: white;
      padding: 5px 200px;
    }
    .topo span{
      color: orange;
      font-weight: 600;
    }
    .topo h1{
      text-align: center;
    }

    body {
      height: 100vh;
    }

    main {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }

    .box {
      background: rgba(0, 0, 0, .5);
      border-radius: 8px;
      padding: 20px;
      width: 600px;
      display: flex;
      justify-content: space-around;
    }
  </style>
</head>

<body class="bg-primary bg-gradient text-white">

  <header class="navbar bg-dark navbar-dark topo">
    <a href="index.html"><img src="imagens/icons8-iron-man-96.svg" alt="iron man"></a>
    <h1>SISTEMA DE CADASTRO ESCOLAR - 2022<br>
    <span>TELA DE CADASTRO DE ALUNOS</span>
    </h1>
  </header>
  <main>
    <section class="box">
      <form action="cad_alunos.php" method="POST">
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-3 col-form-label">Nome</label>
          <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" name="nome">
          </div>
        </div>
        <div class="row mb-3">
          <label for="inputEmail3" class="col-sm-3 col-form-label">Email</label>
          <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3" name="email">
          </div>
        </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-3 col-form-label">Serie</label>
        <div class="col-sm-10">
          <input type="number" class="form-control" id="inputPassword3" name="serie">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-3 col-form-label">Matricula</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputPassword3" name="matricula">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class=" col-form-label">Data Nascimento </label>
        <div class="col-sm-10">
          <input type="date" class="form-control" id="inputPassword3" name="data_nasc">
        </div>
      </div>
    <fieldset class="row mb-3">
        <legend class="col-form-label col-sm-3 pt-0">Escolaridade</legend>
        <div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="escolaridade" id="gridRadios1" value="fundamental" checked="">
            <label class="form-check-label" for="gridRadios1">
              Fundamental
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="escolaridade" id="gridRadios2" value="medio">
            <label class="form-check-label" for="gridRadios2">
              Médio
            </label>
          </div>

        </div>
        <div class="row mb-3 mt-3">
          <label for="inputEmail3" class="col-sm-3 col-form-label">Telefone</label>
          <div class="col-sm-10">
          <input type="tel" class="form-control" id="inputEmail3" name="telefone">
          </div>

    </fieldset>
            <button type="submit" name="submit" class="btn btn-warning">CADASTRAR</button>
            <?php

              if(!empty($resultado)){
                echo "<br>"."Seus Dados foram Enviados com Sucesso!";
              }

            ?>
    </form>
    </section>
  </main>

</body>

</html>
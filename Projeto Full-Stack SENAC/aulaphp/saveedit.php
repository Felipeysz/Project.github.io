<?php

  session_start();
  include_once 'conexao.php';

  if(isset($_POST['update'])){
    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $serie = $_POST['serie'];
    $matricula = $_POST['matricula'];
    $data_nasc = $_POST['data_nasc'];
    $escolaridade= $_POST['escolaridade'];
    $telefone = $_POST['telefone'];

    $sql = "UPDATE alunos SET nome='$nome',email='$email',serie='$serie',matricula='$matricula',data_nasc='$data_nasc',escolaridade='$escolaridade',telefone='$telefone' WHERE id='$id'";
    $resultado = $conexao->query($sql);

  }
  
  header('Location:sistema.php');
  

?>
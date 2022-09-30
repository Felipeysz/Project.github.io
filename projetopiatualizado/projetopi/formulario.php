<?php

if(isset($_POST["submit"]))
{

  include_once("config.php");

   $nome = $_POST["nome"];
   $email = $_POST["email"];
   $senha = $_POST['senha'];
   //password_hash ($_POST["senha"],PASSWORD_DEFAULT);
   $telefone = $_POST["telefone"];
   $sangue = $_POST["sangue"];


$result = mysqli_query($conexao, "INSERT INTO usuarios(nome,email,senha,telefone,sangue)
VALUES ('$nome','$email','$senha','$telefone','$sangue')");
  
  header('Location: loginbolinha.php');
}
?>

 
<!-- if(isset($_POST["submit"]))
{

  include_once("config.php");

   $nome = $_POST["nome"];
   $email = $_POST["email"];
   $senha = $_POST["senha"];
   $telefone = $_POST["telefone"];
   $sangue = $_POST["sangue"];


$result "INSERT INTO usuarios(nome,email,senha,telefone,sangue)
VALUES ('$nome','$email','$senha','$telefone','$sangue')";

$sql = $conexao->query($sql);
  
  header('Location: loginbolinha.php');
} -->

















 





<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario</title>
</head>


<style>
  body {
    font-family: Arial, Helvetica, sans-serif;
    background-image: linear-gradient(to right,
        rgb(20, 147, 220),
        rgb(17, 54, 71));
  }

  .box {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: rgba(0, 0, 0, 0.6);
    padding: 15px;
    border-radius: 15px;
    width: 450px;
    color: white;
  }

  fieldset {
    border: 3px solid dodgerblue;
    border-radius: 10px;
  }

  legend {
    border: 1px solid dodgerblue;
    padding: 10px;
    text-align: center;
    background-color: dodgerblue;
    border-radius: 8px;
    color: white;
  }

  .inputBox {
    position: relative;
  }

  .inputUser {
    background: none;
    border: none;
    border-bottom: 1px solid white;
    color: white;
    font-size: 15px;
    width: 100%;
    letter-spacing: 2px;
  }

  .labelInput {
    position: absolute;
    top: 0;
    left: 0;
    pointer-events: none;
    transition: .5s;
  }

  .inputUser:focus~.labelInput,
  .inputUser:valid~.labelInput {
    top: -20px;
    font-size: 12px;
    color: dodgerblue;
  }

  #data_nascimento {
    border: none;
    padding: 8px;
    border-radius: 10px;
    outline: none;
  }

  #submit {
    background-image: linear-gradient(to right, rgb(0, 92, 197), rgb(90, 20, 220));
    width: 100%;
    border: none;
    padding: 15px;
    color: white;
    font-size: 15px;
    cursor: pointer;
    border-radius: 10px;
  }

  #submit:hover {
    background-image: linear-gradient(to right, rgb(0, 80, 172) rgb(80, 19, 195));
  }


  .bolinha {
    display: block;
    align-items: center;
    justify-content: space-between;


  }
</style>


<body>
  <a href="home.php">Voltar</a>
  <div class="box">
    <form action="formulario.php" method="POST">
      <fieldset>
        <legend>
          <p>Cadastro</p>
        </legend>
        <br>
        <div class="inputBox">
          <input type="text" name="nome" id="nome" class="inputUser" required>
          <label for="nome" class="labelInput">Nome Completo</label>
        </div>
        <br><br>

        <div class="inputBox">
          <input type="text" name="email" id="email" class="inputUser" required>
          <label for="email" class="labelInput">Email</label>
        </div>
        <br><br>
        <div class="inputBox">
          <input type="password" name="senha" id="senha" class="inputUser" required>
          <label for="senha" class="labelInput">Senha</label>
        </div>
        <br><br>  
        <div class="inputBox">
          <input type="tel" name="telefone" id="telefone" class="inputUser" required>
          <label for="telefone" class="labelInput">Telefone</label>
        </div>


        <!-- SANGUE -->

        <p>Tipo Sanguíneo</p>
        <br>

        <div class="bolinha">
          <input type="radio" id="apositivo" name="sangue" value="apositivo" required>
          <label for="apositivo">A+</label>


          <input type="radio" id="anegativo" name="sangue" value="anegativo" required>
          <label for="anegativo">A-</label>


          <input type="radio" id="bpositivo" name="sangue" value="bpositivo" required>
          <label for="bpositivo">B+</label>

          <input type="radio" id="bnegativo" name="sangue" value="bnegativo" required>
          <label for="bnegativo">B-</label>


          <input type="radio" id="abpositivo" name="sangue" value="abpositivo" required>
          <label for="abpositivo">AB+</label>


          <input type="radio" id="abnegativo" name="sangue" value="abnegativo" required>
          <label for="abnegativo">AB-</label>


          <input type="radio" id="opositivo" name="sangue" value="opositivo" required>
          <label for="opositivo">O+</label>


          <input type="radio" id="onegativo" name="sangue" value="onegativo" required>
          <label for="onegativo">O-</label>
          <br><br>
        </div>

        <input type="submit" name="submit" id="submit">



      </fieldset>
    </form>
  </div>

</body>

</html>
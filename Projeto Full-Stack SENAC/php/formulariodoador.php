<?php

if(isset($_POST["submit"]))
{

  include_once("config.php");

  $nome = $_POST["nome"];
   $email = $_POST["email"];
   $tiposanguineo = $_POST["tiposanguineo"];


$result = mysqli_query($conexao, "INSERT INTO doador(nome,email,tiposanguineo)
VALUES ('$nome','$email','$tiposanguineo')");

header("Location: formulariodoador.php");

$resultado = $conexao->query($result);
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <style>

body {
  font-family: Arial, Helvetica, sans-serif;
  background: white;
}
.bolinha2 {
    display: block;
    justify-content: space-between;

  }
.bolinha {
  background-color: rgba(206, 107, 107);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 80px;
  border-radius: 15px;
  color: white;
}
input {
  padding: 15px;
  font-size: 15px;
}
.inputsubmit {
  background-color: whitesmoke;
  padding: 15px;
  width: 100%;
  border-radius: 10px;
  color: rgba(206, 107, 107);
  font-size: 15px;
  
}
.inputsubmit:hover {
  transition: 0.5s;
  background-color: rgba(206, 107, 107);
  color: white;
  cursor: pointer;
}
.voltar{
  text-decoration: none;
  color: whitesmoke;
  display: inline-block;
  background-color: rgba(206, 107, 107);
  padding: 10px 5px;
  border-radius: 3px;
}
.tps{
    font-weight: 700;
  }

  </style>
</head>

<body>
<a class="voltar" href="/luis/Banco-de-Dados-main/gotasdevida.html">Voltar</a>
  <div class="bolinha">
    <h1>Doador</h1>
    <form action="formulariodoador.php" method="POST">
    <input type="name" name="nome" id="nome" placeholder="Nome Completo">
      <br><br>
    <input type="email" name="email" id="email" placeholder="Email">
    <br>
    <p class="tps">Tipo Sanguíneo</p>
    <div class="bolinha2">
          <input type="radio" id="a+" name="tiposanguineo" value="a+" required>
          <label for="a+">A+</label>


          <input type="radio" id="a-" name="tiposanguineo" value="a-" required>
          <label for="a-">A-</label>


          <input type="radio" id="b+" name="tiposanguineo" value="b+" required>
          <label for="b+">B+</label>

          <input type="radio" id="b-" name="tiposanguineo" value="b-" required>
          <label for="b-">B-</label>
          <br><br>

          <input type="radio" id="ab+" name="tiposanguineo" value="ab+" required>
          <label for="ab+">AB+</label>


          <input type="radio" id="ab-" name="tiposanguineo" value="ab-" required>
          <label for="ab-">AB-</label>


          <input type="radio" id="o+" name="tiposanguineo" value="o+" required>
          <label for="o+">O+</label>


          <input type="radio" id="o-" name="tiposanguineo" value="o-" required>
          <label for="o-">O</label>
          <br><br>
        </div>
    <input class="inputsubmit" type="submit" name="submit" value="Enviar">
</form>

  </div>

</body>

</html>
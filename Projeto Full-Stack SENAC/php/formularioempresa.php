<?php

if(isset($_POST["submit"]))
{

  include_once("config.php");

  $nome = $_POST["nome"];
  $email = $_POST["email"];
  $cnpj = $_POST["cnpj"];

  $result = mysqli_query($conexao, "INSERT INTO empresa(nome,email,cnpj)VAlUES ('$nome','$email','$cnpj')");

  header("Location: formularioempresa.php");

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

  </style>
</head>

<body>
<a class="voltar" href="/luis/Banco-de-Dados-main/gotasdevida.html">Voltar</a>
  <div class="bolinha">
    <h1>Empresa</h1>
    <form action="formularioempresa.php" method="POST">
    <input type="name" name="nome" id="nome" placeholder="Nome">
      <br><br>
    <input type="email" name="email" id="email" placeholder="Email">
    <br><br>
    <input id="cnpj" name="cnpj" class="form-control rounded-form" type="text" placeholder="Insira o CNPJ" maxlength="18"/>
    <br><br>
    <input class="inputsubmit" type="submit" name="submit" value="Enviar">
</form>

  </div>
  <script>
document.getElementById('cnpj').addEventListener('input', function (e) {
      var x = e.target.value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,3})(\d{0,3})(\d{0,4})(\d{0,2})/);
      e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + '/' + x[4] + (x[5] ? '-' + x[5] : '');
    });
    </script>
</body>

</html>
<?php
session_start();
if((!isset($_SESSION['user']) == true) and (!isset($_SESSION['Funcionario_CPf']) == true) and (!isset($_SESSION['password']) == true)) {

  unset($_SESSION['user']);
  unset($_SESSION['Funcionario_CPf']);
  unset($_SESSION['password']);
  header('Location: index.php');
}
$logado = $_SESSION['user'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Document</title>
</head>
<body>
    <section>

    </section>
</body>
</html>
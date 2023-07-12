<?php
session_start();
if((!isset($_SESSION['email']) == true) and (!isset($_SESSION['senha']) == true)) {

  unset($_SESSION['email']);
  unset($_SESSION['senha']);
  header('Location: loginbolinha.php');
}
$logado = $_SESSION['email'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <title>Document</title>
 
  <style>
    body{
      background: linear-gradient(to right, rgb(20, 147, 220), rgb(17, 54, 71));
      color: white;
    }
  </style>


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SISTEMA DO FELIPE</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" arial-expanded="false"></button>
  </div>
  <div class="d-flex">
    <a href="" class="btn btn-danger me-5">Sair</a>
  </div>
</nav>
   <?php
      echo "<h1>Bem vindo <u>$logado</u></h1>";
   ?>
</body>
</html>
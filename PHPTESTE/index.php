<?php
session_start();
if((!isset($_SESSION['idLogin']) == true) and (!isset($_SESSION['user']) == true) and (!isset($_SESSION['password']) == true) and (!isset($_SESSION['Funcionario_CPf']) == true)) {

  unset($_SESSION['idLogin']);
  unset($_SESSION['user']);
  unset($_SESSION['password']);
  unset($_SESSION['Funcionario_CPf']);
  header('Location: login.php');
}
$logado = $_SESSION['user'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
      /* @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap'); */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins',sans-serif;
}

section {
    min-height: 100vh;
    width: 100%;
    background-color: darkslategray;
}
    </style>
</head>
<body>
    <section>

    </section>
</body>
</html>
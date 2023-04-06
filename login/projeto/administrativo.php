<?php
session_start();
// if(!empty($_SESSION['id'])){
// 	echo "Olá ".$_SESSION['nome'].", Bem vindo ao Universo Startup <br>";
// 	echo "<a href='sair.php'>Sair</a>";
// }else{
// 	$_SESSION['msg'] = "Área restrita";
// 	header("Location: login.php");	
// }
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="administrativo.css">
    <title>Document</title>
</head>
<body>
    <div class="topo">
<nav>
    <h2 class="logo">LOGO</h2>
    <ul>
        <li><a href="#">Inicio</a></li>
        <li><a href="#">Pedidos</a></li>
        <li><a href="#">Faturamento</a></li>
        <li><a href="#">Contas</a></li>
    </ul>
    <a href='sair.php' class="sair">Sair</a>
</nav>
</div>
    <section>
    </section>
</body>
</html>
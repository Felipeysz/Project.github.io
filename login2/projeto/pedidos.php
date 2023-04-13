<?php
session_start();
if(!empty($_SESSION['id'])){
	// echo "Olá ".$_SESSION['nome'].", Bem vindo ao Universo Startup <br>";
	// echo "<a href='sair.php'>Sair</a>";
}else{
	$_SESSION['msg'] = "Área restrita";
	header("Location: login.php");	
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<form action="POST">
		<div class="form">
			<h1>Pedidos</h1>
		<h3>Lanches</h3>
		<input type="radio"><label for=""></label>
		<input type="radio"><label for=""></label>
		<input type="radio"><label for=""></label>
		<input type="radio"><label for=""></label>
		<h3>bebidas</h3>
	</div>
	</form>
</body>
</html>
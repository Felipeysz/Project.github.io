<?php
session_start();
if(!empty($_SESSION['idlogin'])){
	echo "Olá ".$_SESSION['user'].", Bem vindo ao Universo Startup <br>";
	echo "<a href='sair.php'>Sair</a>";
}else{
	$_SESSION['msg'] = "Área restrita";
	header("Location: login.php");	
}
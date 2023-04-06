<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "project_denyshotdogv8";
	
	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

	// Conexão PDO com tratamento de erro
// try{
// 	$conn = new PDO("mysql:host=$servidor;dbname=$dbname", $usuario, $senha);
	// echo"conexão realizado com sucesso!";
//ativar modos de erros
// 	$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
// 	}catch(PDOException $e){
// 	echo"Erro: $e";
// 	}
<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "project_denyshotdogv8";
	
	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

	


	// Conexão PDO com tratamento de erro
// try{
// 	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
	// echo"conexão realizado com sucesso!";
// //ativar modos de erros
// // 	
// 	}catch(Exception $e){
// 	echo"Erro: $e";
// 	}
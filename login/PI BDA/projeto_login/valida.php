<?php
session_start();
include_once("conexao.php");
$btnLogin = filter_input(INPUT_POST, 'btnLogin', FILTER_DEFAULT);
if($btnLogin){
	$user = filter_input(INPUT_POST, 'user', FILTER_DEFAULT);
	$password = filter_input(INPUT_POST, 'password', FILTER_DEFAULT);
	//echo "$user - $password";
	if((!empty($user)) AND (!empty($password))){
		//Gerar a password criptografa
		//echo password_hash($password, PASSWORD_DEFAULT);
		//Pesquisar o usuário no BD
		$result_user = "SELECT idlogin, user, password FROM login WHERE user='$user' LIMIT 1";
		$resultado_user = mysqli_query($conn, $result_user);
		if($resultado_user){
			$row_user = mysqli_fetch_assoc($resultado_user);
			if(password_verify($password, $row_user['password'])){
				$_SESSION['idlogin'] = $row_user['idlogin'];
				$_SESSION['user'] = $row_user['user'];
				// $_SESSION['email'] = $row_user['email'];
				header("Location: administrativo.php");
			}else{
				$_SESSION['msg'] = "Login e password incorreto!";
				header("Location: login.php");
			}
		}
	}else{
		$_SESSION['msg'] = "Login e password incorreto!";
		header("Location: login.php");
	}
}else{
	$_SESSION['msg'] = "Página não encontrada";
	header("Location: login.php");
}
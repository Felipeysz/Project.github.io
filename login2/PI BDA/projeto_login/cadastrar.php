<?php
session_start();
ob_start();
$btnCadUsuario = filter_input(INPUT_POST, 'btnCadUsuario', FILTER_DEFAULT);
if($btnCadUsuario){
	include_once 'conexao.php';
	$dados_rc = filter_input_array(INPUT_POST, FILTER_DEFAULT);
	
	$erro = false;
	
	$dados_st = array_map('strip_tags', $dados_rc);
	$dados = array_map('trim', $dados_st);
	
	if(in_array('',$dados)){
		$erro = true;
		$_SESSION['msg'] = "Necessário preencher todos os campos";
	}elseif((strlen($dados['password'])) < 4){
		$erro = true;
		$_SESSION['msg'] = "A password deve ter no minímo 4 caracteres";
	}elseif(stristr($dados['password'], "'")) {
		$erro = true;
		$_SESSION['msg'] = "Caracter ( ' ) utilizado na password é inválido";
	}
	
	
	//var_dump($dados);
	if(!$erro){
		//var_dump($dados);
		$dados['password'] = password_hash($dados['password'], PASSWORD_DEFAULT);
		
		$result_usuario = "INSERT INTO usuarios (user, password) VALUES (
						'" .$dados['user']. "',
						'" .$dados['password']. "'
						)";
		$resultado_usario = mysqli_query($conn, $result_usuario);
		if(mysqli_insert_id($conn)){
			$_SESSION['msgcad'] = "Usuário cadastrado com sucesso";
			header("Location: login.php");
		}else{
			$_SESSION['msg'] = "Erro ao cadastrar o usuário";
		}
	}
	
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <title>Cadastrar</title>
</head>

<body>
  <h2>Cadastro</h2>
  <?php
			if(isset($_SESSION['msg'])){
				echo $_SESSION['msg'];
				unset($_SESSION['msg']);
			}
		?>
  <form method="POST" action="">
    <label>user</label>
    <input type="text" name="user" placeholder="Digite o user e o sobreuser"><br><br>

    <label>password</label>
    <input type="password" name="password" placeholder="Digite a password"><br><br>

    <input type="submit" name="btnCadUsuario" value="Cadastrar"><br><br>

    Lembrou? <a href="login.php">Clique aqui</a> para logar

  </form>
</body>

</html>
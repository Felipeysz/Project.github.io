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
	}elseif((strlen($dados['senha'])) < 6){
		$erro = true;
		$_SESSION['msg'] = "A senha deve ter no minímo 6 caracteres";
	}elseif(stristr($dados['senha'], "'")) {
		$erro = true;
		$_SESSION['msg'] = "Caracter ( ' ) utilizado na senha é inválido";
	}else{
		$result_usuario = "SELECT id FROM usuarios WHERE usuario='". $dados['usuario'] ."'";
		$resultado_usuario = mysqli_query($conn, $result_usuario);
		if(($resultado_usuario) AND ($resultado_usuario->num_rows != 0)){
			$erro = true;
			$_SESSION['msg'] = "Este usuário já está sendo utilizado";
		}
		
		$result_usuario = "SELECT id FROM usuarios WHERE email='". $dados['email'] ."'";
		$resultado_usuario = mysqli_query($conn, $result_usuario);
		if(($resultado_usuario) AND ($resultado_usuario->num_rows != 0)){
			$erro = true;
			$_SESSION['msg'] = "Este e-mail já está cadastrado";
		}
	}
	
	
	//var_dump($dados);
	if(!$erro){
		//var_dump($dados);
		$dados['senha'] = password_hash($dados['senha'], PASSWORD_DEFAULT);
		
		$result_usuario = "INSERT INTO login (nome, email, usuario, senha) VALUES (
						'" .$dados['nome']. "',
						'" .$dados['email']. "',
						'" .$dados['usuario']. "',
						'" .$dados['senha']. "'
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
  <link rel="stylesheet" href="cadastrar.css">
  <title>Contas-Funcionarios</title>
</head>
<body>
<div class="topo">
<nav>
    <h2 class="logo">LOGO</h2>
    <ul>
        <li><a href="administrativo.php">Inicio</a></li>
        <li><a href="pedidos.php">Pedidos</a></li>
        <li><a href="#">Faturamento</a></li>
        <li><a href="cadastrar.php">Contas</a></li>
    </ul>
    <a href='sair.php' class="sair">Sair</a>
</nav>
</div>
    <section> 
	<form method="POST" action="">
	<div class="form">
	<h2 class="cad">Cadastro</h2>
 <div class="form-input"></div>
	<div class="inputbox">  
		<input type="text" name="nome" ><br><br>
		<label>Nome</label>
	</div>

	<div class="inputbox">
		<input type="text" name="email"><br><br>
		<label>E-mail</label>
	</div>

	<div class="inputbox">
		<input type="text" name="usuario"><br><br>
		<label>Usuário</label>
	</div>

	<div class="inputbox">
		<input type="password" name="senha"><br><br>
		<label>Senha</label>
	</div>

    <button value="registrar" name="btnCadastro" class="cadastro">Cadastro</button>
    Lembrou? <a href="login.php">Clique aqui</a> para logar
</div>
  </form>
    </section>
  <?php
			if(isset($_SESSION['msg'])){
				echo $_SESSION['msg'];
				unset($_SESSION['msg']);
			}
		?>

</body>

</html>
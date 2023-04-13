<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <title>Login</title>
</head>

<body>
  <h2>Login</h2>
  <?php
			if(isset($_SESSION['msg'])){
				echo $_SESSION['msg'];
				unset($_SESSION['msg']);
			}
			if(isset($_SESSION['msgcad'])){
				echo $_SESSION['msgcad'];
				unset($_SESSION['msgcad']);
			}
		?>
  <form method="POST" action="valida.php">
    <label>Usuário</label>
    <input type="text" name="user" placeholder="Digite o seu user"><br><br>

    <label>Senha</label>
    <input type="password" name="senha" placeholder="Digite a sua senha"><br><br>

    <input type="submit" name="btnLogin" value="Acessar">

    <h4>Você ainda não possui uma conta?</h4>
    <a href="cadastrar.php">Crie grátis</a>

  </form>
  <br><br><br>
  Usuário cadastrado no Banco de Dados<br>
  Usuário: edlove@email.com.br <br>
  Senha: !hojeCedo06$<br>
</body>

</html>
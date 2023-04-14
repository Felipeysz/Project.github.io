<?php
session_start();
?>
<!DOCTYPE html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html lang="pt-br">


<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="style.css">
  <title>Login</title>
</head>
<body>
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
<section>
  <div class="form-box">
    <form method="POST" class="form-login" action="valida.php">
      <h1>Login</h1>
    <div class="login">

    <div class="inputbox">
    <ion-icon name="mail-outline"></ion-icon>
    <input type="text" name="usuario" id="login-msg" required>
    <label for="login-msg" class="label">Usuario</label>
    </div> 
    
    <div class="inputbox">
    <ion-icon name="lock-closed-outline"></ion-icon>
    <input type="password" name="senha" id="password-msg" required>
    <label for="password-msg" class="label">Senha</label>
    </div>
    <!-- <div class="forget">
    <input type="checkbox" id="check-on" required class="check">
    <label for="check-on" class="msg-check">Confirme O Login</label><br><br>
    </div> -->
    <!-- <input type="submit" name="btnLogin" value="Acessar" class="forget"> -->
    <button value="Acessar" name="btnLogin">Login</button>

    <!-- <h4>Você ainda não possui uma conta?</h4>
    <a href="cadastrar.php">Crie grátis</a> -->
      </div>
    </form>
  </div>
</section>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>






<!-- ///////////////////////////////////////////////////////////// -->



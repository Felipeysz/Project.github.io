<?php

  session_start();
if(isset($_POST['submit']) && !empty($_POST['idLogin']) && !empty($_POST['user']) && !empty($_POST['password']) && !empty($_POST['Funcionario_CPf']))
{
      include_once('conexao.php');
      $idLogin = $_POST ['idLogin'];
      $user = $_POST['user'];
      $password = $_POST['password'];
      $Funcionario_CPf = $_POST['Funcionario_CPf'];
      
      $sql = "SELECT * FROM 'login' WHERE idLogin = '$idLogin' and user = '$user' and password = '$password' and Funcionario_CPf = '$Funcionario_CPf'";
      $result = $conexao->query($sql);

//ERRO ENTRE A LINHA 6 E A LINHA 14

      if(mysqli_num_rows($result) < 1)
      {
        unset($_SESSION['idLogin']);
        unset($_SESSION['user']);
        unset($_SESSION['password']);
        unset($_SESSION['Funcionario_CPf']);
        header('Location: login.php');
      }
      else
      {
        $_SESSION['idLogin'] = $idLogin;
        $_SESSION['user'] = $user;
        $_SESSION['password'] = $password;
        $_SESSION['Funcionario_CPf'] = $Funcionario_CPf;
        header('Location: index.php');
      }
}
else
{
  header('Location: login.php');
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Login-Admin</title>
</head>
<body>
    <section>
        <div class="form-box">
            <form action="" class="form-login" method="POST">
                <h1>Login</h1>
                <div class="login">

                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <input type="text" id="login-msg" required >
                    <label for="login-msg" class="label">Login</label>
                </div>

                <div class="inputbox">
                    <ion-icon name="document-lock-outline"></ion-icon>
                    <input type="text" id="cpf" required maxlength="18">
                    <label for="cpf" class="label">CPF</label>
                </div>

                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" id="password-msg" required >
                    <label for="password-msg" class="label">Senha</label>
                </div>

                <div class="forget">
                    <input type="checkbox" id="check-on" required class="check">
                    <label for="check-on" class="msg-check">Confirme O Login</label>
                </div>
                    <button>Login</button>

                </div>
            </form>
        </div>
    </section>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script src="script.js"></script>
</body>
</html>
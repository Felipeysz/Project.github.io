<?php

  session_start();
if(isset($_POST['submit']) && !empty($_POST['user']) && !empty($_POST['password']))
{

    // && !empty($_POST['idLogin'])
    // and !empty($_POST['Funcionario_CPf'])

      include_once('conexao.php');
      $user = $_POST['user'];
      $password = $_POST['password'];
    //   $Funcionario_CPf = $_POST['Funcionario_CPf'];
    $sql = "SELECT * FROM login WHERE user = '$user' and password = '$password'";

      $result = $conexao->query($sql);


      if(mysqli_num_rows($result) < 1)
      {
        // unset($_SESSION['idLogin']);
        unset($_SESSION['user']);
        unset($_SESSION['password']);
        // unset($_SESSION['Funcionario_CPf']);
        header('Location: index.php');
      }
      else
      {
        // $_SESSION['idLogin'] = $idLogin;
        $_SESSION['user'] = $user;
        $_SESSION['password'] = $password;
        // $_SESSION['Funcionario_CPf'] = $Funcionario_CPf;
        header('Location: index.php');
      }
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

                <!-- <div class="inputbox">
                    <ion-icon name="document-lock-outline"></ion-icon>
                    <input type="text" id="cpf" required maxlength="11">
                    <label for="cpf" class="label">CPF</label>
                </div> -->

                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" id="password-msg" required>
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


<script src="script.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
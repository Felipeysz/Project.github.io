<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <style>

body {
  font-family: Arial, Helvetica, sans-serif;
  background: white;
}
.bolinha {
  background-color: rgba(206, 107, 107);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 80px;
  border-radius: 15px;
  color: white;
}
input {
  padding: 15px;
  font-size: 15px;
}
.inputsubmit {
  background-color: whitesmoke;
  padding: 15px;
  width: 100%;
  border-radius: 10px;
  color: rgba(206, 107, 107);
  font-size: 15px;
  
}
.inputsubmit:hover {
  transition: 0.5s;
  background-color: rgba(206, 107, 107);
  color: white;
  cursor: pointer;
}
.voltar{
  text-decoration: none;
  color: whitesmoke;
  display: inline-block;
  background-color: rgba(206, 107, 107);
  padding: 10px 5px;
  border-radius: 3px;
  
}

  </style>
</head>

<body>
<a class="voltar" href="/luis/Banco-de-Dados-main/gotasdevida.html">Voltar</a>
  <div class="bolinha">
    <h1>Login</h1>
    <form action="testelogin.php" method="POST">
    <input type="text" name="email" placeholder="Email">
    <br><br>
    <input type="password" name="senha" placeholder="Senha">
    <br><br>
    <input class="inputsubmit" type="submit" name="submit" value="enviar">
</form>

  </div>
</body>

</html>
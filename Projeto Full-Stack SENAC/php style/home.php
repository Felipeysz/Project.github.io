<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background: rgb(35,35,35);
      text-align: center;
      color: white;
      margin: 0;
    }
    .box {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: rgba(0, 0, 0, 0.6);
      padding: 30px;
      border-radius: 10px;
    }
    .fundo0{
      background:rgb(35,35,35);
      width: 100%;
      height: 514px;
    }
    .fundo1{
      background:rgb(107,32,32);
      width: 100%;
      height: 982px;
    }
    .fundo2{
      background:rgb(35,35,35);
      width: 100%;
      height: 630px;
    }
    .fundo3{
      background:rgb(107,32,32);
      width: 100%;
      height: 327px;
    }
    a {
      display:flex;
      text-align: center;
      justify-content: center;
      text-decoration: none;
      color: white;
      background:rgb(222,35,35,0.46);
      border-radius: 14px;
      padding: 10px;
      font-weight: 500;
      width: 100px;
      height: 33px;
    }
    a:hover {
      transition:0.45s;
      color:rgb(222,35,35);
      background:white;
    }
  </style>
</head>
<body>
  
  <div class="fundo0">
    <a href="loginbolinha.php">Login 🔒</a>
    <a href="formulario.php">Cadastro</a>
  </div>
  <div class="fundo1"></div>
  <div class="fundo2"></div>
  <div class="fundo3"></div>
</body>
</html>
 -->

 <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Facilitando doação de sangue entre doadores e hospitais.">
  <link rel="stylesheet" href="css/gotasdevida.css">
  <link rel="shortcut icon" href="imagens/sangueQuel.png" type="gota">
  <title>Gotas de Vida</title>
  <style>
    h2.devida {
      text-indent: 60px;
    }
    @import url("https://fonts.googleapis.com/css2?family=Libre+Caslon+Text&family=Lusitana&family=Nunito:wght@300;400&display=swap");
* {
  margin: 0%;
  padding: 0%;
  box-sizing: border-box;
  border: 0;
  font-family: "Nunito", sans-serif;
  color: #ce6b6b;
}
/* Estilo do Topo */
.cabecalho {
  background: #ce6b6b;
  display: flex;
  justify-content: space-between;
  padding: 30px 150px;
  font-weight: 600;
}
h2 {
  color: white;
  font-family: "Libre Caslon Text", serif;
  font-size: 25px;
  font-weight: 400;
  text-align: left;
}
a {
  color: #fff;
  font-family: "Lusitana", sans-serif;
  font-weight: 400;
  font-size: 25px;
  padding: 30px;
}
.login {
  background: #ce6b6b;
  font-weight: 550;
  font-size: 25px;
  padding: 3px 8px;
  border-radius: 14px;
  border: 3px solid white;
  color: white;
}
.titulo1 {
  position: absolute;
  width: 424px;
  height: 266px;
  left: 845px;
  top: 365px;
  letter-spacing: 5px;
  text-align: center;
  font-weight: 700;
  font-size: 70px;
  color: white;
}
/* Estilo do Body */
.box {
  display: grid;
  grid-template-columns: 800px;
  grid-template-rows: 200px;
  row-gap: 50px;
  padding: 150px;
}
.box2,
.box3,
.box4 {
  /* text-indent: 50px;   */
  display: grid;
  grid-template-columns: 800px;
  padding: 150px;
  /* grid-template-rows: 200px; */
}
h4 {
  font-weight: 400;
  font-size: 80px;
  text-decoration: underline;
}
.sejadoador {
  font-weight: 700;
  font-size: 60px;
  color: #ce6b6b;
}
.coracao {
  width: 100%;
  height: auto;
  display: block;
}
main {
  font-size: 100%;
  background: white;
}
.button {
  color: #fff;
  background: #ce6b6b;
  font-size: 48px;
  font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande",
    "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
  padding: 3px 8px 3px 15px;
  border-radius: 14px;
  border: 3px solid #ce6b6b;
  border: none;
  width: 315px;
  height: 80px;
}
p {
  font-family: "Lusitana";
  font-size: 40px;
}
ul {
  list-style-type: armenian;
  font-family: "Lusitana";
  font-size: 40px;
  padding: 5px 15px;
}
/* Estilo do Footer */
/* Pseudo Classes */
.login:hover {
  background: white;
  color: #ce6b6b;
}
.button:hover {
  background: white;
  color: #ce6b6b;
  border: 3px solid #ce6b6b;
}
  </style>
</head>
<body>
  <header>
    <div class="cabecalho">
      <div class="logo">
        <h2 class="gotas">Gotas <img class="gota" src="imagens/sangueQuel.jpg" alt="Logo gota"></h2>
        <h2 class="devida">de Vida</h2>
      </div>
      <nav class="navegacao">
        <a href="home.php">Home</a>
        <a href="formulario.php">Cadastro</a>
        <a href="Parceiros.php">Parceiros</a>
       <a href="loginbolinha.php"> <button class="login">Login</button></a>
      </nav>
    </div>
    <div class="coracao">
      <img class="coracao" src="imagens/coracao.png" alt="coracao" width="1440" height="714">
    </div>
  </header>
  <main>
    <section>
      <h1 class="titulo1"> SEJA UM DOADOR COM AMOR</h1>
      </div>
      <div class="box">
        <h1 class="sejadoador">SEJA DOADOR OU RECEPTOR DE SANGUE
        </h1>
        <p>Doar sangue é simples,
          rápido e seguro. Esse gesto pode salvar até <strong>4 vidas</strong>.</p>
        <h3 class="sejadoador">SALVE VIDAS !</h3>
        <button  class="button">Seja Doador</button>
      </div>
      <div class="box2">
        <h4>Condições para Doação:</h4>
        <p>
        <ul>Saudavel e acima de 50kg;</ul>
        <ul>Documento Original com foto;
        </ul>
        <ul>Ter entre 16 e 60 anos;</ul>
        <ul>Intervalo de 60 dias para Homens e 90 dias para mulheres;</ul>
        </p>
      </div>
      <div class="box3">
        <h4>Não pode Doar:</h4>
        <p>
        <ul>Teve hepatite aos após os 11 anos;</ul>
        <ul>Hepatites B e C, HIV, doenças associadas ao HTVL I e II ,doencça de Chagas;</ul>
        <ul>
          Drogas Ilícitas Injetáveis;</ul>
        </p>
      </div>
      <div class="box4">
        <h4>Impedimentos Tempórarios:</h4>
        <p>
        <ul>Estar Gravida;</ul>
        <ul>Pós-gravidez (90 dias parto normal e 180 para parto cesariano);</ul>
        <ul>Com sintomas de Resfriado, Gripe ou Febre (aguardar 15 pós sintomas);</ul>
        <ul>Feito Tatuagem ou Piercing ( região oral ou genital), nos ultimmos 12 meses;</ul>
        </p>
      </div>
    </section>
  </main>
  <footer><a href="">What's Up</a>
    <a href="">Instagram</a><a href="">FaceBook</a>
    <p>Visite nossas Redes Sociais</p>
  </footer>
</body>
</html>
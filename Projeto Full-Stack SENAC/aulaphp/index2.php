<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/imc.css">
  <title>IMC</title>
</head>
<body>
  <div class="box">
  <!-- <h1 id="titulo">Calculo da Massa Corporea</h1> -->
  <form action="index.php" method="POST">
      <label for="altura">Altura</label>
      <input type="text" name="altura" id="altura" require><br><br>
      <label for="">Peso</label>
      <input type="text" name="peso" id="peso" require><br><br>
      <input type="submit" name="submit" value="Calcular">
  </form>
  <!-- </div>    -->
  
  <?php
    if(isset($_POST["submit"])){
      $altura=$_POST["altura"];
      $peso=$_POST["peso"];
    
    $calc=$peso/($altura*$altura);
    
    echo "Sua Massa Corporea é: ".round($calc,2)."<br><br>";

    if($calc<="18.5"){
    echo "Sua Classificação é: Abaixo do Peso"."<br><br>";}

    elseif($calc>"18.5" and $calc<"25"){
    echo "Sua Classificação é: Normal"."<br><br>";}

    elseif($calc>="25" and $calc<"30"){
    echo "Sua Classificação é: SobrePeso"."<br><br>";}

    elseif($calc>"30"){
    echo "Sua Classificação é: Obesidade"."<br><br>";}
    }
  ?>
  </div>
</body>
</html>
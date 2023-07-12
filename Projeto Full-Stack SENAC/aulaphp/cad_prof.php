<?php
// if de esperar aguardando o submit para rodar o codigo
if(isset($_POST['submit'])){
  include_once 'conexao.php';
  // transformando uma variavél superglobal em local
  $nome = $_POST['nome'];
  $nivel = $_POST['nivel'];
  $data_admissao = $_POST['data_admissao'];
  $genero = $_POST['genero'];
  $disciplina = $_POST['disciplina'];
  

  $sql = "INSERT INTO professores(
    nome,
    nivel,
    data_admissao,
    genero,
    disciplina)
    VALUES('$nome','$nivel','$data_admissao','$genero','$disciplina')";


  $resultado = $conexao->query($sql);  

}
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
    <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
  <style>
    body{
      width: 100vw;
      height: 100vh;
      background: rgb(50, 100, 200);
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
      font-size: 22px;
    }
    .container-fluid{
      background: rgba(0, 0, 0, .3);
      width: 30%;
      border-radius: 10px;
      
    }
  </style>
</head>
<body>
<div class="container-fluid">
 

<form action="cad_prof.php" method="POST">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nome</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nome">
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nivel</label>
    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="nivel">
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Data</label>
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="data_admissao">
  </div>

  <label for="exampleInputEmail1" class="form-label">Gênero</label>
  <select class="form-select" aria-label="Default select example" name="genero">
  <option selected>Selecione o Gênero</option>
  <option value="masculino">Masculino</option>
  <option value="feminino">Feminino</option>
  <option value="outros">Outros</option>
  </select>

  <label for="exampleInputEmail1" class="form-label my-3 mb-2">Disciplina</label>
  <select class="form-select" aria-label="Default select example" name="disciplina">
  <option selected>Selecione a Disciplina</option>
  <option value="portugues">Português</option>
  <option value="matematica">Matemarica</option>
  <option value="geografia">Geografia</option>
  <option value="historia">Historia</option>
  </select>

  
  <button  type="submit" class="btn btn-primary my-5 " name="submit">Cadastrar</button>
  
  <a href="lista_prof.php" class="btn btn-warning">Listar Professor</a>

  <?php
  if (!empty($resultado)){
    echo "Enviado com Sucesso";
  }
  ?>
</form>
</div>
</body>
</html>
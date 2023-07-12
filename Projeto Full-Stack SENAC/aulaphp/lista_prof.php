<?php

//session_start(); // inicia todas as paginas e variavéis de inserção.
include_once 'conexao.php'; //inclusao do arq conexo no sistema

// else {
//   header('Location:login.php'); // envia para o local setado.
//   unset($_SESSION['login']); // Limpa os campos.
//   unset($_SESSION['senha']);
// }

$sql="SELECT * FROM professores ORDER BY nome ASC";
// mostra todos os alunos em ordem crescente
$resultado = $conexao->query($sql); // executa a consulta do banco.

?>

<?php

if(!empty($_GET['search'])){
  $search=$_GET['search'];
  $sql="SELECT * FROM professores WHERE nome LIKE '%search%' ORDER BY nome ASC";
}else{
  $sql="SELECT * FROM professores ORDER BY nome ASC";
   // mostra todos os alunos em ordem crescente
}

$resultado = $conexao->query($sql);
?>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
  </script>
  <title>Cadastro de Senha</title>
  <style>

    header h1 {
      font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      font-weight: 600;
      color: orange;
      display: flex;
    }
    .form-inline{
      display: flex;
      gap: 10px; 
    }

    .topo {
      color: white;
      display: flex;
      justify-content: space-evenly;
      gap: 50px;
    }

    body {
      height: 100vh;

    }

    main {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }

    .box {
      background: rgba(0, 0, 0, .5);
      border-radius: 10px;
      padding: 20px;
      width: auto;
      /* display: flex; */
      /* justify-content: space-around; */
    }
    .table{
      color: white;
    }
  </style>

</head>


<body class="bg-primary bg-gradient">

  <header class="navbar bg-dark navbar-dark topo">
    <a href="index.html"><img src="img/icons8-mulher-estudante-48.png" alt="icon"></a>


    <h1>SISTEMA DE CADASTRO ESCOLAR <br> 
    <!-- <?php
    echo "Bem vindo ".$login;
    ?></h1> -->

    <a href="sair.php"><button class="btn btn-warning">Sair</button></a>
    
  </header>
  <main>
    <section class="box">
       <form class="form-inline" action="lista_prof.php" method="GET">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
      <button class="btn btn-warning my-2 my-sm-0" type="submit" name="submit">Search</button>
      </form>
      
    <!-- <h1>Aguarde Site em Construção ⛑ 🚧 🏗</h1> -->
    <table class="table">
      <thead class="thead-light">
        <tr>
          <!-- <th scope="col">ID</th> -->
          <th scope="col">Nome</th>
          <th scope="col">nivel</th>
          <th scope="col">data_admissao</th>
          <th scope="col">genero</th>
          <th scope="col">disciplina</th>
        </tr>
      </thead>
      <tbody>
    <?php

      while ($professores=mysqli_fetch_assoc($resultado)){ //Quebra toda a variavel. Usada para grande estruturas.
        echo "<tr>";
          // echo"<td>".$alunos['id']."</td>";
          echo"<td>".ucfirst($professores['nome'])."</td>";
          echo"<td>".$professores['nivel']."</td>";
          echo"<td>".$professores['data_admissao']."</td>";
          echo"<td>".$professores['genero']."</td>";
          echo"<td>".$professores['disciplina']."</td>";
 
        echo "</tr>";
      }

    ?>

        </tbody>
     </table>
   
    </section>

  </main>
  
</body>

</html>
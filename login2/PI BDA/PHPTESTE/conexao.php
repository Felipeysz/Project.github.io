<!-- <?php
    $dbHost = 'localhost';
    $dbUsername = 'root';
    $dbPassword = '';
    $dbName = 'project_denyshotdogv8';

  $conexao = new mysqli($dbHost,$dbUsername,$dbPassword,$dbName);

?> -->

<?php

define('HOST', 'localhost');
define('USER', 'root');
define('DBNAME', 'project_denyshotdogv8');
define('PASS', '');

try {
  $conn = new pdo ('mysql:host=' . HOST . ';dbname=' . DBNAME,USER,PASS);
  echo "conexão com banco de dados realizada com sucesso.";
}catch (PDOException $e) {
  echo"Erro: Conexão com banco de dados não foi realizada com sucesso.Erro gerado " . $e->getMessage();
}
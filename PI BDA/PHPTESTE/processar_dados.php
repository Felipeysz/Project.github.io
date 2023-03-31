<?php
    $dados = json_decode($_POST['dados'], true); // converte o objeto JSON em um array associativo
    
    $idLogin = $dados[0]['value'];
    $user = $dados[0]['value'];
    $password = $dados[1]['value'];
    $Funcionario_CPf = $dados[0]['value'];
    
    $resultado = array(
        'idLogin' => $idLogin,
        'user' => $user,
        'password' => $password,
        'Funcionario_CPf' => $Funcionario_CPf,
    );
    
    echo json_encode($resultado); // retorna os dados em formato JSON
?>
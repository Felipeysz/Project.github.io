<?php
    $dados = json_decode($_POST['dados'], true); // converte o objeto JSON em um array associativo
    
    $user = $dados[0]['value'];
    $Funcionario_CPf = $dados[0]['value'];
    $password = $dados[1]['value'];
    
    $resultado = array(
        'user' => $user,
        'Funcionario_cpf' => $Funcionario_CPf,
        'password' => $password
    );
    
    echo json_encode($resultado); // retorna os dados em formato JSON
?>
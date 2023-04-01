<?php
    $dados = json_decode($_POST['dados'], true); // converte o objeto JSON em um array associativo
    
    $user = $dados[0]['value'];
    $password = $dados[1]['value'];
    
    $resultado = array(
        'user' => $user,
        'password' => $password,
    );
    
    echo json_encode($resultado); // retorna os dados em formato JSON
?>

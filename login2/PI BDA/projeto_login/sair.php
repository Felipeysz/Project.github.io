<?php

session_start();
unset($_SESSION['idlogin'], $_SESSION['user']);

$_SESSION['msg'] = "Deslogado com sucesso";
header("Location: login.php");
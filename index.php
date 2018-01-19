<?php

    session_start();


    $value = 'something from somewhere';

    setcookie("TestCookie", $value, time()+3600);  /* expire in 1 hour */


    $_COOKIE['TestCookie'];

    $_SESSION['host'] = 'mysql:host=localhost;dbname=nfactoryblog;charset=utf8';
    $_SESSION['ndcSQL'] = 'root';
    $_SESSION['mdpSQL'] = '';

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    $_SESSION['login'] = false;
    $_SESSION['pseudo'] = '';
    $_SESSION['newArticle'] = false;
    $_SESSION['errorSignUp'] = false;
    $_SESSION['errorOnLogin'] = false;

    header('Location: ./assets/php/main.php');
    
?>


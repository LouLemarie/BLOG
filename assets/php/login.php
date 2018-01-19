<?php
    session_start();
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
    $req = $bdd->query('SELECT * FROM t_users');

$mdp = $_POST['mdp'];
$password = sha1($mdp);

    while($user = $req->fetch()) {
        echo 'Pseudo : ' . $user['pseudo'] . '<br>';
        if(($user ['email'] == $_POST['email'] && $user ['mdp'] == $password)) {
            $_SESSION['login'] = true;
            $_SESSION['pseudo'] = $user['pseudo'];

            echo '<br> Bienvenue : '.$_SESSION['pseudo'] . '<br>';
            
        }
        else {

            $_SESSION['errorOnLogin']= true;

        }
    }

    header('Location: ./main.php');


    

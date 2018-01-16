<?php
    session_start();

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    if(isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['mdp'])) {
        $req = $bdd->prepare('INSERT INTO t_users(pseudo, email, mdp, T_ROLES_ID_ROLE) VALUES(:pseudo, :email, :mdp, :role)');
        $req->execute(array(
            'pseudo' => $_POST['pseudo'],
            'email' => $_POST['email'],
            'mdp' => $_POST['mdp'],
            'role' => 1,
        ));
    }


    header('Location: ./main.php');
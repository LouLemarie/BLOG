<?php
    session_start();
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    
    if(isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['MDP'])) {
        $req = $bdd->prepare('INSERT INTO t_users(pseudo, email, MDP, T_ROLES_idT_ROLES, admin) VALUES(:pseudo, :email, :MDP, :role, :admin)');
        $req->execute(array(
            'pseudo' => $_POST['pseudo'],
            'email' => $_POST['email'],
            'MDP' => $_POST['MDP'],
            'role' => 1,
            'admin' => 1,
            ));
    }


    header('Location: ./main.php');



<?php
    session_start();
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);


    /*function testDonneeForm ($name, $id) { 
        if(isset($_POST[$name])) {
            $req = $bdd->prepare('UPDATE T_USERS SET '.$name.'= :changement WHERE id = :vid');
            $req->execute(array(
                'changement' => $_POST[$name],
                'vid' => $id,
            ));
        }
    }*/
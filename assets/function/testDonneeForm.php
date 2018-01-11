<?php
    session_start();
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);


    function testDonneeForm ($name, $taille, $id) { 
        if(isset($_POST[$name]) && strlen($_POST[$name]) <= $taille) {
            $req = $bdd->prepare('UPDATE article SET '.$name.'= :changement WHERE id = :vid');
            $req->execute(array(
                'changement' => $_POST[$name],
                'vid' => $id,
            ));
        }
    }
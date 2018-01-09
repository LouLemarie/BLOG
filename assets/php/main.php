<?php
    include_once('../function/testDonneeForm.php');

    
    if(isset($_POST[$name]) && strlen($_POST[$name]) <= $taille) {
        $req = $bdd->prepare('INSERT INTO article ('.$name.') VALUES(?)');
        
        $req->execute(array($_POST[$name]));

        $lastid = $bdd->exec('
        SELECT LAST_INSERT_ID() FROM evenements
        ');
    }


    testDonneeForm('titre', 5, $lastid);

    testDonneeForm('categorie', 5, $lastid);

    testDonneeForm('sousTitre', 5, $lastid);

    testDonneeForm('content', 5, $lastid);


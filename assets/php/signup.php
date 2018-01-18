<?php
    session_start();

    // On ouvre la bdd
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    // On vérifie nos variables
    if(isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['mdp'])) {
        // On initialise une requète
        $req = $bdd->prepare('INSERT INTO t_users(pseudo, email, mdp) VALUES(:pseudo, :email, :mdp)');
    
        // On execute la requète
        $req->execute(array(
            'pseudo' => $_POST['pseudo'],
            'email' => $_POST['email'],
            'mdp' => $_POST['mdp'],
        ));
        $_SESSION['login'] = true;
        $_SESSION['pseudo'] = $_POST['pseudo'];
    }

    header('Location: ./main.php');





    // FUNCTION TESTEXIST('pseudo') => Prenne une chaine de caractères -> existance dans la bdd
    //                      => Est ce que la valeur envoyée existe dans la bdd -> si OUI : return true
    //                                                                         -> si NON : return false

    function testExist($var) {
        echo $var;
    }
<?php
    session_start();

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
            $mdp = $_POST['mdp'];
            $password = sha1($mdp);



if ( !testExist('email') && !testExist('pseudo')) {

    if (isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['mdp'])) {
        // On initialise une requète
        $req = $bdd->prepare('INSERT INTO t_users(pseudo, email, mdp) VALUES(:pseudo, :email, :mdp)');


        $req->execute(array(


            'pseudo' => $_POST['pseudo'],
            'email' => $_POST['email'],
            'mdp' => $password,
        ));
        $_SESSION['login'] = true;
        $_SESSION['pseudo'] = $_POST['pseudo'];
        $_SESSION['errorLogin'] = false;


    }



} else {

    $_SESSION['errorSignUp'] = true;

  ;
}



   header('Location: ./main.php');



    function testExist($var) {
        $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);
        $request = $bdd->query('SELECT * FROM t_users');
        $test = false;

        while($user = $request->fetch()) {
            if($user[$var] == $_POST[$var]) {
                $test = true ;
            }
        }

        return $test;
    }

    ?>


<?php
    session_start();

    // On ouvre la bdd
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    // On vérifie nos variables

   /* $email = $_POST['email'];
    $pseudo = $_POST['pseudo'];

if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $testValidation = true ;
}


   echo '<br>pseudo : ' . $_POST['pseudo'];
   echo '<br>email : ' . $_POST['email'];

   echo '<br>test existance : ' . testExist('pseudo');
   echo '<br> test existance : ' . testExist('email');

   */



if ( !testExist('email') && !testExist('pseudo')) {

    if (isset($_POST['email']) && isset($_POST['pseudo']) && isset($_POST['mdp'])) {
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
        $_SESSION['errorLogin'] = false;

        //echo '<br> Bien envoyé';
    }



} else {

    $_SESSION['errorLogin'] = true;

    //echo '<br> Déjà utilisé';
}

   header('Location: ./main.php');









    // FUNCTION TESTEXIST('pseudo') => Prenne une chaine de caractères -> existance dans la bdd
    //                      => Est ce que la valeur envoyée existe dans la bdd -> si OUI : return true
    //                                                                         -> si NON : return false

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


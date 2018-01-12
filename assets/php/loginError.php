<h1>Login</h1>
<?php 

if (isset($_POST['login'])) {
    $tabErreur = array();

    $mail =$_POST['mail'];
    $password = $_POST['password'];

    if ($mail== "")
        array_push($tabErreur, var:"Veuillez saisir une adresse");
    if ($password == "")
    array_push($tabErreur, var:"Veuillez saisir votre mot de passe");

    if (count($tabErreur) > 0) {
        $message = "<ul>";

        for ($i = 0 ; $i<count($tabErreur) ; $i++ ){

            $message .= "<li>" . $tabErreur[$i]
        }

        $message .= "</ul>";

        echo($message);
        include ("./include/formLogin.php");

    }

    else {


    }

}

else {}
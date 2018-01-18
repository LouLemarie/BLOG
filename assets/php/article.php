<?php
    session_start();

    // On ouvre la bdd
    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);

    // On vérifie nos variables
    if(isset($_POST['titre']) && isset($_POST['contenu'])) {

        // On initialise une requète
        $req = $bdd->prepare('INSERT INTO t_articles(titre, contenu) VALUES(:titre, :contenu)');

        // On execute la requète
        $req->execute(array(
            'titre' => $_POST['titre'],
            'contenu' => $_POST['contenu'],
        ));
        echo 'Article envoyé.';

        $_SESSION['newArticle'] = true;

    }


    header('location: ./main.php');



?>
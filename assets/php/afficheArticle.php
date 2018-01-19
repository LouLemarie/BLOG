<?php

    $bdd = new PDO($_SESSION['host'], $_SESSION['ndcSQL'], $_SESSION['mdpSQL']);



    $req = $bdd->query('SELECT * FROM t_articles ORDER BY dateHeure DESC LIMIT 0, 10');


    while($article = $req->fetch()) {

        $titre = $article['titre'];
        $categorie = 'Cuisine';
        $post = 'redigé';
        $contenu = $article['contenu'];
        $date = $article['dateHeure'];

        echo '
        <div class="article">
            <div class="titre">' . $titre .'</div>
            <div class="status">post: '.$post.' / catégorie: '.$categorie.' Date : '.$date.'</div>
            <div class="contenu">'.$contenu.'</div>
        </div>
        ';
    }

?>




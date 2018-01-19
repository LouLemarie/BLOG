<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 19/01/2018
 * Time: 14:20
 */
// Partie "Requête"
$bdd = new PDO('mysql:host=localhost;dbname=nfactoryblog;charset=utf8', 'root', '');

$page = (!empty($_GET['page']) ? $_GET['page'] : 1);
$limite = 5;




$debut = ($page - 1) * $limite;
/* Ne pas oublier d'adapter notre requête */
$rqq = 'SELECT SQL_CALC_FOUND_ROWS * FROM `t_articles` ORDER BY dateHeure DESC LIMIT :limite OFFSET :debut';
$rqq = $bdd->prepare($rqq);
$rqq->bindValue('debut', $debut, PDO::PARAM_INT);
$rqq->bindValue('limite', $limite, PDO::PARAM_INT);
$rqq->execute();





while ($article = $rqq->fetch()) {

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


$resArt = $bdd->query('SELECT found_rows()');

$nombredElementsTotal = $resArt->fetchColumn();


$nombreDePages = ceil($nombredElementsTotal / $limite);


if ($page > 1):
    ?><a href="?page=<?php echo $page - 1; ?>">Page précédente</a> — <?php
endif;


for ($i = 1; $i <= $nombreDePages; $i++):
    ?><a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a> <?php
endfor;

if ($page < $nombreDePages):
    ?>— <a href="?page=<?php echo $page + 1; ?>">Page suivante</a><?php
endif;
?>




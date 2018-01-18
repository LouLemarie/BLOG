<?php
    if($_SESSION['newArticle']) {

        echo '
            <div class="alert alert-success">
                Vous avez inscrit votre article avec succès
            </div>
        ';

        $_SESSION['newArticle'] = false;
    } 
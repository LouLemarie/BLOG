<?php

if ($_SESSION['errorLogin']){

    echo '
            <div class="alert alert-danger">
                Votre email ou pseudo est déja utilisés.
            </div>
        ';
}
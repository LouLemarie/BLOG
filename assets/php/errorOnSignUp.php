<?php

if ($_SESSION['errorSignUp']){

    echo '
            <div class="alert alert-danger">
                Votre email ou pseudo est déja utilisés.
            </div>
        ';
}
<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 19/01/2018
 * Time: 17:04
 */

if ($_SESSION['errorOnLogin']){

    echo '
            <div class="alert alert-danger">
                Votre email ou pseudo ne correspondent pas.
            </div>
        ';
}
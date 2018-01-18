<?php
if(!$_SESSION['login']) {
    echo ' <div class="wrapper-two" style="display:none">
    
                <div class="pop-up-two">
                    <div class="pop-up-text">
                        <div class="container-fluid">
                            <form id="form" method="POST" action="./signup.php">

                                <input class="col-xs-12" name=pseudo id="pseudo" type="text" placeholder="PSEUDO">
                                <input class="col-xs-12" name=email id="email" type="text" placeholder="E-MAIL">
                                <input class="col-xs-12" name=mdp id="PASSWORD" type="text" placeholder="PASSWORD">
                                <input class="col-xs-12" id="submit" type="submit" value="REGISTER">

                            </form>
                        </div>
                    </div>
                </div>
            </div>';
} else {
    echo ' <div class="wrapper-two" style="display:none">
    
                <div class="pop-up-two">
                    <div class="pop-up-text">
                        <div class="container-fluid">
                            <form id="form" method="POST" action="./article.php">

                                <input class="col-xs-12" name=titre id="titre" type="text" placeholder="TITRE">
                                <input class="col-xs-12" name=contenu id="contenu" type="text" placeholder="CONTENU">

                                <input class="col-xs-12" id="submit" type="submit" value="POSTER">

                            </form>
                        </div>
                    </div>
                </div>
            </div>';
}
    
?>
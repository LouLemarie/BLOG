<?php
    function get_last_id()
    {
        global $bdd;
            
        // On récupere l'id du derneir evenement posté
        $lastid = $bdd->exec('
        SELECT LAST_INSERT_ID() FROM evenements
        ');
        
        return $lastid;
    }
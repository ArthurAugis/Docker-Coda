<?php
    $identifiant = $_POST['username'];
    $mdp = $_POST['password'];
    $mdp = hash('sha256', $_POST['password']);
    
    include_once('../../fonc_utiles.php');
    $connexion = connexion();
    
    addAdmin($connexion, $identifiant, $mdp);
    deconnexion($connexion);
?>
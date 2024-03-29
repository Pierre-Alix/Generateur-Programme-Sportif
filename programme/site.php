<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
		<link rel="stylesheet"  title="style 1"  href="Muscu_style.css" />
        <title>Générateur de programme sportif !</title>
	</head>
	
	<body>
		<p class="fond_bandeau">
		<img class="logo1" src="image_site/Logo.jpg" alt="Logo" /><a class="titre">GENERE TON PROGRAMME SPORTIF</a><img class="logo2" src="image_site/Logo.jpg" alt="Logo" />
		
		<p class="bandeau">
		<a class="accueil" href="Accueil.html">Accueil</a><a class="muscu" href="Muscu.html">Muscu</a><a class="course" href="A lire !.html">A lire</a><a class="challenge" href="A lire !.html">Challenge du mois !</a>
		</p>
		</p>

<?php
//Traitement du formulaire
if(!empty($_POST)){
	if(
		isset($_POST["nom"], $_POST["prenom"], $_POST["ville"], $_POST["matos"], $_POST["genre"] )
		&& !empty($_POST["nom"]) && !empty($_POST["prenom"]) && !empty($_POST["ville"]) && !empty($_POST["matos"]) && !empty($_POST["genre"])
	){
		//formulaire complet !
		
		// connexion à la base de données
		$server = 'localhost';
		$user = 'root';
		$pass = 'root';
		
		try{
			$connexion = new PDO("mysql:host=$server;dbname=programme; charset=utf8", $user, $pass);
			
			// définition du mode d'erreur de PDO
			$connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			echo 'Connexion réussie !';
			}
            
			// message d'erreur et infos relatives à celles-ci
		catch(PDOException $e){
			echo "Erreur : " . $e->getMessage();
			}
	
		
		
	// écriture des informations du formulaire dans la table
	
		// enregistrement des infos du formulaires dans des variables
		$nom = $_POST["nom"];
		$prenom = $_POST["prenom"];
		$ville = $_POST["ville"];
		$materiel = $_POST["matos"];
		$frequence = $_POST["genre"];
		$muscle = $_POST["muscle"];
		
		// requête d'insertion dans la table "client"
		$bdd= "INSERT INTO client (id, nom, prenom, ville, materiel, frequence, muscle) VALUES(NULL,'$nom','$prenom','$ville','$materiel','$frequence', '$muscle')";
		
		// execution de la requête
		$connexion->exec($bdd);
		echo ('<br/>');
		echo ('Vos données sont enregistrées!');
		echo ('<br/>');
		echo ("<h2><ul><center>Merci pour ces informations !</h2></ul></center>");
		echo ("<h2><ul><center>Voici votre programme :</h2></ul></center>");
		echo ('<br/>');
		
		// génération du programme sportif (enregistrements de la table exercice + mise en forme avec css)
		$sport= "SELECT exercice, seriexrep, repos, temps FROM exercice WHERE muscle = $muscle AND materiel = $materiel";
		$resultat = $connexion->query($sport);
		echo ("<h2><ul><center>Merci pour ces informations !</h2></ul></center>");
		echo ("<h2><ul><center>Voici votre programme :</h2></ul></center>");
		while ($ligne = $resultat->fetch()){
			echo ('<center><p class="paragraphe">Vous allez faire du ou des : ');
			echo ("<strong><u>").$ligne["exercice"].("</strong></u>").(" ;");
			echo ("<br/>");
			echo ("En").' '.("<strong><u>").$ligne["seriexrep"].("</strong></u>").' '.("(soit le nombre de <strong>series</strong> et son nombre de <strong>répétitions</strong>) ;");
			echo ("<br/>");
			echo ("Avec").' '.("<strong><u>").$ligne["temps"].("</strong></u>").' '.("de temps <strong>d'effort</strong> (en Heures/Minutes/Secondes) ;");
			echo ("<br/>");
			echo ("Ainsi que").' '.("<strong><u>").$ligne["repos"].("</strong></u>").' '.("de temps de <strong>repos</strong>(en Heures/Minutes/Secondes) entre chaque séries.");
			echo ("<br/>");
			echo ("<br/>");
		}
		echo ('<br/>');
		echo ("<h2><ul><center>Vous pouvez en générer un autre en retournant sur la page précedente !</h2></ul></center>");
	}
	else{
		//message d'erreur : apparaît si un champ du formulaire n'est pas rempli par l'utilisateur, le programme ne se génère pas
		echo("<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>");
		echo('<center><strong><p class="paragraphe">Formulaire incomplet ! Génération interrompue. <br/> Veillez à bien remplir les champs vides de celui-ci</center></strong></p>');
		echo("<br/><br/><br/><br/><br/><br/>");
	}
}
		
?>
<p class="contact">
			Contactez nous par les réseaux : <a href="https://www.instagram.com/?hl=fr"><img class="logo_reseaux" src="image_site/logo_insta.png" alt="logo de instagram"/></a> @programme_sportif_perso ; <a href="https://twitter.com"><img class="logo_reseaux" src="image_site/logo_twitter.png" alt="logo de twitter"/></a> @programme_sportif_perso
		</p>
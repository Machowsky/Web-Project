<?php
/**
 * De inlog_check() functie 
 * en zo ja returnt je username om te laten zien wie is ingelogd.
 * en zo nee dan krijg je een melding om betreffende veld(en) in te vullen.
 * 
 * @return String 
 */
function inlog_check(){
	//Eerst wordt er gechecked: wordt er uitgelogd? Zoja reset sessie!
	if (isset($_GET['logout'])) {
		$_SESSION = array();
		session_destroy();
		header('Location: ' . htmlspecialchars($_SERVER['PHP_SELF']) );
	// Dan wordt er gechecked wordt er ingelogd dan..
	// koppel $_POST username en password aan $_SESSION username en password
	}else if(isset($_POST['inloggen'])) { 
		$_SESSION['username'] = $_POST['username'];
		$_SESSION['password'] = $_POST['password'];
	}
}
//---------------------------------------------------------------------------------//
/**
 * De inloggen functie controleert of er een waarde is verstuurd
 * en zo ja returnt je username om te laten zien wie is ingelogd.
 * en zo nee dan krijg je een melding om betreffende veld(en) in te vullen.
 * 
 * @return String 
 */
function inloggen(){
	if(!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
		return '';
	}elseif(empty($_SESSION["username"])){
		if(empty($_SESSION["password"])){
			return '<strong style="color:white;">Vul alsjeblieft je naam en wachtwoord in!</strong>';
		}elseif(!empty($_SESSION["password"])){
			return '<strong style="color:white;">U moet uw username nog invullen</strong>';
		}
	}elseif(!empty($_SESSION["username"])){
		if(empty($_SESSION["password"])){
			return '<strong style="color:white;">U moet uw wachtwoord nog invullen</strong>';
		}else{
			return '<strong style="color:white;">Hallo ' . $_SESSION['username'] . ', je bent ingelogd</strong>';
		}
	}
}
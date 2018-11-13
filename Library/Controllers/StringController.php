<?php
/**
 * De sanit_input functie maakt een value van een formulier input veiliger
 * en geeft het resultaat terug
 * @param String $data
 *
 * @return String 
 */
function sanit_input($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}
//---------------------------------------------------------------------------------//
/**
 * De restore_value functie controleert of er een waarde is verstuurd
 * en zo ja returnt deze veiliger
 * en zo nee een lege string
 * @param String $name_field
 *
 * @return String 
 */
function restore_value($name_field){
	if ( !empty( $_POST ) && isset( $_POST[$name_field] ) ) {
		return sanit_input( $_POST[$name_field] );
	} else {
		return "";
	}
}
//---------------------------------------------------------------------------------//
/**
 * Functie om van een tekst of string een url te maken
 * spaties vervangen door underscores en kapitalen naar kleine letters
 * @param String $name_field
 *
 * @return String 
 */
function create_url($name_field){
	
}
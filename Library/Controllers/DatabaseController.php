<?php
// Maak een mysql verbinding als die niet mee gegeven is
$mysqli_object = new mysqli('localhost','homestead','secret', 'wd_cmmnews_2018');

// Controleer of het gelukt is om een verbinding met de database te maken
 if ($mysqli_object->connect_errno) {
    die('Failed to connect to MySQL: (' . $mysqli_object->connect_errno . ') ' . $mysqli_object->connect_error);
}
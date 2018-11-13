<?php
/**
 * Maak, prepare en voer een query uit om de berichten op te halen
 * en geef het resultaat terug. Als er geen resultaten zijn dan error. De resultaten 
 * worden in variabelen voorbereid en doorgegeven aan berichten.php
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function toon_berichten( $database ) {
	if(!empty($_SESSION['username']) && !empty($_SESSION['password'])){
			echo '<a class="col-lg-12 btn btn-info" href="' . WEB_URL . '/pages/edit-bericht.php">Create nieuw bericht +</a>';
		}else{
			echo '';
		}

	$query = 'SELECT * FROM posts';

	if ( ! $query_object = $database->prepare($query)) {
    	throw new Exception('Prepare failed: (' . $mysqli_object->errno . ') ' . $mysqli_object->error);
	}

	if ( ! $query_object->execute()) {
    	throw new Exception("Execute failed: (" . $mysqli_object->errno . ") " . $mysqli_object->error);
	}
	 	
	$result_object = $query_object->get_result();

	// controleer of er een bericht is of dat je lege informatie terug hebt gekregen
	if (empty($result_object->num_rows)) {
    	throw new Exception('Geen bericht gevonden');
	}

	while ( $post_array = $result_object->fetch_assoc() ) {
    	// Maak een tijdelijke variabele die ik in de view kan gebruiken
    	$berichtTitel 		  = $post_array['message_title'];
		$berichtIntro   	  = $post_array['intro'];
		$berichtPublishDate   = $post_array['publish_date'];
		$berichtUrl			  = $post_array['post_url'];

		$berichtEdit  = '';
		$berichtDelete  = '';

		if(!empty($_SESSION['username']) && !empty($_SESSION['password'])){
			$berichtEdit   = '<a class="col-sm-6 btn btn-success" href="' . WEB_URL . '/pages/edit-bericht.php?post_url=' . $berichtUrl . '">Edit Bericht &#x270E;</a>';
			$berichtDelete   = '<a class="col-sm-6 btn btn-warning" href="' . WEB_URL . '/pages/delete-bericht.php?post_url=' . $berichtUrl . '">Verwijder Bericht &#x2718;</a>';
		}
		
		// laat het resultaat met de views zien
		include( LIB_ROOT . 'Views/berichten-template.php' );
	}
}
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Maak, prepare en voer een query uit om de bericht met betreffende url op te halen
 * en geef het resultaat terug. Als er geen resultaten zijn dan error. De resultaten 
 * worden in variabelen voorbereid en doorgegeven aan bericht.php
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function toon_bericht( $database ) {
	if ( isset($_GET['post_url'])) {
		$newsId = $_GET['post_url'];
	}
	
	$query = 'SELECT * FROM posts 
			  JOIN categories  ON categories.id = posts.category_id
			  JOIN  users 	   ON users.id = posts.user_id
			  WHERE posts.post_url = ?';

	if ( ! $query_object = $database->prepare($query)) {
    	throw new Exception('Prepare failed: (' . $database->errno . ') ' . $database->error);
	}

	// bind parameters geef aan wat voor een type welk item is
	$query_object->bind_param('s', $newsId);

	// voer de query uit
	if ( ! $query_object->execute()) {
    	throw new Exception("Execute failed: (" . $database->errno . ") " . $database->error);
	}
	 	
	// haal de gegevens op
	$result_object = $query_object->get_result();

	// controleer of er een bericht is of dat je lege informatie terug hebt gekregen
	try{
		if (empty($result_object->num_rows)) {
    		throw new Exception('Geen bericht gevonden');
		}
	} catch(Exception $e) {
		$berichtTitel 		  = 'Geen bericht gekozen!';
		$berichtIntro   	  = 'Er is geen bericht beschikbaar. Kies een ander bericht!';
		$berichtContent		  = 'Kies een bericht naar keuze om verder te lezen!';
		$berichtPublishDate   = '';
		$berichtWriter		  = '';
		$berichtEdit		  = '';

		include( LIB_ROOT . 'Views/bericht-template.php' );
		toon_berichten($database);
	}
	
	// vertaal het resultaat naar een Associative array
	if($post_array = $result_object->fetch_assoc()){
		// Maak een tijdelijke variabele die ik in de view kan gebruiken
		$berichtTitel 		  = $post_array['message_title'];
		$berichtIntro   	  = $post_array['intro'];
		$berichtContent		  = $post_array['message'];
		$berichtPublishDate   = $post_array['publish_date'];
		$berichtWriter		  = $post_array['firstname'] . ' ' . $post_array['middlename'] .  ' ' . $post_array['lastname'];
		$berichtUrl			  = $post_array['post_url'];

		if(!empty($_SESSION['username']) && !empty($_SESSION['password'])){
			$berichtEdit   = '<a class="btn btn-info" href="' . WEB_URL . '/pages/edit-bericht.php?post_url=' . $berichtUrl . '">Edit Bericht &raquo;</a>';
		}else{
			$berichtEdit  =  '';
		}

		include( LIB_ROOT . 'Views/bericht-template.php' );
	}
}
//----------------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Maak, prepare en voer een query uit om de bericht met betreffende url op te halen
 * en geef het resultaat terug als value in een input-tag. Als er geen resultaten zijn dan error. De resultaten 
 * worden in variabelen voorbereid en doorgegeven aan edit-bericht.php
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function edit_bericht( $database ) {
	
	if ( isset($_GET['post_url'])) {
		$postUrl = $_GET['post_url'];
	}

	$query = 'SELECT * FROM posts 
			  JOIN categories  ON categories.id = posts.category_id
			  JOIN users 	   ON users.id = posts.user_id
			  WHERE posts.post_url = ?';

	if ( ! $query_object = $database->prepare($query)) {
    	throw new Exception('Prepare failed: (' . $database->errno . ') ' . $database->error);
	}

	// bind parameters geef aan wat voor een type welk item is
	$query_object->bind_param('s', $postUrl);

	// voer de query uit
	if ( ! $query_object->execute()) {
    	throw new Exception("Execute failed: (" . $database->errno . ") " . $database->error);
	}
	 	
	// haal de gegevens op
	$result_object = $query_object->get_result();

	// controleer of er een bericht is of dat je lege informatie terug hebt gekregen
	try{
		if (empty($result_object->num_rows)) {
    		throw new Exception('Geen bericht gevonden');
		}
	} catch(Exception $e) {
		$berichtTitel 		  = 'Geen bericht gekozen!';
		$berichtIntro   	  = 'Er is geen bericht beschikbaar. Kies een ander bericht!';
		$berichtContent		  = 'Kies een bericht naar keuze om verder te lezen!';
		$berichtPublishDate   = '';
		$berichtWriter		  = '';

		include( LIB_ROOT . 'Views/bericht-template.php' );
		toon_berichten($database);
	}
	
	// vertaal het resultaat naar een Associative array
	if($post_array = $result_object->fetch_assoc()){
		 # Maak een tijdelijke variabele die ik in de view kan gebruiken
		$berichtTitel 		  = $post_array['message_title'];
		$berichtIntro   	  = $post_array['intro'];
		$berichtContent		  = $post_array['message'];
		$berichtPublishDate   = $post_array['publish_date'];
		$berichtWriter		  = $post_array['firstname'] . ' ' . $post_array['middlename'] .  ' ' . $post_array['lastname'];
		$berichtUrl			  = $post_array['post_url'];

		include( LIB_ROOT . 'Views/edit-bericht-template.php');
	}
	//var_dump($post_array);
}
//-----------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Maak, prepare en voer een query uit om de  gewijzigde bericht met betreffende url op te slaan.
 * Als er geen resultaten zijn dan kom er een error.
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function update_bericht( $database ) {
	if ( isset($_GET['post_url'])) {
		$postUrl = $_GET['post_url'];
	}

	if(!empty($_POST)){
		if (isset($_POST['berichtTitel'])   && isset($_POST['berichtIntro']) &&
      		isset($_POST['berichtContent']) && isset($_POST['berichtWriter'])) {
    		
    			$berichtTitel    = sanit_input($_POST['berichtTitel']);
    			$berichtIntro    = sanit_input($_POST['berichtIntro']);
    			$berichtContent  = sanit_input($_POST['berichtContent']);
    			$berichtWriter   = sanit_input($_POST['berichtWriter']);
		}

		$query = "UPDATE posts
			  	  JOIN categories ON posts.category_id = categories.id
			  	  JOIN  users ON posts.user_id = users.id
			  	  SET posts.message_title   = ?,
			  	  	  posts.intro   = ?,
    			  	  posts.message = ?
			  	  WHERE posts.post_url = ?";
	
		if ( ! $query_object = $database->prepare($query)) {
    		throw new Exception('Prepare failed: (' . $database->errno . ') ' . $database->error);
		}

		// bind parameters geef aan wat voor een type welk item is
		$query_object->bind_param('ssss',$berichtTitel, $berichtIntro, $berichtContent, $postUrl);

		// voer de query uit
		if ( ! $query_object->execute()) {
    		throw new Exception("Execute failed: (" . $database->errno . ") " . $database->error);
		}

		echo '<p>Bericht is gewijzigd. Druk op de knop om terug te gaan naar overzicht. </p>';

	}
}
//---------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Geeft simpelweg een clean template om een bericht te maken. 
 * @return String 
 */
 function create_bericht( ) {
 	include( LIB_ROOT . 'Views/create-bericht-template.php'); 
}	
//---------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Maak, prepare en voer een query uit om een nieuw bericht op te slaan.
 * Waardes uit de $_POST array worden gebruikt om de query in te vullen.
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function opslaan_bericht( $database ) {

	if(!empty($_POST)){
		if (isset($_POST['berichtTitel'])   && isset($_POST['berichtIntro']) &&
      		isset($_POST['berichtContent']) && isset($_POST['berichtWriter'])) {

    			$berichtTitel    = sanit_input($_POST['berichtTitel']);
    			$berichtIntro    = sanit_input($_POST['berichtIntro']);
    			$berichtContent  = sanit_input($_POST['berichtContent']);
    			$berichtWriter   = sanit_input($_POST['berichtWriter']);
    			$berichtPostUrl	 = sanit_input(str_replace(' ', '_', $berichtIntro));
		}

		$query = "INSERT INTO `posts` (`post_url`, `message_title`, `intro`, `message`)
			  	  VALUES (?, ?, ?, ?)";

		//als er geen object is wordt er een error gegeven
		if ( ! $query_object = $database->prepare($query)) {
    		throw new Exception('Prepare failed: (' . $database->errno . ') ' . $database->error);
		}

		//bind parameters geeft aan wat voor een type welk item is
		$query_object->bind_param('ssss',$berichtPostUrl, $berichtTitel, $berichtIntro, $berichtContent);

		//voer de query uit
		if ( ! $query_object->execute()) {
    		throw new Exception("Execute failed: (" . $database->errno . ") " . $database->error);
		}

		echo '<p>Bericht is opgeslagen. Druk op de knop om terug te gaan naar overzicht. </p>';
	}
}
//--------------------------------------------------------------------------------------------------------------------------------------//
/**
 * Maak, prepare en voer een query uit om een nieuw bericht te verwijderen
 * @param  Object Instance van MySQL verbinding
 *
 * @return String 
 */
function delete_bericht( $database ) {
	if ( isset($_GET['post_url'])) {
		$berichtPostUrl = $_GET['post_url'];
	}

	$query = "DELETE FROM `posts`
			  WHERE posts.post_url = ?";

	if ( ! $query_object = $database->prepare($query)) {
    		throw new Exception('Prepare failed: (' . $database->errno . ') ' . $database->error);
	}

	// bind parameters geef aan wat voor een type welk item is
	$query_object->bind_param('s',$berichtPostUrl);

	// voer de query uit
	if ( ! $query_object->execute()) {
    	throw new Exception("Execute failed: (" . $database->errno . ") " . $database->error);
	}
}
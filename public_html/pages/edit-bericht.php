<?php 
require_once ($_SERVER['DOCUMENT_ROOT'] . '/../Library/settings.php');
$pagina_naam = 'Bericht. | Web Developer';
require_once (LIB_ROOT . '/Views/header.php');
require_once (LIB_ROOT . '/Views/navigatie.php');
?>

    <div class="jumbotron">
    <?php 
    	
		if(!isset($_GET['post_url']) && (!empty($_SESSION['username'])) && (!empty($_SESSION['password']))){
			create_bericht();
		}

		if(isset($_GET['post_url']) && (!empty($_SESSION['username'])) && (!empty($_SESSION['password']))){
    		edit_bericht( $mysqli_object );
			
		}
	?>
		</div>
		<hr>
<?php     
require_once (LIB_ROOT . '/Views/footer.php');
<?php 
require_once ($_SERVER['DOCUMENT_ROOT'] . '/../Library/settings.php');
$pagina_naam = 'Bericht. | Web Developer';
require_once (LIB_ROOT . '/Views/header.php');
require_once (LIB_ROOT . '/Views/navigatie.php');
?>

    <div class="jumbotron">
    	<?php toon_bericht( $mysqli_object ); ?>
		
		</div>
		<hr>
<?php     
require_once (LIB_ROOT . '/Views/footer.php');
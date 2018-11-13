<?php 
require_once ($_SERVER['DOCUMENT_ROOT'] . '/../Library/settings.php');
$pagina_naam = 'Bericht. | Web Developer';
require_once (LIB_ROOT . '/Views/header.php');
require_once (LIB_ROOT . '/Views/navigatie.php');
?>

    <div class="jumbotron">
    	<?php 
    		if( isset($_GET['post_url'] )){
    			update_bericht( $mysqli_object );
    		}else{
    			opslaan_bericht( $mysqli_object ); 
    		}
    	?>
		<a class="btn btn-info" href="<?= WEB_URL; ?>">Terug naar overzicht</a>
		</div>
		<hr>
<?php     
require_once (LIB_ROOT . '/Views/footer.php');
<?php 
require_once ($_SERVER['DOCUMENT_ROOT'] . '/../Library/settings.php');
$pagina_naam = 'College of MultiMedia | Web Developer';
require_once (LIB_ROOT . '/Views/header.php');
require_once (LIB_ROOT . '/Views/navigatie.php');
?>
    <div class="jumbotron">
        <div class="container">
            <h1>Mijn eerste project</h1>
            <p>Dit is de eerste pagina van mijn project</p>
            <p><a href="/pages/over_mij.php" class="btn btn-primary btn-lg">Lees meer over mij&raquo;</a></p>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php toon_berichten( $mysqli_object )?>
        </div>
        <hr>
<?php     
require_once (LIB_ROOT . '/Views/footer.php');
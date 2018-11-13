<?php 
//Variabele om te bepalen welke mavigatie tab de class active krijgt. Staat dit goed hier of toch beter bij de setting.php bestand?
$directoryURI = $_SERVER['REQUEST_URI'];
$path = parse_url($directoryURI, PHP_URL_PATH);
?>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Web Developer</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li <?php if ($path=="/") {echo 'class="active"'; } else  {echo "noactive";}?> ><a  href="/">Home</a></li>
                <li <?php if ($path=="/pages/over_mij.php") {echo 'class="active"'; } else  {echo "noactive";}?> ><a  href="/pages/over_mij.php">Over Mij</a></li>
                <li <?php if ($path=="/pages/bericht.php") {echo 'class="active"'; } else  {echo "noactive";}?> ><a  href="/pages/bericht.php">Bericht</a></li>
                <li><a  href="#contact">Contact</a></li>
            </ul>
            <?php
            require_once (LIB_ROOT . '/Views/inloggen.php');
            ?>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>
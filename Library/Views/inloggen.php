<?php
require_once (DOCUMENT_ROOT . '../Library/settings.php');

//Staat waar je in bent bepaald wat je te zien krijgt, gebouwd in een jump in/jump out constructie
//Als je niet ingelogd bent en de $_POST variabelen zijn leeg dan krijg je de inlog velden te zien.
//inlog_check() staat in functions.php
inlog_check();
if (empty($_SESSION['username']) || empty($_SESSION['password'])){ ?>
	
	<form class="navbar-form navbar-right" method="post">
		<!-- in functions.php-->
		<?= inloggen();?>
		<div class="form-group">
			<input type="input" placeholder="Username" name="username" class="form-control" value="<?= restore_value('username');?>">
		</div>
		<div class="form-group">
			<input type="password" placeholder="Password" name="password" class="form-control">
		</div>
		<input type="submit"  name="inloggen" class="btn btn-success" value="Sign in">
	</form>

<!--Als je je wel ingelogd bent krijg je je naam te zien op de plek van de velden en een button om uit te loggen.-->
<?php }else{ ?>
	<div class="navbar-form navbar-right">
		<!-- in functions.php-->
		<?= inloggen();?>
		<a href="?logout" class="btn btn-success">Uitloggen</a>
	</div>
<?php }
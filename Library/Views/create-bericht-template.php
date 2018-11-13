        <div class="container">
            <h1>Edit-mode</h1>
            <p>Wijzigingen worden pas doorgevoerd bij het opslaan van een bericht.</p>
        </div>
    </div>

    <div class="container">
        <div class="row">
        	<div class="col-sm-12 col-md-12 col-lg-12">
                <form action="opslaan-bericht.php" method="post">
                    <label for="berichtTitel">Titel:</label>
                    <input class="col-sm-12 col-md-12 col-lg-12" type="text" id="berichtTitel" name="berichtTitel" value="<?= restore_value('berichtTitel'); ?>">
                    <label for="berichtIntro">Intro:</label>
                    <input class="col-sm-12 col-md-12 col-lg-12" type="text" id="berichtIntro" name="berichtIntro" value="<?= restore_value('berichtIntro'); ?>">
                    <label for="berichtContent">Content:</label>
				    <textarea class="col-sm-12 col-md-12 col-lg-12" type="text" id="berichtContent" name="berichtContent"><?= restore_value('berichtContent'); ?></textarea>
                    <label for="berichtWriter">Schrijver:</label>
                    <input class="col-sm-12 col-md-12 col-lg-12" type="text" id="berichtWriter" name="berichtWriter" value="<?= restore_value('berichtWriter'); ?>">
                    <input type="submit" value="Opslaan">
                </form>
                <a class="btn btn-info" href="<?= WEB_URL; ?>">Terug naar overzicht</a>
			</div>
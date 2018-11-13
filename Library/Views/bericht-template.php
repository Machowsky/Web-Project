        <div class="container">
            <h1><?= $berichtTitel ?></h1>
            <p><?= $berichtIntro ?></p>
        </div>
    </div>

    <div class="container">
        <div class="row">
        	<div class="col-lg-4 margin">
				<p><?= $berichtContent ?></p>
                <p>Dit bericht is geschreven door:<?= $berichtWriter ?></p>
				<p>Gepost op:<?= $berichtPublishDate ?></p>
                <?= $berichtEdit; ?>
                <a class="btn btn-info" href="<?= WEB_URL; ?>">Terug naar overzicht</a>
			</div>
        
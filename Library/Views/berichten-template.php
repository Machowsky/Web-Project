<div class="col-lg-4">
	<h2><?= $berichtTitel ?></h2>
	<p><?= $berichtIntro ?></p>
	<p>Dit bericht is gepost op: <?= $berichtPublishDate ?></p>
	<a class="col-sm-12 btn btn-info" href="<?= WEB_URL ?>/pages/bericht.php?post_url=<?= $berichtUrl ?>">View details &raquo;</a>
	<?= $berichtEdit;?>
	<?= $berichtDelete;?>
</div>
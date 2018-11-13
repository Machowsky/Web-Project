
-- maak database aan
CREATE DATABASE IF NOT EXISTS `cmm_nieuwsberichten`;


-- Gebruik deze database
USE `cmm_nieuwsberichten`;


-- verwijder eventueel de oude tabel
DROP TABLE IF EXISTS `nieuwsberichten`;


-- Maak nieuwe tabel aan
CREATE TABLE `nieuwsberichten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `publicatie_datum` datetime DEFAULT NULL,
  `update_datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schrijver_id` (`user_id`),
  CONSTRAINT `schrijver_id` FOREIGN KEY (`user_id`) REFERENCES `schrijvers` (`id`)
) AUTO_INCREMENT=5;


-- Insert some demo data
INSERT INTO `nieuwsberichten` (`id`, `titel`, `user_id`, `publicatie_datum`, `update_datum`, `content`, `url`)
VALUES
	(1,'Laatste beroepsvisser Amsterdam vindt levende zeehond in netten',1,'2017-11-27 13:31:03','2017-11-26 13:31:08','Al jarenlang doet visser Piet Ruijter in opdracht van het havenbedrijf Amsterdam onderzoek naar de visstanden in de haven. Met kleine netten en fuiken bekijkt hij wekelijks wat er in het Amsterdamse water rondzwemt. Gisteren bleek dat een heuse zeehond te zijn.\nToen Ruijter, de laatste beroepsvisser van Amsterdam, gisteren zijn netten ophaalde in de Amerikahaven, vond hij daarin zeebaarzen, gewone baarzen, grote Chinese wolhandkrabben, snoekbaarzen, tongen, wijting, steenbolk en een bot. Maar er bleek ook een zeehond met zijn staart vast te zitten. Ruijter bevrijdde het beestje meteen. De zeehond keek nog even om, vertelt Ruijter aan AT5. Maar dook daarna de diepte in.\nLees ook: Zeehond gespot in Westelijk Havengebied\nEnkeltje Amsterdam\nHet is niet de eerste keer dat er een zeehond in Amsterdamse wateren zwemt, maar het is wel heel bijzonder, vertelt stadsecoloog Martin Melchers. De sluizen bij IJmuiden zijn de toegangspoort voor de zeehonden. Bij het manoeuvreren van de schepen vanuit zee, voor en in de sluizen, stroomt schroefwater voor en achterwaarts. Hierdoor raken veel vissen uit balans en zijn een makkelijke prooi voor zeehonden. Als de sluisdeur achter de zeehond dichtgaat is de enige richting een enkeltje Amsterdam.\nIn 2011 zwierf er zon zeven weken lang een zeehond door de stad. Het beestje werd zelfs in de Amstel gezien.','laatste-beroepsvisser-amsterdam-vindt-levende-zeehond-in-netten'),
	(2,'WD312',2,'2017-11-26 13:39:50','2017-11-26 13:39:50','Praesent commodo, arcu quis eleifend consequat, felis lorem posuere justo, eget gravida leo enim at lacus. Sed molestie malesuada nisi et pulvinar. Sed ut tincidunt ipsum. Integer ac volutpat sem. Praesent eget convallis sem, eget placerat erat. Curabitur tincidunt maximus nisl quis tristique. Pellentesque vitae maximus quam. In mollis libero eu nulla fringilla, nec egestas odio pulvinar. Morbi venenatis lorem at facilisis pulvinar. Nullam sollicitudin tincidunt luctus. Vestibulum id est interdum, suscipit sapien id, congue odio.','WD312'),
	(3,'Vandaag is het Zaterdag',2,'2017-11-26 13:39:51','2017-11-26 13:39:51','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis egestas ornare. Praesent imperdiet metus non cursus suscipit. Cras sit amet mi mollis, facilisis nibh in, tempus nisi. Duis eget urna dapibus sem rutrum viverra. Sed tellus diam, finibus vel libero nec, vulputate viverra erat. Nunc eget sodales metus. Phasellus vitae placerat magna, eu congue nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque congue augue ac lacus ultricies egestas. Morbi vel sollicitudin augue, et fringilla nunc.','zaterdag'),
	(4,'Hallo allemaal',3,'2017-11-26 13:39:52','2017-11-26 13:39:52','Curabitur non velit mi. Duis sed sagittis odio, eget tristique nulla. Donec at nisi ac velit sollicitudin commodo. Vestibulum dictum id metus vel euismod. Quisque rutrum ligula sagittis turpis commodo, ut facilisis lacus imperdiet. Fusce elit mauris, egestas scelerisque bibendum at, iaculis eget dui. Maecenas vitae tellus ornare, vehicula mauris non, sodales elit. Integer sit amet nulla ut nisl mollis finibus.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum consequat mi ut tincidunt. Nullam accumsan tincidunt enim a bibendum. Nullam accumsan turpis id dui aliquet molestie. Etiam velit mi, semper gravida rhoncus laoreet, ultricies sit amet mauris. Vestibulum erat turpis, dapibus at consectetur sit amet, vehicula ac turpis. Aliquam viverra gravida justo, at imperdiet orci venenatis id. Proin dolor sapien, aliquam vel elit quis, porttitor molestie lorem. Proin maximus metus ac augue commodo, ultrices imperdiet sem dignissim. Donec et sem magna.','hoi');


-- verwijder eventueel de schrijvers database
DROP TABLE IF EXISTS `schrijvers`;


-- Maak schrijvers tabel
CREATE TABLE `schrijvers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(50) NOT NULL DEFAULT '',
  `wachtwoord` char(32) NOT NULL DEFAULT '',
  `telefoon` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
);


-- Insert some demo data
INSERT INTO `schrijvers` (`naam`, `wachtwoord`, `telefoon`, `email`)
VALUES
	('me','371620aa75830b1388b63305b0d42f06','','jaaaaaa@me.me'),
	('ik','a4ef76c127ea3fc9433a0c08a38051de','','jaaaaaa@me.me'),
	('jij','dbfcdd3a1ef5186a3e098332b499070a','','jaaaaaa@me.me'),
	('hij','dbfcdd3a1ef5186a3e098332b499070a','','new@me.menew@me.menew@me.menew@me.menew@'),
	('zij','dbfcdd3a1ef5186a3e098332b499070a','','new@me.me'),
	('wij','dbfcdd3a1ef5186a3e098332b499070a','','dbfcdd3a1ef5186a3e098332b499070a12345678'),
	('jijook','dbfcdd3a1ef5186a3e098332b499070a','','new@me.me'),
	('jijtoch','dbfcdd3a1ef5186a3e098332b499070a','','new@me.me');

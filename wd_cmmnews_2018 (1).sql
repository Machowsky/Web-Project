-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 25 aug 2018 om 01:34
-- Serverversie: 5.7.22-0ubuntu18.04.1
-- PHP-versie: 7.2.5-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wd_cmmnews_2018`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cat_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `cat_title`) VALUES
(1, 5, 'AJAX'),
(2, 5, 'PSV'),
(3, 5, 'AZ'),
(5, NULL, 'sport'),
(6, NULL, 'weer'),
(7, 6, 'regen'),
(8, 6, 'zon'),
(9, NULL, 'Techniek'),
(10, NULL, 'Media');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `post_url` varchar(255) NOT NULL DEFAULT '-',
  `message_title` varchar(255) NOT NULL DEFAULT '',
  `intro` text NOT NULL,
  `message` text NOT NULL,
  `image_source` varchar(255) NOT NULL DEFAULT '',
  `publish_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `post_url`, `message_title`, `intro`, `message`, `image_source`, `publish_date`, `creation_date`, `last_updated`) VALUES
(3, 2, 1, 'Groenendijk_al_na_Ã©Ã©n_seizoen_weg_als_trainer_Excelsior_', 'PSV', 'Alfons Groenendijk vertrekt bij Excelsior. De 51-jarige trainer, die pas Ã©Ã©n seizoen actief was in Rotterdam, is toe aan een nieuwe uitdaging.', 'Excelsior handhaafde zich zondag in de Eredivisie door SC Cambuur met 2-0 te verslaan.\r\n\r\n\"Natuurlijk zijn we allemaal enorm trots op wat we hebben bereikt met Excelsior\", aldus Groenendijk op de website van Excelsior. \"We wisten dat het een lastig jaar zou worden en ik denk dat we uiteindelijk hartstikke blij kunnen zijn dat we ons als Excelsior rechtstreeks hebben kunnen handhaven.\"\r\n\r\nGroenendijk spreekt ook van een \"zwaar\" seizoen. \"Na zondag heb ik alles voor mezelf op een rij gezet en geconcludeerd dat ik toe ben aan een nieuwe uitdaging. Dat heb ik zo ook aan de clubleiding laten weten.\"\r\n\r\nDe Haan\r\nTechnisch directeur Ferry de Haan van Excelsior respecteert het besluit van Groenendijk, hoewel de oefenmeester nog een doorlopend contract tot medio 2017 had.\r\n\r\n\"Wij zijn heel erg trots dat we ons voor het tweede achtereenvolgende seizoen hebben weten te handhaven in de Eredivisie. Voor Excelsior een prima prestatie.\"\r\n\r\nDe Rotterdammers beginnen op 25 juni aan de voorbereiding op het nieuwe seizoen. \"Ook met het oog op het samenstellen van de selectie hopen wij zo snel mogelijk een opvolger te kunnen aanstellen\", aldus De Haan.\r\n\r\nEerder fungeerde Groenendijk als hoofdtrainer van Willem II, FC Den Bosch en Jong Ajax. De oud-speler van onder meer Roda JC, Ajax, Manchester City, Sparta Rotterdam en FC Utrecht volgde vorig jaar Marinus Dijkhuizen op bij Excelsior. Dijkhuizen vertrok na een goed seizoen naar Engeland.', '', '2016-01-01 00:00:00', '2016-05-12 13:48:38', '2018-08-24 13:03:50'),
(16, 10, 1, 'douwe-bob-en-the-common-linnets-zingen-samen-in-zweden', 'Media', 'Songfestivaldeelnemer Douwe Bob heeft woensdagavond in zijn eigen bar in Stockholm zijn lied Slow Down gezongen samen met The Common Linnets. De band met zangeres Ilse DeLange werd twee jaar geleden tweede op het Eurovisiesongfestival.', 'Douwe Bob wist dinsdagavond een ticket voor de finale van het songfestival aanstaande zaterdag te bemachtigen. De zanger heeft tijdens zijn verblijf in de Zweedse hoofdstad, waar het liedjesfestijn dit jaar gehouden wordt, zijn eigen bar geopend. Daar komen de hele week al andere deelnemers langs om samen te zingen. Woensdagavond was The Bar afgeladen vol. Het optreden is op de Periscope van Lammert de Bruin te zien.\r\nThe Common Linnets zongen ook hun eigen succesvolle nummer Calm after the Storm, waarmee twee jaar geleden de tweede plek werd behaald. Dat is de hoogste notering voor Nederland sinds 1975, toen won Teach-in met Ding-a-dong.\r\nDouwe Bob staat momenteel op een achtste plek bij de bookmakers. Rusland is favoriet voor de overwinning. Donderdagavond is de tweede halve finale. En snap je het nu?', '', '2016-05-11 13:49:51', '2016-05-11 13:49:51', '2018-08-24 10:42:27'),
(17, 9, 1, 'echblog-hacker-hackt-website-hackers-serie-mr-robot', 'Techblog - Hacker hackt website hackers-serie Mr. Robot', 'Ironie ten top of een uitgekookte promotiecampagne? Net nu het tweede seizoen van Mr. Robot eraan zit te komen, blijkt de website van de poplulaire serie - die draait om de hacker Elliot Alderson - zelf te zijn gehackt. De indringer, bekend onder de naam Zemnmez, had gelukkig geen kwaad in de zin: hij stelde de makers van de website op de hoogte, en zij hebben het lek inmiddels gedicht.', '\nDit schrijft het Amerikaanse blad Forbes. Zemnmez had de kwetsbaarheid op de site van Mr. Robot naar eigen zeggen al meteen ontdekt, maar kon aanvankelijk geen contactgegevens vinden. Journalisten van Forbes verwezen hem uiteidelijk door naar het e-mailadres van Sam Esmail, de schrijver van de serie.\n\nFacebookgegevens\n Beeld uit de serie Mr. Robot\nBeeld uit de serie Mr. Robot © YouTube\nHet ging om een zogenoemd XSS-lek, de meest voorkomende kwetsbaarheid op het internet. \'Als ik kwaad in de zin had gehad, had ik hiermee de Facebookgegevens van gebruikers kunnen stelen\', aldus Zemnmez tegenover Forbes.\n\nEen quiz op de website vroeg gebruikers namelijk om hun Facebookgegevens in te voeren. Met een beetje technische kennis was een script zodanig aan te passen dat gegevens als naam, leeftijd, sekse, e-mailadres en alle Facebookfoto\'s (inclusief de foto\'s waarin zij getagd waren) naar een derde partij konden worden doorgestuurd. Inmiddels is het lek gedicht en is de quiz nog gewoon te spelen op de site.\n\nRechtvaardigheidsgevoel\nMr. Robot\n\nMr. Robot belooft een van de intrigerendste series van het jaar te worden, schreef de Volkskrant begin dit jaar. Kijk mee in het hoofd van een hacker. (+)\n\nMr. Robot draait om een jongen die een dubbelleven leidt: overdag werkt hij als IT\'er in de computerbeveilingsindustrie, \'s nachts is hij een hacker die met een mengeling van frustratie en rechtvaardigheidsgevoel het kwaad wil straffen. De serie won twee Golden Globes.\n\nHet nieuws over de kwetsbaarheid kwam - toevallig of niet - naar buiten op hetzelfde moment dat de makers van Mr. Robot een nieuwe campagne en website lanceerden om het tweede seizoen te promoten. Dat begint op 13 juli in de Verenigde Staten. Een Nederlandse datum is nog niet bekendgemaakt.', '', '2016-05-10 13:49:51', '2016-05-10 13:49:51', '2016-05-12 14:02:58'),
(18, 9, 1, 'techblog-google-wil-nieuwe-vrouwelijke-emoji-introduceren~a4298850', 'Techniek', 'Leuke intro voor een techniek bericht', 'Wie zich wil uitdrukken met emoji\'s kan kiezen uit honderden officiï¿½le symbolen. Maar terwijl de boer, de loodgieter, de ingenieur en de scheikundige allemaal vertegenwoordigd zijn in de lijst van officiï¿½le unicode-tekens, ontbreken de vrouwelijke versies daarvan. Google wil daar verandering in brengen.', '', '2016-05-09 13:29:51', '2016-05-09 13:49:51', '2018-08-24 13:01:22'),
(19, 9, 1, 'Is_Apple_zichzelf_aan_het_opeten?', 'Is Apple zichzelf aan het opeten?', 'Intro tekst hier', 'Apple is het duurste bedrijf ter wereld, dat zich voorstaat op geweldige vindingen en een uitgekiende marketing. Maar de laatste successen dateren alweer uit de dagen van Steve Jobs: de lancering van de iPhone en iPad. Sindsdien teert Apple op de oude roem.', '', '2016-05-09 00:00:00', '2016-05-09 10:00:00', '2016-05-12 15:07:12'),
(26, 1, 1, 'Dit_is_de_intro_die_ook_voor_een_url_wordt_gebruikt', 'Een meesterlijke titel', 'Dit is de intro die ook voor een url wordt gebruikt', 'Nou wat zal ik eens gaan zeggen?', '', '2018-08-24 13:18:17', '2018-08-24 13:18:17', NULL),
(33, 1, 1, 'While_wondering_if_it_works_im_filling_in_a_form.', 'ðŸ±â€ðŸ‘¤ðŸ±â€ðŸ‘¤ðŸ±â€ðŸ‘¤ I wonder if this works?', 'While wondering if it works im filling in a form.', 'Lorum ipsum dolce bolce domeliceano ', '', '2018-08-24 23:06:55', '2018-08-24 23:06:55', NULL),
(34, 1, 1, 'Fry,_we_have_a_crate_to_deliver._Pansy._Well,_let\'s_just_dump_it_in_the_sewer_and_say_we_delivered_it._I\'ll_get_my_kit!', 'No, of course not. It wasâ€¦ uhâ€¦ porno. Yeah, that\'s it.', 'Fry, we have a crate to deliver. Pansy. Well, let\'s just dump it in the sewer and say we delivered it. I\'ll get my kit!', 'Moving alongâ€¦\r\nRobot 1-X, save my friends! And Zoidberg! Actually, that\'s still true. Oh yeah, good luck with that. I guess because my parents keep telling me to be more ladylike. As though!\r\n\r\nYou don\'t know how to do any of those.\r\nOne hundred dollars.\r\nOne hundred dollars.\r\nBender, quit destroying the universe!\r\nSpare me your space age technobabble, Attila the Hun! As an interesting side note, as a head without a body, I envy the dead. Oh Leela! You\'re the only person I could turn to; you\'re the only person who ever loved me.\r\n\r\nOur love isn\'t any different from yours, except it\'s hotter, because I\'m involved.\r\nThis opera\'s as lousy as it is brilliant! Your lyrics lack subtlety. You can\'t just have your characters announce how they feel. That makes me feel angry!\r\nPlease, Don-Botâ€¦ look into your hard drive, and open your mercy file!\r\nDaylight and everything. Bender, we\'re trying our best. That\'s not soon enough! You wouldn\'t. Ask anyway! Oh, I always feared he might run off like this. Why, why, why didn\'t I break his legs?\r\n\r\nBender, I didn\'t know you liked cooking. That\'s so cute. And remember, don\'t do anything that affects anything, unless it turns out you were supposed to, in which case, for the love of God, don\'t not do it!\r\n\r\nShut up and take my money! I just told you! You\'ve killed me! Well I\'da done better, but it\'s plum hard pleading a case while awaiting trial for that there incompetence. If rubbin\' frozen dirt in your crotch is wrong, hey I don\'t wanna be right.\r\n\r\nHey, tell me something. You\'ve got all this money. How come you always dress like you\'re doing your laundry? Fry! Stay back! He\'s too powerful! Leela, are you alright? You got wanged on the head. Daylight and everything.\r\n\r\nYou guys realize you live in a sewer, right? Five hours? Aw, man! Couldn\'t you just get me the death penalty? Isn\'t it true that you have been paid for your testimony? My fellow Earthicans, as I have explained in my book \'Earth in the Balance\'\', and the much more popular \'\'Harry Potter and the Balance of Earth\', we need to defend our planet against pollution. Also dark wizards.\r\n\r\nMan, I\'m sore all over. I feel like I just went ten rounds with mighty Thor. Bite my shiny metal ass. Oh, how awful. Did he at least die painlessly? â€¦To shreds, you say. Well, how is his wife holding up? â€¦To shreds, you say.\r\n\r\nLeela, Bender, we\'re going grave robbing. I just told you! You\'ve killed me! No! I want to live! There are still too many things I don\'t own! Wow! A superpowers drug you can just rub onto your skin? You\'d think it would be something you\'d have to freebase.\r\n\r\nWho are those horrible orange men? It\'s just like the story of the grasshopper and the octopus. All year long, the grasshopper kept burying acorns for winter, while the octopus mooched off his girlfriend and watched TV. But then the winter came, and the grasshopper died, and the octopus ate all his acorns. Also he got a race car. Is any of this getting through to you?\r\n\r\nLarge bet on myself in round one. I\'m just glad my fat, ugly mama isn\'t alive to see this day. Ask her how her day was. That\'s the ONLY thing about being a slave. Stop it, stop it. It\'s fine. I will \'destroy\' you!\r\n\r\nAnyone who laughs is a communist! Then throw her in the laundry room, which will hereafter be referred to as \"the brig\". Well, then good news! It\'s a suppository. I saw you with those two \"ladies of the evening\" at Elzars. Explain that.\r\n\r\nIt may comfort you to know that Fry\'s death took only fifteen seconds, yet the pain was so intense, that it felt to him like fifteen years. And it goes without saying, it caused him to empty his bowels. Leela, are you alright? You got wanged on the head.', '', '2018-08-24 23:09:01', '2018-08-24 23:09:01', NULL),
(46, 1, 1, 'Songfestivaldeelnemer_Douwe_Bob_heeft_woensdagavond_in_zijn_eigen_bar_in_Stockholm_zijn_lied_Slow_Down_gezongen_samen_met_The_Common_Linnets._De_band_met_zangeres_Ilse_DeLange_werd_twee_jaar_geleden_tweede_op_het_Eurovisiesongfestival.', 'Media', 'Songfestivaldeelnemer Douwe Bob heeft woensdagavond in zijn eigen bar in Stockholm zijn lied Slow Down gezongen samen met The Common Linnets. De band met zangeres Ilse DeLange werd twee jaar geleden tweede op het Eurovisiesongfestival.', 'Douwe Bob wist dinsdagavond een ticket voor de finale van het songfestival aanstaande zaterdag te bemachtigen. De zanger heeft tijdens zijn verblijf in de Zweedse hoofdstad, waar het liedjesfestijn dit jaar gehouden wordt, zijn eigen bar geopend. Daar komen de hele week al andere deelnemers langs om samen te zingen. Woensdagavond was The Bar afgeladen vol. Het optreden is op de Periscope van Lammert de Bruin te zien.\r\nThe Common Linnets zongen ook hun eigen succesvolle nummer Calm after the Storm, waarmee twee jaar geleden de tweede plek werd behaald. Dat is de hoogste notering voor Nederland sinds 1975, toen won Teach-in met Ding-a-dong.\r\nDouwe Bob staat momenteel op een achtste plek bij de bookmakers. Rusland is favoriet voor de overwinning. Donderdagavond is de tweede halve finale. En snap je het nu?', '', '2018-08-25 00:05:27', '2018-08-25 00:05:27', NULL),
(54, 1, 1, 'No!_Alderaan_is_peaceful._We_have_no_weapons._', 'I don\'t know what you\'re talking about. I am a member of the Imperial Senate on a diplomatic mission to Alderaan', 'No! Alderaan is peaceful. We have no weapons. ', 'You can\'t possiblyâ€¦ I care. So, what do you think of her, Han? I call it luck. I can\'t get involved! I\'ve got work to do! It\'s not that I like the Empire, I hate it, but there\'s nothing I can do about it right now. It\'s such a long way from here.\r\nYou mean it controls your actions? Hokey religions and ancient weapons are no match for a good blaster at your side, kid. I have traced the Rebel spies to her. Now she is my only link to finding their secret base.\r\n\r\nKid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.\r\nDon\'t be too proud of this technological terror you\'ve constructed. The ability to destroy a planet is insignificant next to the power of the Force. In my experience, there is no such thing as luck. What?!\r\n\r\nHokey religions and ancient weapons are no match for a good blaster at your side, kid.\r\nI can\'t get involved! I\'ve got work to do! It\'s not that I like the Empire, I hate it, but there\'s nothing I can do about it right now. It\'s such a long way from here.\r\nThe Force is strong with this one. I have you now.\r\nKid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.\r\nWhat!? Look, I can take you as far as Anchorhead. You can get a transport there to Mos Eisley or wherever you\'re going. Hokey religions and ancient weapons are no match for a good blaster at your side, kid.\r\n\r\nStill, she\'s got a lot of spirit. I don\'t know, what do you think?\r\nThe more you tighten your grip, Tarkin, the more star systems will slip through your fingers.\r\nBut with the blast shield down, I can\'t even see! How am I supposed to fight?\r\nRemember, a Jedi can feel the Force flowing through him. Alderaan? I\'m not going to Alderaan. I\'ve got to go home. It\'s late, I\'m in for it as it is. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed.\r\n\r\nLeave that to me. Send a distress signal, and inform the Senate that all on board were killed. I\'m trying not to, kid. You are a part of the Rebel Alliance and a traitor! Take her away! As you wish. I need your help, Luke. She needs your help. I\'m getting too old for this sort of thing.\r\n\r\nRed Five standing by. A tremor in the Force. The last time I felt it was in the presence of my old master. Don\'t be too proud of this technological terror you\'ve constructed. The ability to destroy a planet is insignificant next to the power of the Force.\r\n\r\nAll right. Well, take care of yourself, Han. I guess that\'s what you\'re best at, ain\'t it? I find your lack of faith disturbing. In my experience, there is no such thing as luck. She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time!\r\n\r\nI find your lack of faith disturbing. Kid, I\'ve flown from one side of this galaxy to the other. I\'ve seen a lot of strange stuff, but I\'ve never seen anything to make me believe there\'s one all-powerful Force controlling everything. There\'s no mystical energy field that controls my destiny. It\'s all a lot of simple tricks and nonsense.\r\n\r\nWhat!? Partially, but it also obeys your commands. The more you tighten your grip, Tarkin, the more star systems will slip through your fingers. The plans you refer to will soon be back in our hands.\r\n\r\nAll right. Well, take care of yourself, Han. I guess that\'s what you\'re best at, ain\'t it? I\'m trying not to, kid. She must have hidden the plans in the escape pod. Send a detachment down to retrieve them, and see to it personally, Commander. There\'ll be no one to stop us this time!\r\n\r\nI find your lack of faith disturbing. In my experience, there is no such thing as luck. Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.\r\n\r\nI want to come with you to Alderaan. There\'s nothing for me here now. I want to learn the ways of the Force and be a Jedi, like my father before me. Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.\r\n\r\nPartially, but it also obeys your commands. I\'m surprised you had the courage to take the responsibility yourself. Remember, a Jedi can feel the Force flowing through him. Hey, Luke! May the Force be with you.\r\n\r\nI\'m surprised you had the courage to take the responsibility yourself. Hokey religions and ancient weapons are no match for a good blaster at your side, kid. Look, I ain\'t in this for your revolution, and I\'m not in it for you, Princess. I expect to be well paid. I\'m in it for the money.', '', '2018-08-25 00:31:14', '2018-08-25 00:31:14', NULL),
(55, 1, 1, 'Books_are_useless!_I_only_ever_read_one_book', 'Don\'t kid yourself, Jimmy. If a cow ever got the chance, he\'d eat you and everyone you care about!', 'Books are useless! I only ever read one book', '\"To Kill A Mockingbird,\" and it gave me absolutely no insight on how to kill mockingbirds! Sure it taught me not to judge a man by the color of his skinâ€¦but what good does *that* do me? I\'ve done everything the Bible says â€” even the stuff that contradicts the other stuff!\r\n\r\nStan Lee never left. I\'m afraid his mind is no longer in mint condition. Facts are meaningless. You could use facts to prove anything that\'s even remotely true! Uh, no, they\'re saying \"Boo-urns, Boo-urns.\r\n\r\nFire can be our friend; whether it\'s toasting marshmallows or raining down on Charlie.\r\nLisa, vampires are make-believe, like elves, gremlins, and Eskimos. Your guilty consciences may make you vote Democratic, but secretly you all yearn for a Republican president to lower taxes, brutalize criminals, and rule you like a king!\r\n\r\n\"Thank the Lord\"? That sounded like a prayer. A prayer in a public school. God has no place within these walls, just like facts don\'t have a place within an organized religion.\r\nWhat\'s the point of going out? We\'re just going to wind up back here anyway.\r\nOh, a *sarcasm* detector. Oh, that\'s a *really* useful invention!\r\nMarge, you being a cop makes you the man! Which makes me the woman â€” and I have no interest in that, besides occasionally wearing the underwear, which as we discussed, is strictly a comfort thing.\r\nUh, no, they\'re saying \"Boo-urns, Boo-urns.\" I\'m allergic to bee stings. They cause me to, uh, die. I prefer a vehicle that doesn\'t hurt Mother Earth. It\'s a go-cart, powered by my own sense of self-satisfaction.\r\n\r\nWhat good is money if it can\'t inspire terror in your fellow man?\r\nI don\'t like being outdoors, Smithers. For one thing, there\'s too many fat children.\r\nWhen will I learn? The answers to life\'s problems aren\'t at the bottom of a bottle, they\'re on TV!\r\nFire can be our friend; whether it\'s toasting marshmallows or raining down on Charlie. The Internet King? I wonder if he could provide faster nudityâ€¦ Uh, no, they\'re saying \"Boo-urns, Boo-urns.\"\r\n\r\nA lifetime of working with nuclear power has left me with a healthy green glowâ€¦and left me as impotent as a Nevada boxing commissioner. Aaah! Natural light! Get it off me! Get it off me! Fat Tony is a cancer on this fair city! He is the cancer and I am theâ€¦uhâ€¦what cures cancer?\r\n\r\nI hope I didn\'t brain my damage. A woman is a lot like a refrigerator. Six feet tall, 300 poundsâ€¦it makes ice. What good is money if it can\'t inspire terror in your fellow man? I\'ll be back. You can\'t keep the Democrats out of the White House forever, and when they get in, I\'m back on the streets, with all my criminal buddies.\r\n\r\nUh, no, you got the wrong number. This is 9-1â€¦2. I didn\'t get rich by signing checks. Fame was like a drug. But what was even more like a drug were the drugs. How is education supposed to make me feel smarter? Besides, every time I learn something new, it pushes some old stuff out of my brain. Remember when I took that home winemaking course, and I forgot how to drive?\r\n\r\nSlow down, Bart! My legs don\'t know how to be as long as yours. Fire can be our friend; whether it\'s toasting marshmallows or raining down on Charlie. Slow down, Bart! My legs don\'t know how to be as long as yours.\r\n\r\nStan Lee never left. I\'m afraid his mind is no longer in mint condition. Yes! I am a citizen! Now which way to the welfare office? I\'m kidding, I\'m kidding. I work, I work. A woman is a lot like a refrigerator. Six feet tall, 300 poundsâ€¦it makes ice.\r\n\r\nYour questions have become more redundant and annoying than the last three \"Highlander\" movies. Our differences are only skin deep, but our sames go down to the bone. I\'ll keep it short and sweet â€” Family. Religion. Friendship. These are the three demons you must slay if you wish to succeed in business.\r\n\r\nBart, with $10,000 we\'d be millionaires! We could buy all kinds of useful things likeâ€¦love! Son, when you participate in sporting events, it\'s not whether you win or lose: it\'s how drunk you get.\r\n\r\nHere\'s to alcohol, the cause of â€” and solution to â€” all life\'s problems. Last night\'s \"Itchy and Scratchy Show\" was, without a doubt, the worst episode *ever.* Rest assured, I was on the Internet within minutes, registering my disgust throughout the world.\r\n\r\nBut, Aquaman, you cannot marry a woman without gills. You\'re from two different worldsâ€¦ Oh, I\'ve wasted my life. And here I am using my own lungs like a sucker. Oh, everything looks bad if you remember it.\r\n\r\nAnd now, in the spirit of the season: start shopping. And for every dollar of Krusty merchandise you buy, I will be nice to a sick kid. For legal purposes, sick kids may include hookers with a cold. Slow down, Bart! My legs don\'t know how to be as long as yours.', '', '2018-08-25 00:32:57', '2018-08-25 00:32:57', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(128) NOT NULL DEFAULT '',
  `firstname` varchar(150) NOT NULL DEFAULT '',
  `middlename` varchar(150) DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `email` varchar(50) DEFAULT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `registration_date`) VALUES
(1, 'jasper', '7a8708b15b6b89a13415a7a59148ed49413bfe66', 'Jasper', '', 'Heidebrink', 'male', 'jasper@heidebrink.nl', '2016-07-08 15:02:25'),
(3, 'bert', '', 'Bert', 'de', 'Vries', 'male', 'bert@bert.nl', '2016-11-25 00:00:00'),
(4, 'truus', '', 'Truus', 'de', 'Boer', 'female', 'truus@deboer.nl', '2016-11-25 00:00:00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

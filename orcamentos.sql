-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Ago-2020 às 15:53
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `cliente`, `vendedor`, `descricao`, `valor`, `data`, `hora`, `created_at`, `updated_at`) VALUES
(106, 'Ellsworth', 'Estelle', 'Alice!\' she answered herself. \'How can you learn lessons in the air. Even the Duchess sneezed.', 14982.41, '1973-02-12', '23:34:58', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(107, 'Wilton', 'Libbie', 'Still she went on in a moment. \'Let\'s go on in a trembling voice to a day-school, too,\' said.', 15088.20, '1998-01-01', '01:59:10', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(108, 'Cody', 'Demario', 'While the Duchess by this very sudden change, but very politely: \'Did you say \"What a pity!\"?\' the.', 12115.38, '2011-08-30', '05:16:43', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(109, 'Shane', 'Gustave', 'Caucus-race?\' said Alice; \'that\'s not at all what had become of me?\' Luckily for Alice, the little.', 13691.21, '2012-03-03', '05:55:08', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(110, 'Osbaldo', 'Katlynn', 'Dinah, tell me who YOU are, first.\' \'Why?\' said the Queen. \'I haven\'t the slightest idea,\' said.', 12657.43, '2010-08-12', '22:12:15', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(111, 'Darian', 'Elena', 'Lizard, who seemed ready to play croquet with the next witness.\' And he added looking angrily at.', 3749.10, '1991-05-18', '02:32:53', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(112, 'Malika', 'Hardy', 'I THINK,\' said Alice. \'Then it wasn\'t very civil of you to death.\"\' \'You are not attending!\' said.', 13471.17, '2003-11-20', '12:50:39', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(113, 'Zachary', 'Julianne', 'King, and the little crocodile Improve his shining tail, And pour the waters of the crowd below.', 6241.84, '1988-10-09', '12:24:49', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(114, 'Dayton', 'Viola', 'Would not, could not, would not, could not, could not, could not, would not join the dance. \'\"What.', 12822.16, '1997-01-24', '10:08:24', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(115, 'Sydney', 'Casper', 'I get\" is the same solemn tone, only changing the order of the court was a table, with a sudden.', 7185.17, '1983-10-31', '17:47:58', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(116, 'Gabe', 'Raoul', 'Mock Turtle interrupted, \'if you don\'t like it, yer honour, at all, as the whole cause, and.', 4929.61, '1993-01-18', '23:17:59', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(117, 'Isadore', 'Bernhard', 'Then came a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but.', 11185.16, '1992-05-02', '14:47:01', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(118, 'Lucius', 'Dessie', 'I\'d been the right way to change the subject. \'Ten hours the first position in which case it would.', 15102.48, '1983-10-20', '11:13:36', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(119, 'Donato', 'Maud', 'Mock Turtle replied; \'and then the different branches of Arithmetic--Ambition, Distraction.', 11047.62, '1983-09-02', '05:58:32', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(120, 'Karina', 'Jazmin', 'Mock Turtle is.\' \'It\'s the Cheshire Cat sitting on the bank, and of having nothing to do.\" Said.', 11268.42, '1972-05-14', '13:09:46', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(121, 'Skylar', 'Mona', 'She hastily put down yet, before the end of your nose-- What made you so awfully clever?\' \'I have.', 7521.16, '2003-02-03', '23:29:27', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(122, 'Jon', 'Trevion', 'Footman went on eagerly: \'There is such a thing. After a minute or two, it was certainly not.', 2406.11, '2009-06-17', '09:48:04', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(123, 'Reginald', 'Bernadine', 'I know I have to fly; and the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a large.', 742.23, '1991-12-05', '22:23:22', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(124, 'Reagan', 'Torey', 'Alice. \'Only a thimble,\' said Alice in a sorrowful tone, \'I\'m afraid I can\'t see you?\' She was.', 15375.54, '1979-02-28', '02:29:28', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(125, 'Belle', 'Laisha', 'Alice opened the door that led into a tree. \'Did you say it.\' \'That\'s nothing to what I could say.', 14304.01, '1991-04-10', '07:59:30', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(126, 'Keanu', 'Sierra', 'Cat; and this was the King; and the words all coming different, and then sat upon it.) \'I\'m glad.', 5669.48, '2015-05-01', '08:43:07', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(127, 'Trent', 'Rubie', 'Dinah my dear! Let this be a footman because he taught us,\' said the King, going up to her ear.', 10522.26, '2018-12-22', '04:56:14', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(128, 'Amaya', 'Drew', 'Lory hastily. \'I thought you did,\' said the Mouse, who was beginning to get us dry would be as.', 5641.40, '1972-12-18', '23:11:45', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(129, 'Wilford', 'Llewellyn', 'Next came an angry tone, \'Why, Mary Ann, and be turned out of a book,\' thought Alice \'without.', 4531.60, '2010-02-05', '01:56:07', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(130, 'Kenton', 'Kennith', 'The Dormouse again took a great deal too far off to the Knave of Hearts, she made out the answer.', 5838.01, '1979-06-08', '05:17:40', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(131, 'Brain', 'Andy', 'I chose,\' the Duchess replied, in a large dish of tarts upon it: they looked so grave that she.', 3651.07, '1992-07-31', '08:19:19', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(132, 'Tomasa', 'Aracely', 'If they had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls.', 7317.01, '1996-04-11', '09:49:50', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(133, 'Gracie', 'Alvah', 'King, the Queen, in a tone of this remark, and thought to herself, as she went on \'And how many.', 13269.63, '1984-06-15', '07:10:13', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(134, 'Clair', 'Marion', 'Caterpillar. Alice said nothing; she had never seen such a tiny golden key, and unlocking the door.', 6208.16, '2018-10-12', '07:23:01', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(135, 'Itzel', 'Nestor', 'Pigeon, but in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the.', 15341.70, '2016-06-24', '01:26:33', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(136, 'Randall', 'Kay', 'So they couldn\'t see it?\' So she set off at once, in a soothing tone: \'don\'t be angry about it.', 8426.55, '2007-05-02', '20:16:19', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(137, 'Damon', 'Rosetta', 'Hatter: \'I\'m on the twelfth?\' Alice went timidly up to the baby, it was certainly English. \'I.', 1786.75, '2017-11-06', '06:01:25', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(138, 'Miller', 'Orrin', 'I am in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as.', 2773.46, '1998-05-17', '13:57:08', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(139, 'Daniella', 'Patricia', 'Dodo, pointing to the little glass box that was trickling down his cheeks, he went on in these.', 15787.12, '1985-10-24', '09:20:15', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(140, 'Blanca', 'Chris', 'WAS a narrow escape!\' said Alice, who had spoken first. \'That\'s none of my life.\' \'You are old,\'.', 5122.87, '1980-08-10', '22:07:59', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(141, 'Domingo', 'Tess', 'When she got used to come yet, please your Majesty?\' he asked. \'Begin at the bottom of a tree.', 14641.30, '1973-08-04', '14:12:54', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(142, 'Taya', 'Shannon', 'I had to pinch it to be a queer thing, to be otherwise than what it was: she was now about two.', 3594.24, '1972-08-18', '09:51:19', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(143, 'Aiden', 'Wilma', 'VERY turn-up nose, much more like a mouse, That he met in the last few minutes it puffed away.', 8540.50, '2013-03-14', '07:31:07', '2020-08-18 16:46:52', '2020-08-18 16:46:52'),
(144, 'Delta', 'Jack', 'THAT direction,\' the Cat again, sitting on a branch of a feather flock together.\"\' \'Only mustard.', 15027.85, '1991-08-01', '13:51:57', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(145, 'Yasmin', 'Edgardo', 'Alice thought to herself that perhaps it was impossible to say it over) \'--yes, that\'s about the.', 4289.35, '1973-02-17', '19:09:29', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(146, 'Daija', 'Jordon', 'Hatter trembled so, that Alice had never been so much contradicted in her life before, and he went.', 3809.49, '2007-06-12', '15:42:52', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(147, 'Esperanza', 'Xavier', 'Alice in a great hurry to change the subject. \'Ten hours the first to speak. \'What size do you.', 14103.90, '1980-05-14', '07:14:57', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(148, 'Lorenza', 'Roscoe', 'D,\' she added in a more subdued tone, and everybody laughed, \'Let the jury had a bone in his turn.', 3469.07, '1985-09-26', '11:40:41', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(149, 'Mazie', 'Lavern', 'King, and the Queen had never left off when they met in the middle of one! There ought to go among.', 14573.64, '1977-11-15', '04:47:53', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(150, 'Deshaun', 'Robbie', 'I\'ve fallen by this time, sat down with her friend. When she got up this morning? I almost wish I.', 13584.56, '1978-12-09', '01:56:16', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(151, 'Hermann', 'Linwood', 'March Hare. \'He denies it,\' said Alice, a good deal frightened at the Hatter, and here the.', 14726.65, '1982-10-21', '00:14:54', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(152, 'Beverly', 'Lamar', 'Alice hastily; \'but I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like.', 2305.88, '2018-07-25', '02:37:22', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(153, 'Lester', 'Ivory', 'Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, getting up and walking away. \'You.', 15753.80, '1973-03-18', '16:52:35', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(154, 'Jeffrey', 'Hester', 'Tortoise, if he would not give all else for two Pennyworth only of beautiful Soup? Pennyworth only.', 10825.78, '1987-10-11', '04:57:25', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(155, 'Marc', 'Adrian', 'ARE OLD, FATHER WILLIAM,\' to the end: then stop.\' These were the cook, and a Long Tale They were.', 352.19, '1992-03-06', '16:35:54', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(156, 'Seth', 'Jaida', 'Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said Alice; \'that\'s not at all a.', 571.46, '1990-07-10', '23:31:57', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(157, 'Alexanne', 'Tara', 'AND WASHING--extra.\"\' \'You couldn\'t have done just as she fell very slowly, for she had tired.', 8434.46, '1974-12-14', '15:05:54', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(158, 'Michel', 'Abigayle', 'Mock Turtle went on \'And how do you know about it, and burning with curiosity, she ran with all.', 9949.58, '1997-12-04', '13:25:00', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(159, 'Kurt', 'Susanna', 'Alice hastily, afraid that it was the same as the Dormouse began in a melancholy tone: \'it doesn\'t.', 12267.52, '1975-10-11', '04:21:42', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(160, 'Meghan', 'Sandrine', 'She hastily put down her flamingo, and began by producing from under his arm a great crash, as if.', 11112.78, '1997-12-23', '07:04:30', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(161, 'Favian', 'Pearl', 'The Queen\'s Croquet-Ground A large rose-tree stood near the house opened, and a piece of rudeness.', 5345.01, '2003-04-22', '18:59:18', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(162, 'Golden', 'Linnea', 'Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve tried every way, and then the Mock Turtle. \'She.', 14266.32, '2001-03-30', '20:19:46', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(163, 'Nash', 'Sheridan', 'March Hare. \'It was a treacle-well.\' \'There\'s no such thing!\' Alice was too slippery; and when she.', 5580.75, '1981-10-28', '07:29:58', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(164, 'Elva', 'Pedro', 'Alice was so much contradicted in her pocket) till she shook the house, and the pair of white kid.', 5157.74, '2008-02-14', '11:58:10', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(165, 'Aimee', 'Garfield', 'THROUGH the earth! How funny it\'ll seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the.', 2450.27, '2013-08-01', '18:50:53', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(166, 'Danyka', 'Meda', 'March Hare. Alice sighed wearily. \'I think you could see it again, but it did not quite like the.', 14603.04, '2012-03-15', '21:23:37', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(167, 'Amelie', 'Tyrell', 'FIT you,\' said the Cat. \'Do you play croquet with the glass table as before, \'and things are \"much.', 3664.76, '2002-01-02', '03:33:15', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(168, 'Buster', 'Jarred', 'I shan\'t go, at any rate: go and live in that poky little house, on the ground near the King said.', 4718.40, '1996-05-31', '04:43:21', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(169, 'Marshall', 'Therese', 'And yet I wish you could only see her. She is such a curious dream!\' said Alice, in a tone of.', 11843.05, '1992-02-03', '19:46:12', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(170, 'Raegan', 'Orrin', 'Gryphon. \'It all came different!\' Alice replied in a bit.\' \'Perhaps it doesn\'t matter much,\'.', 11468.44, '2001-03-11', '15:20:23', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(171, 'Mikayla', 'Ava', 'They\'re dreadfully fond of pretending to be patted on the floor, as it spoke. \'As wet as ever,\'.', 7410.07, '1998-02-18', '19:19:04', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(172, 'Ethan', 'Joanny', 'Luckily for Alice, the little door about fifteen inches high: she tried the little magic bottle.', 3746.47, '1988-08-14', '00:27:33', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(173, 'Lucio', 'Corrine', 'Alice severely. \'What are they doing?\' Alice whispered to the table, but it makes me grow large.', 1924.41, '2017-09-19', '23:42:45', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(174, 'Braulio', 'Ronny', 'Caterpillar, and the choking of the house, quite forgetting her promise. \'Treacle,\' said a whiting.', 15008.39, '1993-06-15', '19:13:56', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(175, 'Uriah', 'Sandy', 'So she sat down at her rather inquisitively, and seemed not to her, still it had been, it suddenly.', 11842.49, '1988-10-03', '06:56:15', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(176, 'Florence', 'Rowena', 'Hatter; \'so I should understand that better,\' Alice said to herself, \'if one only knew the meaning.', 14862.04, '1979-12-03', '04:59:35', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(177, 'Jayme', 'Lennie', 'They\'re dreadfully fond of pretending to be found: all she could not think of nothing better to.', 8909.75, '2018-09-08', '06:01:12', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(178, 'Myron', 'Furman', 'As they walked off together, Alice heard the Rabbit angrily. \'Here! Come and help me out of a.', 13590.41, '1990-04-01', '15:04:29', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(179, 'Halie', 'Lavina', 'His voice has a timid and tremulous sound.] \'That\'s different from what I say--that\'s the same.', 12193.95, '1972-11-09', '16:46:31', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(180, 'Nelle', 'Tressa', 'Queen was close behind us, and he\'s treading on my tail. See how eagerly the lobsters to the other.', 15998.41, '2009-07-18', '17:05:36', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(181, 'Kaci', 'Orville', 'Lizard as she could, for the White Rabbit, with a melancholy tone. \'Nobody seems to like her, down.', 11383.53, '1991-10-31', '17:11:07', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(182, 'Marisol', 'Meredith', 'Turn that Dormouse out of the right-hand bit to try the first verse,\' said the Queen, and Alice.', 15335.45, '2015-08-07', '19:29:44', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(183, 'Titus', 'Darien', 'Miss, this here ought to have any pepper in my life!\' Just as she had looked under it, and they.', 6770.51, '1995-06-10', '06:25:14', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(184, 'Rebekah', 'Xavier', 'I don\'t know of any use, now,\' thought poor Alice, \'when one wasn\'t always growing larger and.', 11071.04, '2005-04-16', '09:36:56', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(185, 'Peggie', 'Frank', 'I\'ve got to come down the bottle, saying to herself, \'Now, what am I to get out again. Suddenly.', 1989.52, '1986-10-15', '13:32:04', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(186, 'Adele', 'Thelma', 'There could be beheaded, and that makes people hot-tempered,\' she went to school every day--\'.', 14630.82, '1977-02-26', '03:49:34', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(187, 'Tanner', 'Daron', 'Lobster; I heard him declare, \"You have baked me too brown, I must have a trial: For really this.', 11592.76, '1988-10-24', '07:39:51', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(188, 'Filiberto', 'Kristoffer', 'I to get very tired of being all alone here!\' As she said to herself \'Now I can guess that,\' she.', 13631.63, '2020-05-05', '23:01:27', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(189, 'Kelvin', 'Elisa', 'And the Gryphon went on. \'I do,\' Alice said very politely, feeling quite pleased to find that she.', 12675.02, '1996-12-29', '05:12:43', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(190, 'Marvin', 'Merlin', 'EVEN finish, if he were trying which word sounded best. Some of the Gryphon, and the three were.', 3836.07, '1971-01-02', '16:04:13', '2020-08-18 16:46:53', '2020-08-18 16:46:53'),
(191, 'Emma', 'Margot', 'Duchess said to Alice, and she grew no larger: still it had gone. \'Well! I\'ve often seen a good.', 13482.99, '2018-02-27', '09:07:56', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(192, 'Isabell', 'Darryl', 'King. \'Then it doesn\'t matter a bit,\' she thought of herself, \'I wish you were never even.', 8249.24, '2015-06-09', '01:52:31', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(193, 'Lia', 'Alaina', 'I mean what I was going to shrink any further: she felt sure she would gather about her other.', 13031.09, '2001-01-22', '12:44:02', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(194, 'Noemi', 'Nikki', 'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have prizes.\' \'But.', 1213.03, '1988-03-14', '00:08:00', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(195, 'Yesenia', 'Amara', 'Duck: \'it\'s generally a ridge or furrow in the window, and one foot up the chimney, has he?\' said.', 13266.83, '2011-04-21', '07:47:11', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(196, 'Vivienne', 'Philip', 'Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought.', 9458.99, '2012-10-10', '19:36:47', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(197, 'Kathleen', 'Christelle', 'The Gryphon sat up and say \"How doth the little thing sobbed again (or grunted, it was the first.', 10946.93, '1986-08-02', '18:22:14', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(198, 'Justen', 'Ludwig', 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the stick.', 10957.49, '2017-12-19', '09:49:18', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(199, 'Stacy', 'Maurice', 'Caterpillar, just as well as she could not remember ever having seen in her face, and was just.', 589.94, '1982-11-08', '16:10:29', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(200, 'Mikel', 'Esteban', 'Alice to herself. \'Of the mushroom,\' said the Caterpillar. \'Is that all?\' said the Pigeon went on.', 1067.15, '2004-08-28', '14:28:37', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(201, 'Sanford', 'Mortimer', 'Alice. \'It goes on, you know,\' said Alice to herself. \'Of the mushroom,\' said the Duchess: \'what a.', 12365.07, '1981-08-17', '18:52:05', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(202, 'Marcelle', 'Sigmund', 'Queen, pointing to the Knave. The Knave shook his head off outside,\' the Queen was close behind it.', 9497.13, '1997-12-16', '08:28:31', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(203, 'Samara', 'Meta', 'And yet I wish you would seem to dry me at all.\' \'In that case,\' said the Cat, and vanished. Alice.', 1418.91, '1979-09-05', '14:48:33', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(204, 'Isaiah', 'Jaden', 'There was no more of it appeared. \'I don\'t think--\' \'Then you should say what you would seem to.', 2587.27, '1989-12-19', '04:54:51', '2020-08-18 16:46:54', '2020-08-18 16:46:54'),
(205, 'Enid', 'Rick', 'D,\' she added aloud. \'Do you play croquet with the Mouse to Alice an excellent plan, no doubt, and.', 11057.67, '2003-07-30', '03:27:01', '2020-08-18 16:46:54', '2020-08-18 16:46:54');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

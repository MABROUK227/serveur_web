-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 11 déc. 2024 à 13:46
-- Version du serveur : 8.0.36
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom`
--
CREATE DATABASE ECOM;

USE ECOM;

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

DROP TABLE IF EXISTS `BOOKS`;

CREATE TABLE IF NOT EXISTS `BOOKS` (
  `BOOK_ID` INT NOT NULL AUTO_INCREMENT,
  `AUTHOR` VARCHAR(25) NOT NULL,
  `KEYWORDS` VARCHAR(255) NOT NULL,
  `TITLE` VARCHAR(80) NOT NULL,
  `PRICE` INT NOT NULL,
  `IMAGE` VARCHAR(200) NOT NULL,
  `DESCRIPTION` TEXT NOT NULL,
  `LANGUAGE` VARCHAR(20) NOT NULL,
  `PAGES` INT NOT NULL,
  `DATE` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STOCK` INT NOT NULL,
  `ID_CATEGORY` INT NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  UNIQUE KEY `TITLE` (`TITLE`),
  KEY `CAT` (`ID_CATEGORY`)
) ENGINE=INNODB AUTO_INCREMENT=14 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `BOOKS` (
  `BOOK_ID`,
  `AUTHOR`,
  `KEYWORDS`,
  `TITLE`,
  `PRICE`,
  `IMAGE`,
  `DESCRIPTION`,
  `LANGUAGE`,
  `PAGES`,
  `DATE`,
  `STOCK`,
  `ID_CATEGORY`
) VALUES (
  2,
  'Stephen King',
  'Stephen, King, It',
  'It',
  234,
  'uploads/it.jpg',
  'It Is A 1986 Horror Novel By American Author Stephen King. It Was His 22nd Book And His 17th Novel Written Under His Own Name. The Story Follows The Experiences Of Seven Children As They Are Terrorized By An Evil Entity That Exploits The Fears Of Its Victims To Disguise Itself While Hunting Its Prey. \"It\" Primarily Appears In The Form Of Pennywise The Dancing Clown To Attract Its Preferred Prey Of Young Children.  The Novel Is Told Through Narratives Alternating Between Two Periods And Is Largely Told In The Third-person Omniscient Mode. It Deals With Themes That Eventually Became King Staples: The Power Of Memory, Childhood Trauma And Its Recurrent Echoes In Adulthood, The Malevolence Lurking Beneath The Idyllic FaÃ§ade Of The American Small Town, And Overcoming Evil Through Mutual Trust And Sacrifice.  King Has Stated That He First Conceived The Story In 1978, And Began Writing It In 1981. He Finished Writing The Book In 1985.[2] He Also Stated That He Originally Wanted The Title Character To Be A Troll Like The One In The Children\'S STORY \"Three Billy Goats Gruff\",
  BUT WHO INHABITED THE LOCAL SEWER SYSTEM RATHER THAN JUST THE AREA BENEATH ONE BRIDGE. HE ALSO WANTED THE STORY TO INTERWEAVE THE STORIES OF CHILDREN AND THE ADULTS THEY LATER BECOME. THE NOVEL WON THE BRITISH FANTASY AWARD IN 1987,
  AND RECEIVED NOMINATIONS FOR THE LOCUS AND WORLD FANTASY AWARDS THAT SAME YEAR.[3] PUBLISHERS WEEKLY LISTED IT AS THE BEST-SELLING HARDCOVER FICTION BOOK IN THE UNITED STATES IN 1986.[4] IT HAS BEEN ADAPTED INTO A 1990 TWO-PART MINISERIES DIRECTED BY TOMMY LEE WALLACE,
  A HINDI 1998 TELEVISION SERIES DIRECTED BY GLEN BARETTO & ANKUSH MOHLA,
  AND INTO A FILM DUOLOGY DIRECTED BY ANDY MUSCHIETTI;

IT WAS RELEASED IN SEPTEMBER 2017 AND IT CHAPTER TWO WAS RELEASED IN SEPTEMBER 2019.', 'ENGLISH', 1135, '2022-06-10 01:05:19', 12, 3),

(3,
'E L James',
'James, Fifty, Shades, Grey',
'Fifty Shades Of Grey',
120,
'uploads/fiftyshades.jpg',
'Fifty Shades Of Grey Is A 2011 Erotic Romance Novel By British Author E. L. James.[1] It Became The First Instalment In The Fifty Shades Novel Series That Follows The Deepening Relationship Between A College Graduate, Anastasia Steele, And A Young Business Magnate, Christian Grey. It Is Notable For Its Explicitly Erotic Scenes Featuring Elements Of Sexual Practices Involving BDSM (bondage/discipline, Dominance/submission, And Sadism/masochism). Originally Self-published As An Ebook And Print-on-demand In June 2011, The Publishing Rights To The Novel Were Acquired By Vintage Books In March 2012.  Fifty Shades Of Grey Has Topped Best-seller Lists Around The World. It Has Been Translated Into 52 Languages, And Set A Record In The United Kingdom As The Fastest-selling Paperback Of All Time. Critical Reception Of The Book, However, Has Tended Towards The Negative, With The Quality Of Its Prose Generally Seen As Poor, While Its Portrayal Of BDSM Has Been Targeted For Criticism From A Variety Of Perspectives. Universal Pictures And Focus Features Produced An American Film Adaptation, Which Was Released On 13 February 2015,[2] And Was Also Panned Upon Release, Though It Was A Box Office Success.  The Second And Third Volumes Of The Original Trilogy, Fifty Shades Darker And Fifty Shades Freed, Were Published In 2012. The Trilogy Had Sold Over 150 Million Copies Worldwide By October 2017. A Version Of The Novel From Christian\'S POINT OF VIEW,
GREY: FIFTY SHADES OF GREY AS TOLD BY CHRISTIAN,
WAS PUBLISHED IN JUNE 2015 AS THE FOURTH BOOK. DARKER: FIFTY SHADES DARKER AS TOLD BY CHRISTIAN,
PUBLISHED IN NOVEMBER 2017,
IS THE FIFTH BOOK IN THE SERIES. FREED: FIFTY SHADES FREED AS TOLD BY CHRISTIAN,
PUBLISHED IN JUNE 2021,
IS THE SIXTH BOOK IN THE SERIES.', 'ENGLISH', 1200, '2022-06-10 01:48:09', 12, 8),
(4, 'MARGARET MITCHELL', 'GONE,
WIND,
MARGARET,
MITCHELL', 'GONE WITH THE WIND', 145, 'UPLOADS/GONEWITHWIND.JPG', '<P><SPAN STYLE=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">SINCE ITS ORIGINAL PUBLICATION IN 1936,
&NBSP;

</span><em Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Gone With The Wind</em><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&mdash;winner Of The Pulitzer Prize And One Of The Bestselling Novels Of All Time&mdash;has Been Heralded By Readers Everywhere As The Great American Novel.</span><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Widely Considered The Great American Novel, And Often Remembered For Its Epic Film Version, &nbsp;</span><em Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Gone With The Wind</em><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;explores The Depth Of Human Passions With An Intensity As Bold As Its Setting In The Red Hills Of Georgia. A Superb Piece Of Storytelling, It Vividly Depicts The Drama Of The Civil War And Reconstruction.</span><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">This Is The Tale Of Scarlett O&rsquo;Hara, The Spoiled, Manipulative Daughter Of A Wealthy Plantation Owner, Who Arrives At Young Womanhood Just In Time To See The Civil War Forever Change Her Way Of Life. A Sweeping Story Of Tangled Passion And Courage, In The Pages Of&nbsp;</span><em Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Gone With The Wind</em><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">, Margaret Mitchell Brings To Life The Unforgettable Characters That Have Captured Readers For Over Seventy Years.</span></p>l', 'English', 1335, '2022-06-10 02:34:16', 13, 3),

(11,
'Chetan Bhagat',
'Half, Girl,Friend, Chetan, Bhagat',
'Half GirlFriend',
1244,
'uploads/half gf.jpg',
'<p>Half Girlfriend Is A Story Of Bihari Boy Madhav Whofalls In Love With Ria.</p> <p>Madhav Belongs To Middle Class Family While Ria Is From Higher Class And Both Have Different Lifestyles.</p> <p>The Story Revolves Around How Will Madhav Make RIa Fall In Love With Him To.</p> <p>To Know More Read The Book.</p>',
'English',
1900,
'2022-06-10 03:05:08',
13,
9),
(12,
'Timothy Zahn',
'Timothy, Zahn, Thrawn, Star, War',
'Thrawn Star Wars',
368,
'uploads/starwar.jpg',
'<p>This Is The Most Famous Novel .this Book Needs No Introduction.</p> <p>The Star Wars Legacy With A Deep Look At Thrawn</p>',
'English',
1900,
'2022-06-10 03:07:25',
13,
2),
(13,
'Sir Arthur Conan Doyle',
'Arthur, Conan, Doyle, Sherlock, Holmes',
'Sherlock Holmes',
368,
'uploads/sherlock.jpg',
'<p><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Since His First Appearance In&nbsp;</span><em Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Beeton&rsquo;s Christmas Annual</em><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;in 1887, Sir Arthur Conan Doyle&rsquo;s Sherlock Holmes Has Been One Of The Most Beloved Fictional Characters Ever Created. Now, In Two Paperback Volumes, Bantam Presents All Fifty-six Short Stories And Four Novels Featuring Conan Doyle&rsquo;s Classic Hero--a Truly Complete Collection Of Sherlock Holmes&rsquo;s Adventures In Crime!</span><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Volume I Includes The Early Novel&nbsp;</span><strong Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">A Study In Scarlet</strong><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">, Which Introduced The Eccentric Genius Of Sherlock Holmes To The World. This Baffling Murder Mystery, With The Cryptic Word Rache Written In Blood, First Brought Holmes Together With Dr. John Watson. Next,&nbsp;</span><strong Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">The Sign Of Four</strong><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;presents Holmes&rsquo;s Famous &ldquo;seven Percent Solution&rdquo; And The Strange Puzzle Of Mary Morstan In The Quintessential Locked-room Mystery.&nbsp;</span><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><br Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\" /><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">Also Included Are Holmes&rsquo;s Feats Of Extraordinary Detection In Such Famous Cases As The Chilling&nbsp;</span><strong Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&ldquo; The Adventure Of The Speckled Band,&rdquo;</strong><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;the Baffling Riddle Of&nbsp;</span><strong Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&ldquo;The Musgrave Ritual,&rdquo;</strong><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;and The Ingeniously Plotted&nbsp;</span><strong Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&ldquo;The Five Orange Pips,&rdquo;</strong><span Style=\"color: #333333; Font-family: Arial, Sans-serif; Font-size: 14px;\">&nbsp;tales That Bring To Life A Victorian England Of Horse-drawn Cabs, Fogs, And The Famous Lodgings At 221B Baker Street, Where Sherlock Holmes Earned His Undisputed Reputation As The Greatest Fictional Detective Of All Time.</span></p>',
'English',
600,
'2022-06-10 03:09:24',
13,
2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `CATEGORY`;

CREATE TABLE IF NOT EXISTS `CATEGORY` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(20) NOT NULL,
  `DISABLED` TINYINT(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=INNODB AUTO_INCREMENT=10 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `CATEGORY` (
  `ID`,
  `NAME`,
  `DISABLED`
) VALUES (
  1,
  'Sciences',
  1
),
(
  2,
  'Science Fiction',
  0
),
(
  3,
  'Romance',
  0
),
(
  6,
  'Horror',
  0
),
(
  7,
  'Action',
  0
),
(
  8,
  'Mystery',
  1
),
(
  9,
  'Drama',
  0
);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `CUSTOMER`;

CREATE TABLE IF NOT EXISTS `CUSTOMER` (
  `CUST_ID` INT NOT NULL AUTO_INCREMENT,
  `EMAIL` VARCHAR(50) NOT NULL,
  `PASSWORD` VARCHAR(80) NOT NULL,
  `CUST_TYPE` VARCHAR(20) CHARACTER SET UTF8MB3 COLLATE UTF8MB3_GENERAL_CI NOT NULL DEFAULT 'user',
  PRIMARY KEY (`CUST_ID`)
) ENGINE=INNODB AUTO_INCREMENT=40 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `CUSTOMER` (
  `CUST_ID`,
  `EMAIL`,
  `PASSWORD`,
  `CUST_TYPE`
) VALUES (
  33,
  'm123@gmail.com',
  '601f1889667efaebb33b8c12572835da3f027f78',
  'user'
),
(
  34,
  'ojk)jà123@gmail.com',
  '601f1889667efaebb33b8c12572835da3f027f78',
  'user'
),
(
  35,
  'mo1@hotmail.fr',
  'f416168b5eb1a5be010bbbc327eabee876de8b05',
  'user'
),
(
  36,
  'momo@gmail.com',
  '601f1889667efaebb33b8c12572835da3f027f78',
  'user'
),
(
  37,
  'admin01@gmail.com',
  '618dcdfb0cd9ae4481164961c4796dd8e3930c8d',
  'user'
),
(
  38,
  'khpolo@sophia.ma',
  '601f1889667efaebb33b8c12572835da3f027f78',
  'admin'
),
(
  39,
  'root@gmail.com',
  'dc76e9f0c0006e8f919e0c515c66dbba3982f785',
  'user'
);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `MESSAGE`;

CREATE TABLE IF NOT EXISTS `MESSAGE` (
  `ID_MESSAGE` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(200) NOT NULL,
  `EMAIL` VARCHAR(200) NOT NULL,
  `SUBJECT` VARCHAR(300) DEFAULT NULL,
  `MESSAGE` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`ID_MESSAGE`)
) ENGINE=MYISAM AUTO_INCREMENT=21 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `MESSAGE` (
  `ID_MESSAGE`,
  `NAME`,
  `EMAIL`,
  `SUBJECT`,
  `MESSAGE`
) VALUES (
  1,
  'kaera rae ',
  'i@gmail.com',
  'hi my niggas',
  'hi'
);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `ORDERS`;

CREATE TABLE IF NOT EXISTS `ORDERS` (
  `ID_ORDER` INT NOT NULL AUTO_INCREMENT,
  `CUST_ID` INT NOT NULL,
  `BOOK_ID` INT NOT NULL,
  `FIRST_NAME` VARCHAR(200) NOT NULL,
  `LAST_NAME` VARCHAR(200) NOT NULL,
  `PHONE` INT NOT NULL,
  `ZIP` INT NOT NULL,
  `COUNTRY` VARCHAR(200) NOT NULL,
  `CITY` VARCHAR(200) NOT NULL,
  `FULL_ADDRESS` VARCHAR(200) NOT NULL,
  `METHOD` VARCHAR(200) NOT NULL,
  `DATE` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TOTAL` INT DEFAULT NULL,
  PRIMARY KEY (`ID_ORDER`),
  KEY `CUST_ID` (`CUST_ID`),
  KEY `BOOK_ID` (`BOOK_ID`)
) ENGINE=INNODB AUTO_INCREMENT=41 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `ORDERS` (
  `ID_ORDER`,
  `CUST_ID`,
  `BOOK_ID`,
  `FIRST_NAME`,
  `LAST_NAME`,
  `PHONE`,
  `ZIP`,
  `COUNTRY`,
  `CITY`,
  `FULL_ADDRESS`,
  `METHOD`,
  `DATE`,
  `TOTAL`
) VALUES (
  11,
  38,
  11,
  'pl',
  'lkoo',
  639964613,
  38518,
  'benin',
  'cotonou',
  'uhç_hug_iyuhuH',
  'bill',
  '2022-06-10 08:10:04',
  1244
),
(
  13,
  38,
  11,
  'Ouiamknhjbh',
  'Khoudbj vhyuiraji',
  639964613,
  38518,
  'Maj hvuyroc',
  'Marbj uvyuviyraech',
  'k oniuoNnjoiuhuç',
  'bill',
  '2022-06-10 08:14:58',
  1244
);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

DROP TABLE IF EXISTS `SETTINGS`;

CREATE TABLE IF NOT EXISTS `SETTINGS` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `SETTING` VARCHAR(30) DEFAULT NULL,
  `VALUE` VARCHAR(2048) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SETTING` (`SETTING`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=LATIN1;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `SETTINGS` (
  `ID`,
  `SETTING`,
  `VALUE`
) VALUES (
  1,
  'phone_number',
  '+330623025212'
),
(
  2,
  'email',
  'momo@gmail.com'
),
(
  3,
  'facebook_link',
  '@'
),
(
  4,
  'twitter_link',
  'https://'
),
(
  5,
  'linkedin_link',
  '@'
),
(
  6,
  'google_plus_link',
  'https://'
),
(
  7,
  'website_link',
  'https://'
);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `BOOKS`
  ADD CONSTRAINT `CAT` FOREIGN KEY (
    `ID_CATEGORY`
  )
    REFERENCES `CATEGORY` (
      `ID`
    );

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `ORDERS`
  ADD CONSTRAINT `BOOK_ID` FOREIGN KEY (
    `BOOK_ID`
  )
    REFERENCES `BOOKS` (
      `BOOK_ID`
    ), ADD CONSTRAINT `CUST_ID` FOREIGN KEY (
      `CUST_ID`
    )
      REFERENCES `CUSTOMER` (
        `CUST_ID`
      );

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
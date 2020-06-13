-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2020 at 08:03 PM
-- Server version: 5.7.26
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etic_onlive`
--

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `concert_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `code`, `concert_id`, `status`) VALUES
(1, '1591561192', 1, 0),
(2, '1591561238', 2, 0),
(3, '1591561259', 3, 1),
(4, '1591561278', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `concert_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `concert_id`, `name`, `photo`, `comment`, `date`) VALUES
(1, 1, 'ozzy osbourne', 'ozzy-osbourne.jpg', 'It had a huge impact on me, ‘Smells Like Teen Spirit’ – and I was very proud when I found out that Kurt Cobain was a fan of mine. I thought he was awesome.', '2020-06-07 23:59:11'),
(2, 1, 'billy idol', 'billy-idol.jpg', 'I love it when someone insults me. That means that I don\'t have to be nice anymore.', '2020-06-07 23:59:11'),
(3, 1, 'bruce dickinson', 'bruce-dickinson.jpg', 'Best two rock voices I\'ve heard in a last few years both have been from grunge bands: it\'s Eddie Vedder and the other one is Chris Cornell from Soundgarden.', '2020-06-08 00:00:43'),
(11, 1, 'Wolf', 'wolf.jpg', 'Is anybody out there?', '2020-06-10 20:39:55'),
(13, 1, 'Wolf', 'wolf.jpg', 'yhooo peeps!', '2020-06-11 13:32:16'),
(16, 1, 'Wolf', 'wolf.jpg', 'Fleaaaaa!!!', '2020-06-11 13:53:52'),
(20, 1, 'Wolf', 'wolf.jpg', 'Who Am I?', '2020-06-11 13:55:50'),
(21, 1, 'Wolf', 'wolf.jpg', 'Tom Morello is back :)', '2020-06-11 13:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `genre_id` int(11) NOT NULL,
  `members` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `img` varchar(255) NOT NULL,
  `tickets` int(11) NOT NULL,
  `tickets_total` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `band_msg` varchar(255) NOT NULL,
  `band_sign` varchar(255) NOT NULL,
  `highlight` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`id`, `title`, `description`, `text`, `genre_id`, `members`, `date`, `img`, `tickets`, `tickets_total`, `price`, `band_msg`, `band_sign`, `highlight`, `link`) VALUES
(1, 'Red Hot Chilli Peppers', 'Don’t miss first time of Anthony and the Peppers live at your home', 'Red Hot Chili Peppers are a funk rock band that is based in Hollywood, California and was formed in 1983, in Los Angeles, California. Since 1998, the band has consisted of founding members Anthony Kiedis (vocals) and Michael \"Flea\" Balzary (bass) along with longtime members John Frusciante (guitar) and Chad Smith (drums).\r\n\r\nThe band initially formed for a once-off support act for a friend\'s band, calling themselves Tony Flow And The Miraculously Majestic Masters Of Mayhem. Upon renaming themselves Red Hot Chili Peppers, they played a handful of small club venues in Los Angeles in 1983, before they were signed to EMI Records.\r\n', 1, 'Anthony Kiedis, Flea, Chad Smith, Josh Klinghoffer', '2020-07-02 23:30:00', 'red-hot-chillipeppers.jpg', 72, 100, 5, 'Can\'t stop the gods from engineering, feel no need for any interfering.', 'Flea & Anthony', 0, 'FmrGz8qSyrk'),
(2, 'Arctic Monkeys', 'Cool Monkeys from Artic Sound', 'Arctic Monkeys are an indie rock band from High Green, a suburb of Sheffield, England. The band\'s northern roots are a key element of their music, while their sound and lyrics - often social commentaries - have been compared to The Jam, Pulp and The Streets. Each of the band\'s first five singles I Bet You Look Good on the Dancefloor, When the Sun Goes Down, Leave Before the Lights Come On, Brianstorm and Fluorescent Adolescent hit the UK Top Five, with a sixth Teddy Picker going Top 20. Their debut single, I Bet You Look Good on the Dancefloor, and the follow up When the Sun Goes Down, went straight to number one in the UK Top 40 Singles Chart.\r\n\r\nThe band consists of lead vocalist/guitarist Alex Turner, lead guitarist/backing vocalist Jamie Cook, bassist Nick O\'Malley (a replacement for original bassist Andy Nicholson who left in May 2006) and drummer/backing vocalist Matt Helders.\r\n\r\nThe band\'s rise to success started in late 2004/early 2005 when demo songs which had been handed out in CD form at gigs found their way onto the internet. These demos rapidly spread among message boards and friends leading to a growing fan base for the band, and were collected on the unofficial Beneath the Boardwalk, which the band recognizes on their website. The band owe much of their success to viral buzz via the Internet, and have eschewed typical \'commercial\' channels, including refusing to appear on the U K\'s (now discontinued) Top Of The Pops music program, which was often seen as a gateway to success.\r\n\r\nThe band\'s debut album, Whatever People Say I Am, That\'s What I\'m Not, holds the record for the largest first week sales of a debut album in the UK (in its first week, it sold more than the rest of the Top 20 albums combined).\r\n\r\nOn 19th June 2006 the band officially announced that founding member Andy Nicholson had left the band after missing the American leg of their tour due to \'fatigue\' and the other band members couldn\'t stand the constant \'missing his girlfriend syndrome\' so told him to sling his hook. Former Dodgems bassist, Nick O\'Malley was initially brought in as a stand-in, and played the band\'s remaining summer commitments. He was then announced as Nicholson\'s permanent replacement.\r\n\r\nThe single Leave Before The Lights Come On came out on August 14th, but only reached Number 4 on the UK charts, denying the band a third consecutive number 1 single.\r\n\r\nTheir debut album \"Whatever People Say I Am, That\'s What I\'m Not\" won the 2006 Mercury Prize, was chosen as the best album of year 2006 by Q Magazine, and received a slew of other accolades.\r\n\r\nTheir second album \"Favourite Worst Nightmare\" was released on April 23rd 2007. It was preceded by \"Brianstorm\", the first single from the album, which was released a week before. Like its predecessor, \"Favourite Worst Nightmare\" sold more than the rest of the Top 20 combined, and - due to an error on iTunes - every song on the record appeared on the UK Top 200 Singles the next week.\r\n\r\nWhen asked about Favourite Worst Nightmare Alex Turner commented, \"We haven\'t changed that much. It\'s still about making contact with girls or not making contact with girls\".\r\n\r\nLead singer/songwriter Alex Turner started a two-man project with the singer from the Rascals, Miles Kane.\r\nThe band is called \'The Last Shadow Puppets\'', 3, 'Jamie Cook, Matt Helders, Nick O\'Malley, Alex Turner', '2020-08-03 20:00:00', 'arctic-monkeys.jpg', 10, 100, 10, 'What came first the chicken or the dickhead?', 'We R Monkeys', 0, 'vq7ZT53Gj4A'),
(3, 'Nine Inch Nails', 'Live from North Music Festival in Portugal', 'Nine Inch Nails is an industrial rock band, founded in 1988 by Trent Reznor in Cleveland, Ohio, United States. Reznor was the only official member of the band Nine Inch Nails and remained responsible alone for his musical direction, being the main producer, singer, songwriter and multi-instrumentalist.', 1, 'Ilan Rubin, Robin Finck, Trent Reznor, Alessandro Cortini', '2020-06-12 22:00:00', 'nine-inch-nails.jpg', 201, 200, 8, 'Everything is blue in this world, even my balls.', 'Trent Reznor', 0, 'LBC3NXnN8y4'),
(4, 'Pearl Jam', 'Pearl Jam was inducted into the Rock and Roll Hall of Fame on April 7, 2017', '2018 officially marks 28 years of Pearl Jam performing live. Ten studio albums, hundreds of unique live performances and hundreds of official live concert bootleg releases later, the band continue to be critically acclaimed and commercially successful -- with over 85 million albums sold worldwide.\r\n\r\nPearl Jam released their Grammy Award-winning tenth studio album, Lightning Bolt, through Monkeywrench Records/Republic Records on October 15, 2013. Lightning Bolt debuted at #1 on the Billboard Top 200 chart as well as #1 on iTunes in over 50 countries and is available now at www.pearljam.com via iTunes and all major retailers.\r\n\r\nPearl Jam was inducted into the Rock and Roll Hall of Fame on April 7, 2017.', 1, 'Eddie Vedder, Stone Gossard, Mike McCready, Matt Cameron, Jeff Ament', '2020-07-15 22:30:00', 'pearl-jam.jpg', 1092, 1000, 5, 'I know I was born and I know that I\'ll die... The in between is mine. I Am Mine', 'Eddie ', 1, 'PUYNoI0ZqBI'),
(5, 'Foo Fighters', 'Live from the roof of Taylor\'s House in Birmania. It\'s true!! Well... kinda.', 'Foo Fighters, is a rock band from the United States formed by ex-Nirvana Dave Grohl and Pat Smear in 1994. Their name is a reference to the term \"foo fighter\", used by aviators in World War II to describe mysterious aerial phenomena, considered UFOs.', 1, 'Dave Grohl, Pat Smear, Nate Mendel, Chris Shiflett, Taylor Hawkins', '2020-06-15 23:00:00', 'foo-fighters.jpg', 1692, 2000, 10, 'TV talent shows make everyone sound like fucking Christina Aguilera.', 'Dave', 0, '1kVL6G8bcbA'),
(6, 'Queens of the Stone Age', 'New album \'Villains\' coming live just for you... if you pay the ticket', 'Queens of the Stone Age is an American rock band formed in Palm Desert, California in 1996. It is well known for popularizing the stoner rock genre that until the 2000s was not well known.', 1, 'Jon Theodore, Joshua Homme, Dean Fertita, Michael Shuman, Troy Van Leeuwen', '2020-06-27 22:39:33', 'queens-of-the-stone-age.jpg', 876, 1300, 1, 'Making people uncomfortable is one of my hobbies. I\'m always hoping that half the people get the joke and the other half are the joke.', 'Josh', 1, 'H4HH5cBEmkU'),
(7, 'Tool', 'Join The Tool Army for 2 hours of live metal', 'There are 3 artists with the name Tool:\r\n1. A popular American progressive rock/metal band formed in 1990\r\n2. An alias of techno producer Thomas Büttner\r\n3. An alias of trance musicians Oliver Gerth and Thomas Wilmering\r\n\r\n1. Formed around 1990 in Los Angeles, California, United States, Tool is a band that is most noted for combining hard rock with a wide variety of progressive structures, irregular time signatures and lyrics that range from anger to philosophical and social matters. After performing a handful of shows in the Los Angeles area and up the West Coast, they toured in the United States with Rollins Band in the summer of 1992 in support of their EP Opiate. Their first full length recording, Undertow, was released in 1993.\r\n\r\nEmerging with a groovy heavy metal sound on their first release, when the genre was dominated by thrash metal, they were later seen at the top of the alternative metal movement with the release of their second full-length studio album Ænima in 1996, the first recording the band made after original bassist Paul d\'Amour left the band to form Lusk. After an ongoing evolution of their sound and continuous efforts to unify musical experimentation, visual arts, and a message of personal evolution on Lateralus (2001), their most recent album 10,000 Days (2006), as well as respective tours, they are generally described as a style-transgressing act and part of progressive and art rock.\r\n\r\nTheir aspirational work features exceptionally long or complex releases, controversial lyrics and cover art, and unorthodox music videos, which results in a rather ambivalent relationship between the band and today\'s music industry, at times marked by censorship, and the band\'s ongoing struggle for privacy.\r\n\r\nNevertheless, Tool receive critical acclaim, have won Grammy Awards, perform worldwide tours, and produce albums that top the charts in several countries. Between album releases, the band takes extended breaks that allow for collaboration with other artists to design award-winning album packaging, elaborate light shows and involvement in notable side-projects.\r\n\r\nCurrently the band consists of:\r\n\r\nDanny Carey (Drums)\r\nJustin Chancellor (Bass)\r\nAdam Jones (Guitar)\r\nMaynard James Keenan (Vocals)\r\n\r\nThey currently have 6 major releases:\r\nOpiate (1992)\r\nUndertow (1993)\r\nÆnima (1996)\r\nSalival (Live) (2000)\r\nLateralus (2001)\r\n10,000 Days (2006).\r\n\r\n2. German techno producer Thomas Büttner used the name Tool on a number of techno releases from 1994 onwards.\r\n\r\n3. Oliver Gerth & Thomas Wilmering released two trance tracks in 2002 using the name Tool.', 2, 'Adam Jones, Maynard James Keenan, Danny Carey, Justin Chancellor', '2020-08-01 22:42:16', 'tool.jpg', 8000, 10000, 10, 'Choices always were a problem for you, what you need is someone strong to guide you...like me.', 'Tool', 1, '94kyYx1-CQ0'),
(8, 'Deftones', 'Frontman Chino Moreno\'s will break your screen and enter in your home', 'Deftones is a platinum selling, Grammy award winning alternative rock/metal band from Sacramento, California formed in 1988.\r\n\r\nFrontman Chino Moreno\'s poetic lyrics—described by a Time magazine critic as \"fiercely intelligent\"—are often evocative, yet are sparse enough to allow for multiple interpretations. Moreno has cited Morrissey, Weezer\'s Rivers Cuomo, The Cure\'s Robert Smith, and Depeche Mode\'s Dave Gahan among his favorite singers, and beyond an occasional similarity in vocal technique, these singers\' sweeping sense of drama and delicate vulnerability is often evident in Moreno\'s vocals and has often been likened to that of Daryl Palumbo(glassjaw).\r\n\r\nDeftones members have worked on several side projects, including Moreno\'s Team Sleep and drummer Abe Cunningam\'s Phallucy. Guitarist Stephen Carpenter works with a group called Kush, featuring members of Fear Factory and Cypress Hill. Turntablist Frank Delgado has a DJ crew with DJ Crook of Team Sleep, DJ Julez and Matt D called Decibel Devils.\r\n\r\n* Chino Moreno (vocals, guitar)\r\n* Stephen Carpenter (guitar)\r\n* Abe Cunningham (drums)\r\n* Chi Cheng (bass, backing vocals)\r\n* Frank Delgado (turntablist/keyboardist/sampler)\r\n\r\n(Incidentally, Carpenter is generally credited with \"strings\", though if he actually plays anything other than electric guitar it\'s not immediately apparent.)\r\n\r\nReleases:\r\n\r\n1992 - like linus (demo)\r\n1995 - Adrenaline\r\n1996 - Around the Fur\r\n2000 - White Pony\r\n2002 - Music in High Places: Deftones - Live In Hawaii (DVD)\r\n2002 - Back to School (Mini Maggit) (EP)\r\n2003 - Deftones\r\n2005 - B-Sides & Rarities (with accompanying DVD video library and live footage)\r\n2006 - Saturday Night Wrist\r\n2008 ( to be expected ) - Eros\r\n\r\nAlbum Around the Fur (1997) features Soulfly\'s Max Cavalera on Headup.\r\nAlbum White Pony (2000) features Tool\'s Maynard James Keenan on Passenger.\r\nAlso on Album White Pony (2000) features STP\'s Scott Weiland on RX Queen.\r\nAlbum Saturday Night Wrist (2006) features System of a Down\'s Serj Tankian on Mein.', 2, 'Chino Moreno - Vocals, Stephen Carpenter – Guitar, Frank Delgado – Samples, Abe Cunningham – Drums, Sergio Vega - Bass, Chi Cheng - Bass', '2020-07-02 20:00:00', 'deftones.jpg', 201, 1000, 1, 'I hate all of my friends. They all lack taste sometimes. There\'s a hole in the earth. I\'m out.', 'Chino', 0, 'Q2sxLnK7eT8'),
(9, 'The Kills', 'Are you ready for good rock n\' roll with Alison?', 'The Kills are an indie/garage rock duo formed by American vocalist Alison \"VV\" Mosshart and British guitarist Jamie \"Hotel\" Hince that rose to public recognition at the dawn of the hype surrounding the \"garage rock\" and \"indie rock\" explosion of the early 2000s. Mosshart had been in the Florida punk band Discount and Hince in British rock band Scarfo. When these groups disbanded, the duo, who first met when Mosshart heard Hince practicing in the hotel room above hers, struck up a songwriting partnership. For months, the pair air mailed work tapes across the Atlantic; after this proved to test the patience of both artists, as it took days or weeks to get each others tapes, Mosshart upped sticks from her Florida home to fly to London.\r\n\r\nWanting to cut themselves off from their pasts, Mosshart and Hince considered their new project to be Year Zero in their careers, so they renamed themselves VV and Hotel respectively and began writing sparse, minimalist songs together with the aid of a drum machine. In 2001 they showcased their new songs on a well received demo tape. In true punk rock fashion, however, the pair shunned approaches from major record labels. Recording as VV and Hotel, they contributed the song \"Restaurant Blouse\" to the compilation If the Twenty-First Century Did Not Exist, It Would Be Necessary to Invent It. Shortly after this they recorded their debut release, the Black Rooster EP, which saw release on British indie label Domino Records and was picked up for distribution by Dim Mak Records in the United States.\r\n\r\nFollowing international touring, they entered Toe Rag studios, where the White Stripes had recorded their album Elephant, to record their debut album Keep on Your Mean Side, mostly on 8-track, in just 2 weeks.\r\n\r\nTheir second album, No Wow, was released by Domino records on 21 February 2005. Featuring an artier, less guitar rock sound, the record embraced New Wave and post punk influences and sounded even more stripped down than Keep on Your Mean Side.\r\n\r\nThe first single, The Good Ones, from No Wow, was released on 7 February 2005 and reached number 23 in the UK singles charts. VV sang the song \'Meds\' together with Brian Molko on the last Placebo album.', 1, 'Alison Mosshart, Jamie Hince', '2020-06-25 22:45:00', 'the-kills.jpg', 1029, 2000, 1, 'There are so many lies written about us... I go to psychics, apparently. I buy Faberge eggs. I\'m always making a record with my girlfriend.', 'Alison', 0, '1NzxR-52q3E'),
(10, 'The National', 'The National invite some friends to play great covers for you', 'The National are some friends and two pairs of brothers from Cincinnati, Ohio, who started making music in 1999 when they found themselves living near one another again in Carroll Gardens, Brooklyn. Matt Berninger sings because he\'s taller, blonder, and older than the rest - Aaron Dessner, Bryce Dessner and Scott Devendorf play guitar and bass, while Bryan Devendorf drums. Padma Newsome, who\'s from Australia, has become a fairly permanent fixture too, and plays keyboards and violins and other stranger things.\r\n\r\nThey weren\'t looking to take over the world with a demo and matching outfits. Rather, music was their way of letting off steam from those good jobs. Records are what they talked about when they went out drinking together, when they ate together, when they played wiffle ball in the summertime. Simply put, songwriting allowed The National to deepen their conversations. It\'s how they broached the topics they really wanted to talk about -- how they were past the halfway mark between twenty and thirty and speeding toward a kind of permanence they never expected; how they pleased and disappointed their mothers and fathers; how flings had become girlfriends, and girlfriends, wives.\r\n\r\nTheir self-titled debut album \"The National\" (Brassland 2001) was recorded and released before they had played even a single show, before the music spilled far from their heads. They cut the album with engineer Nick Lloyd and formed a label with writer Alec Bemis, so those recordings could be released. Not much really happened, except for the UK\'s Kerrang magazine unexpectedly giving it four Ks, calling it \"the stuff underground legends are made of\"...\r\n\r\nThe National made a second album, \"Sad Songs for Dirty Lovers\" (Brassland/Talitres 2003). The staff was the same, though Peter Katis, who produced both Interpol records, helped produce and mix, and Australian composer Padma Newsome from Clogs collaborated on arrangements and strings. Rolling Stone and many other magazines noticed this one, and when it made its way to Europe, magazines the band had never heard of began saying it was one of the year\'s best.\r\n\r\nFollowing the first session of several for Bernard Lenoir on France\'s Radio Inter, an in-between EP was released, Cherry Tree, containing what would become the blueprint for the sound on their next record and the session of Sad Song\'s standout Murder Me Rachael. After these accolades and being completlely blown away by their live show, Roger Trust signed them to Beggars Banquet.\r\n\r\nA show at their favorite bar became a van ride to neighboring cities, became a plane ride to Europe, became two summers overseas. Their ties to those good jobs slackened. And they continue on their own path, moving out even further out in Brooklyn to Ditmas Park, where there is space and familiar suburban streets and even Geese on Beverly Road. Their new album, \"Alligator\", much of which was recorded at their homes in Ditmas Park, was engineered by Paul Mahajan, who has worked with the Yeah Yeah Yeahs and TV on the Radio. Padma Newsome camped out for a month with the band, and Peter Katis added more production and mixed the record at his house in Bridgeport, Connecticut.\r\n\r\nBerninger\'s potent baritone still intones about matters fraught and funny and sad; about record collections, missing persons and medium-sized American hearts. But the record\'s not simply gothic or miserablist -- more like the plays of Tennessee Williams, it\'s full of peculiar intimacies and awkward grace. Alligator\'s heroes are reckless and possessed seducers, but they are apologetic ones. In The National\'s imaginings, in songs alternately lush and spare, there is something twighlit and dreamy worked out in the basement of our brains.\r\n\r\n\'Abel\', \'Secret Meeting\' and \'Lit Up\' were released as singles.\r\n\r\nOn May 22nd, 2007, The National released their follow-up to Alligator, Boxer, on Beggars Banquet. Taking advantage of the fact that no-one had heard their first album and earliest demos, Matt proceeded to steal lyrics and melodies from them and give them the attention they deserved while keeping the intimacy that made them special. They even managed to convince new friend Sufjan Stevens to lay down some piano tracks for them, and recorded the album in a scant 6 months after coming off the long post-Alligator road. Peter Katis was again at the helm and Bryan\'s drumming is particurlarly punchy this time around.\r\n\r\nThus far, \'Mistaken for Strangers\' and \'Apartment Story\' have been released as singles. The band have just finished touring North America and are on a large European autumn/winter tour after playing high slots at several large festivals. In their Dec. 07/Jan. 08 issue, Paste magazine named Boxer best record of 2007.\r\n', 3, 'Scott Devendorf, Aaron Dessner, Bryce Dessner, Matt Berninger, Bryan Devendorf', '2020-08-11 22:00:00', 'the-national.jpg', 102, 600, 2, 'It\'s a terrible love and I\'m walking with spiders', 'The National', 0, '6LuKRBaUQ1k');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `gender`) VALUES
(1, 'Rock'),
(2, 'Metal'),
(3, 'Alternative'),
(4, 'Electronic');

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL,
  `concert_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `concert_id`, `price`, `description`) VALUES
(1, 1, 5, 'See live concert on Vimeo'),
(2, 1, 10, 'See live concert and encore'),
(3, 1, 50, 'See concert, encore and participate on a live chat with the band before concert'),
(4, 1, 12, 'See concert plus encore and recieve a video recording in HD'),
(5, 2, 1, 'See live concert on Vimeo'),
(6, 2, 5, 'See live concert and encore'),
(7, 2, 10, 'See concert plus encore and recieve a video recording in HD'),
(8, 2, 20, 'See concert, encore and participate on a live chat with the band before concert'),
(9, 3, 10, 'See live concert on Vimeo'),
(10, 3, 15, 'See live concert and encore'),
(11, 3, 20, 'See concert plus encore and recieve a video recording in HD'),
(12, 3, 50, 'See concert, encore and participate on a live chat with the band before concert'),
(13, 4, 5, 'See live concert on Vimeo'),
(14, 4, 6, 'See live concert and encore'),
(15, 4, 20, 'See concert, encore and participate on a live chat with the band before concert'),
(16, 4, 21, 'See concert plus encore and recieve a video recording in HD'),
(17, 4, 50, 'Have a virtual snack with Eddie and the band'),
(18, 5, 5, 'See live concert on Vimeo'),
(19, 5, 6, 'See live concert and encore'),
(20, 5, 20, 'See concert, encore and participate on a live chat with the band before concert'),
(21, 5, 25, 'See concert plus encore and recieve a video recording in HD'),
(22, 6, 10, 'See live concert on Vimeo'),
(23, 6, 12, 'See live concert and encore'),
(28, 6, 25, 'See concert plus encore and recieve a video recording in HD'),
(29, 7, 10, 'See live concert on Vimeo'),
(30, 7, 15, 'See live concert and encore'),
(31, 7, 17, 'See concert plus encore and recieve a video recording in HD'),
(32, 8, 1, 'See live concert on Vimeo'),
(33, 8, 2, 'See live concert and encore'),
(34, 9, 5, 'See live concert on Vimeo'),
(35, 9, 6, 'See live concert and encore'),
(36, 9, 20, 'See concert, encore and participate on a live chat with the band before concert'),
(37, 9, 21, 'See concert plus encore and recieve a video recording in HD'),
(38, 10, 2, 'See live concert on Vimeo'),
(39, 10, 5, 'See live concert and encore'),
(40, 10, 30, 'See concert, encore and participate on a live chat with the band before concert'),
(41, 10, 35, 'See concert plus encore and recieve a video recording in HD');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `concert_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `buy_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `concert_id`, `quantity`, `price`, `name`, `email`, `buy_date`) VALUES
(3, 3, 1, 50, 'b', 'bruno.m.lobato@gmail.com', '2020-06-07 18:09:15'),
(4, 1, 1, 12, '@bo', 'bruno.m.lobato@gmail.com', '2020-06-07 18:11:21'),
(5, 2, 1, 10, 'bruno', 'bruno.m.lobato@gmail.com', '2020-06-07 18:12:00'),
(6, 2, 1, 10, 'test', 'bruno.m.lobato@gmail.com', '2020-06-07 18:13:18'),
(7, 2, 1, 10, 'teste', 'bruno.m.lobato@gmail.com', '2020-06-07 18:13:51'),
(8, 1, 1, 12, 'wolf', 'bruno.m.lobato@gmail.com', '2020-06-07 18:14:55'),
(9, 3, 1, 50, 'trent', 'bruno.m.lobato@gmail.com', '2020-06-07 19:08:16'),
(10, 9, 1, 21, 'wolf', 'wolf@moon.com', '2020-06-08 00:37:05'),
(11, 5, 1, 5, 'Dave Ghrol', 'dave@foo.com', '2020-06-08 01:11:04'),
(12, 3, 1, 10, 'Ricardo', 'ric@hut.pt', '2020-06-08 16:16:34'),
(13, 3, 1, 10, 'cabron', 'cabron@quecabron.mx', '2020-06-10 14:25:03'),
(14, 5, 1, 20, 'teste', 'bruno.m.lobato@gmail.com', '2020-06-10 18:46:49'),
(15, 5, 1, 20, 'blarh', 'bruno.m.lobato@gmail.com', '2020-06-10 20:09:54'),
(16, 5, 1, 20, 'skara', 'bruno.m.lobato@gmail.com', '2020-06-10 20:10:23'),
(17, 5, 1, 20, 'stupidIdiot', 'bruno.m.lobato@gmail.com', '2020-06-10 20:12:28'),
(18, 6, 1, 25, 'flacamole', 'bruno.m.lobato@gmail.com', '2020-06-10 20:14:00'),
(19, 8, 1, 2, 'badjoras', 'bruno.m.lobato@gmail.com', '2020-06-10 20:14:39'),
(20, 8, 11, 22, 'blaster', 'bruno.m.lobato@gmail.com', '2020-06-10 20:20:04'),
(21, 7, 1, 17, 'darth', 'bruno.m.lobato@gmail.com', '2020-06-10 20:24:02'),
(22, 4, 1, 6, 'test', 'bruno.m.lobato@gmail.com', '2020-06-11 10:32:20'),
(23, 3, 5, 250, 'Monkey', 'monkey@banana.com', '2020-06-11 16:00:27'),
(24, 7, 3, 30, 'Natasha', 'skarakosca@gmail.com', '2020-06-11 17:04:48'),
(25, 6, 1, 10, 'Freddy', 'bruno.m.lobato@gmail.com', '2020-06-11 17:44:32'),
(26, 3, 1, 15, 'underwolf', 'bruno.m.lobato@gmail.com', '2020-06-11 19:05:20'),
(27, 3, 1, 15, 'devwolf', 'bruno.m.lobato@gmail.com', '2020-06-11 19:07:06'),
(28, 5, 1, 25, 'Wolf', 'bruno.m.lobato@gmail.com', '2020-06-11 19:33:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

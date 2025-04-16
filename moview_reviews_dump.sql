-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: movie-db.cbykq4u6in67.us-east-2.rds.amazonaws.com    Database: movie_reviews
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Matrix','Sci-Fi',1999,'A hacker discovers reality is a simulation.'),(2,'Inception','Action',2010,'A thief steals corporate secrets through dreams.'),(3,'The Shawshank Redemption','Drama',1994,'Frank Darabont'),(4,'The Godfather','Drama | Crime',1972,'Francis Ford Coppola'),(5,'The Godfather: Part II','Drama | Crime',1974,'Francis Ford Coppola'),(6,'The Dark Knight','Drama | Action | Thriller | Crime',2008,'Christopher Nolan'),(7,'12 Angry Men','Drama',1957,'Sidney Lumet'),(8,'Schindler\'s List','Drama | Biography | History',1993,'Steven Spielberg'),(9,'The Lord of the Rings: The Return of the King','Drama | Adventure | Fantasy | Action',2003,'Peter Jackson'),(10,'Pulp Fiction','Drama | Crime',1994,'Quentin Tarantino'),(11,'Il buono, il brutto, il cattivo','Western',1966,'Sergio Leone'),(12,'Fight Club','Drama',1999,'David Fincher'),(13,'The Lord of the Rings: The Fellowship of the Ring','Drama | Fantasy | Adventure',2001,'Peter Jackson'),(14,'Forrest Gump','Drama | Romance',1994,'Robert Zemeckis'),(15,'Star Wars: Episode V - The Empire Strikes Back','Adventure | Fantasy | Action',1980,'Irvin Kershner'),(16,'Inception','Adventure | Action | Thriller',2010,'Christopher Nolan'),(17,'The Lord of the Rings: The Two Towers','Drama | Fantasy | Adventure',2002,'Peter Jackson'),(18,'One Flew Over the Cuckoo\'s Nest','Drama',1975,'Milos Forman'),(19,'Goodfellas','Drama | Crime',1990,'Martin Scorsese'),(20,'The Matrix','Action',1999,'Lana Wachowski'),(21,'Shichinin no samurai','Drama | Adventure',1954,'Akira Kurosawa'),(22,'Cidade de Deus','Drama | Crime',2002,'Fernando Meirelles'),(23,'Se7en','Drama | Thriller | Mystery | Crime',1995,'David Fincher'),(24,'Star Wars','Adventure | Fantasy | Action',1977,'George Lucas'),(25,'The Silence of the Lambs','Drama | Thriller | Crime',1991,'Jonathan Demme'),(26,'It\'s a Wonderful Life','Drama | Fantasy | Family',1946,'Frank Capra'),(27,'La vita è bella','War | Drama | Comedy | Romance',1997,'Roberto Benigni'),(28,'The Usual Suspects','Thriller | Mystery | Crime',1995,'Bryan Singer'),(29,'Sen to Chihiro no kamikakushi','Adventure | Animation | Mystery | Family | Fantasy',2001,'Hayao Miyazaki'),(30,'Saving Private Ryan','Drama | War',1998,'Steven Spielberg'),(31,'Léon','Drama | Thriller | Crime',1994,'Luc Besson'),(32,'Spider-Man: Into the Spider-Verse','Comedy | Adventure | Animation | Family | Action',2018,'Bob Persichetti'),(33,'The Green Mile','Drama | Fantasy | Mystery | Crime',1999,'Frank Darabont'),(34,'Interstellar','Drama | Adventure',2014,'Christopher Nolan'),(35,'Psycho','Thriller | Horror | Mystery',1960,'Alfred Hitchcock'),(36,'American History X','Drama',1998,'Tony Kaye'),(37,'City Lights','Drama | Comedy | Romance',1931,'Charles Chaplin'),(38,'C\'era una volta il West','Western',1968,'Sergio Leone'),(39,'Casablanca','War | Drama | Romance',1942,'Michael Curtiz'),(40,'Modern Times','Drama | Comedy | Romance | Family',1936,'Charles Chaplin'),(41,'The Pianist','Drama | Biography | War | Music',2002,'Roman Polanski'),(42,'Intouchables','Drama | Biography | Comedy',2011,'Olivier Nakache'),(43,'The Departed','Drama | Thriller | Crime',2006,'Martin Scorsese'),(44,'Terminator 2: Judgment Day','Action',1991,'James Cameron'),(45,'Back to the Future','Comedy | Adventure',1985,'Robert Zemeckis'),(46,'Whiplash','Drama | Music',2014,'Damien Chazelle'),(47,'Rear Window','Thriller | Mystery',1954,'Alfred Hitchcock'),(48,'Raiders of the Lost Ark','Adventure | Action',1981,'Steven Spielberg'),(49,'The Lion King','Adventure | Animation | Family | Drama | Musical',1994,'Roger Allers'),(50,'Gladiator','Drama | Adventure | Action',2000,'Ridley Scott'),(51,'The Prestige','Drama | Thriller | Mystery',2006,'Christopher Nolan'),(52,'Apocalypse Now','Drama | War',1979,'Francis Ford Coppola'),(53,'Memento','Thriller | Mystery',2000,'Christopher Nolan'),(54,'Alien','Horror',1979,'Ridley Scott'),(55,'The Great Dictator','Drama | Comedy | War',1940,'Charles Chaplin'),(56,'Nuovo Cinema Paradiso','Drama',1988,'Giuseppe Tornatore'),(57,'Hotaru no haka','War | Drama | Animation',1988,'Isao Takahata'),(58,'Avengers: Infinity War','Adventure | Fantasy | Action',2018,'Anthony Russo'),(59,'Sunset Blvd.','Drama',1950,'Billy Wilder'),(60,'Das Leben der Anderen','Drama | Thriller',2006,'Florian Henckel von Donnersmarck'),(61,'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb','Comedy',1964,'Stanley Kubrick'),(62,'Paths of Glory','Drama | War',1957,'Stanley Kubrick'),(63,'The Shining','Drama | Horror',1980,'Stanley Kubrick'),(64,'Django Unchained','Drama | Western',2012,'Quentin Tarantino'),(65,'WALL·E','Adventure | Animation | Family',2008,'Andrew Stanton'),(66,'Mononoke-hime','Adventure | Fantasy | Animation',1997,'Hayao Miyazaki'),(67,'Witness for the Prosecution','Drama | Thriller | Mystery | Crime',1957,'Billy Wilder'),(68,'American Beauty','Drama',1999,'Sam Mendes'),(69,'The Dark Knight Rises','Action | Thriller',2012,'Christopher Nolan'),(70,'Oldeuboi','Thriller | Drama | Action | Mystery',2003,'Chan-wook Park'),(71,'Aliens','Adventure | Action | Thriller',1986,'James Cameron'),(72,'Once Upon a Time in America','Drama | Crime',1984,'Sergio Leone'),(73,'Coco','Comedy | Adventure | Animation | Family | Mystery | Music | Fantasy',2017,'Lee Unkrich'),(74,'Das Boot','War | Drama | Adventure | Thriller',1981,'Wolfgang Petersen'),(75,'Citizen Kane','Drama | Mystery',1941,'Orson Welles'),(76,'Braveheart','Drama | Biography | War | History',1995,'Mel Gibson'),(77,'Vertigo','Thriller | Romance | Mystery',1958,'Alfred Hitchcock'),(78,'North by Northwest','Thriller | Adventure | Mystery',1959,'Alfred Hitchcock'),(79,'Reservoir Dogs','Drama | Thriller | Crime',1992,'Quentin Tarantino'),(80,'Star Wars: Episode VI - Return of the Jedi','Adventure | Fantasy | Action',1983,'Richard Marquand'),(81,'M - Eine Stadt sucht einen Mörder','Thriller | Mystery | Crime',1931,'Fritz Lang'),(82,'Kimi no na wa.','Drama | Romance | Fantasy | Animation',2016,'Makoto Shinkai'),(83,'Amadeus','Drama | Biography | History | Music',1984,'Milos Forman'),(84,'Requiem for a Dream','Drama',2000,'Darren Aronofsky'),(85,'Dangal','Drama | Biography | Action | Sport',2016,'Nitesh Tiwari'),(86,'Taare Zameen Par','Drama | Family',2007,'Aamir Khan'),(87,'Lawrence of Arabia','Biography | Adventure | Drama | War | History',1962,'David Lean'),(88,'Eternal Sunshine of the Spotless Mind','Drama | Romance',2004,'Michel Gondry'),(89,'A Clockwork Orange','Drama | Crime',1971,'Stanley Kubrick'),(90,'3 Idiots','Drama | Comedy',2009,'Rajkumar Hirani'),(91,'2001: A Space Odyssey','Adventure',1968,'Stanley Kubrick'),(92,'Le fabuleux destin d\'Amélie Poulain','Comedy | Romance',2001,'Jean-Pierre Jeunet'),(93,'Toy Story','Comedy | Adventure | Animation | Family | Fantasy',1995,'John Lasseter'),(94,'Double Indemnity','Drama | Thriller | Mystery | Crime',1944,'Billy Wilder'),(95,'Taxi Driver','Drama | Crime',1976,'Martin Scorsese'),(96,'Singin\' in the Rain','Comedy | Romance | Musical',1952,'Stanley Donen'),(97,'Inglourious Basterds','War | Drama | Adventure',2009,'Quentin Tarantino'),(98,'Full Metal Jacket','Drama | War',1987,'Stanley Kubrick'),(99,'To Kill a Mockingbird','Drama | Crime',1962,'Robert Mulligan'),(100,'Ladri di biciclette','Drama',1948,'Vittorio De Sica'),(101,'The Kid','Drama | Comedy | Family',1921,'Charles Chaplin'),(102,'The Sting','Drama | Comedy | Crime',1973,'George Roy Hill'),(103,'Good Will Hunting','Drama | Romance',1997,'Gus Van Sant'),(104,'Toy Story 3','Comedy | Adventure | Animation | Family | Fantasy',2010,'Lee Unkrich'),(105,'Jagten','Drama',2012,'Thomas Vinterberg'),(106,'Snatch','Comedy | Crime',2000,'Guy Ritchie'),(107,'Scarface','Drama | Crime',1983,'Brian De Palma'),(108,'Monty Python and the Holy Grail','Comedy | Adventure | Fantasy',1975,'Terry Gilliam'),(109,'Per qualche dollaro in più','Western',1965,'Sergio Leone'),(110,'L.A. Confidential','Drama | Thriller | Mystery | Crime',1997,'Curtis Hanson'),(111,'The Apartment','Drama | Comedy | Romance',1960,'Billy Wilder'),(112,'Metropolis','Drama',1927,'Fritz Lang'),(113,'Jodaeiye Nader az Simin','Drama',2011,'Asghar Farhadi'),(114,'Indiana Jones and the Last Crusade','Adventure | Fantasy | Action',1989,'Steven Spielberg'),(115,'Rashômon','Drama | Mystery | Crime',1950,'Akira Kurosawa'),(116,'Up','Adventure | Comedy | Animation | Family',2009,'Pete Docter'),(117,'All About Eve','Drama',1950,'Joseph L. Mankiewicz'),(118,'Batman Begins','Adventure | Action | Thriller',2005,'Christopher Nolan'),(119,'Yôjinbô','Drama | Action | Thriller',1961,'Akira Kurosawa'),(120,'Some Like It Hot','Comedy | Romance',1959,'Billy Wilder'),(121,'Unforgiven','Drama | Western',1992,'Clint Eastwood'),(122,'Der Untergang','Drama | Biography | War | History',2004,'Oliver Hirschbiegel'),(123,'Die Hard','Action | Thriller',1988,'John McTiernan'),(124,'The Treasure of the Sierra Madre','Drama | Western | Adventure',1948,'John Huston'),(125,'Heat','Drama | Thriller | Crime',1995,'Michael Mann'),(126,'Ikiru','Drama',1952,'Akira Kurosawa'),(127,'Incendies','Drama | War | Mystery',2010,'Denis Villeneuve'),(128,'Raging Bull','Drama | Biography | Sport',1980,'Martin Scorsese'),(129,'The Great Escape','Thriller | Adventure | Drama | War | History',1963,'John Sturges'),(130,'Bacheha-Ye aseman','Drama | Family',1997,'Majid Majidi'),(131,'El laberinto del fauno','Drama | Fantasy | War',2006,'Guillermo del Toro'),(132,'Babam ve Oglum','Drama | Family',2005,'Çagan Irmak'),(133,'Chinatown','Drama | Thriller | Mystery',1974,'Roman Polanski'),(134,'The Third Man','Thriller | Mystery',1949,'Carol Reed'),(135,'Bohemian Rhapsody','Drama | Biography | Music',2018,'Bryan Singer'),(136,'Tonari no Totoro','Fantasy | Animation | Family',1988,'Hayao Miyazaki'),(137,'Hauru no ugoku shiro','Adventure | Fantasy | Animation | Family',2004,'Hayao Miyazaki'),(138,'Ran','Drama | Action',1985,'Akira Kurosawa'),(139,'Judgment at Nuremberg','Drama | War',1961,'Stanley Kramer'),(140,'El secreto de sus ojos','Thriller | Drama | Romance | Mystery',2009,'Juan José Campanella'),(141,'The Gold Rush','Drama | Comedy | Adventure | Family',1925,'Charles Chaplin'),(142,'The Bridge on the River Kwai','War | Drama | Adventure',1957,'David Lean'),(143,'A Beautiful Mind','Drama | Biography',2001,'Ron Howard'),(144,'Lock, Stock and Two Smoking Barrels','Comedy | Crime',1998,'Guy Ritchie'),(145,'Casino','Drama | Crime',1995,'Martin Scorsese'),(146,'Three Billboards Outside Ebbing, Missouri','Drama | Comedy | Crime',2017,'Martin McDonagh'),(147,'On the Waterfront','Drama | Thriller | Crime',1954,'Elia Kazan'),(148,'Det sjunde inseglet','Drama | Fantasy',1957,'Ingmar Bergman'),(149,'Inside Out','Comedy | Adventure | Animation | Family | Drama | Fantasy',2015,'Pete Docter'),(150,'The Elephant Man','Drama | Biography',1980,'David Lynch'),(151,'Room','Drama | Thriller',2015,'Lenny Abrahamson'),(152,'The Wolf of Wall Street','Drama | Biography | Comedy | Crime',2013,'Martin Scorsese'),(153,'Mr. Smith Goes to Washington','Drama | Comedy',1939,'Frank Capra'),(154,'V for Vendetta','Drama | Action | Thriller',2005,'James McTeigue'),(155,'Warrior','Drama | Sport',2011,'Gavin O\'Connor'),(156,'Blade Runner','Thriller',1982,'Ridley Scott'),(157,'Dial M for Murder','Thriller | Crime',1954,'Alfred Hitchcock'),(158,'Smultronstället','Drama | Romance',1957,'Ingmar Bergman'),(159,'The General','Comedy | Adventure | Drama | Western | War | Action',1926,'Clyde Bruckman'),(160,'No Country for Old Men','Drama | Thriller | Crime',2007,'Ethan Coen'),(161,'Trainspotting','Drama',1996,'Danny Boyle'),(162,'There Will Be Blood','Drama',2007,'Paul Thomas Anderson'),(163,'The Sixth Sense','Drama | Thriller | Mystery',1999,'M. Night Shyamalan'),(164,'Gone with the Wind','War | Drama | Romance | History',1939,'Victor Fleming'),(165,'The Thing','Horror | Mystery',1982,'John Carpenter'),(166,'Fargo','Drama | Thriller | Crime',1996,'Joel Coen'),(167,'Gran Torino','Drama',2008,'Clint Eastwood'),(168,'Roma','Drama',2018,'Alfonso Cuarón'),(169,'The Deer Hunter','Drama | War',1978,'Michael Cimino'),(170,'Finding Nemo','Adventure | Comedy | Animation | Family',2003,'Andrew Stanton'),(171,'Idi i smotri','Drama | War',1985,'Elem Klimov'),(172,'The Big Lebowski','Comedy | Crime',1998,'Joel Coen'),(173,'Shutter Island','Thriller | Mystery',2010,'Martin Scorsese'),(174,'Sherlock Jr.','Romance | Comedy | Action',1924,'Buster Keaton'),(175,'Kill Bill: Vol. 1','Action | Thriller | Crime',2003,'Quentin Tarantino'),(176,'Cool Hand Luke','Drama | Crime',1967,'Stuart Rosenberg'),(177,'Rebecca','Thriller | Drama | Romance | Mystery',1940,'Alfred Hitchcock'),(178,'Tôkyô monogatari','Drama',1953,'Yasujirô Ozu'),(179,'Mary and Max','Drama | Comedy | Animation',2009,'Adam Elliot'),(180,'Hacksaw Ridge','Drama | Biography | War | History',2016,'Mel Gibson'),(181,'Gone Girl','Drama | Thriller | Mystery | Crime',2014,'David Fincher'),(182,'How to Train Your Dragon','Comedy | Adventure | Animation | Family | Fantasy | Action',2010,'Dean DeBlois'),(183,'Sunrise: A Song of Two Humans','Drama | Romance',1927,'F.W. Murnau'),(184,'Relatos salvajes','Drama | Comedy | Thriller',2014,'Damián Szifron'),(185,'Jurassic Park','Adventure | Thriller',1993,'Steven Spielberg'),(186,'Into the Wild','Drama | Biography | Adventure',2007,'Sean Penn'),(187,'Life of Brian','Comedy',1979,'Terry Jones'),(188,'In the Name of the Father','Drama | Biography',1993,'Jim Sheridan'),(189,'The Truman Show','Drama | Comedy',1998,'Peter Weir'),(190,'The Grand Budapest Hotel','Drama | Comedy | Adventure',2014,'Wes Anderson'),(191,'Platoon','Drama | War',1986,'Oliver Stone'),(192,'Stand by Me','Drama | Adventure',1986,'Rob Reiner'),(193,'It Happened One Night','Comedy | Romance',1934,'Frank Capra'),(194,'Eskiya','Drama | Thriller | Crime',1996,'Yavuz Turgul'),(195,'Network','Drama',1976,'Sidney Lumet'),(196,'Stalker','Drama',1979,'Andrei Tarkovsky'),(197,'Persona','Drama | Thriller',1966,'Ingmar Bergman'),(198,'Salinui chueok','Thriller | Mystery | Drama | Action | Crime',2003,'Joon-ho Bong'),(199,'Ben-Hur','Drama | Adventure | History',1959,'William Wyler'),(200,'Hotel Rwanda','Drama | Biography | War | History',2004,'Terry George'),(201,'12 Years a Slave','Drama | Biography | History',2013,'Steve McQueen'),(202,'Million Dollar Baby','Drama | Sport',2004,'Clint Eastwood'),(203,'La passion de Jeanne d\'Arc','Drama | Biography | History',1928,'Carl Theodor Dreyer'),(204,'Rush','Drama | Biography | Action | Sport',2013,'Ron Howard'),(205,'Andrey Rublev','Drama | Biography | History',1966,'Andrei Tarkovsky'),(206,'Le salaire de la peur','Drama | Adventure | Thriller',1953,'Henri-Georges Clouzot'),(207,'Before Sunrise','Drama | Romance',1995,'Richard Linklater'),(208,'Mad Max: Fury Road','Adventure | Action | Thriller',2015,'George Miller'),(209,'Les quatre cents coups','Drama | Crime',1959,'François Truffaut'),(210,'Prisoners','Drama | Thriller | Mystery | Crime',2013,'Denis Villeneuve'),(211,'Hachi: A Dog\'s Tale','Drama | Family',2009,'Lasse Hallström'),(212,'Spotlight','Drama | History | Crime',2015,'Tom McCarthy'),(213,'Logan','Drama | Action | Thriller',2017,'James Mangold'),(214,'Rang De Basanti','Drama | Comedy',2006,'Rakeysh Omprakash Mehra'),(215,'Amores perros','Drama | Thriller',2000,'Alejandro G. Iñárritu'),(216,'The Princess Bride','Romance | Fantasy | Adventure | Family',1987,'Rob Reiner'),(217,'Catch Me If You Can','Drama | Biography | Crime',2002,'Steven Spielberg'),(218,'Kaze no tani no Naushika','Adventure | Fantasy | Animation',1984,'Hayao Miyazaki'),(219,'Harry Potter and the Deathly Hallows: Part 2','Drama | Fantasy | Adventure | Mystery',2011,'David Yates'),(220,'Butch Cassidy and the Sundance Kid','Drama | Western | Biography | Crime',1969,'George Roy Hill'),(221,'Rocky','Drama | Sport',1976,'John G. Avildsen'),(222,'Barry Lyndon','War | Drama | Adventure | History',1975,'Stanley Kubrick'),(223,'Monsters, Inc.','Comedy | Adventure | Animation | Family | Fantasy',2001,'Pete Docter'),(224,'The Grapes of Wrath','Drama | History',1940,'John Ford'),(225,'The Maltese Falcon','Mystery',1941,'John Huston'),(226,'Dead Poets Society','Drama | Comedy',1989,'Peter Weir'),(227,'Donnie Darko','Drama | Thriller',2001,'Richard Kelly'),(228,'The Terminator','Action',1984,'James Cameron'),(229,'Gandhi','Drama | Biography | History',1982,'Richard Attenborough'),(230,'Les diaboliques','Thriller | Mystery | Drama | Horror | Crime',1955,'Henri-Georges Clouzot'),(231,'La haine','Drama | Crime',1995,'Mathieu Kassovitz'),(232,'Groundhog Day','Comedy | Romance | Fantasy',1993,'Harold Ramis'),(233,'The Wizard of Oz','Fantasy | Adventure | Musical | Family',1939,'Victor Fleming'),(234,'Jaws','Drama | Adventure | Thriller',1975,'Steven Spielberg'),(235,'Le notti di Cabiria','Drama',1957,'Federico Fellini'),(236,'The Help','Drama',2011,'Tate Taylor'),(237,'Faa yeung nin wa','Drama | Romance',2000,'Kar-Wai Wong'),(238,'Mandariinid','Drama | War',2013,'Zaza Urushadze'),(239,'Before Sunset','Drama | Romance',2004,'Richard Linklater'),(240,'Paper Moon','Drama | Comedy',1973,'Peter Bogdanovich'),(241,'Ah-ga-ssi','Drama | Romance | Thriller',2016,'Chan-wook Park'),(242,'Paris, Texas','Drama',1984,'Wim Wenders'),(243,'The Best Years of Our Lives','War | Drama | Romance',1946,'William Wyler'),(244,'Tenkû no shiro Rapyuta','Drama | Adventure | Fantasy | Animation',1986,'Hayao Miyazaki'),(245,'Pirates of the Caribbean: The Curse of the Black Pearl','Adventure | Fantasy | Action',2003,'Gore Verbinski'),(246,'Blade Runner 2049','Drama | Thriller | Mystery',2017,'Denis Villeneuve'),(247,'La La Land','Comedy | Romance | Music | Drama | Musical',2016,'Damien Chazelle'),(248,'Guardians of the Galaxy','Adventure | Comedy | Action',2014,'James Gunn'),(249,'Fanny och Alexander','Drama',1982,'Ingmar Bergman'),(250,'Tsubaki Sanjûrô','Drama | Action | Thriller | Crime',1962,'Akira Kurosawa'),(251,'Gangs of Wasseypur','Comedy | Thriller | Drama | Action | Crime',2012,'Anurag Kashyap'),(252,'Drishyam','Drama | Thriller | Crime',2015,'Nishikant Kamat');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review_text` text,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5,'love this movie','2025-04-15 19:35:15'),(2,1,1,1,'this movie sucks','2025-04-15 19:51:42');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser','test@example.com','dummyhash123',NULL),(2,'spencersanderson','','','Wilsonss!32435');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-16 20:55:05

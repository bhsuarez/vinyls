CREATE DATABASE `vinyls` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
use `vinyls`;
CREATE TABLE `albums` (
  `﻿id` int DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `artist_name` varchar(1024) DEFAULT NULL,
  `artist_id` int DEFAULT NULL,
  `discogs_id` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (1,'Long Live A.S.A.P.','A.S.A.P. Rocky',1,NULL,NULL),
	 (2,'Moon Safari','Air',2,NULL,NULL),
	 (3,'Alt-J','Alt-J (∆)',3,NULL,NULL),
	 (4,'American Football','American Football',4,NULL,NULL),
	 (5,'Mysterious Production of Eggs','Andrew Bird',5,NULL,NULL),
	 (6,'Merriweather Post Pavilion','Animal Collective',6,NULL,NULL),
	 (7,'Sung Tongs','Animal Collective',6,NULL,NULL),
	 (8,'Reflektor','Arcade Fire',7,NULL,NULL),
	 (9,'Logos','Atlas Sound',8,NULL,NULL),
	 (10,'Cease to Begin','Band Of Horses',9,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (11,'Devotion','Beach House',10,NULL,NULL),
	 (12,'Beyonce','Beyonce',11,NULL,NULL),
	 (13,'1942-1952-1954','Billy Holiday',12,NULL,NULL),
	 (14,'Greatest Hits','Bob Dylan',13,NULL,NULL),
	 (15,'Exodus','Bob Marley & The Wailers',14,NULL,NULL),
	 (16,'Blood Bank','Bon Iver',15,NULL,NULL),
	 (17,'For Emma, Forever Ago','Bon Iver',15,NULL,NULL),
	 (18,'Broken Social Scene','Broken Social Scene',16,NULL,NULL),
	 (19,'Forgot it in People','Broken Social Scene',16,NULL,NULL),
	 (20,'Untitled','Charles Manson',17,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (21,'Rush of Blood to the Head','Coldplay',18,NULL,NULL),
	 (22,'Untitled','Cole Alexander & Bradford Cox',19,NULL,NULL),
	 (23,'Ressurection','Common',20,NULL,NULL),
	 (24,'So Far','Crosby, Stills, Nash, and Young',21,NULL,NULL),
	 (25,'Silent Hour/Gold Mile','Daniel Rossen',22,NULL,NULL),
	 (26,'XXX','Danny Brown',23,NULL,NULL),
	 (27,'Tonight','David Bowie',24,NULL,NULL),
	 (28,'For The Whole World To See','Death',25,NULL,NULL),
	 (29,'Transatlanticsm','Death Cab For Cutie',26,NULL,NULL),
	 (30,'Microcastle/Weird Era Continues','Deerhunter',27,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (31,'Cripple Crow','Devendra Bandhart',28,NULL,NULL),
	 (32,'Nothing Was the Same (Deluxe)','Drake',29,NULL,NULL),
	 (33,'What A Time To Be Alive','Drake & Future',30,NULL,NULL),
	 (34,'Daybreak Express','Duke Ellington',31,NULL,NULL),
	 (35,'I Will Be','Dum Dum Girls',32,NULL,NULL),
	 (36,'Easy Star''s Lonely Hearts Dub Band','Easy Star All Stars',33,NULL,NULL),
	 (37,'Elliot Smith','Elliot Smith',34,NULL,NULL),
	 (38,'Greatest Hits','Elton John',35,NULL,NULL),
	 (39,'Greatest Hits Vol. 2','Elton John',35,NULL,NULL),
	 (40,'Elvis'' Golden Record','Elvis Presley',36,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (41,'Fleet Foxes','Fleet Foxes',37,NULL,NULL),
	 (42,'Helplessness Blues','Fleet Foxes',37,NULL,NULL),
	 (43,'Rumors','Fleetwood Mac',38,NULL,NULL),
	 (44,'We Are The 21st Century Ambassadors of Peace and Magic','Foxygen',39,NULL,NULL),
	 (45,'channel orange','Frank Ocean',40,NULL,NULL),
	 (46,'Album','Girls',41,NULL,NULL),
	 (47,'Cruel Summer','GOOD Music',42,NULL,NULL),
	 (48,'Shields','Grizzly Bear',43,NULL,NULL),
	 (49,'Veckatimest','Grizzly Bear',43,NULL,NULL),
	 (50,'Yellow House','Grizzly Bear',43,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (51,'Love, Angel, Music, Baby','Gwen Stafani',44,NULL,NULL),
	 (52,'Days Are Gone','Haim',45,NULL,NULL),
	 (53,'Grace','Jeff Buckley',46,NULL,NULL),
	 (54,'Axis Bold as Love','Jimi Hendrix',47,NULL,NULL),
	 (55,'Experience: Smash Hits','Jimi Hendrix',47,NULL,NULL),
	 (56,'Imagine','John Lennon',48,NULL,NULL),
	 (57,'Plastic Ono Band','John Lennon',48,NULL,NULL),
	 (58,'I Walk The Line','Johnny Cash',49,NULL,NULL),
	 (59,'808s and Heartbreak','Kanye West',50,NULL,NULL),
	 (60,'College Dropout','Kanye West',50,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (61,'Late Registration','Kanye West',50,NULL,NULL),
	 (62,'My Beautiful Dark Twisted Fantasy','Kanye West',50,NULL,NULL),
	 (63,'Yeezus','Kanye West',50,NULL,NULL),
	 (64,'Graduation','Kanye West',50,NULL,NULL),
	 (65,'Watch The Throne','Kanye West & Jay Z',51,NULL,NULL),
	 (66,'Good, M.A.A.D City','Kendrick Lamar',52,NULL,NULL),
	 (67,'To Pimp a Butterfly','Kendrick Lamar',52,NULL,NULL),
	 (68,'Section 80','Kendrick Lamar',52,NULL,NULL),
	 (69,'Smoke Ring For My Halo','Kurt Vile',53,NULL,NULL),
	 (70,'I','Led Zeppelin',54,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (71,'In Through The Out Door','Led Zeppelin',54,NULL,NULL),
	 (72,'IV','Led Zeppelin',54,NULL,NULL),
	 (73,'Physical Graffiti','Led Zeppelin',54,NULL,NULL),
	 (74,'Machine Dreams','Little Dragon',55,NULL,NULL),
	 (75,'Little Joy','Little Joy',56,NULL,NULL),
	 (76,'Gorrila Manor','Local Natives',57,NULL,NULL),
	 (77,'Hummingbird','Local Natives',57,NULL,NULL),
	 (78,'Walk on the Wild Side, Best of Lou Reed','Lou Reed',58,NULL,NULL),
	 (79,'Salad Days','Mac DeMarco',59,NULL,NULL),
	 (80,'16 of their greatest hits','Mamas and the Papas',60,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (81,'Greatest Hits','Marvin Gaye',61,NULL,NULL),
	 (82,'Kala','M.I.A.',62,NULL,NULL),
	 (83,'Thriller','Michael Jackson',63,NULL,NULL),
	 (84,'Davis','Miles Davis',64,NULL,NULL),
	 (85,'Sigh No More','Mumford & Sons',65,NULL,NULL),
	 (86,'Decade','Neil Young',66,NULL,NULL),
	 (87,'Stankonia','Outkast',67,NULL,NULL),
	 (88,'Aquemini','Outkast',67,NULL,NULL),
	 (89,'Person Pitch','Panda Bear',68,NULL,NULL),
	 (90,'Tomboy','Panda Bear',68,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (91,'Man on the Run','Paul McCartney & Wings',69,NULL,NULL),
	 (92,'Hearts and Bones','Paul Simon',70,NULL,NULL),
	 (93,'Animals','Pink Floyd',71,NULL,NULL),
	 (94,'Dark Side of the Moon','Pink Floyd',71,NULL,NULL),
	 (95,'Meddle','Pink Floyd',71,NULL,NULL),
	 (96,'Wish You Were Here','Pink Floyd',71,NULL,NULL),
	 (97,'Third','Portishead',72,NULL,NULL),
	 (98,'Greatest Hits','Queen',73,NULL,NULL),
	 (99,'Amnesiac','Radiohead',74,NULL,NULL),
	 (100,'Hail to the Theif','Radiohead',74,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (101,'In Rainbows','Radiohead',74,NULL,NULL),
	 (102,'Kid-A','Radiohead',74,NULL,NULL),
	 (103,'King of Limbs','Radiohead',74,NULL,NULL),
	 (104,'OK Computer','Radiohead',74,NULL,NULL),
	 (105,'Raising Sand','Robert Plant & Allison Krause ',75,NULL,NULL),
	 (106,'Greatest Hits','Santana',76,NULL,NULL),
	 (107,'Black Up','Shabbaz Palaces',77,NULL,NULL),
	 (108,'Greatest Hits','Simon & Garfunkel',78,NULL,NULL),
	 (109,'Stan Getz with Guests artist Laurindo Almeda','Stan Getz',79,NULL,NULL),
	 (110,'Inspiration Information','Shuggie Otis',80,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (111,'Interspeaker','Tame Impala',81,NULL,NULL),
	 (112,'Currents','Tame Impala',81,NULL,NULL),
	 (113,'1962-1966','The Beatles',82,NULL,NULL),
	 (114,'1967-1970','The Beatles',82,NULL,NULL),
	 (115,'Abbey Road','The Beatles',82,NULL,NULL),
	 (116,'Help!','The Beatles',82,NULL,NULL),
	 (117,'Magical Mystery Tour','The Beatles',82,NULL,NULL),
	 (118,'Revolver','The Beatles',82,NULL,NULL),
	 (119,'Rubber Soul','The Beatles',82,NULL,NULL),
	 (120,'Sgt Pepper''s Lonely Hearts Club Band','The Beatles',82,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (121,'The Second Album','The Beatles',82,NULL,NULL),
	 (122,'White Album','The Beatles',82,NULL,NULL),
	 (123,'Let it Be','The Beatles ',82,NULL,NULL),
	 (124,'Greatest Hits','The Byrds',84,NULL,NULL),
	 (125,'Best Of','The Doors',85,NULL,NULL),
	 (126,'Yoshimi Battles The Pink Robots','The Flaming Lips',86,NULL,NULL),
	 (127,'The Soft Bulletin','The Flaming Lips',86,NULL,NULL),
	 (128,'State of Confusion','The Kinks',87,NULL,NULL),
	 (129,'Exhile on Main Street','The Rolling Stones',88,NULL,NULL),
	 (130,'Hot Rocks 1964-1971','The Rolling Stones',88,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (131,'Tattoo You','The Rolling Stones',88,NULL,NULL),
	 (132,'Wincing The Night Away','The Shins',89,NULL,NULL),
	 (133,'Is This it?','The Strokes',90,NULL,NULL),
	 (134,'25th Anniversary','The Temptations',91,NULL,NULL),
	 (135,'Lost in the Dream','The War on Drugs',92,NULL,NULL),
	 (136,'House of Balloons','The Weeknd',93,NULL,NULL),
	 (137,'The White Stripes','The White Stripes',94,NULL,NULL),
	 (138,'The Best of','The Zombies',95,NULL,NULL),
	 (139,'Vibes','Theophilus London',96,NULL,NULL),
	 (140,'The Eraser','Tom Yorke',97,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (141,'Rodeo','Travis Scott',98,NULL,NULL),
	 (142,'II','Unknown Mortal Orchestra',99,NULL,NULL),
	 (143,'Multilove','Unknown Mortal Orchestra',99,NULL,NULL),
	 (144,'Unknown Mortal Orchestra','Unknown Mortal Orchestra',99,NULL,NULL),
	 (145,'Andy Warhol','Velvet Underground',100,NULL,NULL),
	 (146,'Velvet Underground','Velvet Underground',100,NULL,NULL),
	 (147,'Summertime 06','Vince Staples',101,NULL,NULL),
	 (148,'Everything Goes Wrong','Vivian Girls',102,NULL,NULL),
	 (149,'What For?','Toro Y Moi',103,NULL,NULL),
	 (150,'Life of Pablo','Kanye West',50,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (151,'Blonde','Frank Ocean',40,NULL,NULL),
	 (152,'Lemonade','Beyonce',11,NULL,NULL),
	 (153,'The Score','The Fugees',104,NULL,NULL),
	 (154,'Seat at the Table','Solange',105,NULL,NULL),
	 (155,'Game Theory','The Roots',106,NULL,NULL),
	 (156,'Discover','Daft Punk',107,NULL,NULL),
	 (157,'Milosc Jest Cudowna','Maanam',108,NULL,NULL),
	 (158,'Oxnard','Anderson .Paak',109,NULL,NULL),
	 (159,'Jesus Is King','Kanye West',50,NULL,NULL),
	 (160,'Mordechai','Khruangbin',110,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (161,'Days Before Rodeo','Travis Scott',98,NULL,NULL),
	 (162,'Spice World','Spice Girls',111,NULL,NULL),
	 (163,'Beyonce','Beyonce',11,NULL,NULL),
	 (164,'The Eagles','The Eagles',112,NULL,NULL),
	 (165,'Spice Girls','Spice Girls',111,NULL,NULL),
	 (166,'Old King Cole Younger','Various Artists',113,NULL,NULL),
	 (167,'Innerspeaker','Tame Impala',81,NULL,NULL),
	 (168,'Malibu','Anderson .Paak',109,NULL,NULL),
	 (169,'Metaphorical Music','Nujabes',114,'12639854',NULL),
	 (170,'Random Access Memories','Daft Punk',107,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (171,'Black Pumas','Black Pumas',115,NULL,NULL),
	 (172,'Try!','John Mayer Trio',116,NULL,NULL),
	 (173,'Nostalgia Ultra','Frank Ocean',40,NULL,NULL),
	 (174,'Invasion Of Privacy','Cardi B',117,NULL,NULL),
	 (175,'Awaken My Love','Childish Gambino',118,NULL,NULL),
	 (176,'Circles','Mac Miller',119,NULL,NULL),
	 (177,'Damn','Kendrick Lamar',52,'10448824',NULL),
	 (178,'Writings On The Wall','Destiny''s Child',120,NULL,NULL),
	 (179,'thank u, next','Ariana Grande',121,NULL,NULL),
	 (180,'Devine Feminine','Mac Miller',119,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (181,'Scumfuck Flowerboy','Tyler, The Creator',122,NULL,NULL),
	 (182,'The Worst of Jefferson Airplane','Jefferson Airplane',123,NULL,NULL),
	 (183,'Hive Mind','The Internet',124,'12269361',NULL),
	 (184,'Roam','Audiences',125,NULL,NULL),
	 (185,'Kids See Ghosts','Kids See Ghosts',126,NULL,NULL),
	 (186,'Sweetener','Ariana Grande',121,NULL,NULL),
	 (187,'Igor','Tyler, The Creator',122,NULL,NULL),
	 (188,'Sex & Food','Unknown Mortal Orchestra',99,NULL,NULL),
	 (189,'Repetitions (Letters to Krzysztof Komeda)','EABS',127,NULL,NULL),
	 (190,'American Dreams','Luke Henry',128,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (191,'Funk Wav Bounces Vol. 1','Calvin Harris',129,NULL,NULL),
	 (192,'Apollo 21','Steve Lacy',130,NULL,NULL),
	 (193,'Negro Swan','Blood Orange',131,NULL,NULL),
	 (194,'Tomorrow','The O''Mys',132,NULL,NULL),
	 (195,'Third Eye Blind','Third Eye Blind',133,NULL,NULL),
	 (196,'IV','BADBADNOTGOOD',134,NULL,NULL),
	 (197,'Madvilliany','Madvillian',135,NULL,NULL),
	 (198,'Swimming','Mac Miller',119,NULL,NULL),
	 (199,'III','BADBADNOTGOOD',134,NULL,NULL),
	 (200,'17 Songs for Christmas','Franciscan Cleric Choir',136,NULL,NULL);
INSERT INTO vinyls.albums (`﻿id`,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (201,'The Slow Rush','Tame Impala',81,'14783822',NULL);
CREATE TABLE public.albums (
	album_id int4 NULL,
	title varchar(1024) NULL,
	artist_name varchar(1024) NULL,
	artist_id int4 NULL,
	discogs_id int4 NULL,
	barcode varchar(1024) NULL
);

INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (1,'Long Live A.S.A.P.','A.S.A.P. Rocky',1,NULL,''),
	 (2,'Moon Safari','Air',2,NULL,''),
	 (3,'Alt-J','Alt-J (∆)',3,NULL,''),
	 (4,'American Football','American Football',4,NULL,''),
	 (5,'Mysterious Production of Eggs','Andrew Bird',5,NULL,''),
	 (6,'Merriweather Post Pavilion','Animal Collective',6,NULL,''),
	 (7,'Sung Tongs','Animal Collective',6,NULL,''),
	 (8,'Reflektor','Arcade Fire',7,NULL,''),
	 (9,'Logos','Atlas Sound',8,NULL,''),
	 (10,'Cease to Begin','Band Of Horses',9,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (11,'Devotion','Beach House',10,NULL,''),
	 (12,'Beyonce','Beyonce',11,NULL,''),
	 (13,'1942-1952-1954','Billy Holiday',12,NULL,''),
	 (14,'Greatest Hits','Bob Dylan',13,NULL,''),
	 (15,'Exodus','Bob Marley & The Wailers',14,NULL,''),
	 (16,'Blood Bank','Bon Iver',15,NULL,''),
	 (17,'For Emma, Forever Ago','Bon Iver',15,NULL,''),
	 (18,'Broken Social Scene','Broken Social Scene',16,NULL,''),
	 (19,'Forgot it in People','Broken Social Scene',16,NULL,''),
	 (20,'Untitled','Charles Manson',17,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (21,'Rush of Blood to the Head','Coldplay',18,NULL,''),
	 (22,'Untitled','Cole Alexander & Bradford Cox',19,NULL,''),
	 (23,'Ressurection','Common',20,NULL,''),
	 (24,'So Far','Crosby, Stills, Nash, and Young',21,NULL,''),
	 (25,'Silent Hour/Gold Mile','Daniel Rossen',22,NULL,''),
	 (26,'XXX','Danny Brown',23,NULL,''),
	 (27,'Tonight','David Bowie',24,NULL,''),
	 (28,'For The Whole World To See','Death',25,NULL,''),
	 (29,'Transatlanticsm','Death Cab For Cutie',26,NULL,''),
	 (30,'Microcastle/Weird Era Continues','Deerhunter',27,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (31,'Cripple Crow','Devendra Bandhart',28,NULL,''),
	 (32,'Nothing Was the Same (Deluxe)','Drake',29,NULL,''),
	 (33,'What A Time To Be Alive','Drake & Future',30,NULL,''),
	 (34,'Daybreak Express','Duke Ellington',31,NULL,''),
	 (35,'I Will Be','Dum Dum Girls',32,NULL,''),
	 (36,'Easy Star''s Lonely Hearts Dub Band','Easy Star All Stars',33,NULL,''),
	 (37,'Elliot Smith','Elliot Smith',34,NULL,''),
	 (38,'Greatest Hits','Elton John',35,NULL,''),
	 (39,'Greatest Hits Vol. 2','Elton John',35,NULL,''),
	 (40,'Elvis'' Golden Record','Elvis Presley',36,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (41,'Fleet Foxes','Fleet Foxes',37,NULL,''),
	 (42,'Helplessness Blues','Fleet Foxes',37,NULL,''),
	 (43,'Rumors','Fleetwood Mac',38,NULL,''),
	 (44,'We Are The 21st Century Ambassadors of Peace and Magic','Foxygen',39,NULL,''),
	 (45,'channel orange','Frank Ocean',40,NULL,''),
	 (46,'Album','Girls',41,NULL,''),
	 (47,'Cruel Summer','GOOD Music',42,NULL,''),
	 (48,'Shields','Grizzly Bear',43,NULL,''),
	 (49,'Veckatimest','Grizzly Bear',43,NULL,''),
	 (50,'Yellow House','Grizzly Bear',43,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (51,'Love, Angel, Music, Baby','Gwen Stafani',44,NULL,''),
	 (52,'Days Are Gone','Haim',45,NULL,''),
	 (53,'Grace','Jeff Buckley',46,NULL,''),
	 (54,'Axis Bold as Love','Jimi Hendrix',47,NULL,''),
	 (55,'Experience: Smash Hits','Jimi Hendrix',47,NULL,''),
	 (56,'Imagine','John Lennon',48,NULL,''),
	 (57,'Plastic Ono Band','John Lennon',48,NULL,''),
	 (58,'I Walk The Line','Johnny Cash',49,NULL,''),
	 (59,'808s and Heartbreak','Kanye West',50,NULL,''),
	 (60,'College Dropout','Kanye West',50,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (61,'Late Registration','Kanye West',50,NULL,''),
	 (62,'My Beautiful Dark Twisted Fantasy','Kanye West',50,NULL,''),
	 (63,'Yeezus','Kanye West',50,NULL,''),
	 (64,'Graduation','Kanye West',50,NULL,''),
	 (65,'Watch The Throne','Kanye West & Jay Z',51,NULL,''),
	 (66,'Good, M.A.A.D City','Kendrick Lamar',52,NULL,''),
	 (67,'To Pimp a Butterfly','Kendrick Lamar',52,NULL,''),
	 (68,'Section 80','Kendrick Lamar',52,NULL,''),
	 (69,'Smoke Ring For My Halo','Kurt Vile',53,NULL,''),
	 (70,'I','Led Zeppelin',54,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (71,'In Through The Out Door','Led Zeppelin',54,NULL,''),
	 (72,'IV','Led Zeppelin',54,NULL,''),
	 (73,'Physical Graffiti','Led Zeppelin',54,NULL,''),
	 (74,'Machine Dreams','Little Dragon',55,NULL,''),
	 (75,'Little Joy','Little Joy',56,NULL,''),
	 (76,'Gorrila Manor','Local Natives',57,NULL,''),
	 (77,'Hummingbird','Local Natives',57,NULL,''),
	 (78,'Walk on the Wild Side, Best of Lou Reed','Lou Reed',58,NULL,''),
	 (79,'Salad Days','Mac DeMarco',59,NULL,''),
	 (80,'16 of their greatest hits','Mamas and the Papas',60,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (81,'Greatest Hits','Marvin Gaye',61,NULL,''),
	 (82,'Kala','M.I.A.',62,NULL,''),
	 (83,'Thriller','Michael Jackson',63,NULL,''),
	 (84,'Davis','Miles Davis',64,NULL,''),
	 (85,'Sigh No More','Mumford & Sons',65,NULL,''),
	 (86,'Decade','Neil Young',66,NULL,''),
	 (87,'Stankonia','Outkast',67,NULL,''),
	 (88,'Aquemini','Outkast',67,NULL,''),
	 (89,'Person Pitch','Panda Bear',68,NULL,''),
	 (90,'Tomboy','Panda Bear',68,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (91,'Man on the Run','Paul McCartney & Wings',69,NULL,''),
	 (92,'Hearts and Bones','Paul Simon',70,NULL,''),
	 (93,'Animals','Pink Floyd',71,NULL,''),
	 (94,'Dark Side of the Moon','Pink Floyd',71,NULL,''),
	 (95,'Meddle','Pink Floyd',71,NULL,''),
	 (96,'Wish You Were Here','Pink Floyd',71,NULL,''),
	 (97,'Third','Portishead',72,NULL,''),
	 (98,'Greatest Hits','Queen',73,NULL,''),
	 (99,'Amnesiac','Radiohead',74,NULL,''),
	 (100,'Hail to the Theif','Radiohead',74,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (101,'In Rainbows','Radiohead',74,NULL,''),
	 (102,'Kid-A','Radiohead',74,NULL,''),
	 (103,'King of Limbs','Radiohead',74,NULL,''),
	 (104,'OK Computer','Radiohead',74,NULL,''),
	 (105,'Raising Sand','Robert Plant & Allison Krause ',75,NULL,''),
	 (106,'Greatest Hits','Santana',76,NULL,''),
	 (107,'Black Up','Shabbaz Palaces',77,NULL,''),
	 (108,'Greatest Hits','Simon & Garfunkel',78,NULL,''),
	 (109,'Stan Getz with Guests artist Laurindo Almeda','Stan Getz',79,NULL,''),
	 (110,'Inspiration Information','Shuggie Otis',80,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (111,'Interspeaker','Tame Impala',81,NULL,''),
	 (112,'Currents','Tame Impala',81,NULL,''),
	 (113,'1962-1966','The Beatles',82,NULL,''),
	 (114,'1967-1970','The Beatles',82,NULL,''),
	 (115,'Abbey Road','The Beatles',82,NULL,''),
	 (116,'Help!','The Beatles',82,NULL,''),
	 (117,'Magical Mystery Tour','The Beatles',82,NULL,''),
	 (118,'Revolver','The Beatles',82,NULL,''),
	 (119,'Rubber Soul','The Beatles',82,NULL,''),
	 (120,'Sgt Pepper''s Lonely Hearts Club Band','The Beatles',82,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (121,'The Second Album','The Beatles',82,NULL,''),
	 (122,'White Album','The Beatles',82,NULL,''),
	 (123,'Let it Be','The Beatles ',82,NULL,''),
	 (124,'Greatest Hits','The Byrds',84,NULL,''),
	 (125,'Best Of','The Doors',85,NULL,''),
	 (126,'Yoshimi Battles The Pink Robots','The Flaming Lips',86,NULL,''),
	 (127,'The Soft Bulletin','The Flaming Lips',86,NULL,''),
	 (128,'State of Confusion','The Kinks',87,NULL,''),
	 (129,'Exhile on Main Street','The Rolling Stones',88,NULL,''),
	 (130,'Hot Rocks 1964-1971','The Rolling Stones',88,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (131,'Tattoo You','The Rolling Stones',88,NULL,''),
	 (132,'Wincing The Night Away','The Shins',89,NULL,''),
	 (133,'Is This it?','The Strokes',90,NULL,''),
	 (134,'25th Anniversary','The Temptations',91,NULL,''),
	 (135,'Lost in the Dream','The War on Drugs',92,NULL,''),
	 (136,'House of Balloons','The Weeknd',93,NULL,''),
	 (137,'The White Stripes','The White Stripes',94,NULL,''),
	 (138,'The Best of','The Zombies',95,NULL,''),
	 (139,'Vibes','Theophilus London',96,NULL,''),
	 (140,'The Eraser','Tom Yorke',97,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (141,'Rodeo','Travis Scott',98,NULL,''),
	 (142,'II','Unknown Mortal Orchestra',99,NULL,''),
	 (143,'Multilove','Unknown Mortal Orchestra',99,NULL,''),
	 (144,'Unknown Mortal Orchestra','Unknown Mortal Orchestra',99,NULL,''),
	 (145,'Andy Warhol','Velvet Underground',100,NULL,''),
	 (146,'Velvet Underground','Velvet Underground',100,NULL,''),
	 (147,'Summertime 06','Vince Staples',101,NULL,''),
	 (148,'Everything Goes Wrong','Vivian Girls',102,NULL,''),
	 (149,'What For?','Toro Y Moi',103,NULL,''),
	 (150,'Life of Pablo','Kanye West',50,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (151,'Blonde','Frank Ocean',40,NULL,''),
	 (152,'Lemonade','Beyonce',11,NULL,''),
	 (153,'The Score','The Fugees',104,NULL,''),
	 (154,'Seat at the Table','Solange',105,NULL,''),
	 (155,'Game Theory','The Roots',106,NULL,''),
	 (156,'Discover','Daft Punk',107,NULL,''),
	 (157,'Milosc Jest Cudowna','Maanam',108,NULL,''),
	 (158,'Oxnard','Anderson .Paak',109,NULL,''),
	 (159,'Jesus Is King','Kanye West',50,NULL,''),
	 (160,'Mordechai','Khruangbin',110,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (161,'Days Before Rodeo','Travis Scott',98,NULL,''),
	 (162,'Spice World','Spice Girls',111,NULL,''),
	 (163,'Beyonce','Beyonce',11,NULL,''),
	 (164,'The Eagles','The Eagles',112,NULL,''),
	 (165,'Spice Girls','Spice Girls',111,NULL,''),
	 (166,'Old King Cole Younger','Various Artists',113,NULL,''),
	 (167,'Innerspeaker','Tame Impala',81,NULL,''),
	 (168,'Malibu','Anderson .Paak',109,NULL,''),
	 (169,'Metaphorical Music','Nujabes',114,12639854,''),
	 (170,'Random Access Memories','Daft Punk',107,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (171,'Black Pumas','Black Pumas',115,NULL,''),
	 (172,'Try!','John Mayer Trio',116,NULL,''),
	 (173,'Nostalgia Ultra','Frank Ocean',40,NULL,''),
	 (174,'Invasion Of Privacy','Cardi B',117,NULL,''),
	 (175,'Awaken My Love','Childish Gambino',118,NULL,''),
	 (176,'Circles','Mac Miller',119,NULL,''),
	 (177,'Damn','Kendrick Lamar',52,10448824,''),
	 (178,'Writings On The Wall','Destiny''s Child',120,NULL,''),
	 (179,'thank u, next','Ariana Grande',121,NULL,''),
	 (180,'Devine Feminine','Mac Miller',119,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (181,'Scumfuck Flowerboy','Tyler, The Creator',122,NULL,''),
	 (182,'The Worst of Jefferson Airplane','Jefferson Airplane',123,NULL,''),
	 (183,'Hive Mind','The Internet',124,12269361,''),
	 (184,'Roam','Audiences',125,NULL,''),
	 (185,'Kids See Ghosts','Kids See Ghosts',126,NULL,''),
	 (186,'Sweetener','Ariana Grande',121,NULL,''),
	 (187,'Igor','Tyler, The Creator',122,NULL,''),
	 (188,'Sex & Food','Unknown Mortal Orchestra',99,NULL,''),
	 (189,'Repetitions (Letters to Krzysztof Komeda)','EABS',127,NULL,''),
	 (190,'American Dreams','Luke Henry',128,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (191,'Funk Wav Bounces Vol. 1','Calvin Harris',129,NULL,''),
	 (192,'Apollo 21','Steve Lacy',130,NULL,''),
	 (193,'Negro Swan','Blood Orange',131,NULL,''),
	 (194,'Tomorrow','The O''Mys',132,NULL,''),
	 (195,'Third Eye Blind','Third Eye Blind',133,NULL,''),
	 (196,'IV','BADBADNOTGOOD',134,NULL,''),
	 (197,'Madvilliany','Madvillian',135,NULL,''),
	 (198,'Swimming','Mac Miller',119,NULL,''),
	 (199,'III','BADBADNOTGOOD',134,NULL,''),
	 (200,'17 Songs for Christmas','Franciscan Cleric Choir',136,NULL,'');
INSERT INTO public.albums (album_id,title,artist_name,artist_id,discogs_id,barcode) VALUES
	 (201,'The Slow Rush','Tame Impala',81,14783822,''),
	 (202,'It Is What It Is','Thundercat',137,15035550,''),
	 (203,'Plastic Beach','Gorillaz',138,5813899,''),
	 (204,'The Lion King: The Gift','Beyonce',11,15885116,''),
	 (205,'The Miseducation of Lauryn Hill','Lauryn Hill',139,6546645,'888750215710'),
	 (206, 'After Hours','The Weeknd',93,15968171,''),
	 (207, 'Good Thing','Leon Bridges',140,NULL,190758399423),
	 (208, 'Astroworld','Travis Scott',98,NULL,''),
	 (209, '3.15.20','Childish Gambino',118,16059829,'');

	 CREATE TABLE public.artists(
	    artist_id         INTEGER  NOT NULL PRIMARY KEY
	   ,name       VARCHAR(31) NOT NULL
	   ,discogs_id VARCHAR(30)
	   ,photo_url  VARCHAR(30)
	 );

	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (1,'A.S.A.P. Rocky',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (2,'Air',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (3,'Alt-J (∆)',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (4,'American Football',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (5,'Andrew Bird',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (6,'Animal Collective',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (7,'Arcade Fire',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (8,'Atlas Sound',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (9,'Band Of Horses',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (10,'Beach House',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (11,'Beyonce',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (12,'Billy Holiday',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (13,'Bob Dylan',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (14,'Bob Marley & The Wailers',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (15,'Bon Iver',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (16,'Broken Social Scene',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (17,'Charles Manson',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (18,'Coldplay',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (19,'Cole Alexander & Bradford Cox',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (20,'Common',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (21,'Crosby, Stills, Nash, and Young',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (22,'Daniel Rossen',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (23,'Danny Brown',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (24,'David Bowie',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (25,'Death',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (26,'Death Cab For Cutie',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (27,'Deerhunter',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (28,'Devendra Bandhart',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (29,'Drake',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (30,'Drake & Future',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (31,'Duke Ellington',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (32,'Dum Dum Girls',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (33,'Easy Star All Stars',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (34,'Elliot Smith',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (35,'Elton John',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (36,'Elvis Presley',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (37,'Fleet Foxes',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (38,'Fleetwood Mac',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (39,'Foxygen',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (40,'Frank Ocean',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (41,'Girls',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (42,'GOOD Music',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (43,'Grizzly Bear',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (44,'Gwen Stafani',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (45,'Haim',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (46,'Jeff Buckley',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (47,'Jimi Hendrix',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (48,'John Lennon',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (49,'Johnny Cash',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (50,'Kanye West',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (51,'Kanye West & Jay Z',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (52,'Kendrick Lamar',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (53,'Kurt Vile',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (54,'Led Zeppelin',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (55,'Little Dragon',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (56,'Little Joy',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (57,'Local Natives',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (58,'Lou Reed',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (59,'Mac DeMarco',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (60,'Mamas and the Papas',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (61,'Marvin Gaye',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (62,'M.I.A.',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (63,'Michael Jackson',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (64,'Miles Davis',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (65,'Mumford & Sons',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (66,'Neil Young',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (67,'Outkast',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (68,'Panda Bear',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (69,'Paul McCartney & Wings',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (70,'Paul Simon',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (71,'Pink Floyd',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (72,'Portishead',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (73,'Queen',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (74,'Radiohead',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (75,'Robert Plant & Allison Krause',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (76,'Santana',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (77,'Shabbaz Palaces',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (78,'Simon & Garfunkel',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (79,'Stan Getz',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (80,'Shuggie Otis',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (81,'Tame Impala',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (82,'The Beatles',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (84,'The Byrds',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (85,'The Doors',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (86,'The Flaming Lips',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (87,'The Kinks',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (88,'The Rolling Stones',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (89,'The Shins',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (90,'The Strokes',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (91,'The Temptations',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (92,'The War on Drugs',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (93,'The Weeknd',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (94,'The White Stripes',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (95,'The Zombies',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (96,'Theophilus London',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (97,'Tom Yorke',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (98,'Travis Scott',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (99,'Unknown Mortal Orchestra',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (100,'Velvet Underground',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (101,'Vince Staples',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (102,'Vivian Girls',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (103,'Toro Y Moi',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (104,'The Fugees',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (105,'Solange',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (106,'The Roots',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (107,'Daft Punk',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (108,'Maanam',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (109,'Anderson .Paak',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (110,'Khruangbin',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (111,'Spice Girls',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (112,'The Eagles',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (113,'Various Artists',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (114,'Nujabes',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (115,'Black Pumas',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (116,'John Mayer Trio',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (117,'Cardi B',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (118,'Childish Gambino',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (119,'Mac Miller',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (120,'Destiny''s Child',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (121,'Ariana Grande',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (122,'Tyler, The Creator',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (123,'Jefferson Airplane',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (124,'The Internet',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (125,'Audiences',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (126,'Kids See Ghosts',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (127,'EABS',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (128,'Luke Henry',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (129,'Calvin Harris',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (130,'Steve Lacy',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (131,'Blood Orange',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (132,'The O''Mys',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (133,'Third Eye Blind',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (134,'BADBADNOTGOOD',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (135,'Madvillian',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (136,'Franciscan Cleric Choir',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (137,'Thundercat',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (138,'Gorillaz',NULL,NULL);
	 INSERT INTO public.artists(artist_id,name,discogs_id,photo_url) VALUES (139,'Lauryn Hill',NULL,NULL);

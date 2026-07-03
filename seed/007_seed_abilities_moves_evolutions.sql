-- ============================================================
-- SEED: Habilidades por Pokemon, Movimientos por Pokemon y Evoluciones
-- ============================================================

-- ----------------------------------------------------------------
-- HABILIDADES POR POKEMON
-- Ability IDs: 1=Espesura, 2=Llamarada, 3=Torrente, 4=Clorofila,
-- 5=Poder Solar, 6=Lluvia Ligera, 7=Escudo Polvo, 8=Guardia Compuesta,
-- 9=Ojos de Insecto, 10=Sincronía, 11=Ojo Loco, 12=Levitación,
-- 13=Intimidación, 14=Carrera, 15=Flash Fuego, 16=Robustez,
-- 17=Tracción, 18=Ponzoña, 19=Agua Velo, 20=Caparazón,
-- 21=Absorbe Agua, 22=Voltaabsorbe, 23=Paralización, 24=Escudo Mágico,
-- 25=Sereno, 26=Velocidad Natural, 27=Adaptabilidad, 28=Fuerza Bruta,
-- 29=Presión, 30=Armadura, 31=Tierra Firme, 32=Manto Marino,
-- 33=Absorbe Llamas, 34=Velo Arena, 35=Visión Lince, 36=Frisk,
-- 37=Mente Sana, 38=Aguante, 39=Antiflama, 40=Cuerpo Puro,
-- 41=Foco Interior, 42=Poder Oculto, 43=Multiscale, 44=Poderoso,
-- 45=Motriz, 46=Tipo Normal, 47=Rubor, 48=Chispa, 49=Vitalidad,
-- 50=Tanque
-- ----------------------------------------------------------------
INSERT INTO pokemon_abilities (pokemon_id, ability_id, is_hidden)
SELECT p.id, a.id, v.is_hidden
FROM (VALUES
-- Bulbasaur, Ivysaur, Venusaur
(1,1,false),(1,4,true),
(2,1,false),(2,4,true),
(3,1,false),(3,4,true),
-- Charmander, Charmeleon, Charizard
(4,2,false),(4,5,true),
(5,2,false),(5,5,true),
(6,2,false),(6,5,true),
-- Squirtle, Wartortle, Blastoise
(7,3,false),(7,6,true),
(8,3,false),(8,6,true),
(9,3,false),(9,6,true),
-- Caterpie, Metapod, Butterfree
(10,7,false),
(11,7,false),
(12,8,false),(12,9,true),
-- Weedle, Kakuna, Beedrill
(13,16,false),
(14,16,false),
(15,16,false),(15,42,true),
-- Pidgey, Pidgeotto, Pidgeot
(16,35,false),(16,14,false),
(17,35,false),(17,14,false),
(18,35,false),(18,14,false),(18,28,true),
-- Rattata, Raticate
(19,14,false),(19,16,false),
(20,14,false),(20,16,false),
-- Spearow, Fearow
(21,35,false),
(22,35,false),
-- Ekans, Arbok
(23,11,false),(23,13,false),
(24,11,false),(24,13,false),(24,28,true),
-- Pikachu, Raichu
(25,23,false),(25,33,true),
(26,23,false),(26,45,true),
-- Sandshrew, Sandslash
(27,31,false),(27,16,true),
(28,31,false),(28,16,true),
-- Nidoran F, Nidorina, Nidoqueen
(29,18,false),(29,40,true),
(30,18,false),(30,40,true),
(31,18,false),(31,40,true),
-- Nidoran M, Nidorino, Nidoking
(32,18,false),(32,41,true),
(33,18,false),(33,41,true),
(34,18,false),(34,41,true),
-- Clefairy, Clefable
(35,24,false),(35,47,false),(35,25,true),
(36,24,false),(36,47,false),(36,25,true),
-- Vulpix, Ninetales
(37,15,false),(37,46,true),
(38,15,false),(38,46,true),
-- Jigglypuff, Wigglytuff
(39,47,false),(39,37,true),
(40,47,false),(40,37,true),
-- Zubat, Golbat
(41,11,false),
(42,11,false),(42,32,true),
-- Oddish, Gloom, Vileplume
(43,1,false),
(44,1,false),(44,28,true),
(45,1,false),(45,4,true),
-- Paras, Parasect
(46,10,false),(46,32,true),
(47,10,false),(47,32,true),
-- Venonat, Venomoth
(48,8,false),(48,9,true),
(49,7,false),(49,9,true),
-- Diglett, Dugtrio
(50,31,false),(50,34,true),
(51,31,false),(51,34,true),
-- Meowth, Persian
(52,17,false),(52,36,true),
(53,17,false),(53,36,true),
-- Psyduck, Golduck
(54,32,false),(54,26,true),
(55,32,false),(55,26,true),
-- Mankey, Primeape
(56,49,false),(56,41,true),
(57,49,false),(57,41,true),
-- Growlithe, Arcanine
(58,13,false),(58,15,false),(58,33,true),
(59,13,false),(59,15,false),(59,50,true),
-- Poliwag, Poliwhirl, Poliwrath
(60,19,false),(60,26,true),
(61,19,false),(61,26,true),
(62,19,false),(62,26,true),
-- Abra, Kadabra, Alakazam
(63,10,false),(63,11,true),
(64,10,false),(64,11,true),
(65,10,false),(65,11,true),(65,43,true),
-- Machop, Machoke, Machamp
(66,16,false),(66,28,true),
(67,16,false),(67,28,true),
(68,16,false),(68,28,true),
-- Bellsprout, Weepinbell, Victreebel
(69,1,false),(69,4,true),
(70,1,false),(70,4,true),
(71,1,false),(71,4,true),
-- Tentacool, Tentacruel
(72,20,false),(72,32,true),
(73,20,false),(73,32,true),
-- Geodude, Graveler, Golem
(74,16,false),(74,50,true),
(75,16,false),(75,50,true),
(76,16,false),(76,50,true),
-- Ponyta, Rapidash
(77,14,false),(77,15,false),(77,33,true),
(78,14,false),(78,15,false),(78,33,true),
-- Slowpoke, Slowbro
(79,37,false),(79,39,true),
(80,37,false),(80,39,true),
-- Magnemite, Magneton
(81,12,false),(81,38,true),
(82,12,false),(82,38,true),
-- Farfetch'd
(83,35,false),(83,11,false),
-- Doduo, Dodrio
(84,14,false),(84,11,true),
(85,14,false),(85,11,true),
-- Seel, Dewgong
(86,19,false),(86,6,true),
(87,19,false),(87,6,true),
-- Grimer, Muk
(88,37,false),(88,40,true),
(89,37,false),(89,40,true),
-- Shellder, Cloyster
(90,20,false),(90,16,true),
(91,20,false),(91,16,true),
-- Gastly, Haunter, Gengar
(92,12,false),
(93,12,false),
(94,12,false),(94,24,true),
-- Onix
(95,16,false),(95,38,true),
-- Drowzee, Hypno
(96,11,false),(96,36,true),
(97,11,false),(97,36,true),
-- Krabby, Kingler
(98,35,false),(98,30,false),
(99,35,false),(99,30,false),
-- Voltorb, Electrode
(100,23,false),(100,16,true),
(101,23,false),(101,16,true),
-- Exeggcute, Exeggutor
(102,4,false),
(103,4,false),(103,43,true),
-- Cubone, Marowak
(104,16,false),(104,14,true),
(105,16,false),(105,14,true),
-- Hitmonlee, Hitmonchan
(106,12,false),(106,28,true),
(107,41,false),(107,11,false),
-- Lickitung
(108,37,false),(108,28,true),
-- Koffing, Weezing
(109,12,false),(109,42,true),
(110,12,false),(110,42,true),
-- Rhyhorn, Rhydon
(111,16,false),(111,50,true),
(112,16,false),(112,50,true),
-- Chansey
(113,32,false),(113,25,true),
-- Tangela
(114,4,false),(114,10,true),
-- Kangaskhan
(115,11,false),(115,43,true),
-- Horsea, Seadra
(116,26,false),(116,20,true),
(117,26,false),(117,20,true),
-- Goldeen, Seaking
(118,19,false),(118,35,true),
(119,19,false),(119,35,true),
-- Staryu, Starmie
(120,32,false),(120,28,true),
(121,32,false),(121,28,true),
-- Mr. Mime
(122,10,false),(122,11,false),(122,25,true),
-- Scyther
(123,16,false),(123,28,true),
-- Jynx
(124,37,false),(124,25,true),
-- Electabuzz
(125,23,false),(125,45,true),
-- Magmar
(126,33,false),(126,28,true),
-- Pinsir
(127,16,false),(127,28,true),
-- Tauros
(128,13,false),(128,11,false),(128,28,true),
-- Magikarp, Gyarados
(129,26,false),
(130,13,false),(130,43,true),
-- Lapras
(131,19,false),(131,21,true),
-- Ditto
(132,12,false),
-- Eevee
(133,14,false),(133,47,true),
-- Vaporeon, Jolteon, Flareon
(134,21,false),(134,27,true),
(135,22,false),(135,27,true),
(136,15,false),(136,27,true),
-- Porygon
(137,12,false),
-- Omanyte, Omastar
(138,26,false),(138,20,true),
(139,26,false),(139,20,true),
-- Kabuto, Kabutops
(140,26,false),(140,30,true),
(141,26,false),(141,30,true),
-- Aerodactyl
(142,14,false),(142,50,false),(142,30,true),
-- Snorlax
(143,37,false),(143,49,true),
-- Aves Legendarias
(144,29,false),(144,11,true),
(145,29,false),(145,45,true),
(146,29,false),(146,33,true),
-- Dratini, Dragonair, Dragonite
(147,7,false),(147,43,true),
(148,7,false),(148,43,true),
(149,11,false),(149,43,true),
-- Mewtwo
(150,29,false),(150,24,true),
-- Mew
(151,10,false)
) AS v(pokedex, ability_idx, is_hidden)
JOIN pokemon p ON p.pokedex_number = v.pokedex
JOIN abilities a ON a.id = v.ability_idx;

-- ----------------------------------------------------------------
-- MOVIMIENTOS POR POKEMON (sample representativo de level-up moves)
-- Move IDs: 1=Látigo Cepa, 2=Rayo Solar, 3=Hoja Afilada, 4=Absorber,
-- 5=Megaagotar, 6=Polvo Veneno, 7=Paralizador, 8=Somnifero,
-- 9=Ascuas, 10=Lanzallamas, 11=Llamarada, 12=Giro Fuego,
-- 13=Pistola Agua, 14=Surf, 15=Hidrobomba, 16=Burbuja, 17=Burbujazo, 18=Cascada,
-- 19=Impactrueno, 20=Rayo, 21=Trueno, 22=Onda Trueno,
-- 23=Arañazo, 24=Golpe Karate, 25=Placaje, 26=Melé, 27=Hiperrayo,
-- 28=Gruñido, 29=Cola Férrea, 30=Garra Brutal, 31=Doble Filo,
-- 32=Impresionar, 33=Rugido, 34=Rapidez, 35=Potencia,
-- 36=Psíquico, 37=Confusión, 38=Psicoataque, 39=Amnesia,
-- 40=Rayo Hielo, 41=Ventisca, 42=Puño Hielo,
-- 43=Puño Karate, 44=Patada Salto, 45=Sumisión,
-- 46=Picotazo, 47=Ácido, 48=Bomba Lodo, 49=Colmillo Veneno,
-- 50=Terremoto, 51=Excavar, 52=Polvo Arena,
-- 53=Vuelo, 54=Tornado, 55=Ataque Ala,
-- 56=Picadura, 57=Picoteo, 58=Lengüetazo, 59=Bola Sombra, 60=Furia Dragón
-- ----------------------------------------------------------------
INSERT INTO pokemon_moves (pokemon_id, move_id)
SELECT DISTINCT p.id, m.id
FROM (VALUES
-- Bulbasaur line
(1,1),(1,4),(1,5),(1,6),(1,7),(1,8),(1,28),(1,2),
(2,1),(2,4),(2,5),(2,3),(2,6),(2,7),(2,8),
(3,1),(3,4),(3,5),(3,3),(3,2),(3,27),
-- Charmander line
(4,23),(4,9),(4,30),(4,28),(4,12),(4,31),
(5,23),(5,9),(5,30),(5,10),(5,12),
(6,9),(6,10),(6,11),(6,12),(6,30),(6,27),(6,53),
-- Squirtle line
(7,25),(7,29),(7,13),(7,16),(7,17),(7,28),
(8,25),(8,13),(8,16),(8,17),(8,14),(8,20),
(9,13),(9,14),(9,15),(9,17),(9,18),(9,27),
-- Caterpie line
(10,25),(10,28),
(11,16),
(12,25),(12,16),(12,6),(12,7),(12,8),(12,27),
-- Weedle line
(13,49),(13,28),
(14,16),
(15,49),(15,25),(15,48),(15,27),
-- Pidgey line
(16,25),(16,28),(16,33),(16,54),(16,55),
(17,25),(17,28),(17,33),(17,54),(17,55),
(18,25),(18,28),(18,33),(18,34),(18,55),(18,27),
-- Rattata, Raticate
(19,25),(19,29),(19,28),(19,23),(19,30),
(20,25),(20,29),(20,28),(20,23),(20,30),(20,27),
-- Spearow, Fearow
(21,25),(21,28),(21,46),(21,32),
(22,25),(22,28),(22,46),(22,32),(22,27),
-- Ekans, Arbok
(23,49),(23,25),(23,28),(23,47),(23,48),(23,32),
(24,49),(24,25),(24,28),(24,47),(24,48),(24,32),(24,27),
-- Pikachu, Raichu
(25,25),(25,28),(25,19),(25,29),(25,22),(25,20),(25,21),
(26,25),(26,28),(26,19),(26,20),(26,21),(26,22),(26,27),
-- Sandshrew, Sandslash
(27,23),(27,52),(27,50),(27,51),(27,30),
(28,23),(28,52),(28,50),(28,51),(28,30),(28,27),
-- Nidoran line
(29,25),(29,28),(29,49),(29,32),
(30,25),(30,28),(30,49),(30,47),(30,32),
(31,25),(31,28),(31,49),(31,47),(31,50),(31,27),
(32,25),(32,28),(32,49),(32,32),(32,46),
(33,25),(33,28),(33,49),(33,47),(33,32),(33,46),
(34,25),(34,28),(34,49),(34,47),(34,50),(34,27),
-- Clefairy, Clefable
(35,25),(35,28),(35,26),(35,27),
(36,25),(36,28),(36,26),(36,27),
-- Vulpix, Ninetales
(37,25),(37,9),(37,10),(37,11),(37,28),(37,33),
(38,25),(38,9),(38,10),(38,11),(38,27),
-- Jigglypuff, Wigglytuff
(39,25),(39,28),(39,26),(39,33),
(40,25),(40,28),(40,26),(40,27),
-- Zubat, Golbat
(41,55),(41,32),(41,54),(41,47),
(42,55),(42,32),(42,54),(42,47),(42,27),
-- Oddish line
(43,47),(43,8),(43,4),(43,6),(43,7),
(44,47),(44,8),(44,4),(44,6),(44,7),
(45,47),(45,6),(45,7),(45,8),(45,4),(45,2),
-- Paras line
(46,23),(46,6),(46,4),(46,5),(46,56),
(47,23),(47,6),(47,4),(47,5),(47,56),
-- Venonat, Venomoth
(48,25),(48,6),(48,7),(48,8),(48,47),
(49,25),(49,6),(49,7),(49,8),(49,47),(49,36),
-- Diglett, Dugtrio
(50,23),(50,52),(50,50),(50,51),
(51,23),(51,52),(51,50),(51,51),(51,27),
-- Meowth, Persian
(52,23),(52,28),(52,30),(52,25),
(53,23),(53,28),(53,30),(53,25),(53,27),
-- Psyduck, Golduck
(54,23),(54,28),(54,37),(54,13),(54,14),(54,38),
(55,23),(55,28),(55,37),(55,14),(55,36),(55,27),
-- Mankey, Primeape
(56,23),(56,28),(56,25),(56,43),(56,32),
(57,23),(57,28),(57,25),(57,43),(57,44),(57,27),
-- Growlithe, Arcanine
(58,25),(58,9),(58,28),(58,32),(58,10),(58,33),
(59,25),(59,9),(59,10),(59,11),(59,33),(59,27),
-- Poliwag line
(60,16),(60,17),(60,14),(60,15),(60,25),(60,34),
(61,16),(61,17),(61,14),(61,15),(61,25),(61,34),
(62,16),(62,17),(62,14),(62,15),(62,43),(62,45),(62,27),
-- Abra line
(63,37),(63,36),(63,38),(63,34),
(64,37),(64,36),(64,38),(64,34),(64,39),
(65,37),(65,36),(65,38),(65,34),(65,39),(65,27),
-- Machop line
(66,43),(66,25),(66,45),(66,35),
(67,43),(67,25),(67,45),(67,35),(67,26),
(68,43),(68,25),(68,45),(68,35),(68,26),(68,27),
-- Bellsprout line
(69,1),(69,47),(69,6),(69,8),(69,4),
(70,1),(70,47),(70,6),(70,8),(70,4),(70,5),
(71,1),(71,47),(71,6),(71,8),(71,4),(71,5),(71,27),
-- Tentacool, Tentacruel
(72,49),(72,47),(72,13),(72,17),(72,14),
(73,49),(73,47),(73,13),(73,17),(73,14),(73,27),
-- Geodude line
(74,28),(74,50),(74,25),(74,16),
(75,28),(75,50),(75,25),(75,16),(75,35),
(76,28),(76,50),(76,25),(76,35),(76,27),
-- Ponyta, Rapidash
(77,25),(77,9),(77,10),(77,11),(77,34),(77,28),
(78,25),(78,9),(78,10),(78,11),(78,34),(78,27),
-- Slowpoke, Slowbro
(79,25),(79,37),(79,38),(79,36),(79,14),(79,39),
(80,25),(80,37),(80,38),(80,36),(80,14),(80,27),
-- Magnemite, Magneton
(81,25),(81,19),(81,22),(81,20),(81,21),
(82,25),(82,19),(82,22),(82,20),(82,21),(82,27),
-- Farfetch'd
(83,25),(83,28),(83,30),(83,55),(83,27),
-- Doduo, Dodrio
(84,46),(84,28),(84,25),(84,32),
(85,46),(85,28),(85,25),(85,32),(85,27),
-- Seel, Dewgong
(86,25),(86,16),(86,28),(86,40),(86,14),
(87,25),(87,40),(87,41),(87,14),(87,27),
-- Grimer, Muk
(88,47),(88,48),(88,25),(88,28),
(89,47),(89,48),(89,25),(89,28),(89,27),
-- Shellder, Cloyster
(90,16),(90,17),(90,42),(90,20),(90,40),
(91,16),(91,17),(91,42),(91,40),(91,41),(91,27),
-- Gastly line
(92,58),(92,28),(92,47),(92,37),
(93,58),(93,28),(93,47),(93,37),(93,59),
(94,58),(94,28),(94,47),(94,37),(94,59),(94,27),
-- Onix
(95,25),(95,28),(95,50),(95,52),(95,16),
-- Drowzee, Hypno
(96,25),(96,37),(96,36),(96,38),(96,28),
(97,25),(97,37),(97,36),(97,38),(97,28),(97,27),
-- Krabby, Kingler
(98,23),(98,16),(98,35),(98,18),(98,30),
(99,23),(99,16),(99,35),(99,18),(99,30),(99,27),
-- Voltorb, Electrode
(100,25),(100,19),(100,22),(100,21),(100,28),
(101,25),(101,19),(101,22),(101,21),(101,27),
-- Exeggcute, Exeggutor
(102,4),(102,5),(102,37),(102,36),(102,2),
(103,4),(103,5),(103,37),(103,36),(103,2),(103,27),
-- Cubone, Marowak
(104,25),(104,28),(104,50),(104,52),(104,35),
(105,25),(105,28),(105,50),(105,52),(105,35),(105,27),
-- Hitmonlee, Hitmonchan
(106,43),(106,44),(106,45),(106,35),
(107,43),(107,35),(107,42),
-- Lickitung
(108,25),(108,26),(108,58),(108,27),(108,28),
-- Koffing, Weezing
(109,25),(109,47),(109,48),(109,28),
(110,25),(110,47),(110,48),(110,28),(110,27),
-- Rhyhorn, Rhydon
(111,25),(111,50),(111,52),(111,35),(111,32),
(112,25),(112,50),(112,52),(112,35),(112,27),
-- Chansey
(113,25),(113,28),(113,26),(113,27),(113,35),
-- Tangela
(114,1),(114,5),(114,3),(114,2),(114,6),(114,7),
-- Kangaskhan
(115,25),(115,28),(115,26),(115,35),(115,27),
-- Horsea, Seadra
(116,16),(116,17),(116,14),(116,15),(116,34),
(117,16),(117,17),(117,14),(117,15),(117,34),(117,27),
-- Goldeen, Seaking
(118,18),(118,14),(118,34),(118,29),(118,25),
(119,18),(119,14),(119,34),(119,29),(119,27),
-- Staryu, Starmie
(120,25),(120,16),(120,17),(120,14),(120,34),
(121,25),(121,16),(121,17),(121,14),(121,36),(121,27),
-- Mr. Mime
(122,37),(122,38),(122,36),(122,27),(122,25),
-- Scyther
(123,23),(123,55),(123,30),(123,27),(123,56),
-- Jynx
(124,37),(124,38),(124,36),(124,40),(124,41),(124,8),
-- Electabuzz
(125,19),(125,20),(125,21),(125,22),(125,27),
-- Magmar
(126,9),(126,10),(126,11),(126,27),(126,12),
-- Pinsir
(127,25),(127,30),(127,44),(127,27),(127,56),
-- Tauros
(128,25),(128,26),(128,28),(128,27),(128,35),
-- Magikarp, Gyarados
(129,25),
(130,14),(130,15),(130,25),(130,27),(130,32),
-- Lapras
(131,14),(131,15),(131,40),(131,41),(131,25),(131,36),
-- Ditto
(132,25),
-- Eevee
(133,25),(133,28),(133,23),(133,26),(133,29),
-- Vaporeon, Jolteon, Flareon
(134,14),(134,15),(134,17),(134,25),(134,36),
(135,19),(135,20),(135,21),(135,22),(135,34),
(136,9),(136,10),(136,11),(136,25),(136,27),
-- Porygon
(137,25),(137,37),(137,36),(137,27),
-- Omanyte, Omastar
(138,16),(138,17),(138,14),(138,40),(138,41),
(139,16),(139,17),(139,14),(139,40),(139,41),(139,27),
-- Kabuto, Kabutops
(140,16),(140,23),(140,18),(140,30),
(141,16),(141,23),(141,18),(141,30),(141,27),
-- Aerodactyl
(142,25),(142,55),(142,32),(142,27),(142,50),
-- Snorlax
(143,25),(143,26),(143,27),(143,35),(143,28),
-- Articuno
(144,40),(144,41),(144,42),(144,14),(144,53),
-- Zapdos
(145,19),(145,20),(145,21),(145,22),(145,53),
-- Moltres
(146,9),(146,10),(146,11),(146,12),(146,53),
-- Dratini, Dragonair, Dragonite
(147,25),(147,28),(147,60),(147,34),
(148,25),(148,28),(148,60),(148,34),(148,36),
(149,25),(149,28),(149,60),(149,36),(149,53),(149,27),
-- Mewtwo
(150,37),(150,36),(150,38),(150,27),(150,34),
-- Mew
(151,25),(151,37),(151,36),(151,14),(151,2),(151,50)
) AS v(pokedex, move_idx)
JOIN pokemon p ON p.pokedex_number = v.pokedex
JOIN moves m ON m.id = v.move_idx;

-- ----------------------------------------------------------------
-- EVOLUCIONES GEN 1
-- trigger_name: 'nivel', 'piedra-fuego', 'piedra-agua', 'piedra-trueno',
--               'piedra-hoja', 'intercambio', 'felicidad', 'piedra-luna'
-- ----------------------------------------------------------------
INSERT INTO evolutions (from_pokemon_id, to_pokemon_id, min_level, trigger_name)
SELECT p1.id, p2.id, v.min_level, v.trigger_name
FROM (VALUES
-- Cadenas de 3 etapas
(1, 2, 16, 'nivel'),(2, 3, 32, 'nivel'),
(4, 5, 16, 'nivel'),(5, 6, 36, 'nivel'),
(7, 8, 16, 'nivel'),(8, 9, 36, 'nivel'),
(10, 11, 7, 'nivel'),(11, 12, 10, 'nivel'),
(13, 14, 7, 'nivel'),(14, 15, 10, 'nivel'),
(16, 17, 18, 'nivel'),(17, 18, 36, 'nivel'),
(19, 20, 20, 'nivel'),
(21, 22, 20, 'nivel'),
(23, 24, 22, 'nivel'),
(25, 26, NULL, 'piedra-trueno'),
(27, 28, 22, 'nivel'),
(29, 30, 16, 'nivel'),(30, 31, NULL, 'piedra-luna'),
(32, 33, 16, 'nivel'),(33, 34, NULL, 'piedra-luna'),
(35, 36, NULL, 'piedra-luna'),
(37, 38, NULL, 'piedra-fuego'),
(39, 40, NULL, 'piedra-luna'),
(41, 42, 22, 'nivel'),
(43, 44, 21, 'nivel'),(44, 45, NULL, 'piedra-hoja'),
(46, 47, 24, 'nivel'),
(48, 49, 31, 'nivel'),
(50, 51, 26, 'nivel'),
(52, 53, 28, 'nivel'),
(54, 55, 33, 'nivel'),
(56, 57, 28, 'nivel'),
(58, 59, NULL, 'piedra-fuego'),
(60, 61, 25, 'nivel'),(61, 62, NULL, 'piedra-agua'),
(63, 64, 16, 'nivel'),(64, 65, NULL, 'intercambio'),
(66, 67, 28, 'nivel'),(67, 68, NULL, 'intercambio'),
(69, 70, 21, 'nivel'),(70, 71, NULL, 'piedra-hoja'),
(72, 73, 30, 'nivel'),
(74, 75, 25, 'nivel'),(75, 76, NULL, 'intercambio'),
(77, 78, 40, 'nivel'),
(79, 80, 37, 'nivel'),
(81, 82, 30, 'nivel'),
(84, 85, 31, 'nivel'),
(86, 87, 34, 'nivel'),
(88, 89, 38, 'nivel'),
(90, 91, NULL, 'piedra-agua'),
(92, 93, 25, 'nivel'),(93, 94, NULL, 'intercambio'),
(96, 97, 26, 'nivel'),
(98, 99, 28, 'nivel'),
(100, 101, 30, 'nivel'),
(102, 103, NULL, 'piedra-hoja'),
(104, 105, 28, 'nivel'),
(109, 110, 35, 'nivel'),
(111, 112, 42, 'nivel'),
(116, 117, 32, 'nivel'),
(118, 119, 33, 'nivel'),
(120, 121, NULL, 'piedra-agua'),
(129, 130, 20, 'nivel'),
(133, 134, NULL, 'piedra-agua'),
(133, 135, NULL, 'piedra-trueno'),
(133, 136, NULL, 'piedra-fuego'),
(138, 139, 40, 'nivel'),
(140, 141, 40, 'nivel'),
(147, 148, 30, 'nivel'),(148, 149, 55, 'nivel')
) AS v(pokedex_from, pokedex_to, min_level, trigger_name)
JOIN pokemon p1 ON p1.pokedex_number = v.pokedex_from
JOIN pokemon p2 ON p2.pokedex_number = v.pokedex_to
WHERE v.pokedex_to IS NOT NULL;

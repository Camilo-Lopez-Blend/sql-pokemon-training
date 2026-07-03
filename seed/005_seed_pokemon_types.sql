-- ============================================================
-- SEED: Tipos de cada Pokemon (slot 1=primario, 2=secundario)
-- Types IDs: 1=Normal, 2=Fuego, 3=Agua, 4=Electrico, 5=Planta,
--            6=Hielo, 7=Lucha, 8=Veneno, 9=Tierra, 10=Volador,
--            11=Psiquico, 12=Bicho, 13=Roca, 14=Fantasma, 15=Dragon,
--            16=Siniestro, 17=Acero, 18=Hada
-- ============================================================

INSERT INTO pokemon_types (pokemon_id, type_id, slot) VALUES
-- #1 Bulbasaur - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=1),   5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=1),   8, 2),
-- #2 Ivysaur - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=2),   5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=2),   8, 2),
-- #3 Venusaur - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=3),   5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=3),   8, 2),
-- #4 Charmander - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=4),   2, 1),
-- #5 Charmeleon - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=5),   2, 1),
-- #6 Charizard - Fuego/Volador
((SELECT id FROM pokemon WHERE pokedex_number=6),   2, 1),
((SELECT id FROM pokemon WHERE pokedex_number=6),  10, 2),
-- #7 Squirtle - Agua
((SELECT id FROM pokemon WHERE pokedex_number=7),   3, 1),
-- #8 Wartortle - Agua
((SELECT id FROM pokemon WHERE pokedex_number=8),   3, 1),
-- #9 Blastoise - Agua
((SELECT id FROM pokemon WHERE pokedex_number=9),   3, 1),
-- #10 Caterpie - Bicho
((SELECT id FROM pokemon WHERE pokedex_number=10), 12, 1),
-- #11 Metapod - Bicho
((SELECT id FROM pokemon WHERE pokedex_number=11), 12, 1),
-- #12 Butterfree - Bicho/Volador
((SELECT id FROM pokemon WHERE pokedex_number=12), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=12), 10, 2),
-- #13 Weedle - Bicho/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=13), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=13),  8, 2),
-- #14 Kakuna - Bicho/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=14), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=14),  8, 2),
-- #15 Beedrill - Bicho/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=15), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=15),  8, 2),
-- #16 Pidgey - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=16),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=16), 10, 2),
-- #17 Pidgeotto - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=17),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=17), 10, 2),
-- #18 Pidgeot - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=18),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=18), 10, 2),
-- #19 Rattata - Normal
((SELECT id FROM pokemon WHERE pokedex_number=19),  1, 1),
-- #20 Raticate - Normal
((SELECT id FROM pokemon WHERE pokedex_number=20),  1, 1),
-- #21 Spearow - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=21),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=21), 10, 2),
-- #22 Fearow - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=22),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=22), 10, 2),
-- #23 Ekans - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=23),  8, 1),
-- #24 Arbok - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=24),  8, 1),
-- #25 Pikachu - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=25),  4, 1),
-- #26 Raichu - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=26),  4, 1),
-- #27 Sandshrew - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=27),  9, 1),
-- #28 Sandslash - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=28),  9, 1),
-- #29 Nidoran♀ - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=29),  8, 1),
-- #30 Nidorina - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=30),  8, 1),
-- #31 Nidoqueen - Veneno/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=31),  8, 1),
((SELECT id FROM pokemon WHERE pokedex_number=31),  9, 2),
-- #32 Nidoran♂ - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=32),  8, 1),
-- #33 Nidorino - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=33),  8, 1),
-- #34 Nidoking - Veneno/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=34),  8, 1),
((SELECT id FROM pokemon WHERE pokedex_number=34),  9, 2),
-- #35 Clefairy - Hada
((SELECT id FROM pokemon WHERE pokedex_number=35), 18, 1),
-- #36 Clefable - Hada
((SELECT id FROM pokemon WHERE pokedex_number=36), 18, 1),
-- #37 Vulpix - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=37),  2, 1),
-- #38 Ninetales - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=38),  2, 1),
-- #39 Jigglypuff - Normal/Hada
((SELECT id FROM pokemon WHERE pokedex_number=39),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=39), 18, 2),
-- #40 Wigglytuff - Normal/Hada
((SELECT id FROM pokemon WHERE pokedex_number=40),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=40), 18, 2),
-- #41 Zubat - Veneno/Volador
((SELECT id FROM pokemon WHERE pokedex_number=41),  8, 1),
((SELECT id FROM pokemon WHERE pokedex_number=41), 10, 2),
-- #42 Golbat - Veneno/Volador
((SELECT id FROM pokemon WHERE pokedex_number=42),  8, 1),
((SELECT id FROM pokemon WHERE pokedex_number=42), 10, 2),
-- #43 Oddish - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=43),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=43),  8, 2),
-- #44 Gloom - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=44),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=44),  8, 2),
-- #45 Vileplume - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=45),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=45),  8, 2),
-- #46 Paras - Bicho/Planta
((SELECT id FROM pokemon WHERE pokedex_number=46), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=46),  5, 2),
-- #47 Parasect - Bicho/Planta
((SELECT id FROM pokemon WHERE pokedex_number=47), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=47),  5, 2),
-- #48 Venonat - Bicho/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=48), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=48),  8, 2),
-- #49 Venomoth - Bicho/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=49), 12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=49),  8, 2),
-- #50 Diglett - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=50),  9, 1),
-- #51 Dugtrio - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=51),  9, 1),
-- #52 Meowth - Normal
((SELECT id FROM pokemon WHERE pokedex_number=52),  1, 1),
-- #53 Persian - Normal
((SELECT id FROM pokemon WHERE pokedex_number=53),  1, 1),
-- #54 Psyduck - Agua
((SELECT id FROM pokemon WHERE pokedex_number=54),  3, 1),
-- #55 Golduck - Agua
((SELECT id FROM pokemon WHERE pokedex_number=55),  3, 1),
-- #56 Mankey - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=56),  7, 1),
-- #57 Primeape - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=57),  7, 1),
-- #58 Growlithe - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=58),  2, 1),
-- #59 Arcanine - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=59),  2, 1),
-- #60 Poliwag - Agua
((SELECT id FROM pokemon WHERE pokedex_number=60),  3, 1),
-- #61 Poliwhirl - Agua
((SELECT id FROM pokemon WHERE pokedex_number=61),  3, 1),
-- #62 Poliwrath - Agua/Lucha
((SELECT id FROM pokemon WHERE pokedex_number=62),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=62),  7, 2),
-- #63 Abra - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=63), 11, 1),
-- #64 Kadabra - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=64), 11, 1),
-- #65 Alakazam - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=65), 11, 1),
-- #66 Machop - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=66),  7, 1),
-- #67 Machoke - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=67),  7, 1),
-- #68 Machamp - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=68),  7, 1),
-- #69 Bellsprout - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=69),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=69),  8, 2),
-- #70 Weepinbell - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=70),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=70),  8, 2),
-- #71 Victreebel - Planta/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=71),  5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=71),  8, 2),
-- #72 Tentacool - Agua/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=72),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=72),  8, 2),
-- #73 Tentacruel - Agua/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=73),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=73),  8, 2),
-- #74 Geodude - Roca/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=74), 13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=74),  9, 2),
-- #75 Graveler - Roca/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=75), 13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=75),  9, 2),
-- #76 Golem - Roca/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=76), 13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=76),  9, 2),
-- #77 Ponyta - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=77),  2, 1),
-- #78 Rapidash - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=78),  2, 1),
-- #79 Slowpoke - Agua/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=79),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=79), 11, 2),
-- #80 Slowbro - Agua/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=80),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=80), 11, 2),
-- #81 Magnemite - Electrico/Acero
((SELECT id FROM pokemon WHERE pokedex_number=81),  4, 1),
((SELECT id FROM pokemon WHERE pokedex_number=81), 17, 2),
-- #82 Magneton - Electrico/Acero
((SELECT id FROM pokemon WHERE pokedex_number=82),  4, 1),
((SELECT id FROM pokemon WHERE pokedex_number=82), 17, 2),
-- #83 Farfetch'd - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=83),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=83), 10, 2),
-- #84 Doduo - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=84),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=84), 10, 2),
-- #85 Dodrio - Normal/Volador
((SELECT id FROM pokemon WHERE pokedex_number=85),  1, 1),
((SELECT id FROM pokemon WHERE pokedex_number=85), 10, 2),
-- #86 Seel - Agua
((SELECT id FROM pokemon WHERE pokedex_number=86),  3, 1),
-- #87 Dewgong - Agua/Hielo
((SELECT id FROM pokemon WHERE pokedex_number=87),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=87),  6, 2),
-- #88 Grimer - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=88),  8, 1),
-- #89 Muk - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=89),  8, 1),
-- #90 Shellder - Agua
((SELECT id FROM pokemon WHERE pokedex_number=90),  3, 1),
-- #91 Cloyster - Agua/Hielo
((SELECT id FROM pokemon WHERE pokedex_number=91),  3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=91),  6, 2),
-- #92 Gastly - Fantasma/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=92), 14, 1),
((SELECT id FROM pokemon WHERE pokedex_number=92),  8, 2),
-- #93 Haunter - Fantasma/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=93), 14, 1),
((SELECT id FROM pokemon WHERE pokedex_number=93),  8, 2),
-- #94 Gengar - Fantasma/Veneno
((SELECT id FROM pokemon WHERE pokedex_number=94), 14, 1),
((SELECT id FROM pokemon WHERE pokedex_number=94),  8, 2),
-- #95 Onix - Roca/Tierra
((SELECT id FROM pokemon WHERE pokedex_number=95), 13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=95),  9, 2),
-- #96 Drowzee - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=96), 11, 1),
-- #97 Hypno - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=97), 11, 1),
-- #98 Krabby - Agua
((SELECT id FROM pokemon WHERE pokedex_number=98),  3, 1),
-- #99 Kingler - Agua
((SELECT id FROM pokemon WHERE pokedex_number=99),  3, 1),
-- #100 Voltorb - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=100), 4, 1),
-- #101 Electrode - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=101), 4, 1),
-- #102 Exeggcute - Planta/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=102), 5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=102),11, 2),
-- #103 Exeggutor - Planta/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=103), 5, 1),
((SELECT id FROM pokemon WHERE pokedex_number=103),11, 2),
-- #104 Cubone - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=104), 9, 1),
-- #105 Marowak - Tierra
((SELECT id FROM pokemon WHERE pokedex_number=105), 9, 1),
-- #106 Hitmonlee - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=106), 7, 1),
-- #107 Hitmonchan - Lucha
((SELECT id FROM pokemon WHERE pokedex_number=107), 7, 1),
-- #108 Lickitung - Normal
((SELECT id FROM pokemon WHERE pokedex_number=108), 1, 1),
-- #109 Koffing - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=109), 8, 1),
-- #110 Weezing - Veneno
((SELECT id FROM pokemon WHERE pokedex_number=110), 8, 1),
-- #111 Rhyhorn - Tierra/Roca
((SELECT id FROM pokemon WHERE pokedex_number=111), 9, 1),
((SELECT id FROM pokemon WHERE pokedex_number=111),13, 2),
-- #112 Rhydon - Tierra/Roca
((SELECT id FROM pokemon WHERE pokedex_number=112), 9, 1),
((SELECT id FROM pokemon WHERE pokedex_number=112),13, 2),
-- #113 Chansey - Normal
((SELECT id FROM pokemon WHERE pokedex_number=113), 1, 1),
-- #114 Tangela - Planta
((SELECT id FROM pokemon WHERE pokedex_number=114), 5, 1),
-- #115 Kangaskhan - Normal
((SELECT id FROM pokemon WHERE pokedex_number=115), 1, 1),
-- #116 Horsea - Agua
((SELECT id FROM pokemon WHERE pokedex_number=116), 3, 1),
-- #117 Seadra - Agua
((SELECT id FROM pokemon WHERE pokedex_number=117), 3, 1),
-- #118 Goldeen - Agua
((SELECT id FROM pokemon WHERE pokedex_number=118), 3, 1),
-- #119 Seaking - Agua
((SELECT id FROM pokemon WHERE pokedex_number=119), 3, 1),
-- #120 Staryu - Agua
((SELECT id FROM pokemon WHERE pokedex_number=120), 3, 1),
-- #121 Starmie - Agua/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=121), 3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=121),11, 2),
-- #122 Mr. Mime - Psiquico/Hada
((SELECT id FROM pokemon WHERE pokedex_number=122),11, 1),
((SELECT id FROM pokemon WHERE pokedex_number=122),18, 2),
-- #123 Scyther - Bicho/Volador
((SELECT id FROM pokemon WHERE pokedex_number=123),12, 1),
((SELECT id FROM pokemon WHERE pokedex_number=123),10, 2),
-- #124 Jynx - Hielo/Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=124), 6, 1),
((SELECT id FROM pokemon WHERE pokedex_number=124),11, 2),
-- #125 Electabuzz - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=125), 4, 1),
-- #126 Magmar - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=126), 2, 1),
-- #127 Pinsir - Bicho
((SELECT id FROM pokemon WHERE pokedex_number=127),12, 1),
-- #128 Tauros - Normal
((SELECT id FROM pokemon WHERE pokedex_number=128), 1, 1),
-- #129 Magikarp - Agua
((SELECT id FROM pokemon WHERE pokedex_number=129), 3, 1),
-- #130 Gyarados - Agua/Volador
((SELECT id FROM pokemon WHERE pokedex_number=130), 3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=130),10, 2),
-- #131 Lapras - Agua/Hielo
((SELECT id FROM pokemon WHERE pokedex_number=131), 3, 1),
((SELECT id FROM pokemon WHERE pokedex_number=131), 6, 2),
-- #132 Ditto - Normal
((SELECT id FROM pokemon WHERE pokedex_number=132), 1, 1),
-- #133 Eevee - Normal
((SELECT id FROM pokemon WHERE pokedex_number=133), 1, 1),
-- #134 Vaporeon - Agua
((SELECT id FROM pokemon WHERE pokedex_number=134), 3, 1),
-- #135 Jolteon - Electrico
((SELECT id FROM pokemon WHERE pokedex_number=135), 4, 1),
-- #136 Flareon - Fuego
((SELECT id FROM pokemon WHERE pokedex_number=136), 2, 1),
-- #137 Porygon - Normal
((SELECT id FROM pokemon WHERE pokedex_number=137), 1, 1),
-- #138 Omanyte - Roca/Agua
((SELECT id FROM pokemon WHERE pokedex_number=138),13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=138), 3, 2),
-- #139 Omastar - Roca/Agua
((SELECT id FROM pokemon WHERE pokedex_number=139),13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=139), 3, 2),
-- #140 Kabuto - Roca/Agua
((SELECT id FROM pokemon WHERE pokedex_number=140),13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=140), 3, 2),
-- #141 Kabutops - Roca/Agua
((SELECT id FROM pokemon WHERE pokedex_number=141),13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=141), 3, 2),
-- #142 Aerodactyl - Roca/Volador
((SELECT id FROM pokemon WHERE pokedex_number=142),13, 1),
((SELECT id FROM pokemon WHERE pokedex_number=142),10, 2),
-- #143 Snorlax - Normal
((SELECT id FROM pokemon WHERE pokedex_number=143), 1, 1),
-- #144 Articuno - Hielo/Volador
((SELECT id FROM pokemon WHERE pokedex_number=144), 6, 1),
((SELECT id FROM pokemon WHERE pokedex_number=144),10, 2),
-- #145 Zapdos - Electrico/Volador
((SELECT id FROM pokemon WHERE pokedex_number=145), 4, 1),
((SELECT id FROM pokemon WHERE pokedex_number=145),10, 2),
-- #146 Moltres - Fuego/Volador
((SELECT id FROM pokemon WHERE pokedex_number=146), 2, 1),
((SELECT id FROM pokemon WHERE pokedex_number=146),10, 2),
-- #147 Dratini - Dragon
((SELECT id FROM pokemon WHERE pokedex_number=147),15, 1),
-- #148 Dragonair - Dragon
((SELECT id FROM pokemon WHERE pokedex_number=148),15, 1),
-- #149 Dragonite - Dragon/Volador
((SELECT id FROM pokemon WHERE pokedex_number=149),15, 1),
((SELECT id FROM pokemon WHERE pokedex_number=149),10, 2),
-- #150 Mewtwo - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=150),11, 1),
-- #151 Mew - Psiquico
((SELECT id FROM pokemon WHERE pokedex_number=151),11, 1);

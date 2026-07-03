-- ============================================================
-- SEED: Movimientos (60 movimientos representativos Gen 1)
-- damage_class: 'fisico', 'especial', 'estado'
-- ============================================================

INSERT INTO moves (name_es, name_en, type_id, power, accuracy, pp, damage_class) VALUES
-- PLANTA
    ('Látigo Cepa',     'vine-whip',         5,  45, 100, 25, 'fisico'),
    ('Rayo Solar',      'solar-beam',        5, 120, 100, 10, 'especial'),
    ('Hoja Afilada',    'razor-leaf',        5,  55,  95, 25, 'fisico'),
    ('Absorber',        'absorb',            5,  20, 100, 25, 'especial'),
    ('Megaagotar',      'mega-drain',        5,  40, 100, 15, 'especial'),
    ('Polvo Veneno',    'poison-powder',     5, NULL,  75, 35, 'estado'),
    ('Paralizador',     'stun-spore',        5, NULL,  75, 30, 'estado'),
    ('Somnifero',       'sleep-powder',      5, NULL,  75, 15, 'estado'),

-- FUEGO
    ('Ascuas',          'ember',             2,  40, 100, 25, 'especial'),
    ('Lanzallamas',     'flamethrower',      2,  90, 100, 15, 'especial'),
    ('Llamarada',       'fire-blast',        2, 110,  85,  5, 'especial'),
    ('Giro Fuego',      'fire-spin',         2,  35,  85, 15, 'especial'),

-- AGUA
    ('Pistola Agua',    'water-gun',         3,  40, 100, 25, 'especial'),
    ('Surf',            'surf',              3,  90, 100, 15, 'especial'),
    ('Hidrobomba',      'hydro-pump',        3, 110,  80,  5, 'especial'),
    ('Burbuja',         'bubble',            3,  40, 100, 30, 'especial'),
    ('Burbujazo',       'bubble-beam',       3,  65, 100, 20, 'especial'),
    ('Cascada',         'waterfall',         3,  80, 100, 15, 'fisico'),

-- ELECTRICO
    ('Impactrueno',     'thunder-shock',     4,  40, 100, 30, 'especial'),
    ('Rayo',            'thunderbolt',       4,  90, 100, 15, 'especial'),
    ('Trueno',          'thunder',           4, 110,  70, 10, 'especial'),
    ('Onda Trueno',     'thunder-wave',      4, NULL, 100, 20, 'estado'),

-- NORMAL
    ('Arañazo',         'scratch',           1,  40, 100, 35, 'fisico'),
    ('Golpe Karate',    'karate-chop',       1,  50, 100, 25, 'fisico'),
    ('Placaje',         'tackle',            1,  40, 100, 35, 'fisico'),
    ('Melé',            'body-slam',         1,  85, 100, 15, 'fisico'),
    ('Hiperrayo',       'hyper-beam',        1, 150,  90,  5, 'especial'),
    ('Gruñido',         'growl',             1, NULL, 100, 40, 'estado'),
    ('Cola Férrea',     'tail-whip',         1, NULL, 100, 30, 'estado'),
    ('Garra Brutal',    'slash',             1,  70, 100, 20, 'fisico'),
    ('Doble Filo',      'double-edge',       1, 120, 100, 15, 'fisico'),
    ('Impresionar',     'leer',              1, NULL, 100, 30, 'estado'),
    ('Rugido',          'roar',              1, NULL, 100, 20, 'estado'),
    ('Rapidez',         'agility',           1, NULL, NULL,30, 'estado'),
    ('Potencia',        'strength',          1,  80, 100, 15, 'fisico'),

-- PSIQUICO
    ('Psíquico',        'psychic',          11,  90, 100, 10, 'especial'),
    ('Confusión',       'confusion',        11,  50, 100, 25, 'especial'),
    ('Psicoataque',     'psybeam',          11,  65, 100, 20, 'especial'),
    ('Amnesia',         'amnesia',          11, NULL, NULL, 20, 'estado'),

-- HIELO
    ('Rayo Hielo',      'ice-beam',          6,  90, 100, 10, 'especial'),
    ('Ventisca',        'blizzard',          6, 110,  70,  5, 'especial'),
    ('Puño Hielo',      'ice-punch',         6,  75, 100, 15, 'fisico'),

-- LUCHA
    ('Puño Karate',     'karate-chop',       7,  50, 100, 25, 'fisico'),
    ('Patada Salto',    'high-jump-kick',    7, 130,  90, 10, 'fisico'),
    ('Sumisión',        'submission',        7,  80,  80, 20, 'fisico'),

-- VENENO
    ('Picotazo',        'peck',              8,  35, 100, 35, 'fisico'),
    ('Ácido',           'acid',              8,  40, 100, 30, 'especial'),
    ('Bomba Lodo',      'sludge-bomb',       8,  90, 100, 10, 'especial'),
    ('Colmillo Veneno', 'poison-sting',      8,  15, 100, 35, 'fisico'),

-- TIERRA
    ('Terremoto',       'earthquake',        9, 100, 100, 10, 'fisico'),
    ('Excavar',         'dig',               9,  80, 100, 10, 'fisico'),
    ('Polvo Arena',     'sand-attack',       9, NULL, 100, 15, 'estado'),

-- VOLADOR
    ('Vuelo',           'fly',              10,  90,  95, 15, 'fisico'),
    ('Tornado',         'gust',             10,  40, 100, 35, 'especial'),
    ('Ataque Ala',      'wing-attack',      10,  60, 100, 35, 'fisico'),

-- BICHO
    ('Picadura',        'bug-bite',         12,  60, 100, 20, 'fisico'),
    ('Picoteo',         'peck',             12,  35, 100, 35, 'fisico'),

-- FANTASMA
    ('Lengüetazo',      'lick',             14,  30, 100, 30, 'fisico'),
    ('Bola Sombra',     'shadow-ball',      14,  80, 100, 15, 'especial'),

-- DRAGON
    ('Furia Dragón',    'dragon-rage',      15, NULL, 100, 10, 'especial');

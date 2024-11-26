INSERT INTO Rarity (id, rarity_name, price_credits, price_gems, level) VALUES
(1, 'Comum', 0, 0, 1),
(2, 'Incomum', 160, 29, 2),
(3, 'Super Raro', 430, 79, 3),
(4, 'Épico', 925, 169, 4),
(5, 'Mítico', 1900, 349, 5),
(6, 'Lendário', 3800, 699, 6);

INSERT INTO Maestry (id, brawler_id, maestry_level) VALUES
(1, NULL, 'Madeira'),
(2, NULL, 'Bronze 1'),
(3, NULL, 'Bronze 2'),
(4, NULL, 'Bronze 3'),
(5, NULL, 'Prata 1'),
(6, NULL, 'Prata 2'),
(7, NULL, 'Prata 3'),
(8, NULL, 'Ouro 1'),
(9, NULL, 'Ouro 2'),
(10, NULL, 'Ouro 3');

UPDATE Brawlers SET maestry_id = 1 WHERE id BETWEEN 1 AND 85;

INSERT INTO Ranks (id, rank_level, color, trophy) VALUES
(1, 1, 'Bronze', '100 Troféus'),
(2, 5, 'Prata', '200 Troféus'),
(3, 10, 'Dourado', '300 Troféus'),
(4, 15, 'Diamante', '400 Troféus'),
(5, 20, 'Ametista', '500 Troféus'),
(6, 25, 'Esmeralda', '600 Troféus'),
(7, 30, 'Rubi', '700 Troféus'),
(8, 35, 'Obsidiana', '760 Troféus'),
(9, 40, 'Cristal', '800 Troféus'),
(10, 45, 'Half Bling', '880 Troféus'),
(11, 50, 'Max Bling', '1000 Troféus');

-- Brawlers Comuns e Incomuns
INSERT INTO Brawlers (name, class, description, level, trophys, moveSpeed, rarity_id, maestry_id, rank_id) VALUES
('Shelly', 'Destruidor', 'Uma brawler versátil com ataque de curto alcance.', 11, 512, 'Rápida', 1, 4, 6),
('Nita', 'Destruidor', 'Invoca um urso para ajudar nas batalhas.', 6, 184, 'Média', 2, 1, 3),
('Colt', 'Destruidor', 'Dispara rajadas de balas.', 11, 502, 'Média', 2, 4, 6),
('Bull', 'Tanque', 'Tanque de Curto alcance.', 6, 182, 'Rápida', 2, 1, 3),
('Brock', 'Tiro Preciso', 'Atira misseis que ao atingirem algo explodem', 10, 488, 'Média', 2, 4, 6),
('El Primo', 'Tanque', 'Um lutador corpo a corpo com alta saúde.', 6, 149, 'Rápida', 2, 1, 2),
('Barley', 'Detonador', 'Dispara coqueteis que ficam em uma área por certa duração', 7, 280, 'Média', 2, 1, 3),
('Poco', 'Suporte', 'Suas canções curam aliados e causam danos aos inimigos', 9, 317, 'Média', 2, 2, 4),
('Rosa', 'Tanque', 'Tanque de Curto alcance que fica mais forte nas moitas', 6, 60, 'Rápida', 2, 1, 1),
('Jessie', 'Controle', 'Cria uma torreta', 11, 500, 'Média', 3, 4, 6),
('Dynamike', 'Detonador', 'Dispara Explosivos', 11, 833, 'Rápida', 3, 7, 9),
('Tick', 'Detonador', 'Lança minas que explodem após um tempo.', 7, 206, 'Média', 3, 1, 3),
('8-Bit', 'Destruidor', 'Atira com precisão e aumenta o dano de aliados.', 1, 0, 'Lenta', 3, 1, 1),
('Rico', 'Destruidor', 'Dispara balas que ricocheteiam nas paredes.', 9, 305, 'Média', 3, 2, 4),
('Darryl', 'Tanque', 'Um robô pirata com ataques de curto alcance.', 9, 374, 'Rápida', 3, 2, 4),
('Penny', 'Controle', 'Dispara sacos de moedas que explodem ao atingir o alvo e cria torretas.', 11, 1001, 'Média', 3, 7, 11),
('Carl', 'Destruidor', 'Lança um bumerangue que atravessa inimigos e volta.', 6, 59, 'Média', 3, 1, 2),
('Jacky', 'Tanque', 'Usa uma britadeira para causar dano em área.', 7, 171, 'Rápida', 3, 1, 3),
('Gus', 'Suporte', 'Cria escudos para aliados ao carregar sua super.', 5, 55, 'Média', 3, 1, 1),
('Bo', 'Controle', 'Coloca minas terrestres no campo e usa flechas explosivas.', 1, 0, 'Média', 4, 1, 1),
('Emz', 'Controle', 'Atira spray que causa dano ao longo do tempo.', 1, 19, 'Média', 4, 1, 1),
('Stu', 'Algoz', 'Avança rapidamente e dispara chamas em linha reta.', 1, 0, 'Rápida', 4, 1, 1),
('Piper', 'Tiro Preciso', 'Causa mais dano quanto maior a distância do alvo.', 11, 1021, 'Média', 4, 10, 11),
('Pam', 'Suporte', 'Dispara projéteis e tem uma torreta que cura aliados em área.', 5, 88, 'Média', 4, 1, 2),
('Frank', 'Tanque', 'Causa dano em área com seu martelo gigante.', 11, 752, 'Lenta', 4, 7, 9),
('Bibi', 'Tanque', 'Usa seu bastão para afastar inimigos e bloquear projéteis.', 5, 46, 'Média', 4, 1, 2),
('Bea', 'Tiro Preciso', 'Atira projéteis que aumentam de dano após um acerto.', 6, 109, 'Média', 4, 2, 3),
('Nani', 'Tiro Preciso', 'Dispara orbes que convergem em um único ponto.', 6, 210, 'Média', 4, 1, 3),
('Edgar', 'Algoz', 'Recupera saúde ao causar dano aos inimigos.', 1, 0, 'Rápida', 4, 1, 1),
('Griff', 'Controle', 'Dispara moedas em forma de leque com alto impacto.', 5, 130, 'Média', 4, 2, 3),
('Grom', 'Detonador', 'Lança explosivos em área com alta precisão.', 7, 340, 'Média', 4, 2, 3),
('Bonnie', 'Tiro Preciso', 'Alterna entre ataques de longo e curto alcance.', 6, 210, 'Média', 4, 2, 3),
('Gale', 'Controle', 'Atira rajadas de vento para empurrar inimigos.', 7, 0, 'Média', 4, 1, 1),
('Colette', 'Destruidor', 'Dano baseado na saúde atual dos inimigos.', 11, 338, 'Média', 4, 2, 6),
('Belle', 'Tiro Preciso', 'Marca inimigos para aumentar o dano recebido.', 11, 398, 'Média', 4, 5, 9),
('Ash', 'Controle', 'Enche sua barra de raiva para ataques mais fortes.', 1, 20, 'Lenta', 4, 1, 1),
('Lola', 'Destruidor', 'Cria uma cópia de si mesma para atacar.', 1, 0, 'Média', 4, 1, 1),
('Sam', 'Algoz', 'Avança com seu colete magnético para causar dano.', 1, 0, 'Média', 4, 1, 1),
('Mandy', 'Tiro Preciso', 'Atira balas de caramelo que atravessam obstáculos.', 8, 550, 'Média', 4, 3, 4),
('Maisie', 'Tiro Preciso', 'Dispara feixes em linha reta com alto alcance.', 7, 340, 'Média', 4, 2, 3),
('Hank', 'Controle', 'Explode bolhas gigantes com grande área de efeito.', 1, 20, 'Média', 4, 1, 1),
('Pearl', 'Destruidor', 'Ataques consecutivos que aumentam o dano.', 1, 20, 'Média', 4, 1, 1),
('Larry e Lawrie', 'Detonador', 'Dois personagens com ataques explosivos únicos.', 1, 0, 'Média', 4, 1, 1),
('Angelo', 'Tiro Preciso', 'Dispara orbes mágicos que causam dano massivo.', 5, 130, 'Média', 4, 1, 1),
('Berry', 'Suporte', 'Cura aliados em área com habilidades mágicas.', 9, 890, 'Média', 4, 2, 4),
('Mortis', 'Algoz', 'Avança rapidamente e causa dano com ataques corpo a corpo.', 11, 674, 'Rápida', 5, 5, 8),
('Tara', 'Destruidor', 'Usa cartas mágicas e invoca um buraco negro.', 6, 210, 'Média', 5, 3, 4),
('Eugênio', 'Controle', 'Puxa inimigos com sua lâmpada mágica.', 11, 362, 'Média', 5, 3, 5),
('Max', 'Suporte', 'Aumenta a velocidade de movimento dos aliados.', 11, 590, 'Rápida', 5, 6, 9),
('Squeak', 'Controle', 'Lança projéteis que grudam em superfícies e explodem.', 11, 613, 'Média', 5, 6, 9),
('Buzz', 'Algoz', 'Avança para o alvo com seu gancho e atordoa inimigos.', 11, 459, 'Rápida', 5, 2, 7),
('Eve', 'Destruidor', 'Invoca larvas que atacam inimigos e atravessam obstáculos.', 1, 20, 'Média', 5, 1, 1),
('Janet', 'Tiro Preciso', 'Atira projéteis em linha reta com precisão mortal.', 11, 490, 'Média', 5, 4, 8),
('Gray', 'Suporte', 'Teleporta aliados para pontos estratégicos.', 10, 1440, 'Média', 5, 6, 9),
('Willow', 'Controle', 'Controla mentes inimigas para atacar aliados.', 9, 394, 'Média', 5, 4, 7),
('Doug', 'Suporte', 'Cura aliados com seus sanduíches mágicos.', 1, 20, 'Média', 5, 1, 1),
('Chuck', 'Controle', 'Causa dano em área com ataques explosivos.', 1, 20, 'Média', 5, 1, 1),
('Melodie', 'Algoz', 'Usa ataques melódicos para confundir inimigos.', 9, 890, 'Média', 5, 5, 9),
('Lily', 'Algoz', 'Lança espinhos venenosos para eliminar inimigos rapidamente.', 10, 1440, 'Rápida', 5, 6, 9),
('Clancy', 'Destruidor', 'Ataca com explosivos em área para alto impacto.', 9, 890, 'Média', 5, 3, 6),
('Moe', 'Destruidor', 'Lança bombas em área para desestabilizar inimigos.', 7, 340, 'Rápida', 5, 3, 4),
('Juju', 'Detonador', 'Dispara brinquedos explosivos que atingem áreas estratégicas.', 11, 799, 'Média', 5, 6, 9),
('Mister P', 'Controle', 'Invoca robôs para auxiliar em combate.', 1, 0, 'Média', 5, 1, 1),
('Sprout', 'Detonador', 'Lança projéteis que criam barreiras.', 1, 0, 'Média', 5, 1, 1),
('Byron', 'Suporte', 'Atira projéteis que curam aliados ou causam dano aos inimigos.', 1, 0, 'Média', 5, 1, 1),
('Lou', 'Controle', 'Congela inimigos com projéteis gélidos.', 1, 277, 'Média', 5, 1, 1),
('Ruffs', 'Suporte', 'Invoca pacotes de suprimentos para fortalecer aliados.', 1, 0, 'Média', 5, 1, 1),
('Fang', 'Algoz', 'Ataca com chutes em área que ricocheteiam entre inimigos.', 1, 0, 'Rápida', 5, 1, 1),
('Otis', 'Controle', 'Silencia inimigos para impedir que usem habilidades.', 1, 0, 'Média', 5, 1, 1),
('Buster', 'Tanque', 'Usa uma barreira para proteger aliados e absorver dano.', 1, 279, 'Lenta', 5, 1, 1),
('R-T', 'Destruidor', 'Divide-se em partes para atingir múltiplos inimigos.', 1, 279, 'Média', 5, 1, 1),
('Charlie', 'Controle', 'Usa habilidades mágicas para confundir e controlar inimigos.', 1, 0, 'Média', 5, 1, 1),
('Mico', 'Algoz', 'Avança para o alvo com ataques rápidos e letais.', 1, 0, 'Rápida', 5, 1, 1),
('Spike', 'Destruidor', 'Lança cactos que explodem em espinhos.', 9, 346, 'Média', 6, 3, 4),
('Corvo', 'Algoz', 'Envenena inimigos com suas adagas.', 8, 550, 'Rápida', 6, 4, 7),
('Leon', 'Algoz', 'Fica invisível por um curto período para surpreender inimigos.', 11, 877, 'Rápida', 6, 6, 9),
('Sandy', 'Controle', 'Invoca uma tempestade de areia para camuflar aliados.', 11, 490, 'Média', 6, 5, 8),
('Amber', 'Controle', 'Causa dano em área com seu lança-chamas.', 7, 340, 'Média', 6, 3, 4),
('Meg', 'Tanque', 'Transforma-se em um robô gigante com alta resistência.', 10, 480, 'Média', 6, 4, 6),
('Wattson', 'Destruidor', 'Defende ataques com sua barreira elétrica.', 11, 785, 'Lenta', 6, 5, 9),
('Chester', 'Destruidor', 'Usa ataques imprevisíveis com efeitos variados.', 10, 495, 'Média', 6, 6, 8),
('Cordelius', 'Algoz', 'Causa dano contínuo com habilidades mágicas.', 11, 293, 'Média', 6, 3, 5),
('Kit', 'Suporte', 'Cria escudos protetores para aliados próximos.', 1, 0, 'Média', 6, 1, 1),
('Draco', 'Tanque', 'Ataca com rajadas de dano em área com alto impacto.', 1, 0, 'Média', 6, 1, 1),
('Kenji', 'Algoz', 'Espadachim ágil que desfere ataques devastadores.', 11, 809, 'Rápida', 6, 6, 9);

-- Inserção na tabela Skills para todos os 85 brawlers
INSERT INTO Skills (id, brawler_id) VALUES
(1, 1),(2, 2),(3, 3),(4, 4),(5, 5),(6, 6),(7, 7),(8, 8),(9, 9),(10, 10),
(11, 11),(12, 12),(13, 13),(14, 14),(15, 15),(16, 16),(17, 17),(18, 18),(19, 19),(20, 20),
(21, 21),(22, 22),(23, 23),(24, 24),(25, 25),(26, 26),(27, 27),(28, 28),(29, 29),(30, 30),
(31, 31),(32, 32),(33, 33),(34, 34),(35, 35),(36, 36),(37, 37),(38, 38),(39, 39),(40, 40),
(41, 41),(42, 42),(43, 43),(44, 44),(45, 45),(46, 46),(47, 47),(48, 48),(49, 49),(50, 50),
(51, 51),(52, 52),(53, 53),(54, 54),(55, 55),(56, 56),(57, 57),(58, 58),(59, 59),(60, 60),
(61, 61),(62, 62),(63, 63),(64, 64),(65, 65),(66, 66),(67, 67),(68, 68),(69, 69),(70, 70),
(71, 71),(72, 72),(73, 73),(74, 74),(75, 75),(76, 76),(77, 77),(78, 78),(79, 79),(80, 80),
(81, 81),(82, 82),(83, 83),(84, 84),(85, 85);

-- Inserção dos Ataques do Brawlers
INSERT INTO Attack (attack_name, attack_desc, attack_damage, recharge, ammo, skills_id) VALUES
('Disparo de Espingarda', 'Dispara uma ampla rajada de balas.', 300, 1.5, 3, 1), -- Shelly
('Rugido Selvagem', 'Libera uma onda de choque que atinge os inimigos.', 800, 1.25, 3, 2), -- Nita
('Seis Tiros', 'Dispara uma rajada de seis balas precisas.', 300, 1.25, 6, 3), -- Colt
('Investida de Escopeta', 'Dispara uma rajada de balas de curta distância.', 400, 1.8, 3, 4), -- Bull
('Foguete Explosivo', 'Lança um míssil que explode ao atingir o alvo.', 1100, 2.1, 4, 5), -- Brock
('Soco Poderoso', 'Golpeia inimigos próximos com força descomunal.', 360, 0.8, 4, 6), -- El Primo
('Coquetel Explosivo', 'Lança uma garrafa que cria uma poça de dano ao atingir.', 640, 1.9, 5, 7), -- Barley
('Canção de Cura', 'Dispara ondas sonoras que curam aliados e causam dano aos inimigos.', 800, 2.0, 3, 8), -- Poco
('Soco da Moita', 'Ataca com socos rápidos que ganham força nas moitas.', 600, 1.4, 3, 9), -- Rosa
('Disparo Relâmpago', 'Dispara um projétil que ricocheteia entre inimigos.', 820, 1.9, 3, 10), -- Jessie
('Dinamite Explosiva', 'Arremessa dinamites que causam dano em área.', 1200, 2.0, 2, 11), -- Dynamike
('Minas Espalhadas', 'Lança minas que explodem após um curto intervalo.', 800, 2.5, 3, 12), -- Tick
('Disparo Pixelado', 'Dispara rajadas de tiros precisos de longo alcance.', 960, 1.7, 3, 13), -- 8-Bit
('Tiros Ricocheteantes', 'Projéteis que saltam entre paredes e inimigos.', 760, 1.6, 3, 14), -- Rico
('Rajada de Escopeta', 'Dispara escopetas que causam alto dano de perto.', 1120, 1.8, 3, 15), -- Darryl
('Explosão de Moedas', 'Dispara sacos de moedas que causam dano em área.', 960, 1.8, 3, 16), -- Penny
('Bumerangue Cortante', 'Lança um bumerangue que atravessa inimigos e volta.', 660, 1.5, 3, 17), -- Carl
('Golpe de Britadeira', 'Causa dano em área ao atingir o chão.', 1280, 1.4, 3, 18), -- Jacky
('Escudo Fantasma', 'Projéteis que criam escudos ao atingirem aliados.', 720, 1.9, 3, 19), -- Gus
('Flechas Explosivas', 'Dispara flechas que causam dano em área ao explodirem.', 700, 1.8, 3, 20), -- Bo
('Spray Corrosivo', 'Dispara spray que causa dano ao longo do tempo.', 500, 1.5, 3, 21), -- Emz
('Explosão Flamejante', 'Avança rapidamente e dispara uma explosão em linha reta.', 800, 1.4, 3, 22), -- Stu
('Tiro Mortal', 'Projétil que causa mais dano à medida que a distância aumenta.', 1520, 2.0, 4, 23), -- Piper
('Rajada de Suporte', 'Dispara projéteis em área e cura aliados próximos.', 840, 2.0, 4, 24), -- Pam
('Martelo Gigante', 'Golpe que causa dano em área ao atingir o chão.', 1200, 0.8, 1, 25), -- Frank
('Golpe de Bastão', 'Ataques que afastam inimigos e bloqueiam projéteis.', 1300, 1.6, 2, 26), -- Bibi
('Picada Fatal', 'Projéteis que causam mais dano após o primeiro acerto.', 1120, 1.9, 3, 27), -- Bea
('Orbes Convergentes', 'Projéteis que convergem em um ponto para causar dano maciço.', 1000, 2.2, 3, 28), -- Nani
('Pulso Sombrio', 'Golpes rápidos que restauram saúde ao atingir inimigos.', 756, 1.3, 3, 29), -- Edgar
('Explosão Monetária', 'Dispara moedas em leque que causam alto impacto.', 720, 1.8, 3, 30), -- Griff
('Bomba Precisa', 'Projétil explosivo com alto dano em área.', 1040, 2.5, 3, 31), -- Grom
('Arco e Lança', 'Dispara tiros de longo alcance e salta para alcançar inimigos.', 1200, 2.0, 3, 32), -- Bonnie
('Rajada de Vento', 'Golpeia inimigos com ventos que os afastam.', 960, 1.7, 3, 33), -- Gale
('Investida Selvagem', 'Projéteis que causam dano baseado na saúde do alvo.', 1000, 1.8, 3, 34), -- Colette
('Marcador Letal', 'Dispara tiros que aumentam o dano recebido pelo alvo.', 1200, 2.1, 3, 35), -- Belle
('Raiva Crescente', 'Acumula raiva para golpes mais poderosos.', 1080, 1.6, 3, 36), -- Ash
('Clone Perfeito', 'Cria uma cópia que ataca junto.', 920, 1.8, 3, 37), -- Lola
('Punho Magnético', 'Golpes poderosos que atraem inimigos próximos.', 1200, 1.5, 3, 38), -- Sam
('Caramelo Mortífero', 'Projéteis que atravessam obstáculos para atingir inimigos.', 1120, 1.9, 3, 39), -- Mandy
('Feixe Letal', 'Tiros rápidos e precisos de longo alcance.', 1100, 2.0, 3, 40), -- Maisie
('Bolha Explosiva', 'Bolhas gigantes que causam dano em área ao explodirem.', 1120, 2.2, 3, 41), -- Hank
('Explosão Ardente', 'Ataques consecutivos que aumentam o dano.', 920, 1.8, 3, 42), -- Pearl
('Fusão de Explosivos', 'Dois projéteis que causam dano explosivo massivo.', 1040, 2.4, 3, 43), -- Larry e Lawrie
('Esfera Arcana', 'Projéteis mágicos de dano concentrado.', 1120, 1.7, 3, 44), -- Angelo
('Cura Energizante', 'Habilidades que curam aliados em área.', 840, 1.6, 3, 45), -- Berry
('Foice Sombria', 'Avança rapidamente, atingindo inimigos no caminho.', 900, 2.5, 3, 46), -- Mortis
('Cartas Místicas', 'Lança cartas mágicas em leque.', 840, 1.8, 3, 47), -- Tara
('Lâmpada Encantada', 'Dispara uma bola mágica que puxa inimigos.', 1000, 2.0, 3, 48), -- Eugênio
('Explosão Energética', 'Dispara quatro projéteis rápidos.', 320, 1.2, 4, 49), -- Max
('Explosão Pegajosa', 'Projéteis que grudam e causam dano em área.', 800, 2.5, 3, 50), -- Squeak
('Golpe do Gancho', 'Avança rapidamente e atordoa inimigos.', 960, 1.6, 3, 51), -- Buzz
('Larvas Atacantes', 'Invoca larvas que atravessam obstáculos.', 400, 2.0, 3, 52), -- Eve
('Canto Harmônico', 'Dispara projéteis em linha reta com precisão.', 800, 2.0, 3, 53), -- Janet
('Portais Místicos', 'Projéteis telecinéticos que atingem múltiplos inimigos.', 720, 1.8, 3, 54), -- Gray
('Controle Mental', 'Projéteis que assumem controle de inimigos temporariamente.', 500, 2.2, 3, 55), -- Willow
('Cura Divina', 'Projéteis que curam aliados próximos.', 400, 1.5, 3, 56), -- Doug
('Explosão de Trilho', 'Causa dano em área ao longo de um trilho.', 960, 2.5, 2, 57), -- Chuck
('Melodia Hipnotizante', 'Ataques sonoros que confundem inimigos.', 720, 1.7, 3, 58), -- Melodie
('Espinhos Venenosos', 'Projéteis que envenenam inimigos com dano contínuo.', 640, 1.8, 3, 59), -- Lily
('Explosivo Potente', 'Explosão de alta intensidade em área.', 880, 2.0, 3, 60), -- Clancy
('Bomba Ratona', 'Lança bombas que saltam até o alvo.', 720, 1.7, 3, 61), -- Moe
('Brinquedo Explosivo', 'Dano em área com projéteis brincalhões.', 700, 1.8, 3, 62), -- Juju
('Robôs Apoiadores', 'Invoca robôs que atacam inimigos próximos.', 600, 2.0, 3, 63), -- Mister P
('Barreira Verde', 'Projéteis que criam barreiras.', 500, 2.2, 3, 64), -- Sprout
('Soro Curativo', 'Dispara projéteis que curam aliados ou causam dano.', 600, 1.8, 3, 65), -- Byron
('Explosão Gélida', 'Projéteis que congelam inimigos temporariamente.', 480, 2.0, 3, 66), -- Lou
('Suprimento de Força', 'Projéteis que aumentam o dano de aliados próximos.', 500, 1.7, 3, 67), -- Ruffs
('Chute Devastador', 'Ataque corpo a corpo com dano em área.', 900, 1.8, 3, 68), -- Fang
('Silêncio Mortal', 'Projéteis que impedem inimigos de usar habilidades.', 720, 2.0, 3, 69), -- Otis
('Barreira de Aço', 'Projéteis que criam barreiras protetoras.', 800, 2.5, 2, 70), -- Buster
('Fragmentação', 'Projéteis que se dividem ao atingir inimigos.', 700, 2.0, 3, 71), -- R-T
('Ilusão Sombria', 'Projéteis que confundem e causam dano contínuo.', 600, 1.8, 3, 72), -- Charlie
('Dança Letal', 'Avança rapidamente com ataques corpo a corpo.', 960, 1.6, 3, 73), -- Mico
('Granada de Cacto', 'Lança uma granada que explode em espinhos.', 560, 2.0, 1, 74), -- Spike
('Adagas Venenosas', 'Dispara adagas que envenenam os inimigos.', 380, 1.8, 3, 75), -- Corvo
('Lâminas Giratórias', 'Dispara lâminas que causam mais dano de perto.', 460, 1.9, 4, 76), -- Leon
('Tempestade de Areia', 'Cria uma tempestade de areia que causa dano em área.', 640, 2.2, 2, 77), -- Sandy
('Explosão de Lança-Chamas', 'Causa dano em área contínuo.', 320, 1.8, 5, 78), -- Amber
('Disparo Energético', 'Dispara tiros energéticos de médio alcance.', 540, 1.6, 4, 84), -- Meg
('Granada Gigante', 'Explosão em grande área.', 840, 2.5, 2, 80), -- Wattson
('Ataque Imprevisível', 'Causa dano variado com diferentes efeitos.', 720, 2.0, 3, 81), -- Chester
('Pó Mágico', 'Aplica status negativos em área.', 500, 1.5, 3, 82), -- Cordelius
('Rajada de Projéteis', 'Dispara várias balas em linha reta.', 600, 1.8, 4, 83), -- Kit
('Sopro de Fogo', 'Ataque de dano em área com rajadas.', 760, 2.2, 3, 84), -- Draco
('Corte Devastador', 'Ataques rápidos com alto impacto.', 920, 1.7, 2, 85); -- Kenji

-- Inserção dos Supers
INSERT INTO Super (charge_rate, super_name, super_desc, super_damage, super_range, skills_id) VALUES
(3, 'Rajada Destruidora', 'Dispara uma poderosa explosão em leque, causando alto dano a curta distância.', 3200, 5, 1), -- Shelly
(3, 'Chamado do Urso', 'Invoca um urso que persegue e ataca os inimigos.', 1200, 7, 2), -- Nita
(3, 'Rastro de Balas', 'Dispara uma longa rajada de balas perfurantes.', 2000, 8, 3), -- Colt
(3, 'Investida Furiosa', 'Corre em linha reta destruindo obstáculos e empurrando inimigos.', 1500, 6, 4), -- Bull
(3, 'Chuva de Foguetes', 'Dispara múltiplos foguetes que explodem ao atingir o solo.', 5000, 9, 5), -- Brock
(3, 'Salto Meteórico', 'Salta para uma posição causando dano massivo na aterrissagem.', 2000, 6, 6), -- El Primo
(3, 'Dilúvio de Coquetéis', 'Lança várias garrafas que cobrem uma área causando dano contínuo.', 1200, 10, 7), -- Barley
(3, 'Serenata da Cura', 'Cria uma onda sonora que cura todos os aliados próximos.', 0, 8, 8), -- Poco
(3, 'Parede Verde', 'Cria um escudo de folhas que reduz o dano recebido temporariamente.', 0, 6, 9), -- Rosa
(3, 'Torreta Energizada', 'Desplanta uma torreta que dispara rajadas contra os inimigos.', 800, 7, 10), -- Jessie
(3, 'Dinamite Gigante', 'Arremessa dinamites grandes que causam grande dano em área.', 3200, 9, 11), -- Dynamike
(3, 'Mina Tripla', 'Lança três minas explosivas que detonarão ao contato.', 2400, 10, 12), -- Tick
(3, 'Campo de Aumento', 'Cria um campo que aumenta o dano de aliados próximos.', 0, 8, 13), -- 8-Bit
(3, 'Tiros Ricocheteantes', 'Dispara balas que saltam entre inimigos e paredes.', 1600, 6, 14), -- Rico
(3, 'Barril Giratório', 'Gira rapidamente disparando tiros enquanto se move.', 3200, 5, 15), -- Darryl
(3, 'Canhão Explosivo', 'Desplanta um canhão que dispara projéteis explosivos em área.', 1000, 9, 16), -- Penny
(3, 'Carrinho de Mina', 'Salta em cima de um carrinho, atravessando inimigos e causando dano.', 2000, 6, 17), -- Carl
(3, 'Pancada Sísmica', 'Golpeia o solo, criando uma onda de choque que atinge uma ampla área.', 1600, 8, 18), -- Jacky
(3, 'Escudo Fantasma', 'Cria um escudo que protege um aliado próximo.', 0, 5, 19), -- Gus
(3, 'Mina Tripla', 'Coloca três minas explosivas no solo, causando dano em área ao explodirem.', 1920, 8, 20), -- Bo
(3, 'Zona Corrosiva', 'Cria uma área onde os inimigos recebem dano contínuo.', 1200, 9, 21), -- Emz
(3, 'Explosão Turbo', 'Avança rapidamente, causando dano e deixando um rastro de fogo.', 1000, 7, 22), -- Stu
(3, 'Bombardeio Aéreo', 'Dispara múltiplos tiros em uma grande área.', 2500, 10, 23), -- Piper
(3, 'Torreta de Cura', 'Coloca uma torre que regenera a saúde dos aliados próximos.', 0, 8, 24), -- Pam
(3, 'Impacto Sísmico', 'Golpeia o chão, causando dano massivo em área e atordoando inimigos.', 2000, 6, 25), -- Frank
(3, 'Home Run', 'Ataca com um golpe carregado, afastando inimigos e causando dano massivo.', 1600, 7, 26), -- Bibi
(3, 'Abelha Rainha', 'Dispara uma abelha gigante que causa dano massivo e desacelera inimigos.', 1600, 9, 27), -- Bea
(3, 'Robô Explosivo', 'Controla um robô que causa dano massivo ao colidir com inimigos.', 2000, 10, 28), -- Nani
(3, 'Pulo das Sombras', 'Avança para um inimigo, causando dano e curando a si mesmo.', 800, 6, 29), -- Edgar
(3, 'Tempestade de Dinheiro', 'Dispara moedas em todas as direções, causando dano em área.', 2400, 9, 30), -- Griff
(3, 'Granada Sísmica', 'Lança uma granada explosiva que causa alto dano em área.', 2000, 10, 31), -- Grom
(3, 'Salto de Poder', 'Salta para uma área, causando dano ao aterrissar.', 1400, 7, 32), -- Bonnie
(3, 'Ventania', 'Empurra inimigos para longe enquanto causa dano.', 800, 6, 33), -- Gale
(3, 'Ataque de Dívidas', 'Causa dano baseado na saúde atual dos inimigos.', 1000, 8, 34), -- Colette
(3, 'Golpe Perfurante', 'Dispara um tiro que marca inimigos, aumentando o dano recebido.', 1200, 7, 35), -- Belle
(3, 'Onda de Raiva', 'Libera uma onda que aumenta seu ataque e empurra inimigos.', 1400, 7, 36), -- Ash
(3, 'Cópia Perfeita', 'Cria uma cópia que segue seus movimentos e ataca inimigos.', 800, 6, 37), -- Lola
(3, 'Soco Magnético', 'Atrai inimigos próximos e causa dano em área.', 1600, 7, 38), -- Sam
(3, 'Doce Fatal', 'Lança um caramelo gigante que atravessa inimigos e obstáculos.', 1800, 9, 39), -- Mandy
(3, 'Tiro de Energia', 'Dispara um feixe poderoso que atravessa inimigos.', 1600, 8, 40), -- Maisie
(3, 'Explosão de Bolhas', 'Cria bolhas que explodem ao atingir inimigos.', 1800, 10, 41), -- Hank
(3, 'Chamas Crescentes', 'Dispara projéteis consecutivos que aumentam o dano.', 1400, 6, 42), -- Pearl
(3, 'Ataque Duplo', 'Dois ataques simultâneos que causam dano em área.', 1600, 8, 43), -- Larry e Lawrie
(3, 'Esfera Divina', 'Lança uma esfera de energia que causa dano contínuo.', 1200, 9, 44), -- Angelo
(3, 'Harmonia Curativa', 'Cria uma aura que cura aliados próximos ao longo do tempo.', 0, 10, 45), -- Berry
(3, 'Golpe das Sombras', 'Avança para um local, recuperando saúde ao atingir inimigos.', 0, 6, 46), -- Mortis
(3, 'Buraco Negro', 'Cria um buraco negro que puxa inimigos e causa dano massivo.', 2400, 8, 47), -- Tara
(3, 'Puxão', 'Puxa inimigos para perto e causa dano.', 1200, 7, 48), -- Eugênio
(3, 'Campo de Velocidade', 'Aumenta a velocidade de aliados próximos por um curto período.', 0, 9, 49), -- Max
(3, 'Explosão Pegajosa', 'Projétil que gruda e causa dano em área ao explodir.', 1400, 9, 50), -- Squeak
(3, 'Pulso de Atordoamento', 'Golpe que atordoa inimigos próximos ao impacto.', 2000, 6, 51), -- Buzz
(3, 'Ninhada Voraz', 'Invoca larvas que perseguem e atacam inimigos.', 800, 7, 52), -- Eve
(3, 'Concerto no Céu', 'Voa pelo mapa disparando projéteis em área.', 2000, 10, 53), -- Janet
(3, 'Portais Espectrais', 'Cria portais que transportam aliados e inimigos.', 0, 8, 54), -- Gray
(4, 'Controle Mental', 'Assume o controle de um inimigo por um curto período.', 0, 6, 55), -- Willow
(3, 'Sanduíche Energizante', 'Cura aliados em área enquanto restaura saúde gradualmente.', 0, 9, 56), -- Doug
(3, 'Corrida Devastadora', 'Percorre uma linha reta causando dano em tudo que estiver no caminho.', 2400, 10, 57), -- Chuck
(3, 'Melodia Paralizante', 'Libera uma onda sonora que paralisa inimigos próximos.', 800, 6, 58), -- Melodie
(3, 'Espinhos Crescentes', 'Lança uma nuvem de espinhos que causam dano contínuo.', 1200, 7, 59), -- Lily
(3, 'Explosão Devastadora', 'Projétil explosivo que causa grande dano em área.', 2000, 9, 60), -- Clancy
(3, 'Bomba Saltitante', 'Projéteis que saltam antes de explodirem.', 1600, 8, 61), -- Moe
(3, 'Carnaval Explosivo', 'Dano em área com múltiplos brinquedos explosivos.', 1400, 9, 62), -- Juju
(3, 'Robôs Incansáveis', 'Invoca robôs que atacam inimigos em área.', 800, 10, 63), -- Mister P
(3, 'Barreira Verde', 'Cria uma barreira que impede o movimento de inimigos.', 0, 8, 64), -- Sprout
(3, 'Injeção Tóxica', 'Projéteis que curam aliados e causam dano contínuo aos inimigos.', 1000, 7, 65), -- Byron
(3, 'Tempestade Congelante', 'Congela inimigos em uma grande área.', 1600, 10, 66), -- Lou
(3, 'Pacote de Suprimentos', 'Dispara pacotes que aumentam a força de aliados próximos.', 0, 8, 67), -- Ruffs
(3, 'Chute Veloz', 'Ataca em área com um poderoso chute em salto.', 1800, 7, 68), -- Fang
(3, 'Mudez Mortal', 'Projéteis que silenciam habilidades de inimigos em área.', 1200, 9, 69), -- Otis
(3, 'Escudo Protetor', 'Cria um escudo que absorve dano em área para aliados próximos.', 0, 10, 70), -- Buster
(3, 'Explosão Fragmentada', 'Projéteis que se dividem em múltiplos ataques ao atingir o alvo.', 1400, 9, 71), -- R-T
(3, 'Neblina Sombria', 'Confunde inimigos em área, diminuindo a precisão dos ataques.', 0, 8, 72), -- Charlie
(3, 'Dança Sombria', 'Avança rapidamente e causa dano contínuo ao longo do caminho.', 2000, 10, 73), -- Mico
(3, 'Campo de Espinhos', 'Cria um campo de espinhos que causa dano contínuo aos inimigos.', 800, 8, 74), -- Spike
(3, 'Rajada de Adagas', 'Dispara uma grande quantidade de adagas que causam dano em área.', 600, 7, 75), -- Corvo
(4, 'Invisibilidade', 'Torna-se invisível por um curto período.', 0, 0, 76), -- Leon
(3, 'Tempestade de Areia', 'Cria uma tempestade de areia que camufla aliados.', 0, 9, 77), -- Sandy
(3, 'Muralha de Fogo', 'Lança um fluxo de chamas que causa dano contínuo em área.', 1500, 10, 78), -- Amber
(3, 'Transformação Mecânica', 'Transforma-se em um robô gigante com ataques poderosos.', 2000, 10, 79), -- Meg
(3, 'Barreira Elétrica', 'Cria uma barreira que reflete ataques inimigos.', 0, 9, 80), -- Wattson
(3, 'Ataque Aleatório', 'Usa uma habilidade aleatória com diferentes efeitos e danos.', 1000, 8, 81), -- Chester
(3, 'Vórtice de Plantas', 'Cria uma tempestade de plantas que prende e causa dano contínuo aos inimigos.', 800, 9, 82), -- Cordelius
(3, 'Campo de Proteção', 'Cria uma zona que reduz o dano recebido por aliados.', 0, 9, 83), -- Kit
(3, 'Sopro do Dragão', 'Lança um ataque em linha reta que causa alto dano em área.', 1800, 10, 84), -- Draco
(3, 'Golpe da Lâmina', 'Avança em alta velocidade, atingindo inimigos no caminho com sua espada.', 1500, 7, 85); -- Kenji

INSERT INTO Spray (image, price, type, name) VALUES 
('spray_image_url3', 75, 'General', 'Spray Cool 3'),
('spray_image_url4', 90, 'Exclusive', 'Spray Fire'),
('spray_image_url5', 120, 'General', 'Spray Ice'),
('spray_image_url6', 200, 'Legendary', 'Spray Thunder'),
('spray_image_url7', 100, 'Rare', 'Spray Leaf'),
('spray_image_url8', 150, 'Epic', 'Spray Star'),
('spray_image_url9', 300, 'Exclusive', 'Spray Flame'),
('spray_image_url10', 50, 'General', 'Spray Smile');

INSERT INTO Emotes (image, price, type, name) VALUES 
('emote_image_url3', 80, 'Rare', 'Thumbs Down'),
('emote_image_url4', 80, 'Rare', 'Smile'),
('emote_image_url5', 80, 'Rare', 'Angry'),
('emote_image_url6', 80, 'Rare', 'Happy'),
('emote_image_url7', 80, 'Rare', 'Sad'),
('emote_image_url8', 80, 'Rare', 'Laugh'),
('emote_image_url9', 80, 'Rare', 'Cry'),
('emote_image_url10', 80, 'Rare', 'Yawn');

INSERT INTO Skins (name, price, rarity, brawler_id) VALUES
('Bandida Shelly', 150, 'Rare', 1),
('El Rudo Primo', 150, 'Rare', 2),
('Panda Nita', 150, 'Rare', 3),
('Desperado Colt', 150, 'Rare', 4),
('Rei Tick', 150, 'Rare', 5),
('Marinha Penny', 150, 'Rare', 6),
('Darryl Pirata', 150, 'Rare', 7),
('Piper Rosa', 150, 'Rare', 8),
('Edgar Vermelho', 150, 'Rare', 9),
('Frank Cavaleiro', 150, 'Rare', 10),
('Mortis Vampiro', 150, 'Rare', 11),
('Eugênio Pirata', 150, 'Rare', 12),
('Max Coelho', 150, 'Rare', 13),
('Spike Rosa', 150, 'Rare', 14),
('Corvo Fênix', 150, 'Rare', 15),
('Leon Lobo', 150, 'Rare', 16);

INSERT INTO RewardType (reward_type_id, gold, credits, powerpoints) 
VALUES 
(1, 750, 75, 100),
(2, 1250, 150, 200),
(3, 1000, 100, 150),
(4, 2000, 200, 300);

-- Inserindo recompensas de maestria por tier
INSERT INTO MaestryRewards (reward_type_id, maestry_id, maestry_tier) VALUES
(1, 1, 'Madeira'),     -- Recompensa para Maestria Madeira
(2, 2, 'Bronze 1'),    -- Recompensa para Maestria Bronze 1
(2, 3, 'Bronze 2'),    -- Recompensa para Maestria Bronze 2
(2, 4, 'Bronze 3'),    -- Recompensa para Maestria Bronze 3
(3, 5, 'Prata 1'),     -- Recompensa para Maestria Prata 1
(3, 6, 'Prata 2'),     -- Recompensa para Maestria Prata 2
(3, 7, 'Prata 3'),     -- Recompensa para Maestria Prata 3
(4, 8, 'Ouro 1'),      -- Recompensa para Maestria Ouro 1
(4, 9, 'Ouro 2'),      -- Recompensa para Maestria Ouro 2
(4, 10, 'Ouro 3');     -- Recompensa para Maestria Ouro 3

INSERT INTO Rarity (id, rarity_name, price_credits, price_gems, level) VALUES
(1, 'Comum', 0, 0, 1),
(2, 'Incomum', 160, 29, 2),
(3, 'Super Raro', 430, 79, 3),
(5, 'Épico', 925, 169, 4),
(6, 'Mítico', 1900, 349, 5),
(7, 'Lendário', 3800, 699, 6);

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

UPDATE Brawlers SET maestry_id = 1 WHERE id = 1; -- Shelly
UPDATE Brawlers SET maestry_id = 1 WHERE id = 2; -- El Primo
UPDATE Brawlers SET maestry_id = 1 WHERE id = 3; -- Nita
UPDATE Brawlers SET maestry_id = 1 WHERE id = 4; -- Colt
UPDATE Brawlers SET maestry_id = 1 WHERE id = 5; -- Tick
UPDATE Brawlers SET maestry_id = 1 WHERE id = 6; -- Penny
UPDATE Brawlers SET maestry_id = 1 WHERE id = 7; -- Darryl
UPDATE Brawlers SET maestry_id = 1 WHERE id = 8; -- Piper
UPDATE Brawlers SET maestry_id = 1 WHERE id = 9; -- Edgar
UPDATE Brawlers SET maestry_id = 1 WHERE id = 10; -- Frank
UPDATE Brawlers SET maestry_id = 1 WHERE id = 11; -- Mortis
UPDATE Brawlers SET maestry_id = 1 WHERE id = 12; -- Eugênio
UPDATE Brawlers SET maestry_id = 1 WHERE id = 13; -- Max
UPDATE Brawlers SET maestry_id = 1 WHERE id = 14; -- Spike
UPDATE Brawlers SET maestry_id = 1 WHERE id = 15; -- Corvo
UPDATE Brawlers SET maestry_id = 1 WHERE id = 16; -- Leon;

INSERT INTO Brawlers (name, class, description, level, trophys, moveSpeed, rarity_id, maestry_id, rank_id) VALUES
('Shelly', 'Lutadora', 'Uma brawler versátil com ataque de curto alcance.', 1, 0, 'Média', 1, 1, 1), -- maestria: Madeira, rank: Bronze
('El Primo', 'Peso Pesado', 'Um lutador corpo a corpo com alta saúde.', 1, 0, 'Rápida', 2, 1, 1), -- maestria: Madeira, rank: Bronze
('Nita', 'Lutadora', 'Invoca um urso para ajudar nas batalhas.', 1, 0, 'Média', 2, 1, 1), -- maestria: Madeira, rank: Bronze
('Colt', 'Atirador', 'Dispara uma rajada de balas com alta precisão.', 1, 0, 'Rápida', 2, 1, 1), -- maestria: Madeira, rank: Bronze
('Tick', 'Arremessador', 'Lança minas que explodem após um tempo.', 1, 0, 'Lenta', 3, 1, 1), -- maestria: Madeira, rank: Bronze
('Penny', 'Atiradora', 'Dispara sacos de moedas que explodem ao atingir o alvo.', 1, 0, 'Média', 3, 1, 1), -- maestria: Madeira, rank: Bronze
('Darryl', 'Peso Pesado', 'Um robô pirata com ataques de curto alcance.', 1, 0, 'Rápida', 3, 1, 1), -- maestria: Madeira, rank: Bronze
('Piper', 'Franco-Atiradora', 'Causa mais dano quanto maior a distância do alvo.', 1, 0, 'Média', 5, 1, 1), -- maestria: Madeira, rank: Bronze
('Edgar', 'Assassino', 'Recupera saúde ao causar dano aos inimigos.', 1, 0, 'Rápida', 5, 1, 1), -- maestria: Madeira, rank: Bronze
('Frank', 'Peso Pesado', 'Causa dano em área com seu martelo gigante.', 1, 0, 'Lenta', 5, 1, 1), -- maestria: Madeira, rank: Bronze
('Mortis', 'Assassino', 'Avança rapidamente em direção aos inimigos.', 1, 0, 'Rápida', 6, 1, 1), -- maestria: Madeira, rank: Bronze
('Eugênio', 'Suporte', 'Puxa inimigos com sua lâmpada mágica.', 1, 0, 'Média', 6, 1, 1), -- maestria: Madeira, rank: Bronze
('Max', 'Híbrida', 'Aumenta a velocidade de movimento dos aliados.', 1, 0, 'Rápida', 6, 1, 1), -- maestria: Madeira, rank: Bronze
('Spike', 'Arremessador', 'Lança cactos que explodem em espinhos.', 1, 0, 'Média', 7, 1, 1), -- maestria: Madeira, rank: Bronze
('Corvo', 'Assassino', 'Envenena inimigos com suas adagas.', 1, 0, 'Rápida', 7, 1, 1), -- maestria: Madeira, rank: Bronze
('Leon', 'Assassino', 'Fica invisível por um curto período.', 1, 0, 'Rápida', 7, 1, 1); -- maestria: Madeira, rank: Bronze

INSERT INTO Skills (id, brawler_id) VALUES
(1, 1),  -- Shelly
(2, 2),  -- El Primo
(3, 3),  -- Nita
(4, 4),  -- Colt
(5, 5),  -- Tick
(6, 6),  -- Penny
(7, 7),  -- Darryl
(8, 8),  -- Piper
(9, 9),  -- Edgar
(10, 10), -- Frank
(11, 11), -- Mortis
(12, 12), -- Eugênio
(13, 13), -- Max
(14, 14), -- Spike
(15, 15), -- Corvo
(16, 16); -- Leon

INSERT INTO Attack (attack_name, attack_desc, attack_damage, recharge, ammo, skills_id) VALUES
('Disparo de Espingarda', 'Dispara uma ampla rajada de balas.', 300, 1.5, 3, 1), -- Shelly
('Soco do Primo', 'Golpeia com força os inimigos próximos.', 360, 0.8, 4, 2), -- El Primo
('Seis Tiros', 'Dispara uma rajada de seis balas precisas.', 300, 1.25, 6, 3), -- Colt
('Rugido Selvagem', 'Libera uma onda de choque que atinge os inimigos.', 800, 1.25, 3, 4), -- Nita
('Minas Cabeçudas', 'Lança minas que ao atingir os inimigos explodem.', 640, 2.24, 3, 5), -- Tick
('Saco de Moedas', 'Dispara um saco de moedas que explode ao atingir o alvo.', 840, 1.8, 3, 6), -- Penny
('Escopetas Duplas', 'Dispara duas escopetas causando duas vezes dano de perto.', '1120', 1.8, 2, 7), -- Darryl
('Beijo da Morte', 'Dispara um projétil que causa mais dano quanto maior a distância.', 1520, 2, 3, 8), -- Piper
('Soco de Pano', 'Ataca rapidamente com seus cachecóis.', 756, 1.3, 2, 9), -- Edgar
('Martelada', 'Bate no chão, causando dano em área.', 1200, 0.8, 1, 10), -- Frank
('Foice Giratória', 'Avança rapidamente, causando dano aos inimigos no caminho.', 900, 2.5, 3, 11), -- Mortis
('Bola Mágica', 'Dispara uma bola mágica que se divide ao atingir o alcance máximo.', 1000, 2, 3, 12), -- Eugênio
('Rajada Rápida', 'Dispara quatro projéteis rápidos.', 320, 1.2, 4, 13), -- Max
('Granada de Cacto', 'Lança uma granada que explode em espinhos.', 560, 2, 1, 14), -- Spike
('Adagas Venenosas', 'Dispara adagas que envenenam os inimigos.', 380, 1.8, 3, 15), -- Corvo
('Lâminas Giratórias', 'Dispara lâminas que causam mais dano de perto.', 460, 1.9, 4, 16); -- Leon

INSERT INTO Super (charge_rate, super_name, super_desc, super_damage, super_range, skills_id) VALUES
(100, 'Super Disparo', 'Dispara uma poderosa rajada que destrói obstáculos.', 3200, 7, 1),  -- Shelly
(100, 'Soco Meteoro', 'Ataca com um soco devastador.', 2000, 3, 2),  -- El Primo
(100, 'Rajada de Balas', 'Dispara uma série de balas destrutivas.', 2000, 9, 3), -- Colt
(100, 'Chamado do Urso', 'Invoca um urso que ataca os inimigos.', 1200, 0, 4), -- Nita
(100, 'Cabeça Busca', 'Lança sua cabeça que persegue inimigos.', 1600, 8, 5), -- Tick
(100, 'Canhão de Ouro', 'Coloca um canhão que dispara contra os inimigos.', 1680, 8, 6), -- Penny
(100, 'Barril Rolante', 'Rola em alta velocidade, empurrando inimigos.', 400, 7.67, 7), -- Darryl
(100, 'Salto Gracioso', 'Salta para longe, deixando granadas que explodem.', 1000, 8, 8), -- Piper
(100, 'Salto Agressivo', 'Salta sobre os inimigos, causando dano ao aterrissar.', 1000, 8, 9), -- Edgar
(100, 'Onda de Choque', 'Cria uma onda de choque que atordoa inimigos.', 1200, 7, 10), -- Frank
(100, 'Enxame de Morcegos', 'Libera morcegos que drenam vida dos inimigos.', 1000, 10, 11), -- Mortis
(100, 'Mão Mágica', 'Estende uma mão que puxa inimigos para perto.', 0, 7, 12), -- Eugênio
(100, 'Sintonizar!', 'Aumenta a velocidade de movimento dos aliados próximos.', 0, 9, 13), -- Max
(100, 'Campo de Espinhos', 'Cria uma área de cactos que causa dano constante.', 2000, 8, 14), -- Spike
(100, 'Salto Envenenado', 'Salta e lança uma chuva de adagas venenosas.', 280, 8, 15), -- Corvo
(100, 'Invisibilidade', 'Fica invisível por um curto período.', 0, 0, 16); -- Leon

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

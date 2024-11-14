# Banco-de-Dados-Brawl-Stars ✨
Criando um Banco de Dados para os brawlers do jogo brawl stars

# **Cenário**
<details> 

O aluno deverá escolher um caso de uso para um banco de dados relacionado a um negócio fictício, por exemplo, ecommerce, academia, hospital, órgão público, escola etc.  


A primeira etapa do trabalho consistirá na elaboração da modelagem dos dados e projetos, estruturação das tabelas e scripts SQL, utilizando de preferência o SGBD MySQL.  


O trabalho será individual, entregue em um repositório no GitHub, com acesso privado para evitar cópias.  


O aluno receberá nota zero caso seu trabalho represente uma cópia de qualquer repositório na Internet ou de trabalho de outro aluno.  


Foram disponibilizados no Canvas modelos de repositórios como exemplo.  


Os diagramas necessitam estar presentes no repositório.  


Não serão aceitas imagens/fotos de desenhos e rascunhos manuscritos!  

Conjunto de entregas que deverão constar nesta primeira etapa do trabalho, TP1:

1. Resumo sobre o negócio escolhido, ramo de atuação, tipos de serviços ou produtos comercializados, principais
atores, principais produtos, dados essenciais, fluxos de processos cotidianos, regras e restrições do negócio;
2. Modelo Conceitual no padrão MER (Modelo Entidade-Relacionamento);
a. Diagrama Entidade-Relacionamento (DER) utilizando o modelo Chen;
3. Modelo Lógico;
a. Diagrama de Engenharia de Informação;
4. Modelo Físico, especificando necessariamente os tipos de dados, tamanhos, domínios, chaves primárias, chaves
estrangeiras e qualquer restrição necessária;
5. Normalização das tabelas de acordo com a 1FN, 2FN e 3FN;
a. DER resultante do processo de normalização;
6. Scripts em SQL DDL para criação do banco de dados e respectivas tabelas;
7. Scripts em SQL DML para inserção de dados fictícios (Na segunda etapa do trabalho deverá ser permitido que o
usuário alimente as tabelas através de formulários).
8. Elaboração das principais consultas em SQL que poderão ser usadas pela segunda etapa do trabalho (consultas,
relatórios e views).

</details>

# **O Jogo**

<details> 
  
**Brawl Stars** é um jogo multiplayer de ação e estratégia desenvolvido e publicado pela Supercell, lançado oficialmente em 2018. O jogo combina elementos de MOBA (Multiplayer Online Battle Arena) com batalhas em tempo real, permitindo que os jogadores escolham entre uma variedade de personagens, conhecidos como **Brawlers**, cada um com habilidades únicas.

### **Principais Características do Jogo:**

1. **Modos de Jogo Variados**:
   - **Pique-Gema**: Colete e mantenha gemas enquanto luta contra o time inimigo.
   - **Sobrevivência (Solo ou Dupla)**: Um modo estilo Battle Royale, onde o último jogador ou equipe de pé vence.
   - **Caça-Estrelas**: Elimine inimigos para ganhar estrelas e evite ser derrotado.
   - **Fute-Brawl**: Um jogo de futebol onde o objetivo é marcar gols na equipe adversária.
   - **Roubo**: Proteja seu cofre enquanto tenta abrir o do inimigo.
   - **Eventos Especiais e Modos de Tempo Limitado**: Como Robo Rumble, Chefão e outros.

2. **Brawlers**:
   - Atualmente, há dezenas de Brawlers, classificados em diferentes raridades: **Comum**, **Raro**, **Super Raro**, **Épico**, **Mítico** e **Lendário**.
   - Cada Brawler possui um ataque básico e uma habilidade especial chamada **Super**.
   - Alguns Brawlers também possuem **Gadgets** e **Star Powers**, que fornecem vantagens adicionais.

3. **Progressão e Personalização**:
   - Os jogadores podem desbloquear Brawlers através de caixas, troféus e eventos especiais.
   - As **skins** permitem personalizar visualmente os Brawlers.
   - A progressão do jogador é medida pelo número de **troféus** e níveis de poder dos Brawlers.

4. **Sistema de Competição**:
   - Os jogadores competem em **Ligas de Troféus** e em **Campeonatos** para ganhar recompensas e melhorar sua posição no ranking.
   - O sistema de **ranks** reflete a habilidade do jogador com cada Brawler.

5. **Jogabilidade Rápida e Dinâmica**:
   - As partidas são curtas, geralmente durando de 2 a 3 minutos, tornando o jogo acessível e ideal para sessões rápidas.

6. **Economia do Jogo**:
   - Os jogadores podem ganhar ou comprar moedas, gemas e pontos de poder para melhorar os Brawlers.
   - As **caixas de recompensas** fornecem itens aleatórios, incluindo novos Brawlers, recursos e moedas.
</details> 

# **Resumo sobre a Database**

<details> 

O banco de dados modelado se baseia no jogo **Brawl Stars**, um jogo eletrônico do gênero multiplayer de ação e estratégia desenvolvido pela Supercell. O banco de dados foi projetado para armazenar informações críticas sobre personagens (Brawlers), elementos cosméticos, habilidades e progressão no jogo.

---

#### **Tipos de Serviços ou Produtos Comercializados:**
1. **Personagens (Brawlers):**
   - Vendidos ou desbloqueados por meio de eventos, troféus ou caixas.
   - Classificados por raridade: Comum, Incomum, Super Raro, Épico, Mítico e Lendário.

2. **Elementos Cosméticos:**
   - **Skins**: Alteram a aparência visual dos Brawlers.
   - **Sprays** e **Emotes**: Usados para personalização e comunicação dentro do jogo.

3. **Habilidades Adicionais:**
   - **Gadgets**, **Star Powers** e **Acessorios**: Fornecem habilidades extras para Brawlers.
   - **Hypercharges**: Melhoram significativamente as habilidades dos Brawlers em situações específicas.

4. **Progressão:**
   - **Ranks** e **Maestrias**: Representam o desempenho e dedicação dos jogadores.
   - **Recompensas de Maestria**: Ouro, créditos e pontos de poder conforme o nível de maestria aumenta.

---

#### **Principais Atores:**
1. **Jogadores:**
   - Utilizam Brawlers para competir em diferentes modos de jogo.
   - Personalizam seus Brawlers com elementos cosméticos.
   - Progridem nas ligas de troféus e eventos de maestria.

2. **Supercell (Desenvolvedora):**
   - Gerencia o jogo, implementa atualizações e eventos.
   - Comercializa itens cosméticos e habilidades.

3. **Brawlers (Personagens):**
   - São os elementos centrais do jogo, cada um com habilidades únicas.

---

#### **Principais Produtos:**
1. **Brawlers** (Shelly, Leon, Spike, etc...).
2. **Skins** (Bandida Shelly, Leon Lobo, etc...).
3. **Sprays** e **Emotes** (Geral e Exclusivo).
4. **Recompensas de Progresso**: Créditos, Gemas e Ouro.

---

#### **Dados Essenciais:**
1. **Brawlers**:
   - Nome, Raridade, Habilidades, Nível, Troféus.
2. **Elementos Cosméticos**:
   - Skins, Sprays e Emotes associados a cada Brawler.
3. **Progressão**:
   - Ranks, Maestrias e suas recompensas.

4. **Regras de Habilidades**:
   - Cada Brawler possui uma ou mais habilidades relacionadas a Gadgets, Super e Ataques.

---

#### **Fluxos de Processos Cotidianos:**
1. **Desbloqueio de Brawlers e Habilidades:**
   - Os jogadores desbloqueiam Brawlers e habilidades conforme acumulam troféus e participam de eventos.
   
2. **Compra e Aplicação de Itens Cosméticos:**
   - Os jogadores adquirem skins, emotes e sprays para personalização.
   
3. **Progressão em Maestrias e Ranks:**
   - Jogadores acumulam troféus e melhoram maestrias ao longo das partidas.

---

#### **Regras e Restrições do Negócio:**
1. **Restrição de Exclusividade:**
   - Certos sprays, emotes e skins são exclusivos e só podem ser usados por Brawlers específicos.
   
2. **Progresso por Nível de Troféus:**
   - Acesso a novos modos e recompensas depende do número de troféus.
   
3. **Limites de Maestria e Rank:**
   - Cada Brawler tem uma progressão individual para maestrias e ranks.

---

Esse modelo fornece uma visão holística de como os dados essenciais do jogo são estruturados e gerenciados no contexto de **Brawl Stars**.
</details> 

# **Modelagem Conceitual:**

<details> 
  
<img src="https://github.com/Felipebc2/TP1---DataBase---Brawl-Stars/blob/0949b5e52f04913ab086b0f311841ff6a43f6fef/Modelo%20Conceitual.drawio.png"><br><br>

</details>

# **Modelo MER DESCRITIVO:**

<details>

**Brawlers:** (id (PK), name, class description, level, trophys, moveSpeed, rarity_id (FK), maestry_id (FK), rank_id (FK))  
**Rarity**: (id (PK), rarity_name, price_credits, price_gems, level)  
**Ranks**: ( id (PK), rank_level, color, trophy)  
**Maestry**: (id (PK), brawler_id (FK, NULLABLE), maestry_level)  
**RewardType**: (id (PK), reward_type_id, gold, credits, powerpoints)  
**MaestryRewards**: (id (PK), reward_type_id (FK), maestry_id (FK), maestry_tier)  
**Spray**: (id (PK), image, price, type, name)   
**Emotes**: (id (PK), image, price, type, name)  
**Skins**: (id (PK), name, price, rarity, brawler_id (FK))  
**VisualElements**: (id (PK), type, name, brawler_id (FK, NULLABLE), emotes_id (FK, NULLABLE), spray_id (FK, NULLABLE), skins_id (FK, NULLABLE))  
**Icons**: (id (PK), image, price, type)  
**BattleCard**: (id (PK), name, type, brawler_id (FK), emote, title)  
**BattleCardIcons**: (id (PK), battle_card_id (FK), icon_id (FK))  
**Skills**: (id (PK), brawler_id (FK))  
**Gadgets**: (id (PK), gadget_name, price, effect, description, skills_id (FK), exclusive)  
**Hypercharges**: (id (PK), hypercharge_name, price, effect, description, skills_id (FK))  
**Accessories**: (id (PK), accessorie_name, price, effect, description, skills_id (FK))  
**Super**: (id (PK), charge_rate, super_name, super_desc, super_damage, super_range, skills_id (FK))  
**Attack**: (id (PK), attack_name, attack_desc, attack_damage, recharge, ammo, skills_id (FK))  

</details>

# **Modelagem Física:** 

<details> 

<a href="https://ibb.co/k06tDWF"><img src="https://i.ibb.co/bLRkv8n/Modelo-F-sico-drawio.png" alt="Modelo-F-sico-drawio" border="0"></a>

</details>

# **HORA DO SQL (CRUD):**

<details>

**Passo 1:**

Criação do Banco de Dados: 
~~~MySQL
-- DROP DATABASE IF EXISTS BrawlStarsDB;

CREATE DATABASE IF NOT EXISTS BrawlStarsDB;
USE BrawlStarsDB;

-- Criação da tabela Rarity
CREATE TABLE IF NOT EXISTS Rarity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rarity_name VARCHAR(50) NOT NULL UNIQUE,
    price_credits INT NOT NULL,
    price_gems INT NOT NULL,
    level INT NOT NULL
);

-- Criação da tabela Ranks
CREATE TABLE IF NOT EXISTS Ranks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rank_level INT NOT NULL,
    color VARCHAR(20) NOT NULL,
    trophy VARCHAR(50) NOT NULL
);

-- Criação da tabela Maestry
CREATE TABLE IF NOT EXISTS Maestry (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brawler_id INT NULL,
    maestry_level VARCHAR(50) NOT NULL
);

-- Criação da Tabela Brawlers
CREATE TABLE IF NOT EXISTS Brawlers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    class VARCHAR(30) NOT NULL,
    description TEXT NOT NULL,
    level INT NOT NULL,
    trophys INT NOT NULL,
    moveSpeed VARCHAR(10) NOT NULL,
    rarity_id INT NOT NULL,
    maestry_id INT NOT NULL,
    rank_id INT NOT NULL,
    FOREIGN KEY (rarity_id) REFERENCES Rarity(id),
    FOREIGN KEY (maestry_id) REFERENCES Maestry(id),
    FOREIGN KEY (rank_id) REFERENCES Ranks(id)
);

-- Criação da tabela RewardType
CREATE TABLE IF NOT EXISTS RewardType (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reward_type_id INT NOT NULL,
    gold INT,
    credits INT,
    powerpoints INT
);

-- Criação da tabela Mastery Rewards
CREATE TABLE IF NOT EXISTS MaestryRewards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reward_type_id INT NOT NULL,
    maestry_id INT NOT NULL,
    maestry_tier VARCHAR(50) NOT NULL,
    FOREIGN KEY (reward_type_id) REFERENCES RewardType(id),
    FOREIGN KEY (maestry_id) REFERENCES Maestry(id)
);

-- Criação da tabela Spray
CREATE TABLE IF NOT EXISTS Spray (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Criação da tabela Emotes
CREATE TABLE IF NOT EXISTS Emotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Criação da tabela Skins
CREATE TABLE IF NOT EXISTS Skins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    rarity VARCHAR(50),
    brawler_id INT NOT NULL,
    FOREIGN KEY (brawler_id) REFERENCES Brawlers(id)
);

-- Criação da tabela VisualElements
CREATE TABLE IF NOT EXISTS VisualElements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    brawler_id INT NULL,
    emotes_id INT NULL,
    spray_id INT NULL,
    skins_id INT NULL,
    FOREIGN KEY (brawler_id) REFERENCES Brawlers(id),
    FOREIGN KEY (emotes_id) REFERENCES Emotes(id),
    FOREIGN KEY (spray_id) REFERENCES Spray(id),
    FOREIGN KEY (skins_id) REFERENCES Skins(id)
);

-- Criação da tabela Icons
CREATE TABLE IF NOT EXISTS Icons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    type VARCHAR(50) NOT NULL
);

-- Criação da tabela BattleCard
CREATE TABLE IF NOT EXISTS BattleCard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(30) NOT NULL,
    brawler_id INT NOT NULL,
    emote VARCHAR(50),
    title VARCHAR(50),
    FOREIGN KEY (brawler_id) REFERENCES Brawlers(id)
);

-- Criação da tabela BattleCardIcons
CREATE TABLE IF NOT EXISTS BattleCardIcons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    battle_card_id INT NOT NULL,
    icon_id INT NOT NULL,
    FOREIGN KEY (battle_card_id) REFERENCES BattleCard(id),
    FOREIGN KEY (icon_id) REFERENCES Icons(id)
);

-- Criação da tabela Skills
CREATE TABLE IF NOT EXISTS Skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brawler_id INT NOT NULL,
    FOREIGN KEY (brawler_id) REFERENCES Brawlers(id)
);

-- Criação da tabela Gadgets
CREATE TABLE IF NOT EXISTS Gadgets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gadget_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    effect TEXT NOT NULL,
    description TEXT NOT NULL,
    skills_id INT NOT NULL,
    exclusive BOOLEAN NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES Skills(id)
);

-- Criação da tabela Hypercharges
CREATE TABLE IF NOT EXISTS Hypercharges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hypercharge_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    effect TEXT NOT NULL,
    description TEXT NOT NULL,
    skills_id INT NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES Skills(id)
);

-- Criação da tabela Acessories
CREATE TABLE IF NOT EXISTS Accessories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    accessorie_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    effect TEXT NOT NULL,
    description TEXT NOT NULL,
    skills_id INT NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES Skills(id)
);

-- Criação da tabela Super
CREATE TABLE IF NOT EXISTS Super (
    id INT AUTO_INCREMENT PRIMARY KEY,
    charge_rate INT NOT NULL,
    super_name VARCHAR(50) NOT NULL,
    super_desc TEXT NOT NULL,
    super_damage INT,
    super_range INT,
    skills_id INT NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES Skills(id)
);

-- Criação da tabela Attack
CREATE TABLE IF NOT EXISTS Attack (
    id INT AUTO_INCREMENT PRIMARY KEY,
    attack_name VARCHAR(50) NOT NULL,
    attack_desc TEXT NOT NULL,
    attack_damage INT NOT NULL,
    recharge INT NOT NULL,
    ammo INT NOT NULL,
    skills_id INT NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES Skills(id)
);
~~~~


</details>

# **Inserção de Dados** ✍️

<details>

~~~~MySQL
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
('Shelly', 'Lutadora', 'Uma brawler versátil com ataque de longo alcance.', 1, 0, 'Média', 1, 1, 1), -- maestria: Madeira, rank: Bronze
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
~~~~

</details>

# Hora da seleção e consulta 🔎: 

<details>

~~~MySQL
-- Lista todos os brawlers e suas informações básicas
SELECT 
    b.id AS BrawlerID, 
    b.name AS Nome, 
    b.class AS Classe, 
    b.description AS Descrição, 
    r.rarity_name AS Raridade, 
    m.maestry_level AS Maestria, 
    rk.rank_level AS Ranks, 
    rk.trophy AS Troféus
FROM 
    Brawlers b
JOIN 
    Rarity r ON b.rarity_id = r.id
JOIN 
    Maestry m ON b.maestry_id = m.id
JOIN 
    Ranks rk ON b.rank_id = rk.id;
    

-- Conta quantos brawlers existem por raridade
SELECT 
    r.rarity_name AS Raridade, 
    COUNT(b.id) AS Total_Brawlers
FROM 
    Brawlers b
JOIN 
    Rarity r ON b.rarity_id = r.id
GROUP BY 
    r.rarity_name;

-- Exibe os brawlers com o maior número de troféus
SELECT 
    b.name AS Nome, 
    b.trophys AS Troféus, 
    rk.rank_level AS Ranks
FROM 
    Brawlers b
JOIN 
    Ranks rk ON b.rank_id = rk.id
ORDER BY 
    b.trophys DESC
LIMIT 5;

-- Lista as skills (Super e Ataque) de cada brawler
SELECT 
    b.name AS Brawler, 
    s.id AS SkillID, 
    sp.super_name AS Super, 
    sp.super_damage AS Dano_Super, 
    a.attack_name AS Ataque, 
    a.attack_damage AS Dano_Ataque
FROM 
    Brawlers b
JOIN 
    Skills s ON b.id = s.brawler_id
JOIN 
    Super sp ON s.id = sp.skills_id
JOIN 
    Attack a ON s.id = a.skills_id;

-- Lista as recompensas de maestria por tier
SELECT 
    mr.maestry_tier AS Tier,
    rt.gold AS Ouro,
    rt.credits AS Créditos,
    rt.powerpoints AS Pontos_de_Poder
FROM 
    MaestryRewards mr
JOIN 
    RewardType rt ON mr.reward_type_id = rt.id
ORDER BY 
    FIELD(mr.maestry_tier, 'Madeira', 'Bronze 1', 'Bronze 2', 'Bronze 3', 'Prata 1', 'Prata 2', 'Prata 3', 'Ouro 1', 'Ouro 2', 'Ouro 3');


-- Encontra todos os elementos visuais associados a cada brawler
SELECT 
    Skins.name AS SkinName, 
    Skins.price AS Price, 
    Skins.rarity AS Rarity, 
    Brawlers.name AS BrawlerName
FROM 
    Skins
INNER JOIN 
    Brawlers ON Skins.brawler_id = Brawlers.id
ORDER BY 
    Brawlers.name;


-- Mostrar todos os emotes e sprays disponíveis com seus preços
SELECT 
    e.name AS Emote, 
    e.price AS Preço, 
    s.name AS Spray, 
    s.price AS Preço_Spray
FROM 
    Emotes e
JOIN 
    Spray s ON e.id = s.id;
~~~

</details>

# Relatórios 📊

<details>

### Resultado da consulta de listar todos os brawlers e suas informações básicas
<a href="https://ibb.co/TLRDwZB"><img src="https://i.ibb.co/rsMKQgG/image-2024-11-14-182730409.png" alt="image-2024-11-14-182730409" border="0"></a>

### Resultado da consulta de contar quantos brawlers existem por raridade
<a href="https://imgbb.com/"><img src="https://i.ibb.co/wS3rVKF/image-2024-11-14-183001895.png" alt="image-2024-11-14-183001895" border="0"></a>

### Resultado da consulta de Exibir os brawlers com o maior número de troféus
<a href="https://imgbb.com/"><img src="https://i.ibb.co/yhKCN9V/image-2024-11-14-183029240.png" alt="image-2024-11-14-183029240" border="0"></a>

### Resultado da consulta de listar as skills (Super e Ataque) de cada brawler
<a href="https://imgbb.com/"><img src="https://i.ibb.co/WvwmfLx/image-2024-11-14-183052442.png" alt="image-2024-11-14-183052442" border="0"></a>

### Resultado da consulta de listar as recompensas de maestria por tier
<a href="https://imgbb.com/"><img src="https://i.ibb.co/bKYZttX/image-2024-11-14-183116365.png" alt="image-2024-11-14-183116365" border="0"></a>

### Resultado da consulta de encontrar todos os elementos visuais associados a cada brawler
<a href="https://imgbb.com/"><img src="https://i.ibb.co/L1F7QtJ/image-2024-11-14-183149683.png" alt="image-2024-11-14-183149683" border="0"></a>

### Resultado da consulta de mostrar todos os emotes e sprays disponíveis com seus preços
<a href="https://imgbb.com/"><img src="https://i.ibb.co/RQ6s5Cp/image-2024-11-14-183214563.png" alt="image-2024-11-14-183214563" border="0"></a>

</details>

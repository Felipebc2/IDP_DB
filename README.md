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

<details>
  
|   BrawlerID | Nome           | Classe       | Descrição                                                               | Raridade   | Maestria   |   Ranks | Troféus      |
|------------:|:---------------|:-------------|:------------------------------------------------------------------------|:-----------|:-----------|--------:|:-------------|
|           1 | Shelly         | Destruidor   | Uma brawler versátil com ataque de curto alcance.                       | Comum      | Bronze 3   |      25 | 600 Troféus  |
|          20 | Bo             | Controle     | Coloca minas terrestres no campo e usa flechas explosivas.              | Épico      | Madeira    |       1 | 100 Troféus  |
|          21 | Emz            | Controle     | Atira spray que causa dano ao longo do tempo.                           | Épico      | Madeira    |       1 | 100 Troféus  |
|          22 | Stu            | Algoz        | Avança rapidamente e dispara chamas em linha reta.                      | Épico      | Madeira    |       1 | 100 Troféus  |
|          23 | Piper          | Tiro Preciso | Causa mais dano quanto maior a distância do alvo.                       | Épico      | Ouro 3     |      50 | 1000 Troféus |
|          24 | Pam            | Suporte      | Dispara projéteis e tem uma torreta que cura aliados em área.           | Épico      | Madeira    |       5 | 200 Troféus  |
|          25 | Frank          | Tanque       | Causa dano em área com seu martelo gigante.                             | Épico      | Prata 3    |      40 | 800 Troféus  |
|          26 | Bibi           | Tanque       | Usa seu bastão para afastar inimigos e bloquear projéteis.              | Épico      | Madeira    |       5 | 200 Troféus  |
|          27 | Bea            | Tiro Preciso | Atira projéteis que aumentam de dano após um acerto.                    | Épico      | Bronze 1   |      10 | 300 Troféus  |
|          28 | Nani           | Tiro Preciso | Dispara orbes que convergem em um único ponto.                          | Épico      | Madeira    |      10 | 300 Troféus  |
|          29 | Edgar          | Algoz        | Recupera saúde ao causar dano aos inimigos.                             | Épico      | Madeira    |       1 | 100 Troféus  |
|          30 | Griff          | Controle     | Dispara moedas em forma de leque com alto impacto.                      | Épico      | Bronze 1   |      10 | 300 Troféus  |
|          31 | Grom           | Detonador    | Lança explosivos em área com alta precisão.                             | Épico      | Bronze 1   |      10 | 300 Troféus  |
|          32 | Bonnie         | Tiro Preciso | Alterna entre ataques de longo e curto alcance.                         | Épico      | Bronze 1   |      10 | 300 Troféus  |
|          33 | Gale           | Controle     | Atira rajadas de vento para empurrar inimigos.                          | Épico      | Madeira    |       1 | 100 Troféus  |
|          34 | Colette        | Destruidor   | Dano baseado na saúde atual dos inimigos.                               | Épico      | Bronze 1   |      25 | 600 Troféus  |
|          35 | Belle          | Tiro Preciso | Marca inimigos para aumentar o dano recebido.                           | Épico      | Prata 1    |      40 | 800 Troféus  |
|          36 | Ash            | Controle     | Enche sua barra de raiva para ataques mais fortes.                      | Épico      | Madeira    |       1 | 100 Troféus  |
|          37 | Lola           | Destruidor   | Cria uma cópia de si mesma para atacar.                                 | Épico      | Madeira    |       1 | 100 Troféus  |
|          38 | Sam            | Algoz        | Avança com seu colete magnético para causar dano.                       | Épico      | Madeira    |       1 | 100 Troféus  |
|          39 | Mandy          | Tiro Preciso | Atira balas de caramelo que atravessam obstáculos.                      | Épico      | Bronze 2   |      15 | 400 Troféus  |
|          40 | Maisie         | Tiro Preciso | Dispara feixes em linha reta com alto alcance.                          | Épico      | Bronze 1   |      10 | 300 Troféus  |
|          41 | Hank           | Controle     | Explode bolhas gigantes com grande área de efeito.                      | Épico      | Madeira    |       1 | 100 Troféus  |
|          42 | Pearl          | Destruidor   | Ataques consecutivos que aumentam o dano.                               | Épico      | Madeira    |       1 | 100 Troféus  |
|          43 | Larry e Lawrie | Detonador    | Dois personagens com ataques explosivos únicos.                         | Épico      | Madeira    |       1 | 100 Troféus  |
|          44 | Angelo         | Tiro Preciso | Dispara orbes mágicos que causam dano massivo.                          | Épico      | Madeira    |       1 | 100 Troféus  |
|          45 | Berry          | Suporte      | Cura aliados em área com habilidades mágicas.                           | Épico      | Bronze 1   |      15 | 400 Troféus  |
|           2 | Nita           | Destruidor   | Invoca um urso para ajudar nas batalhas.                                | Incomum    | Madeira    |      10 | 300 Troféus  |
|           3 | Colt           | Destruidor   | Dispara rajadas de balas.                                               | Incomum    | Bronze 3   |      25 | 600 Troféus  |
|           4 | Bull           | Tanque       | Tanque de Curto alcance.                                                | Incomum    | Madeira    |      10 | 300 Troféus  |
|           5 | Brock          | Tiro Preciso | Atira misseis que ao atingirem algo explodem                            | Incomum    | Bronze 3   |      25 | 600 Troféus  |
|           6 | El Primo       | Tanque       | Um lutador corpo a corpo com alta saúde.                                | Incomum    | Madeira    |       5 | 200 Troféus  |
|           7 | Barley         | Detonador    | Dispara coqueteis que ficam em uma área por certa duração               | Incomum    | Madeira    |      10 | 300 Troféus  |
|           8 | Poco           | Suporte      | Suas canções curam aliados e causam danos aos inimigos                  | Incomum    | Bronze 1   |      15 | 400 Troféus  |
|           9 | Rosa           | Tanque       | Tanque de Curto alcance que fica mais forte nas moitas                  | Incomum    | Madeira    |       1 | 100 Troféus  |
|          74 | Spike          | Destruidor   | Lança cactos que explodem em espinhos.                                  | Lendário   | Bronze 2   |      15 | 400 Troféus  |
|          75 | Corvo          | Algoz        | Envenena inimigos com suas adagas.                                      | Lendário   | Bronze 3   |      30 | 700 Troféus  |
|          76 | Leon           | Algoz        | Fica invisível por um curto período para surpreender inimigos.          | Lendário   | Prata 2    |      40 | 800 Troféus  |
|          77 | Sandy          | Controle     | Invoca uma tempestade de areia para camuflar aliados.                   | Lendário   | Prata 1    |      35 | 760 Troféus  |
|          78 | Amber          | Controle     | Causa dano em área com seu lança-chamas.                                | Lendário   | Bronze 2   |      15 | 400 Troféus  |
|          79 | Meg            | Tanque       | Transforma-se em um robô gigante com alta resistência.                  | Lendário   | Bronze 3   |      25 | 600 Troféus  |
|          80 | Wattson        | Destruidor   | Defende ataques com sua barreira elétrica.                              | Lendário   | Prata 1    |      40 | 800 Troféus  |
|          81 | Chester        | Destruidor   | Usa ataques imprevisíveis com efeitos variados.                         | Lendário   | Prata 2    |      35 | 760 Troféus  |
|          82 | Cordelius      | Algoz        | Causa dano contínuo com habilidades mágicas.                            | Lendário   | Bronze 2   |      20 | 500 Troféus  |
|          83 | Kit            | Suporte      | Cria escudos protetores para aliados próximos.                          | Lendário   | Madeira    |       1 | 100 Troféus  |
|          84 | Draco          | Tanque       | Ataca com rajadas de dano em área com alto impacto.                     | Lendário   | Madeira    |       1 | 100 Troféus  |
|          85 | Kenji          | Algoz        | Espadachim ágil que desfere ataques devastadores.                       | Lendário   | Prata 2    |      40 | 800 Troféus  |
|          46 | Mortis         | Algoz        | Avança rapidamente e causa dano com ataques corpo a corpo.              | Mítico     | Prata 1    |      35 | 760 Troféus  |
|          47 | Tara           | Destruidor   | Usa cartas mágicas e invoca um buraco negro.                            | Mítico     | Bronze 2   |      15 | 400 Troféus  |
|          48 | Eugênio        | Controle     | Puxa inimigos com sua lâmpada mágica.                                   | Mítico     | Bronze 2   |      20 | 500 Troféus  |
|          49 | Max            | Suporte      | Aumenta a velocidade de movimento dos aliados.                          | Mítico     | Prata 2    |      40 | 800 Troféus  |
|          50 | Squeak         | Controle     | Lança projéteis que grudam em superfícies e explodem.                   | Mítico     | Prata 2    |      40 | 800 Troféus  |
|          51 | Buzz           | Algoz        | Avança para o alvo com seu gancho e atordoa inimigos.                   | Mítico     | Bronze 1   |      30 | 700 Troféus  |
|          52 | Eve            | Destruidor   | Invoca larvas que atacam inimigos e atravessam obstáculos.              | Mítico     | Madeira    |       1 | 100 Troféus  |
|          53 | Janet          | Tiro Preciso | Atira projéteis em linha reta com precisão mortal.                      | Mítico     | Bronze 3   |      35 | 760 Troféus  |
|          54 | Gray           | Suporte      | Teleporta aliados para pontos estratégicos.                             | Mítico     | Prata 2    |      40 | 800 Troféus  |
|          55 | Willow         | Controle     | Controla mentes inimigas para atacar aliados.                           | Mítico     | Bronze 3   |      30 | 700 Troféus  |
|          56 | Doug           | Suporte      | Cura aliados com seus sanduíches mágicos.                               | Mítico     | Madeira    |       1 | 100 Troféus  |
|          57 | Chuck          | Controle     | Causa dano em área com ataques explosivos.                              | Mítico     | Madeira    |       1 | 100 Troféus  |
|          58 | Melodie        | Algoz        | Usa ataques melódicos para confundir inimigos.                          | Mítico     | Prata 1    |      40 | 800 Troféus  |
|          59 | Lily           | Algoz        | Lança espinhos venenosos para eliminar inimigos rapidamente.            | Mítico     | Prata 2    |      40 | 800 Troféus  |
|          60 | Clancy         | Destruidor   | Ataca com explosivos em área para alto impacto.                         | Mítico     | Bronze 2   |      25 | 600 Troféus  |
|          61 | Moe            | Destruidor   | Lança bombas em área para desestabilizar inimigos.                      | Mítico     | Bronze 2   |      15 | 400 Troféus  |
|          62 | Juju           | Detonador    | Dispara brinquedos explosivos que atingem áreas estratégicas.           | Mítico     | Prata 2    |      40 | 800 Troféus  |
|          63 | Mister P       | Controle     | Invoca robôs para auxiliar em combate.                                  | Mítico     | Madeira    |       1 | 100 Troféus  |
|          64 | Sprout         | Detonador    | Lança projéteis que criam barreiras.                                    | Mítico     | Madeira    |       1 | 100 Troféus  |
|          65 | Byron          | Suporte      | Atira projéteis que curam aliados ou causam dano aos inimigos.          | Mítico     | Madeira    |       1 | 100 Troféus  |
|          66 | Lou            | Controle     | Congela inimigos com projéteis gélidos.                                 | Mítico     | Madeira    |       1 | 100 Troféus  |
|          67 | Ruffs          | Suporte      | Invoca pacotes de suprimentos para fortalecer aliados.                  | Mítico     | Madeira    |       1 | 100 Troféus  |
|          68 | Fang           | Algoz        | Ataca com chutes em área que ricocheteiam entre inimigos.               | Mítico     | Madeira    |       1 | 100 Troféus  |
|          69 | Otis           | Controle     | Silencia inimigos para impedir que usem habilidades.                    | Mítico     | Madeira    |       1 | 100 Troféus  |
|          70 | Buster         | Tanque       | Usa uma barreira para proteger aliados e absorver dano.                 | Mítico     | Madeira    |       1 | 100 Troféus  |
|          71 | R-T            | Destruidor   | Divide-se em partes para atingir múltiplos inimigos.                    | Mítico     | Madeira    |       1 | 100 Troféus  |
|          72 | Charlie        | Controle     | Usa habilidades mágicas para confundir e controlar inimigos.            | Mítico     | Madeira    |       1 | 100 Troféus  |
|          73 | Mico           | Algoz        | Avança para o alvo com ataques rápidos e letais.                        | Mítico     | Madeira    |       1 | 100 Troféus  |
|          10 | Jessie         | Controle     | Cria uma torreta                                                        | Super Raro | Bronze 3   |      25 | 600 Troféus  |
|          11 | Dynamike       | Detonador    | Dispara Explosivos                                                      | Super Raro | Prata 3    |      40 | 800 Troféus  |
|          12 | Tick           | Detonador    | Lança minas que explodem após um tempo.                                 | Super Raro | Madeira    |      10 | 300 Troféus  |
|          13 | 8-Bit          | Destruidor   | Atira com precisão e aumenta o dano de aliados.                         | Super Raro | Madeira    |       1 | 100 Troféus  |
|          14 | Rico           | Destruidor   | Dispara balas que ricocheteiam nas paredes.                             | Super Raro | Bronze 1   |      15 | 400 Troféus  |
|          15 | Darryl         | Tanque       | Um robô pirata com ataques de curto alcance.                            | Super Raro | Bronze 1   |      15 | 400 Troféus  |
|          16 | Penny          | Controle     | Dispara sacos de moedas que explodem ao atingir o alvo e cria torretas. | Super Raro | Prata 3    |      50 | 1000 Troféus |
|          17 | Carl           | Destruidor   | Lança um bumerangue que atravessa inimigos e volta.                     | Super Raro | Madeira    |       5 | 200 Troféus  |
|          18 | Jacky          | Tanque       | Usa uma britadeira para causar dano em área.                            | Super Raro | Madeira    |      10 | 300 Troféus  |
|          19 | Gus            | Suporte      | Cria escudos para aliados ao carregar sua super.                        | Super Raro | Madeira    |       1 | 100 Troféus  |
</details>

### Resultado da consulta de contar quantos brawlers existem por raridade

<details>

| Raridade   |   Total_Brawlers |
|:-----------|-----------------:|
| Comum      |                1 |
| Épico      |               26 |
| Incomum    |                8 |
| Lendário   |               12 |
| Mítico     |               28 |
| Super Raro |               10 |

</details>

### Resultado da consulta de Exibir os brawlers com o maior número de troféus

<details>

| Nome   |   Troféus |   Ranks |
|:-------|----------:|--------:|
| Gray   |      1440 |      40 |
| Lily   |      1440 |      40 |
| Piper  |      1021 |      50 |
| Penny  |      1001 |      50 |
| Clancy |       890 |      25 |

</details>

### Resultado da consulta de listar as skills (Super e Ataque) de cada brawler

<details>

| Brawler        |   SkillID | Ataque                   |   Dano_Ataque | Super                  |   Dano_Super |
|:---------------|----------:|:-------------------------|--------------:|:-----------------------|-------------:|
| Shelly         |         1 | Disparo de Espingarda    |           300 | Rajada Destruidora     |         3200 |
| Nita           |         2 | Rugido Selvagem          |           800 | Chamado do Urso        |         1200 |
| Colt           |         3 | Seis Tiros               |           300 | Rastro de Balas        |         2000 |
| Bull           |         4 | Investida de Escopeta    |           400 | Investida Furiosa      |         1500 |
| Brock          |         5 | Foguete Explosivo        |          1100 | Chuva de Foguetes      |         5000 |
| El Primo       |         6 | Soco Poderoso            |           360 | Salto Meteórico        |         2000 |
| Barley         |         7 | Coquetel Explosivo       |           640 | Dilúvio de Coquetéis   |         1200 |
| Poco           |         8 | Canção de Cura           |           800 | Serenata da Cura       |            0 |
| Rosa           |         9 | Soco da Moita            |           600 | Parede Verde           |            0 |
| Jessie         |        10 | Disparo Relâmpago        |           820 | Torreta Energizada     |          800 |
| Dynamike       |        11 | Dinamite Explosiva       |          1200 | Dinamite Gigante       |         3200 |
| Tick           |        12 | Minas Espalhadas         |           800 | Mina Tripla            |         2400 |
| 8-Bit          |        13 | Disparo Pixelado         |           960 | Campo de Aumento       |            0 |
| Rico           |        14 | Tiros Ricocheteantes     |           760 | Tiros Ricocheteantes   |         1600 |
| Darryl         |        15 | Rajada de Escopeta       |          1120 | Barril Giratório       |         3200 |
| Penny          |        16 | Explosão de Moedas       |           960 | Canhão Explosivo       |         1000 |
| Carl           |        17 | Bumerangue Cortante      |           660 | Carrinho de Mina       |         2000 |
| Jacky          |        18 | Golpe de Britadeira      |          1280 | Pancada Sísmica        |         1600 |
| Gus            |        19 | Escudo Fantasma          |           720 | Escudo Fantasma        |            0 |
| Bo             |        20 | Flechas Explosivas       |           700 | Mina Tripla            |         1920 |
| Emz            |        21 | Spray Corrosivo          |           500 | Zona Corrosiva         |         1200 |
| Stu            |        22 | Explosão Flamejante      |           800 | Explosão Turbo         |         1000 |
| Piper          |        23 | Tiro Mortal              |          1520 | Bombardeio Aéreo       |         2500 |
| Pam            |        24 | Rajada de Suporte        |           840 | Torreta de Cura        |            0 |
| Frank          |        25 | Martelo Gigante          |          1200 | Impacto Sísmico        |         2000 |
| Bibi           |        26 | Golpe de Bastão          |          1300 | Home Run               |         1600 |
| Bea            |        27 | Picada Fatal             |          1120 | Abelha Rainha          |         1600 |
| Nani           |        28 | Orbes Convergentes       |          1000 | Robô Explosivo         |         2000 |
| Edgar          |        29 | Pulso Sombrio            |           756 | Pulo das Sombras       |          800 |
| Griff          |        30 | Explosão Monetária       |           720 | Tempestade de Dinheiro |         2400 |
| Grom           |        31 | Bomba Precisa            |          1040 | Granada Sísmica        |         2000 |
| Bonnie         |        32 | Arco e Lança             |          1200 | Salto de Poder         |         1400 |
| Gale           |        33 | Rajada de Vento          |           960 | Ventania               |          800 |
| Colette        |        34 | Investida Selvagem       |          1000 | Ataque de Dívidas      |         1000 |
| Belle          |        35 | Marcador Letal           |          1200 | Golpe Perfurante       |         1200 |
| Ash            |        36 | Raiva Crescente          |          1080 | Onda de Raiva          |         1400 |
| Lola           |        37 | Clone Perfeito           |           920 | Cópia Perfeita         |          800 |
| Sam            |        38 | Punho Magnético          |          1200 | Soco Magnético         |         1600 |
| Mandy          |        39 | Caramelo Mortífero       |          1120 | Doce Fatal             |         1800 |
| Maisie         |        40 | Feixe Letal              |          1100 | Tiro de Energia        |         1600 |
| Hank           |        41 | Bolha Explosiva          |          1120 | Explosão de Bolhas     |         1800 |
| Pearl          |        42 | Explosão Ardente         |           920 | Chamas Crescentes      |         1400 |
| Larry e Lawrie |        43 | Fusão de Explosivos      |          1040 | Ataque Duplo           |         1600 |
| Angelo         |        44 | Esfera Arcana            |          1120 | Esfera Divina          |         1200 |
| Berry          |        45 | Cura Energizante         |           840 | Harmonia Curativa      |            0 |
| Mortis         |        46 | Foice Sombria            |           900 | Golpe das Sombras      |            0 |
| Tara           |        47 | Cartas Místicas          |           840 | Buraco Negro           |         2400 |
| Eugênio        |        48 | Lâmpada Encantada        |          1000 | Puxão                  |         1200 |
| Max            |        49 | Explosão Energética      |           320 | Campo de Velocidade    |            0 |
| Squeak         |        50 | Explosão Pegajosa        |           800 | Explosão Pegajosa      |         1400 |
| Buzz           |        51 | Golpe do Gancho          |           960 | Pulso de Atordoamento  |         2000 |
| Eve            |        52 | Larvas Atacantes         |           400 | Ninhada Voraz          |          800 |
| Janet          |        53 | Canto Harmônico          |           800 | Concerto no Céu        |         2000 |
| Gray           |        54 | Portais Místicos         |           720 | Portais Espectrais     |            0 |
| Willow         |        55 | Controle Mental          |           500 | Controle Mental        |            0 |
| Doug           |        56 | Cura Divina              |           400 | Sanduíche Energizante  |            0 |
| Chuck          |        57 | Explosão de Trilho       |           960 | Corrida Devastadora    |         2400 |
| Melodie        |        58 | Melodia Hipnotizante     |           720 | Melodia Paralizante    |          800 |
| Lily           |        59 | Espinhos Venenosos       |           640 | Espinhos Crescentes    |         1200 |
| Clancy         |        60 | Explosivo Potente        |           880 | Explosão Devastadora   |         2000 |
| Moe            |        61 | Bomba Ratona             |           720 | Bomba Saltitante       |         1600 |
| Juju           |        62 | Brinquedo Explosivo      |           700 | Carnaval Explosivo     |         1400 |
| Mister P       |        63 | Robôs Apoiadores         |           600 | Robôs Incansáveis      |          800 |
| Sprout         |        64 | Barreira Verde           |           500 | Barreira Verde         |            0 |
| Byron          |        65 | Soro Curativo            |           600 | Injeção Tóxica         |         1000 |
| Lou            |        66 | Explosão Gélida          |           480 | Tempestade Congelante  |         1600 |
| Ruffs          |        67 | Suprimento de Força      |           500 | Pacote de Suprimentos  |            0 |
| Fang           |        68 | Chute Devastador         |           900 | Chute Veloz            |         1800 |
| Otis           |        69 | Silêncio Mortal          |           720 | Mudez Mortal           |         1200 |
| Buster         |        70 | Barreira de Aço          |           800 | Escudo Protetor        |            0 |
| R-T            |        71 | Fragmentação             |           700 | Explosão Fragmentada   |         1400 |
| Charlie        |        72 | Ilusão Sombria           |           600 | Neblina Sombria        |            0 |
| Mico           |        73 | Dança Letal              |           960 | Dança Sombria          |         2000 |
| Spike          |        74 | Granada de Cacto         |           560 | Campo de Espinhos      |          800 |
| Corvo          |        75 | Adagas Venenosas         |           380 | Rajada de Adagas       |          600 |
| Leon           |        76 | Lâminas Giratórias       |           460 | Invisibilidade         |            0 |
| Sandy          |        77 | Tempestade de Areia      |           640 | Tempestade de Areia    |            0 |
| Amber          |        78 | Explosão de Lança-Chamas |           320 | Muralha de Fogo        |         1500 |
| Wattson        |        80 | Granada Gigante          |           840 | Barreira Elétrica      |            0 |
| Chester        |        81 | Ataque Imprevisível      |           720 | Ataque Aleatório       |         1000 |
| Cordelius      |        82 | Pó Mágico                |           500 | Vórtice de Plantas     |          800 |
| Kit            |        83 | Rajada de Projéteis      |           600 | Campo de Proteção      |            0 |
| Draco          |        84 | Disparo Energético       |           540 | Sopro do Dragão        |         1800 |
| Draco          |        84 | Sopro de Fogo            |           760 | Sopro do Dragão        |         1800 |
| Kenji          |        85 | Corte Devastador         |           920 | Golpe da Lâmina        |         1500 |

</details>

### Resultado da consulta de listar as recompensas de maestria por tier

<details>

| Tier     |   Ouro |   Créditos |   Pontos_de_Poder |
|:---------|-------:|-----------:|------------------:|
| Madeira  |    750 |         75 |               100 |
| Bronze 1 |   1250 |        150 |               200 |
| Bronze 2 |   1250 |        150 |               200 |
| Bronze 3 |   1250 |        150 |               200 |
| Prata 1  |   1000 |        100 |               150 |
| Prata 2  |   1000 |        100 |               150 |
| Prata 3  |   1000 |        100 |               150 |
| Ouro 1   |   2000 |        200 |               300 |
| Ouro 2   |   2000 |        200 |               300 |
| Ouro 3   |   2000 |        200 |               300 |

</details>

### Resultado da consulta de encontrar todos os elementos visuais associados a cada brawler

<details>

| SkinName        |   Price | Rarity   | BrawlerName   |
|:----------------|--------:|:---------|:--------------|
| Max Coelho      |     150 | Rare     | 8-Bit         |
| Darryl Pirata   |     150 | Rare     | Barley        |
| Rei Tick        |     150 | Rare     | Brock         |
| Desperado Colt  |     150 | Rare     | Bull          |
| Panda Nita      |     150 | Rare     | Colt          |
| Corvo Fênix     |     150 | Rare     | Darryl        |
| Mortis Vampiro  |     150 | Rare     | Dynamike      |
| Marinha Penny   |     150 | Rare     | El Primo      |
| Frank Cavaleiro |     150 | Rare     | Jessie        |
| El Rudo Primo   |     150 | Rare     | Nita          |
| Leon Lobo       |     150 | Rare     | Penny         |
| Piper Rosa      |     150 | Rare     | Poco          |
| Spike Rosa      |     150 | Rare     | Rico          |
| Edgar Vermelho  |     150 | Rare     | Rosa          |
| Bandida Shelly  |     150 | Rare     | Shelly        |
| Eugênio Pirata  |     150 | Rare     | Tick          |

</details>

### Resultado da consulta de mostrar todos os emotes e sprays disponíveis com seus preços

<details>

| Emote       |   Preço | Spray         |   Preço_Spray |
|:------------|--------:|:--------------|--------------:|
| Thumbs Down |      80 | Spray Cool 3  |            75 |
| Smile       |      80 | Spray Fire    |            90 |
| Angry       |      80 | Spray Ice     |           120 |
| Happy       |      80 | Spray Thunder |           200 |
| Sad         |      80 | Spray Leaf    |           100 |
| Laugh       |      80 | Spray Star    |           150 |
| Cry         |      80 | Spray Flame   |           300 |
| Yawn        |      80 | Spray Smile   |            50 |

</details>

</details>

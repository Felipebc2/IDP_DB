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


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

SELECT * FROM Rarity;
SELECT * FROM Maestry;
SELECT * FROM Ranks;

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
    a.attack_name AS Ataque, 
    a.attack_damage AS Dano_Ataque,
    sp.super_name AS Super,
    sp.super_damage AS Dano_Super
FROM 
    Brawlers b
JOIN 
    Skills s ON b.id = s.brawler_id
JOIN 
    Attack a ON s.id = a.skills_id
JOIN 
    Super sp ON s.id = sp.skills_id
ORDER BY  b.id;

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


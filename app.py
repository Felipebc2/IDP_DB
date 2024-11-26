import streamlit as st
import mysql.connector
import pandas as pd

# Configuração do banco de dados
db_config = {
    'host': 'localhost',
    'user': 'brawluser',  # Substitua pelo usuário correto
    'password': 'password',  # Substitua pela senha correta
    'database': 'BrawlStarsDB'
}

# Função para conectar ao banco e executar consultas
def execute_query(query, fetch=True, params=None):
    try:
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor(dictionary=True)
        cursor.execute(query, params)
        if fetch:
            result = cursor.fetchall()
        else:
            connection.commit()
            result = None
        cursor.close()
        connection.close()
        return result
    except mysql.connector.Error as err:
        st.error(f"Erro ao conectar ao banco de dados: {err}")
        return []

# Função para carregar opções de dropdown
def load_dropdown_options(query, key_field, value_field):
    options = execute_query(query)
    if options:
        return {opt[value_field]: opt[key_field] for opt in options}
    else:
        st.error("Erro ao carregar opções.")
        return {}

# Interface principal com menu
st.title("Brawl Stars DB Front")
menu = st.sidebar.selectbox(
    "Escolha uma opção:",
    ["Inserir Novo Brawler", "Listar Brawlers", "Deletar Brawler", "Alterar Brawler", "Listar Skills do Brawler", "Listar Skins"]
)

# Inserir Novo Brawler
if menu == "Inserir Novo Brawler":
    st.header("Inserir Novo Brawler")

    rarity_dict = load_dropdown_options("SELECT id, rarity_name FROM Rarity;", "id", "rarity_name")
    maestry_dict = load_dropdown_options("SELECT id, maestry_level FROM Maestry;", "id", "maestry_level")
    rank_dict = load_dropdown_options("SELECT id, rank_level FROM Ranks;", "id", "rank_level")

    if rarity_dict and maestry_dict and rank_dict:
        selected_rarity = st.selectbox("Raridade", options=list(rarity_dict.keys()))
        rarity_id = rarity_dict[selected_rarity]
        selected_maestry = st.selectbox("Maestria", options=list(maestry_dict.keys()))
        maestry_id = maestry_dict[selected_maestry]
        selected_rank = st.selectbox("Rank", options=list(rank_dict.keys()))
        rank_id = rank_dict[selected_rank]

        name = st.text_input("Nome do Brawler:")
        brawler_class = st.text_input("Classe:")
        description = st.text_area("Descrição:")
        level = st.number_input("Nível", min_value=1, step=1)
        trophys = st.number_input("Troféus", min_value=0, step=1)
        move_speed = st.selectbox("Velocidade de Movimento", ["Lenta", "Média", "Rápida"])

        if st.button("Inserir Dados"):
            if name and brawler_class and description:
                insert_query = """
                INSERT INTO Brawlers (name, class, description, level, trophys, moveSpeed, rarity_id, maestry_id, rank_id)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s);
                """
                params = (name, brawler_class, description, level, trophys, move_speed, rarity_id, maestry_id, rank_id)
                try:
                    execute_query(insert_query, fetch=False, params=params)
                    st.success("Brawler inserido com sucesso!")
                except Exception as e:
                    st.error(f"Erro ao inserir o Brawler: {e}")
            else:
                st.warning("Por favor, preencha todos os campos!")

elif menu == "Listar Brawlers":
    st.header("Lista de Brawlers")
    
    # Opções para ordenação
    sort_options = {
        "ID (Padrão)": "b.id",
        "Raridade (Baseada no ID)": "r.id",  # Ordena pela ID das raridades
        "Troféus": "b.trophys",
        "Maestria": "b.maestry_id",
        "Level": "b.level",
        "Rank": "rk.rank_level",
        "Classe": "b.class",
        "Alfabética": "b.name"
    }
    selected_sort = st.selectbox("Ordenar por:", options=list(sort_options.keys()))
    order_by = sort_options[selected_sort]
    
    # Consulta com a cláusula ORDER BY dinâmica
    query = f"""
    SELECT
        b.name AS Nome,
        b.class AS Classe,
        b.description AS Descrição,
        b.level AS Level,
        r.rarity_name AS Raridade,
        m.maestry_level AS Maestria,
        rk.rank_level AS Ranks,
        b.trophys AS Troféus
    FROM
        Brawlers b
    JOIN
        Rarity r ON b.rarity_id = r.id
    JOIN
        Maestry m ON b.maestry_id = m.id
    JOIN
        Ranks rk ON b.rank_id = rk.id
    ORDER BY
        {order_by};
    """
    
    # Executar a consulta e exibir os dados
    data = execute_query(query)
    if data:
        df = pd.DataFrame(data)
        st.dataframe(df)  # Exibe os dados como uma tabela interativa
    else:
        st.warning("Nenhum dado encontrado!")

# Deletar Brawler
elif menu == "Deletar Brawler":
    st.header("Deletar Brawler")
    brawlers = execute_query("SELECT id, name FROM Brawlers ORDER BY id;")
    if brawlers:
        brawler_dict = {f"ID {b['id']} - {b['name']}": b['id'] for b in brawlers}
        selected_brawler = st.selectbox("Selecione o Brawler para deletar:", options=list(brawler_dict.keys()))
        if st.button("Deletar"):
            delete_query = "DELETE FROM Brawlers WHERE id = %s;"
            brawler_id = brawler_dict[selected_brawler]
            try:
                execute_query(delete_query, fetch=False, params=(brawler_id,))
                st.success(f"Brawler '{selected_brawler}' deletado com sucesso!")
            except Exception as e:
                st.error(f"Erro ao deletar o Brawler: {e}")
    else:
        st.warning("Nenhum Brawler encontrado para deletar.")

# Alterar Brawler
elif menu == "Alterar Brawler":
    st.header("Alterar Brawler")
    brawlers = execute_query("SELECT id, name FROM Brawlers ORDER BY id;")
    if brawlers:
        brawler_dict = {f"ID {b['id']} - {b['name']}": b['id'] for b in brawlers}
        selected_brawler = st.selectbox("Selecione o Brawler para alterar:", options=list(brawler_dict.keys()))
        brawler_id = brawler_dict[selected_brawler]
        brawler_data = execute_query("SELECT * FROM Brawlers WHERE id = %s;", params=(brawler_id,))
        if brawler_data:
            brawler_data = brawler_data[0]
            name = st.text_input("Nome do Brawler:", value=brawler_data['name'])
            brawler_class = st.text_input("Classe:", value=brawler_data['class'])
            description = st.text_area("Descrição:", value=brawler_data['description'])
            level = st.number_input("Nível", min_value=1, step=1, value=brawler_data['level'])
            trophys = st.number_input("Troféus", min_value=0, step=1, value=brawler_data['trophys'])
            move_speed = st.selectbox("Velocidade de Movimento", ["Lenta", "Média", "Rápida"], index=["Lenta", "Média", "Rápida"].index(brawler_data['moveSpeed']))
            if st.button("Salvar Alterações"):
                update_query = """
                UPDATE Brawlers
                SET name = %s, class = %s, description = %s, level = %s, trophys = %s, moveSpeed = %s
                WHERE id = %s;
                """
                params = (name, brawler_class, description, level, trophys, move_speed, brawler_id)
                try:
                    execute_query(update_query, fetch=False, params=params)
                    st.success(f"Brawler '{name}' atualizado com sucesso!")
                except Exception as e:
                    st.error(f"Erro ao atualizar o Brawler: {e}")

# Listar Skills
elif menu == "Listar Skills do Brawler":
    st.header("Listar Skills do Brawler")

    # Carregar os Brawlers existentes
    brawlers = execute_query("SELECT id, name FROM Brawlers ORDER BY id;")
    if brawlers:
        brawler_dict = {f"{b['name']}": b['id'] for b in brawlers}
        selected_brawler = st.selectbox("Selecione um Brawler:", options=list(brawler_dict.keys()))
        brawler_id = brawler_dict[selected_brawler]

        # Consulta para listar os ataques do Brawler
        attack_query = """
        SELECT 
            a.attack_name AS Ataque, 
            a.attack_desc AS Descrição, 
            a.attack_damage AS Dano, 
            a.recharge AS Recarga, 
            a.ammo AS Munição
        FROM 
            Attack a
        JOIN 
            Skills s ON a.skills_id = s.id
        WHERE 
            s.brawler_id = %s;
        """
        # Consulta para listar os supers do Brawler
        super_query = """
        SELECT 
            sp.super_name AS Super, 
            sp.super_desc AS Descrição, 
            sp.super_damage AS Dano, 
            sp.super_range AS Alcance, 
            sp.charge_rate AS Taxa_de_Carga
        FROM 
            Super sp
        JOIN 
            Skills s ON sp.skills_id = s.id
        WHERE 
            s.brawler_id = %s;
        """

        # Executar as consultas
        attack_data = execute_query(attack_query, params=(brawler_id,))
        super_data = execute_query(super_query, params=(brawler_id,))

        # Exibir os ataques
        st.subheader("Ataques")
        if attack_data:
            attack_df = pd.DataFrame(attack_data)
            st.dataframe(attack_df)  # Exibe os dados como uma tabela interativa
        else:
            st.warning("Nenhum ataque encontrado para o Brawler selecionado.")

        # Exibir os supers
        st.subheader("Supers")
        if super_data:
            super_df = pd.DataFrame(super_data)
            st.dataframe(super_df)  # Exibe os dados como uma tabela interativa
        else:
            st.warning("Nenhum super encontrado para o Brawler selecionado.")
    else:
        st.warning("Nenhum Brawler encontrado.")

# Listar Skins
elif menu == "Listar Skins":
    st.header("Listar Skins do Jogo")

    query = """
    SELECT 
        s.id AS SkinID,
        s.name AS Nome,
        s.price AS Preço,
        s.rarity AS Raridade,
        b.name AS Brawler
    FROM 
        Skins s
    JOIN 
        Brawlers b ON s.brawler_id = b.id
    ORDER BY 
        s.id;
    """
    skin_data = execute_query(query)
    if skin_data:
        st.subheader("Lista de Skins")
        skin_df = pd.DataFrame(skin_data)
        st.dataframe(skin_df)
    else:
        st.warning("Nenhuma skin encontrada no jogo.")
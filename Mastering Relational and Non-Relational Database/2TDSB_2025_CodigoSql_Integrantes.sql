/*
                        MOTTU-FLOW
    Joao Gabriel Boaventura Marques e Silva | RM554874 | 2TDSB-2025
    Leo Motta Lima | RM557851 | 2TDSB-2025
    Lucas Leal das Chagas | RM551124 | 2TDSB-2025
*/

-- ============================================================
-- DROP DAS TABELAS CASO EXISTAM
-- ============================================================
DROP TABLE funcionario CASCADE CONSTRAINTS;
DROP TABLE patio CASCADE CONSTRAINTS;
DROP TABLE moto CASCADE CONSTRAINTS;
DROP TABLE aruco_tag CASCADE CONSTRAINTS;
DROP TABLE camera CASCADE CONSTRAINTS;
DROP TABLE localidade CASCADE CONSTRAINTS;
DROP TABLE registro_status CASCADE CONSTRAINTS;
DROP TABLE auditoria CASCADE CONSTRAINTS;
DROP TABLE fato_motos_status CASCADE CONSTRAINTS;


-- ============================================================
-- CRIAÇÃO DAS TABELAS
-- ============================================================

CREATE TABLE funcionario (
    id_funcionario NUMBER(10) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    cpf VARCHAR2(14) NOT NULL UNIQUE,
    cargo VARCHAR2(50) NOT NULL,
    telefone VARCHAR2(20) NOT NULL,
    email VARCHAR2(50) NOT NULL UNIQUE,
    senha VARCHAR2(255) NOT NULL,
    refresh_token VARCHAR2(255) DEFAULT NULL,
    expiracao_refresh_token TIMESTAMP DEFAULT NULL
);

CREATE TABLE patio (
    id_patio NUMBER(10) PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    endereco VARCHAR2(200) NOT NULL,
    capacidade_maxima NUMBER NOT NULL
);

CREATE TABLE moto (
    id_moto NUMBER(10) PRIMARY KEY,
    placa VARCHAR2(10) NOT NULL,
    modelo VARCHAR2(50) NOT NULL,
    fabricante VARCHAR2(50) NOT NULL,
    ano NUMBER(4) NOT NULL,
    id_patio NUMBER(10) NOT NULL,
    localizacao_atual VARCHAR2(100) NOT NULL,
    CONSTRAINT fk_moto_patio FOREIGN KEY (id_patio) REFERENCES patio(id_patio)
);

CREATE TABLE camera (
    id_camera NUMBER(10) PRIMARY KEY,
    status_operacional VARCHAR2(20) NOT NULL,
    localizacao_fisica VARCHAR2(255) NOT NULL,
    id_patio NUMBER(10) NOT NULL,
    CONSTRAINT fk_camera_patio FOREIGN KEY (id_patio) REFERENCES patio(id_patio)
);

CREATE TABLE aruco_tag (
    id_tag NUMBER(10) PRIMARY KEY,
    codigo VARCHAR2(50) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    id_moto NUMBER(10) NOT NULL,
    CONSTRAINT fk_aruco_moto FOREIGN KEY (id_moto) REFERENCES moto(id_moto)
);

CREATE TABLE localidade (
    id_localidade NUMBER(10) PRIMARY KEY,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ponto_referencia VARCHAR2(100) NOT NULL,
    id_moto NUMBER(10) NOT NULL,
    id_patio NUMBER(10) NOT NULL,
    id_camera NUMBER(10) NOT NULL,
    CONSTRAINT fk_localidade_moto FOREIGN KEY (id_moto) REFERENCES moto(id_moto),
    CONSTRAINT fk_localidade_patio FOREIGN KEY (id_patio) REFERENCES patio(id_patio),
    CONSTRAINT fk_localidade_camera FOREIGN KEY (id_camera) REFERENCES camera(id_camera)
);

CREATE TABLE registro_status (
    id_status NUMBER(10) PRIMARY KEY,
    tipo_status VARCHAR2(50) NOT NULL,
    descricao VARCHAR2(255),
    data_status TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_moto NUMBER(10) NOT NULL,
    id_funcionario NUMBER(10) NOT NULL,
    CONSTRAINT fk_status_moto FOREIGN KEY (id_moto) REFERENCES moto(id_moto),
    CONSTRAINT fk_status_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

CREATE TABLE auditoria (
    id_auditoria NUMBER(10) PRIMARY KEY,
    nome_usuario VARCHAR2(50),
    tipo_operacao VARCHAR2(20),
    data_hora TIMESTAMP,
    valores_anteriores CLOB,
    valores_novos CLOB
);

CREATE TABLE fato_motos_status (
    id_patio NUMBER(10),
    tipo_status VARCHAR2(50),
    quantidade NUMBER
);

-- ============================================================
-- SEQUENCES
-- ============================================================
CREATE SEQUENCE seq_registro_status START WITH 6 INCREMENT BY 1;
CREATE SEQUENCE seq_localidade START WITH 6 INCREMENT BY 1;
CREATE SEQUENCE auditoria_seq START WITH 1 INCREMENT BY 1;

-- ============================================================
-- INSERTS
-- ============================================================
INSERT INTO funcionario VALUES (1, 'Joao Silva',  '12345678900', 'Gerente', '11999990001', 'joao.silva@email.com', 'senha123', NULL, NULL);
INSERT INTO funcionario VALUES (2, 'Maria Souza', '22345678900', 'Tecnico', '11999990002', 'maria.souza@email.com', 'senha123', NULL, NULL);
INSERT INTO funcionario VALUES (3, 'Carlos Lima', '32345678900', 'Analista', '11999990003', 'carlos.lima@email.com', 'senha123', NULL, NULL);
INSERT INTO funcionario VALUES (4, 'Ana Costa', '42345678900', 'Supervisor', '11999990004', 'ana.costa@email.com', 'senha123', NULL, NULL);
INSERT INTO funcionario VALUES (5, 'Pedro Rocha', '52345678900', 'Motorista', '11999990005', 'pedro.rocha@email.com', 'senha123', NULL, NULL);

INSERT INTO patio VALUES (1, 'Patio Central', 'Rua A 123', 50);
INSERT INTO patio VALUES (2, 'Patio Norte', 'Rua B 456', 30);
INSERT INTO patio VALUES (3, 'Patio Sul', 'Rua C 789', 40);
INSERT INTO patio VALUES (4, 'Patio Leste', 'Rua D 321', 20);
INSERT INTO patio VALUES (5, 'Patio Oeste', 'Rua E 654', 25);

INSERT INTO moto VALUES (1, 'ABC1234', 'CG150', 'Honda', 2020, 1, 'Rua A');
INSERT INTO moto VALUES (2, 'DEF5678', 'Biz110', 'Honda', 2021, 2, 'Rua B');
INSERT INTO moto VALUES (3, 'GHI9012', 'XRE300', 'Honda', 2019, 3, 'Rua C');
INSERT INTO moto VALUES (4, 'JKL3456', 'PCX150', 'Honda', 2022, 4, 'Rua D');
INSERT INTO moto VALUES (5, 'MNO7890', 'Fazer250', 'Yamaha', 2023, 5, 'Rua E');

INSERT INTO camera VALUES (1, 'Operacional', 'Entrada Patio Central', 1);
INSERT INTO camera VALUES (2, 'Manutencao', 'Saida Patio Norte', 2);
INSERT INTO camera VALUES (3, 'Operacional', 'Corredor Patio Sul', 3);
INSERT INTO camera VALUES (4, 'Inoperante', 'Portao Patio Leste', 4);
INSERT INTO camera VALUES (5, 'Operacional', 'Garagem Patio Oeste', 5);

INSERT INTO aruco_tag VALUES (1, 'TAG001', 'Ativo', 1);
INSERT INTO aruco_tag VALUES (2, 'TAG002', 'Ativo', 2);
INSERT INTO aruco_tag VALUES (3, 'TAG003', 'Inativo', 3);
INSERT INTO aruco_tag VALUES (4, 'TAG004', 'Ativo', 4);
INSERT INTO aruco_tag VALUES (5, 'TAG005', 'Manutencao', 5);

INSERT INTO localidade VALUES (1, TIMESTAMP '2025-05-16 08:00:00', 'Portao A', 1, 1, 1);
INSERT INTO localidade VALUES (2, TIMESTAMP '2025-05-16 08:10:00', 'Portao B', 2, 2, 2);
INSERT INTO localidade VALUES (3, TIMESTAMP '2025-05-16 08:20:00', 'Portao C', 3, 3, 3);
INSERT INTO localidade VALUES (4, TIMESTAMP '2025-05-16 08:30:00', 'Portao D', 4, 4, 4);
INSERT INTO localidade VALUES (5, TIMESTAMP '2025-05-16 08:40:00', 'Portao E', 5, 5, 5);

INSERT INTO registro_status VALUES (1, 'Disponivel', 'Moto pronta para uso.', TIMESTAMP '2025-05-16 08:00:00', 1, 1);
INSERT INTO registro_status VALUES (2, 'Inativo', 'Aguardando documentacao.', TIMESTAMP '2025-05-16 08:10:00', 2, 3);
INSERT INTO registro_status VALUES (3, 'Manutencao', 'Revisao geral.', TIMESTAMP '2025-05-16 08:20:00', 3, 2);
INSERT INTO registro_status VALUES (4, 'Reservado', 'Reservada via app.', TIMESTAMP '2025-05-16 08:30:00', 4, 4);
INSERT INTO registro_status VALUES (5, 'Baixa', 'Moto furtada.', TIMESTAMP '2025-05-16 08:40:00', 5, 1);

INSERT INTO fato_motos_status VALUES (1, 'Disponivel', 10);
INSERT INTO fato_motos_status VALUES (1, 'Manutencao', 5);
INSERT INTO fato_motos_status VALUES (2, 'Disponivel', 8);
INSERT INTO fato_motos_status VALUES (2, 'Reservado', 3);
INSERT INTO fato_motos_status VALUES (3, 'Disponivel', 7);
INSERT INTO fato_motos_status VALUES (3, 'Manutencao', 2);
INSERT INTO fato_motos_status VALUES (4, 'Reservado', 4);
INSERT INTO fato_motos_status VALUES (4, 'Disponivel', 6);
INSERT INTO fato_motos_status VALUES (5, 'Manutencao', 1);
INSERT INTO fato_motos_status VALUES (5, 'Disponivel', 9);

COMMIT;

-- ============================================================
-- CONSULTAS PARA VERIFICAR O CONTEÚDO DAS TABELAS
-- ============================================================
SELECT * FROM funcionario;
SELECT * FROM patio;
SELECT * FROM moto;
SELECT * FROM aruco_tag;
SELECT * FROM camera;
SELECT * FROM localidade;
SELECT * FROM registro_status;
SELECT * FROM auditoria;
SELECT * FROM fato_motos_status

-- ============================================================
-- PROCEDURE 1 - JSON Funcionario + Motos
-- ============================================================
CREATE OR REPLACE PROCEDURE relatorio_funcionario_moto_status(p_id_funcionario IN NUMBER)
IS
    v_json CLOB;
BEGIN
    SELECT '{' ||
           '"id_funcionario": ' || f.id_funcionario || ', ' ||
           '"nome": "' || f.nome || '", ' ||
           '"cargo": "' || f.cargo || '", ' ||
           '"motos": [' ||
           LISTAGG(
               '{"id_moto":'|| m.id_moto ||
               ',"placa":"' || m.placa || '"' ||
               ',"status":"' || rs.tipo_status || '"}', ','
           ) WITHIN GROUP (ORDER BY m.id_moto) ||
           ']' ||
           '}'
    INTO v_json
    FROM funcionario f
    LEFT JOIN moto m ON f.id_funcionario = m.id_moto
    LEFT JOIN registro_status rs ON m.id_moto = rs.id_moto
    WHERE f.id_funcionario = p_id_funcionario;

    DBMS_OUTPUT.PUT_LINE(v_json);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Funcionario nao encontrado');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Mais de um funcionario retornado');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM);
END;
/

-- ============================================================
-- PROCEDURE 2 - Soma por patio/status
-- ============================================================
CREATE OR REPLACE PROCEDURE soma_fato_motos
IS
    CURSOR c_fato IS
        SELECT id_patio, tipo_status, quantidade
        FROM fato_motos_status
        ORDER BY id_patio, tipo_status;

    v_id_patio NUMBER := NULL;
    v_subtotal NUMBER := 0;
    v_total NUMBER := 0;
BEGIN
    FOR rec IN c_fato LOOP
        IF v_id_patio IS NULL THEN
            v_id_patio := rec.id_patio;
            v_subtotal := 0;
        ELSIF v_id_patio <> rec.id_patio THEN
            DBMS_OUTPUT.PUT_LINE('Subtotal Patio ' || v_id_patio || ': ' || v_subtotal);
            v_id_patio := rec.id_patio;
            v_subtotal := 0;
        END IF;

        DBMS_OUTPUT.PUT_LINE('Patio: ' || rec.id_patio || 
                             ', Status: ' || rec.tipo_status || 
                             ', Quantidade: ' || rec.quantidade);

        v_subtotal := v_subtotal + rec.quantidade;
        v_total := v_total + rec.quantidade;
    END LOOP;

    IF v_id_patio IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Subtotal Patio ' || v_id_patio || ': ' || v_subtotal);
    END IF;

    DBMS_OUTPUT.PUT_LINE('Total Geral: ' || v_total);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro: ' || SQLERRM);
END;
/

-- ============================================================
-- FUNÇÃO 1 - Moto para JSON
-- ============================================================
CREATE OR REPLACE FUNCTION moto_to_json(p_id_moto IN NUMBER) RETURN CLOB
IS
    v_json CLOB;
BEGIN
    SELECT '{' ||
           '"id_moto": ' || id_moto || ', ' ||
           '"placa": "' || placa || '", ' ||
           '"modelo": "' || modelo || '", ' ||
           '"fabricante": "' || fabricante || '", ' ||
           '"ano": ' || ano || ', ' ||
           '"id_patio": ' || id_patio || ', ' ||
           '"localizacao_atual": "' || localizacao_atual || '"' ||
           '}'
    INTO v_json
    FROM moto
    WHERE id_moto = p_id_moto;

    RETURN v_json;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN '{"erro": "Moto nao encontrada"}';
    WHEN OTHERS THEN
        RETURN '{"erro": "' || SQLERRM || '"}';
END;
/

-- ============================================================
-- FUNÇÃO 2 - Validar senha do funcionario
-- ============================================================
CREATE OR REPLACE FUNCTION validar_senha(p_id_funcionario IN NUMBER, p_senha IN VARCHAR2) RETURN VARCHAR2
IS
    v_senha VARCHAR2(255);
BEGIN
    SELECT senha INTO v_senha FROM funcionario WHERE id_funcionario = p_id_funcionario;

    IF v_senha = p_senha THEN
        RETURN 'Valido';
    ELSE
        RETURN 'Invalido';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Funcionario nao encontrado';
    WHEN OTHERS THEN
        RETURN 'Erro: ' || SQLERRM;
END;
/

-- ============================================================
-- TRIGGER DE AUDITORIA PARA MOTO
-- ============================================================
CREATE OR REPLACE TRIGGER auditoria_moto
AFTER INSERT OR UPDATE OR DELETE ON moto
FOR EACH ROW
DECLARE
BEGIN
    INSERT INTO auditoria (id_auditoria, nome_usuario, tipo_operacao, data_hora, valores_anteriores, valores_novos)
    VALUES (auditoria_seq.NEXTVAL,
            USER,
            CASE 
                WHEN INSERTING THEN 'INSERT'
                WHEN UPDATING THEN 'UPDATE'
                WHEN DELETING THEN 'DELETE'
            END,
            SYSTIMESTAMP,
            CASE 
                WHEN INSERTING THEN NULL
                ELSE :OLD.placa
            END,
            CASE 
                WHEN DELETING THEN NULL
                ELSE :NEW.placa
            END
           );
END;
/

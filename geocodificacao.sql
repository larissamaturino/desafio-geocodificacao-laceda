
CREATE TABLE base_busca (
    consulta_logradouro VARCHAR(150),
    consulta_numero VARCHAR(20),
    consulta_bairro VARCHAR(150),
    consulta_cep VARCHAR(20),
    consulta_complemento VARCHAR(150),
    consulta_municipio VARCHAR(150)
);


CREATE TABLE cnefe_bahia (
    cod_uf VARCHAR(20),
    cod_municipo VARCHAR(20),
    cod_distrito VARCHAR(20),
    cod_subdistrito VARCHAR(20),
    cod_setor VARCHAR(20),
    num_quadra VARCHAR(20),
    num_face VARCHAR(20),
    cep VARCHAR(20),
    nom_secgeo VARCHAR(150),
    nom_tipo_secgeo VARCHAR(150),
    nom_titulo_secgeo VARCHAR(150),
    nom_logradouro VARCHAR(150),
    num_endereco VARCHAR(20),
    dsc_estabelecimento VARCHAR(150),
    cod_especie VARCHAR(20),
    nv_rod_estr VARCHAR(150),
    nv_km VARCHAR(20),
    nv_segm VARCHAR(20),
    nv_lote VARCHAR(20),
    nv_complemento VARCHAR(150)
);


SELECT DISTINCT ON (b.consulta_logradouro, b.consulta_numero, b.consulta_cep)
    b.consulta_logradouro,
    b.consulta_numero,
    b.consulta_bairro,
    b.consulta_cep,
    b.consulta_complemento,
    b.consulta_municipio,
    c.cod_setor AS codigo_setor_censitario
FROM base_busca b
LEFT JOIN cnefe_bahia c
    ON b.consulta_cep = c.cep;


CREATE TABLE  base_busca (
    consulta_logradouro TEXT,
    consulta_numero TEXT,
    consulta_bairro TEXT,
    consulta_cep TEXT,
    consulta_complemento TEXT,
    consulta_municipio TEXT
);

CREATE TABLE  cnefe_bahia (
    cod_uf TEXT,
    cod_municipo TEXT,
    cod_distrito TEXT,
    cod_subdistrito TEXT,
    cod_setor TEXT,
    num_quadra TEXT,
    num_face TEXT,
    cep TEXT,
    nom_secgeo TEXT,
    nom_tipo_secgeo TEXT,
    nom_titulo_secgeo TEXT,
    nom_logradouro TEXT,
    num_endereco TEXT,
    dsc_estabelecimento TEXT,
    cod_especie TEXT,
    nv_rod_estr TEXT,
    nv_km TEXT,
    nv_segm TEXT,
    nv_lote TEXT,
    nv_complemento TEXT
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
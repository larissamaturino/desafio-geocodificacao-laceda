# Desafio de Geocodificação - LACEDA (CNEFE Bahia)

# Objetivo
Adicionar o código do setor censitário do IBGE, estabelecendo a relação entre a tabela `base_busca` e a tabela `cnefe_bahia`.

#  Desenvolvimento
Baixei as bases de dados disponibilizadas e abri os arquivos no Visual Studio para ver como era a estrutura da tabela e qual era o nome de cada coluna antes de criar o banco de dados.

Tive dificuldade ao popular as tabelas devido ao formato dos dados, para evitar erros criei todas as colunas no formato `TEXT`.
Optei por mudar o nome de todas as colunas para letras minúsculas, para facilitar a leitura e evitar ter que escrever com aspas no SQL.
Com as duas tabelas populadas e padronizadas no banco, passei para a etapa de identificar qual era o setor censitário de cada endereço:
Realizei um `LEFT JOIN` entre a `base_busca` e a `cnefe_bahia` utilizando a coluna de **CEP** como chave de ligação. Quando o banco encontrava o CEP correspondente na `cnefe_bahia`, ele pegava o valor da coluna **`cod_setor`** (onde o IBGE guarda o código do setor censitário) e adicionava essa informação como uma nova coluna ao lado do endereço da `base_busca`. Utilizei o comando `DISTINCT ON` para não repetir registros.

## Arquivos do Repositório
- `resultado_final.csv`: Tabela final com os endereços e a nova coluna contendo o código do setor censitário.
- `geocodificacao.sql`: Código SQL com a criação das tabelas, ajustes e a pesquisa de cruzamento.

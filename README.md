# Desafio de Geocodificação - LACEDA (CNEFE Bahia)

# Objetivo
Relacionar a base busca com  o setor censitário do IBGE que cada um pertence, utilizando os dados do CNEFE Bahia.

# Desafio de Geocodificação - LACEDA (CNEFE Bahia)

## Objetivo
Relacionar a base busca com o setor censitário do IBGE a que cada um pertence, utilizando os dados do CNEFE Bahia.

## Solução
1. **Padronização dos nomes:** Optei por mudar o nome de todas as colunas para letras minúsculas, para facilitar a leitura e evitar ter que escrever com aspas no SQL.
2. **Criação das tabelas e importação:** Defini o tipo de dado de todas as colunas como `TEXT` para evitar problemas com símbolos, traços ou formatação dos CEPs ao importar os dados.
3. **Cruzamento dos dados:** Usei o CEP para ligar a minha lista à tabela do IBGE. Quando o banco encontrava o mesmo CEP nas duas tabelas, ele trazia o valor que estava guardado na coluna de setor censitário do IBGE e adicionava ao meu resultado.
4. **Resultado limpo:** Usei o comando `DISTINCT ON` para garantir que o resultado final ficasse com exatamente as mesmas 107 linhas da base original, sem repetir registros.

## Arquivos do repositório
- `resultado_final.csv`: Tabela final com os endereços e a nova coluna com o código do setor censitário.
- `geocodificacao.sql`: Código SQL com a criação das tabelas e a pesquisa realizada.
- `README.md`: Esta explicação do projeto.

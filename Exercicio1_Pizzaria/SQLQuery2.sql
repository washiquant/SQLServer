/*
## 📝  Exercício

**Exercício 1 — Pizzaria (continuação da Aula 07).** No banco Pizzaria:

1. Todas as pizzas da mais cara para a mais barata.
2. As 3 pizzas mais baratas.
3. Pizzas com preço entre R $50 e R$ 60.
4. Clientes que moram no Centro ou no Jardim.
5. Pedidos feitos em outubro de 2026.
6. Quantos pedidos cada cliente fez (cpf e quantidade), do maior para o menor.
7. Quantas pizzas (soma das quantidades) foram vendidas de cada código de pizza.
8. Entregadores (matrícula) que fizeram mais de 2 entregas.
9. Preço médio, menor e maior preço das pizzas.
10. Quantos pedidos houve em cada dia, só dos dias com mais de 1 pedido.
*/

USE PIZZARIA 
 SELECT * FROM PIZZA ORDER BY PRECO DESC --1

SELECT TOP 3 * FROM PIZZA  ORDER BY PRECO --2

SELECT * FROM PIZZA WHERE PRECO BETWEEN 50 AND 60 --3

SELECT *  FROM CLIENTE WHERE (BAIRRO = 'Centro' OR BAIRRO = 'Jardim') --4
SELECT * FROM CLIENTE WHERE BAIRRO IN ('Centro','Jardim') --4

SELECT * FROM PEDIDO WHERE DATA_PEDIDO >= '2026-10-01' AND DATA_PEDIDO <= '2026-10-01' --5
SELECT * FROM PEDIDO WHERE DATA_PEDIDO BETWEEN '2026-10-01' AND '2026-10-01' --5


SELECT CODIGO_PIZZA AS CODIGO,
SUM(QUANTIDADE) AS QTD_PEDIDO
FROM ITEM_PEDIDO
GROUP BY CODIGO_PIZZA -- 7

SELECT * FROM PEDIDO GROUP BY MATRICULA_ENTREGADOR, COUNT(*) AS ENTREGAS HAVING COUNT(*) > 2
ORDER BY ENTREGAS -- 8



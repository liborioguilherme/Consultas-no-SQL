USE bdEstoque

--11. A soma das vendas ocorridas entre fevereiro e mar�o de 2014
SELECT SUM (valorTotalVenda) AS 'Soma das vendas' FROM tbVenda
WHERE MONTH (dataVenda) = 2  AND  YEAR(dataVenda) = 2014 
or MONTH (dataVenda) = 3

--12. A soma das quantidades do produto Amaciante no estoque
SELECT SUM (quantidadeProduto) AS 'Soma de qtde de produtos' FROM tbProduto
WHERE descricaoProduto LIKE 'A%'

--13. O valor do produto mais caro
  SELECT MAX(valorProduto) AS 'Produto mais caro' FROM tbProduto

 --14. O pre�o m�dio dos produtos da Unilever
  SELECT AVG(valorProduto) AS 'Pre�o m�dio dos produtos da Unilever' FROM tbProduto
   WHERE codFabricante = 1

 --15. O pre�o m�dio de todos os produtos no estoque que seja amaciante de qualquer fabricante
   SELECT AVG (valorProduto) FROM tbProduto
    WHERE  descricaoProduto like 'A%'

 -- 16. A m�dia de itens por venda.
  SELECT AVG(DISTINCT quantidadeItensVenda) AS 'A m�dia de itens por venda.' FROM tbItensVenda
  
--17. Quantos itens no estoque n�o s�o da unilever
 SELECT COUNT(codFornecedor) AS ' Quantidade de itens que n�o s�o da unilever' FROM tbProduto
 WHERE descricaoProduto like 'A%'

--18. A soma das quantidades dos produtos que possuam mais de 800 unidades no estoque
 SELECT  SUM (quantidadeProduto) AS ' soma das quantidades dos produtos' FROM tbProduto
 WHERE quantidadeProduto > 800

--19. O pre�o m�dio dos produtos que possuam mais de 1000 unidades no estoque e que sejam fabricados pela Unilever
  SELECT AVG(valorProduto) AS 'Pre�o m�dio dos produtos da Unilever' FROM tbProduto
   WHERE quantidadeProduto >1000 AND codFabricante = 1

--20. A m�dia das vendas ocorridas no ano de 2014
  SELECT AVG(valorTotalVenda) AS ' A m�dia das vendas ocorridas no ano de 2014' FROM tbVenda  WHERE YEAR(dataVenda) = 2014
Quantos pedidos foram feitos por cada cliente?
select cliente_idcliente , count(*) from pedido group by cliente_idcliente 

Algum vendedor tamb�m � fornecedor?
select * from vendedor_terceiro where cnpj in (select cnpj from fornecedor)

Rela��o de produtos fornecedores e estoques;
select nome, nomeFantasia, quantidade 
  from produto_fornecedor, fornecedor, produto, produto_estoque
 where fornecedor_idfornecedor = idfornecedor
   and produto_idproduto = idproduto
   and idproduto_estoque = idproduto
       
Rela��o de nomes dos fornecedores e nomes dos produtos;
select nomeFantasia, nome 
  from produto_fornecedor, fornecedor, produto
 where fornecedor_idfornecedor = idfornecedor
   and produto_idproduto = idproduto

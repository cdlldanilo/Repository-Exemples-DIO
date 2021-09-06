--CREATE DATABASE ecommerce; 

--USE ecommerce; 

/*CREATE TABLE TESTE (
	DECISAO VARCHAR(50) NULL,
	COMPLEMENTO CHAR(10) NOT NULL
); */

--INSERT INTO TESTE VALUES ('a', 'a'); 
--SELECT * FROM TESTE;

--INSERT INTO TESTE VALUES(NULL, 'a');
--SELECT * FROM TESTE;

--DROP TABLE TESTE

/*create table Produtos (
	Codigo int,
	Nome varchar(100)
	Descricao varchar(200)
	Preco float
); */

/*create table Pedido (
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null
); */

/*create table PedidoItem (
	CodigoPedido int not null,
	CodigoProdutos int not null,
	Preco float not null,
	Quantidade int not null	
); */

--SELECT * FROM Clientes;

/*INSERT INTO Clientes (Codigo, Nome,TipoPessoa) VALUES (1, 'Danilo Cardilli', 'F'); 
INSERT Clientes (Codigo, Nome,TipoPessoa) VALUES (2, 'Danilo Cardilli', 'F'); 
INSERT Clientes (TipoPessoa, Codigo, Nome) VALUES ('F', 3, 'Danilo Cardilli');
INSERT Clientes VALUES (4, 'Danilo Cardilli', 'F'); 
INSERT Clientes VALUES (5, 'Danilo Cardilli', 'F'), (2, 'Danilo Cardilli', 'J'); */

--SELECT * FROM Clientes WHERE TipoPessoa = 'J';
 
--UPDATE Clientes SET Codigo = 7, Nome ='Bruna Cardilli' WHERE TipoPessoa = 'J';

--DELETE FROM Clientes WHERE Codigo IN(5, 4, 3, 2); 

--SELECT * FROM Clientes WHERE Codigo = 1 AND TipoPessoa = 'J'; 

--SELECT * FROM Clientes WHERE Codigo = 1 OR TipoPessoa = 'J'; 

--SELECT * FROM Clientes;

--SELECT * FROM Produtos;

--INSERT INTO Produtos (Codigo, Nome, Descricao, Preco) VALUES (1, 'Caneta', 'Caneta azul', 1.50); 
--INSERT INTO Produtos (Codigo, Nome, Descricao, Preco) VALUES (2, 'Caderno', 'Caderno de 10 materias', 20.99); 

--SELECT * FROM Pedido;

--INSERT INTO Pedido VALUES (1, GETDATE(), 0, 3, 7);  
--INSERT INTO Pedido VALUES (2, GETDATE(), 0, 22.49, 1); 

--SELECT * FROM PedidoItem;

--INSERT INTO PedidoItem VALUES (1, 1, 1.5, 2);
--INSERT INTO PedidoItem VALUES (2, 1, 22.49, 1);
--INSERT INTO PedidoItem VALUES (2, 1, 1.5, 1);
--INSERT INTO PedidoItem VALUES (2, 2, 20.99, 1);

--INSERT INTO Clientes (Codigo, Nome,TipoPessoa) VALUES (2, 'Raul Cardilli', 'F');

--SELECT ISNULL(DataCriacao, GETDATE()), * FROM Clientes; 

/*SELECT *,
		CASE
			WHEN TipoPessoa = 'j' THEN 'Juridica'
			WHEN TipoPessoa = 'F' THEN 'Fisica'
			ELSE
			'Outro tipo'
		END
 FROM Clientes; */

 --SELECT *, CONVERT(varchar, dataSolicitacao, 103) FROM Pedido; 

 /*SELECT *,
		CASE
			WHEN TipoPessoa = 'j' THEN 'Juridica'
			WHEN TipoPessoa = 'F' THEN 'Fisica'
			ELSE
			'Outro tipo '
		END + CONVERT(varchar, GETDATE(), 103)
 FROM Clientes; */ 

 --SELECT * FROM Clientes; 
  
 --ALTER TABLE Clientes ADD CONSTRAINT pk_cliente PRIMARY KEY (Codigo);  

 --ALTER TABLE PedidoItem ADD CONSTRAINT PK_Pedidos FOREIGN KEY (CodigoPedido) REFERENCES Pedido(Codigo);  
  
  --SELECT * FROM Pedido;

  --UPDATE Pedido SET CodigoStatus = 1, DescStatus ='Em Andamento';
  
  --ALTER TABLE Pedido ADD CodigoStatus int;
  --ALTER TABLE Pedido ADD DescStatus varchar(50);
  
  --SELECT * FROM Status;

  --SELECT * FROM Produtos;

  --SELECT * FROM PedidoItem;

  --SELECT * FROM Clientes;

  --SELECT * FROM StatusPedidoItem;

  --INSERT PedidoItemLog(CodigoPedido, CodigoProduto, CodigoStatusPedidoItem, DataMovimento)
  --SELECT CodigoPedido, CodigoProdutos, 1, getdate() FROM PedidoItem;
  
  --SELECT * FROM PedidoItem;

  --SELECT * FROM PedidoItemLog;

  /*SELECT * FROM Clientes cli
  INNER JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente; */

  /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente; */

  /*SELECT * FROM Pedido ped
  RIGHT JOIN Clientes cli
  ON cli.Codigo = ped.CodigoCliente; */

  /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente
  WHERE ped.TotalPedido > 10; */

  /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente
  AND ped.TotalPedido > 10; */

  /*SELECT cli.Nome, ped.TotalPedido, 
  CASE
  WHEN cli.TipoPessoa = 'F' THEN 'Fisica'
  ELSE 'Juridica'  
  END TipoPessoa
  FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente; */

  /*SELECT cli.Nome ClienteNome, ped.TotalPedido, 
  CASE
  WHEN cli.TipoPessoa = 'F' THEN 'Fisica'
  ELSE 'Juridica'  
  END TipoPessoa
  FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente; */

  /*SELECT * FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem; */

  /*SELECT * FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem
  where Preco BETWEEN 1 AND 2; */

  /*SELECT SUM(Preco * Quantidade) FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem; */

  /*SELECT AVG(Preco) FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem; */

  /*SELECT COUNT(*) FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem; */

  /*SELECT t4.Codigo, t4.Descricao, SUM(t1.Preco * t1.Quantidade)  FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem
  INNER JOIN Produtos t4
  ON t4.Codigo = t2.CodigoProduto 
  GROUP BY t4.Codigo, t4.Descricao */

  /*SELECT t4.Codigo, t4.Descricao, SUM(t1.Preco * t1.Quantidade) Somatoria FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem
  INNER JOIN Produtos t4
  ON t4.Codigo = t2.CodigoProduto
  GROUP BY t4.Codigo, t4.Descricao
  ORDER BY Somatoria DESC */

  /*SELECT t4.Codigo, t4.Descricao, SUM(t1.Preco * t1.Quantidade) Somatoria FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem
  INNER JOIN Produtos t4
  ON t4.Codigo = t2.CodigoProduto
  GROUP BY t4.Codigo, t4.Descricao
  ORDER BY t4.Codigo DESC */

  /*SELECT t4.Codigo, t4.Descricao, SUM(t1.Preco * t1.Quantidade) Somatoria FROM PedidoItem t1
  INNER JOIN PedidoItemLog t2
  ON t1.CodigoPedido = t2.CodigoPedido
  AND t1.CodigoProdutos = t2.CodigoProduto
  INNER JOIN StatusPedidoItem t3
  ON t3.Codigo = t2.CodigoStatusPedidoItem
  INNER JOIN Produtos t4
  ON t4.Codigo = t2.CodigoProduto
  GROUP BY t4.Codigo, t4.Descricao
  HAVING SUM(t1.Preco * t1.Quantidade) > 10 */

  /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente

  SELECT * FROM Clientes cli
  WHERE cli.Codigo NOT IN (SELECT CodigoCliente FROM Pedido) */

  /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente
  WHERE ped.Codigo IS NULL */

 /*SELECT * FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente
  WHERE ped.Codigo IS NOT NULL */
  
  /*SELECT cli.Codigo, cli.Nome, COUNT(ped.Codigo) FROM Clientes cli
  LEFT JOIN Pedido ped
  ON cli.Codigo = ped.CodigoCliente
  GROUP BY cli.Codigo, cli.Nome */

  /*SELECT * FROM Clientes cli , Pedido ped, PedidoItem pedItem
  WHERE cli.Codigo = ped.CodigoCliente
  AND ped.Codigo = pedItem.CodigoPedido */


 

create database Northwind;

use Northwind;

create table cliente(
id int auto_increment not null primary key,
nomeCliente varchar(255),
nomeContato varchar(255),
endereco varchar(100),
cidade varchar(50),
cep varchar(8),
pais varchar(100)

);

select*from cliente;
insert into cliente (nomeCliente,nomeContato,endereco,cidade,cep,pais) values('Alfreds Futterkiste','Maria Anders',
'Obere Str. 57','Berlin','12209','alemanha');
insert into cliente (nomeCliente,nomeContato,endereco,cidade,cep,pais) values('Ana Trujillo Emparedados e helados','Ana Trujillo',
 'Avda. de la Constitución 2222','México D.F','05021','Mexico');
 insert into cliente (nomeCliente,nomeContato,endereco,cidade,cep,pais) values('Antonio Moreno Taquería','Antonio Moreno',
 'Mataderos 2312','México D.F','05023','Mexico');
  insert into cliente (nomeCliente,nomeContato,endereco,cidade,cep,pais) values('Around the Horn','Thomas Hardy',
 '120 Hanover Sq','London','WA1 1DP','UK');
  insert into cliente (nomeCliente,nomeContato,endereco,cidade,cep,pais) values('Berglunds snabbköp','Christina Berglund',
 'Berguvsvägen 8','Luleån','S-958 22','Sweden');
 
 
 
 /* lista o número de clientes em cada país, classificados de cima para baixo*/
 
SELECT COUNT(id) as quantidade_id, pais
FROM cliente
GROUP BY pais
ORDER BY COUNT(id) DESC;
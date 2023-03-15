CREATE DATABASE bd_filme_oscar;
USE bd_filme_oscar;

-- MySQL dump 10.13  Distrib 5.7.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_filmes_oscar
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table ano
--

DROP TABLE IF EXISTS ano;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE ano (
  pk_id_ano varchar(4) NOT NULL,
  ano_oscar varchar(45) DEFAULT NULL,
  edicao_oscar varchar(45) DEFAULT NULL,
  PRIMARY KEY (pk_id_ano)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table ano
--

LOCK TABLES ano WRITE;
/*!40000 ALTER TABLE ano DISABLE KEYS */;
INSERT INTO ano VALUES ('1','1929','A 2.ª'),('10','1938','A 10.ª'),('11','1939','A 11.ª'),('12','1940','A 12.ª'),('13','1941','A 13.ª'),('14','1942','A 14.ª'),('15','1943','A 15.ª'),('16','1944','A 16.ª'),('17','1945','A 17.ª'),('18','1946','A 18.ª'),('19','1947','A 19.ª'),('2','1930','A 2.ª'),('20','1948','A 20.ª'),('21','1949','A 21.ª'),('22','1950','A 22.ª'),('23','1951','A 23.ª'),('24','1952','A 24.ª'),('25','1953','A 25.ª'),('26','1954','A 26.ª'),('27','1955','A 27.ª'),('28','1956','A 28.ª'),('29','1957','A 29.ª'),('3','1931','A 3.ª'),('30','1958','A 30.ª'),('31','1959','A 31.ª'),('32','1960','A 32.ª'),('33','1961','A 33.ª'),('34','1962','A 34.ª'),('35','1963','A 35.ª'),('36','1964','A 36.ª'),('37','1965','A 37.ª'),('38','1966','A 38.ª'),('39','1967','A 39.ª'),('4','1932','A 4.ª'),('40','1968','A 40.ª'),('41','1969','A 41.ª'),('42','1970','A 42.ª'),('43','1971','A 43.ª'),('44','1972','A 44.ª'),('45','1973','A 45.ª'),('46','1974','A 46.ª'),('47','1975','A 47.ª'),('48','1976','A 48.ª'),('49','1977','A 49.ª'),('5','1933','A 5.ª'),('50','1978','A 50.ª'),('51','1979','A 51.ª'),('52','1980','A 52.ª'),('53','1981','A 53.ª'),('54','1982','A 54.ª'),('55','1983','A 55.ª'),('56','1984','A 56.ª'),('57','1985','A 57.ª'),('58','1986','A 58.ª'),('59','1987','A 59.ª'),('6','1934','A 6.ª'),('60','1988','A 60.ª'),('61','1989','A 61.ª'),('62','1990','A 62.ª'),('63','1991','A 63.ª'),('64','1992','A 64.ª'),('65','1993','A 65.ª'),('66','1994','A 66.ª'),('67','1995','A 67.ª'),('68','1996','A 68.ª'),('69','1997','A 69.ª'),('7','1935','A 7.ª'),('70','1998','A 70.ª'),('71','1999','A 71.ª'),('72','2000','A 72.ª'),('73','2001','A 73.ª'),('74','2002','A 74.ª'),('75','2003','A 75.ª'),('76','2004','A 76.ª'),('77','2005','A 77.ª'),('78','2006','A 78.ª'),('79','2007','A 79.ª'),('8','1936','A 8.ª'),('80','2008','A 80.ª'),('81','2009','A 81.ª'),('82','2010','A 82.ª'),('83','2011','A 83.ª'),('84','2012','A 84.ª'),('85','2013','A 85.ª'),('86','2014','A 86.ª'),('87','2015','A 87.ª'),('88','2016','A 88.ª'),('89','2017','A 89.ª'),('9','1937','A 9.ª'),('90','2018','A 90.ª'),('91','2019','A 91.ª'),('92','2020','A 92.ª'),('93','2021','A 93.ª'),('94','2022','A 94.ª'),('95','2023','A 95.ª');
/*!40000 ALTER TABLE ano ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table audit
--

DROP TABLE IF EXISTS audit;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE audit (
  tabela varchar(100) DEFAULT NULL,
  acao varchar(50) DEFAULT NULL,
  usuario varchar(50) DEFAULT NULL,
  data_hora datetime DEFAULT NULL,
  chave varchar(255) DEFAULT NULL,
  antes varchar(4000) DEFAULT NULL,
  depois varchar(4000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table audit
--

LOCK TABLES audit WRITE;
/*!40000 ALTER TABLE audit DISABLE KEYS */;
INSERT INTO audit VALUES ('filme','Insert','root@localhost','2023-02-08 16:55:51','1',NULL,'pk_id_filme: 1 |nome_filme: Titanic| ano_filme : 1997| diretor_filme :James Cameron| orcamento_filme :R$200 milhões |bilheteria_filme: R$10 bilhôes'),('filme','Insert','root@localhost','2023-02-08 16:55:51','2',NULL,'pk_id_filme: 2 |nome_filme: BEN-HUR| ano_filme : 1959| diretor_filme :William Wyler| orcamento_filme :R$77,3 milhões |bilheteria_filme: R$756,96 milhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','3',NULL,'pk_id_filme: 3 |nome_filme: alien, oitavo passageiro| ano_filme : 1979| diretor_filme :Ridley Scott| orcamento_filme :R$55 milhões |bilheteria_filme: R$ 419,6 milhôes'),('filme','Insert','root@localhost','2023-02-08 16:55:51','4',NULL,'pk_id_filme: 4 |nome_filme: O senhor dos aneis - Sociedade do anel| ano_filme : 1997| diretor_filme :Peter Jackson| orcamento_filme :R$465 milhões |bilheteria_filme: R$ 2,8 bilhôes'),('filme','Insert','root@localhost','2023-02-08 16:55:51','5',NULL,'pk_id_filme: 5 |nome_filme: La La Land: Cantando Estações| ano_filme : 1996| diretor_filme :Damien Chazelle| orcamento_filme :R$150 milhões |bilheteria_filme: R$2,2 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','6',NULL,'pk_id_filme: 6 |nome_filme: Pantera Negra | ano_filme : 2018| diretor_filme :Ryan Coogler| orcamento_filme :R$1 bilhões |bilheteria_filme: R$ 6,5 bilhôes'),('filme','Insert','root@localhost','2023-02-08 16:55:51','7',NULL,'pk_id_filme: 7 |nome_filme: O senhor dos aneis - As duas torres| ano_filme : 2002| diretor_filme :Peter Jackson| orcamento_filme :R$ 450 milhões |bilheteria_filme: R$ 4,8 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','8',NULL,'pk_id_filme: 8 |nome_filme: O senhor dos aneis - O Retorno do Rei| ano_filme : 2003| diretor_filme :Peter Jackson| orcamento_filme :R$ 450 milhões |bilheteria_filme: R$ 4,73 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','9',NULL,'pk_id_filme: 9 |nome_filme: Avatar| ano_filme : 2009| diretor_filme :James Cameron| orcamento_filme :R$ 1,1 Bilhão |bilheteria_filme: R$ 14,6 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','10',NULL,'pk_id_filme: 10 |nome_filme: A Lista de Schindler| ano_filme : 2009| diretor_filme :Steven Spielberg| orcamento_filme :R$ 110 milhões |bilheteria_filme: R$ 1,6 bilhão'),('filme','Insert','root@localhost','2023-02-08 16:55:51','11',NULL,'pk_id_filme: 11 |nome_filme: A Origem| ano_filme : 2010| diretor_filme :Christopher Nolan| orcamento_filme :R$ 800 milhões |bilheteria_filme: R$ 4,1 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','12',NULL,'pk_id_filme: 12 |nome_filme: Matrix| ano_filme : 1999| diretor_filme :Joel Silver| orcamento_filme :R$ 315 milhões |bilheteria_filme: R$ 2,3 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','13',NULL,'pk_id_filme: 13 |nome_filme: A viagem de Chihiro| ano_filme : 2001| diretor_filme :Hayao Miyazaki| orcamento_filme :R$ 60 milhões |bilheteria_filme: R$ 1,7 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','14',NULL,'pk_id_filme: 14 |nome_filme: Cisne| ano_filme : 2010| diretor_filme :Darren Aronofsky| orcamento_filme :R$ 315 milhões |bilheteria_filme: R$ 2,3 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','15',NULL,'pk_id_filme: 15 |nome_filme: Wall-E| ano_filme : 2007| diretor_filme :Andrew Stanton| orcamento_filme :R$ 900 milhões |bilheteria_filme: R$ 2,6 bilhões'),('filme','Insert','root@localhost','2023-02-08 16:55:51','16',NULL,'pk_id_filme: 16 |nome_filme: Eu Sou a Lenda| ano_filme : 2007| diretor_filme :Francis Lawrence| orcamento_filme :R$  750 milhões |bilheteria_filme: R$ 2,9 bilhões'),('genero','Update','root@localhost','2023-02-09 15:34:01','7','pk_id_genero: 7 |nome_genero: Dança','pk_id_genero: 7 |nome_genero: infantil'),('genero','Update','root@localhost','2023-02-09 15:37:31','3','pk_id_genero: 3 |nome_genero: Cinema de arte','pk_id_genero: 3 |nome_genero: Cinema Arte'),('genero','Delete','root@localhost','2023-02-09 16:03:47','5','pk_id_genero: 5 |nome_genero: anime',NULL),('genero','Insert','root@localhost','2023-02-09 16:06:12','5',NULL,'pk_id_genero: 5 |nome_genero: Anime'),('genero','Update','root@localhost','2023-02-09 16:12:11','5','pk_id_genero: 5 |nome_genero: Anime','pk_id_genero: 5 |nome_genero: animação_oriental'),('genero','Insert','root@localhost','2023-02-14 22:24:11','22',NULL,'pk_id_genero: 22 |nome_genero: musical'),('genero','Insert','root@localhost','2023-02-14 23:07:53','23',NULL,'pk_id_genero: 23 |nome_genero: assalto'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:32','5',NULL,'pk_filme_genero: 5 |fk_id_filme: 2 |fk_id_genero: 21'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:32','6',NULL,'pk_filme_genero: 6 |fk_id_filme: 2 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:32','7',NULL,'pk_filme_genero: 7 |fk_id_filme: 3 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:32','8',NULL,'pk_filme_genero: 8 |fk_id_filme: 3 |fk_id_genero: 14'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:32','9',NULL,'pk_filme_genero: 9 |fk_id_filme: 4 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','10',NULL,'pk_filme_genero: 10 |fk_id_filme: 4 |fk_id_genero: 15'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','11',NULL,'pk_filme_genero: 11 |fk_id_filme: 4 |fk_id_genero: 21'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','12',NULL,'pk_filme_genero: 12 |fk_id_filme: 5 |fk_id_genero: 6'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','13',NULL,'pk_filme_genero: 13 |fk_id_filme: 5 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','14',NULL,'pk_filme_genero: 14 |fk_id_filme: 5 |fk_id_genero: 22'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','15',NULL,'pk_filme_genero: 15 |fk_id_filme: 6 |fk_id_genero: 1'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','16',NULL,'pk_filme_genero: 16 |fk_id_filme: 6 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:33','17',NULL,'pk_filme_genero: 17 |fk_id_filme: 6 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','18',NULL,'pk_filme_genero: 18 |fk_id_filme: 7 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','19',NULL,'pk_filme_genero: 19 |fk_id_filme: 7 |fk_id_genero: 15'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','20',NULL,'pk_filme_genero: 20 |fk_id_filme: 7 |fk_id_genero: 21'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','21',NULL,'pk_filme_genero: 21 |fk_id_filme: 8 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','22',NULL,'pk_filme_genero: 22 |fk_id_filme: 8 |fk_id_genero: 15'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','23',NULL,'pk_filme_genero: 23 |fk_id_filme: 8 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','24',NULL,'pk_filme_genero: 24 |fk_id_filme: 9 |fk_id_genero: 1'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','25',NULL,'pk_filme_genero: 25 |fk_id_filme: 9 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','26',NULL,'pk_filme_genero: 26 |fk_id_filme: 9 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','27',NULL,'pk_filme_genero: 27 |fk_id_filme: 9 |fk_id_genero: 21'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','28',NULL,'pk_filme_genero: 28 |fk_id_filme: 10 |fk_id_genero: 16'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','29',NULL,'pk_filme_genero: 29 |fk_id_filme: 10 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','30',NULL,'pk_filme_genero: 30 |fk_id_filme: 11 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:34','31',NULL,'pk_filme_genero: 31 |fk_id_filme: 11 |fk_id_genero: 1'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','32',NULL,'pk_filme_genero: 32 |fk_id_filme: 11 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','33',NULL,'pk_filme_genero: 33 |fk_id_filme: 11 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','34',NULL,'pk_filme_genero: 34 |fk_id_filme: 11 |fk_id_genero: 17'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','35',NULL,'pk_filme_genero: 35 |fk_id_filme: 11 |fk_id_genero: 23'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','36',NULL,'pk_filme_genero: 36 |fk_id_filme: 12 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','37',NULL,'pk_filme_genero: 37 |fk_id_filme: 12 |fk_id_genero: 1'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','38',NULL,'pk_filme_genero: 38 |fk_id_filme: 12 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','39',NULL,'pk_filme_genero: 39 |fk_id_filme: 12 |fk_id_genero: 15'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','40',NULL,'pk_filme_genero: 40 |fk_id_filme: 13 |fk_id_genero: 19'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','41',NULL,'pk_filme_genero: 41 |fk_id_filme: 13 |fk_id_genero: 7'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','42',NULL,'pk_filme_genero: 42 |fk_id_filme: 13 |fk_id_genero: 15'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:35','43',NULL,'pk_filme_genero: 43 |fk_id_filme: 13 |fk_id_genero: 2'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','44',NULL,'pk_filme_genero: 44 |fk_id_filme: 13 |fk_id_genero: 18'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','45',NULL,'pk_filme_genero: 45 |fk_id_filme: 13 |fk_id_genero: 5'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','46',NULL,'pk_filme_genero: 46 |fk_id_filme: 13 |fk_id_genero: 12'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','47',NULL,'pk_filme_genero: 47 |fk_id_filme: 14 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','48',NULL,'pk_filme_genero: 48 |fk_id_filme: 14 |fk_id_genero: 17'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','49',NULL,'pk_filme_genero: 49 |fk_id_filme: 14 |fk_id_genero: 20'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','50',NULL,'pk_filme_genero: 50 |fk_id_filme: 15 |fk_id_genero: 19'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','51',NULL,'pk_filme_genero: 51 |fk_id_filme: 15 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','52',NULL,'pk_filme_genero: 52 |fk_id_filme: 15 |fk_id_genero: 6'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','53',NULL,'pk_filme_genero: 53 |fk_id_filme: 16 |fk_id_genero: 10'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','54',NULL,'pk_filme_genero: 54 |fk_id_filme: 16 |fk_id_genero: 1'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','55',NULL,'pk_filme_genero: 55 |fk_id_filme: 16 |fk_id_genero: 14'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','56',NULL,'pk_filme_genero: 56 |fk_id_filme: 16 |fk_id_genero: 11'),('filme_genero','Insert','root@localhost','2023-02-14 23:28:36','57',NULL,'pk_filme_genero: 57 |fk_id_filme: 16 |fk_id_genero: 17'),('produtora','Insert','root@localhost','2023-02-14 23:40:04','26',NULL,'pk_id_produtora: 26 |nome_produtora: Paramount Pictures'),('produtora','Insert','root@localhost','2023-02-15 00:02:22','27',NULL,'pk_id_produtora: 27 |nome_produtora: Brandywine Productions'),('produtora','Insert','root@localhost','2023-02-15 00:09:51','28',NULL,'pk_id_produtora: 28 |nome_produtora: Black Label Media'),('produtora','Insert','root@localhost','2023-02-15 00:09:51','29',NULL,'pk_id_produtora: 29 |nome_produtora: TIK Films'),('produtora','Insert','root@localhost','2023-02-15 00:09:51','30',NULL,'pk_id_produtora: 30 |nome_produtora: Impostor Pictures'),('produtora','Insert','root@localhost','2023-02-15 00:11:27','31',NULL,'pk_id_produtora: 31 |nome_produtora: Gilbert Films'),('produtora','Insert','root@localhost','2023-02-15 00:11:27','32',NULL,'pk_id_produtora: 32 |nome_produtora: Marc Platt Productions'),('produtora','Insert','root@localhost','2023-02-15 00:16:27','33',NULL,'pk_id_produtora: 33 |nome_produtora: Marvel Studios'),('produtora','Update','root@localhost','2023-02-15 00:36:15','19','pk_id_produtora: 19 |nome_produtora: Dune Entertainment','pk_id_produtora: 19 |nome_produtora: null'),('filme','Update','root@localhost','2023-02-15 00:43:55','14','pk_id_filme:14 | nome_filme: Cisne |ano_filme: 2010| diretor_filme : Darren Aronofsky| orcamento_filme : R$ 315 milhões| bilheteria_filme : R$ 2,3 bilhões','pk_id_filme: 14 |nome_filme: Cisne Negro |ano_filme: 2010| diretor_filme : Darren Aronofsky| orcamento_filme : R$ 315 milhões| bilheteria_filme : R$ 2,3 bilhões'),('produtora_filme','Insert','root@localhost','2023-02-15 01:02:28','1',NULL,'pk_id_produtora_filme: 1 |fk_id_produtora: 26 |fk_id_filme: 1'),('produtora_filme','Insert','root@localhost','2023-02-15 01:04:01','2',NULL,'pk_id_produtora_filme: 2 |fk_id_produtora: 1 |fk_id_filme: 1'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:27','3',NULL,'pk_id_produtora_filme: 3 |fk_id_produtora: 5 |fk_id_filme: 1'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:27','4',NULL,'pk_id_produtora_filme: 4 |fk_id_produtora: 2 |fk_id_filme: 2'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:27','5',NULL,'pk_id_produtora_filme: 5 |fk_id_produtora: 27 |fk_id_filme: 3'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:28','6',NULL,'pk_id_produtora_filme: 6 |fk_id_produtora: 3 |fk_id_filme: 4'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','7',NULL,'pk_id_produtora_filme: 7 |fk_id_produtora: 4 |fk_id_filme: 4'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','8',NULL,'pk_id_produtora_filme: 8 |fk_id_produtora: 28 |fk_id_filme: 5'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','9',NULL,'pk_id_produtora_filme: 9 |fk_id_produtora: 29 |fk_id_filme: 5'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','10',NULL,'pk_id_produtora_filme: 10 |fk_id_produtora: 31 |fk_id_filme: 5'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','11',NULL,'pk_id_produtora_filme: 11 |fk_id_produtora: 32 |fk_id_filme: 5'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','12',NULL,'pk_id_produtora_filme: 12 |fk_id_produtora: 33 |fk_id_filme: 6'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','13',NULL,'pk_id_produtora_filme: 13 |fk_id_produtora: 3 |fk_id_filme: 7'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','14',NULL,'pk_id_produtora_filme: 14 |fk_id_produtora: 4 |fk_id_filme: 7'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','15',NULL,'pk_id_produtora_filme: 15 |fk_id_produtora: 3 |fk_id_filme: 8'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','16',NULL,'pk_id_produtora_filme: 16 |fk_id_produtora: 4 |fk_id_filme: 8'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:29','17',NULL,'pk_id_produtora_filme: 17 |fk_id_produtora: 5 |fk_id_filme: 9'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','18',NULL,'pk_id_produtora_filme: 18 |fk_id_produtora: 6 |fk_id_filme: 9'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','19',NULL,'pk_id_produtora_filme: 19 |fk_id_produtora: 7 |fk_id_filme: 10'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','20',NULL,'pk_id_produtora_filme: 20 |fk_id_produtora: 9 |fk_id_filme: 11'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','21',NULL,'pk_id_produtora_filme: 21 |fk_id_produtora: 10 |fk_id_filme: 11'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','22',NULL,'pk_id_produtora_filme: 22 |fk_id_produtora: 21 |fk_id_filme: 12'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','23',NULL,'pk_id_produtora_filme: 23 |fk_id_produtora: 13 |fk_id_filme: 13'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','24',NULL,'pk_id_produtora_filme: 24 |fk_id_produtora: 14 |fk_id_filme: 13'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','25',NULL,'pk_id_produtora_filme: 25 |fk_id_produtora: 15 |fk_id_filme: 13'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','26',NULL,'pk_id_produtora_filme: 26 |fk_id_produtora: 16 |fk_id_filme: 14'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:30','27',NULL,'pk_id_produtora_filme: 27 |fk_id_produtora: 17 |fk_id_filme: 14'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','28',NULL,'pk_id_produtora_filme: 28 |fk_id_produtora: 18 |fk_id_filme: 14'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','29',NULL,'pk_id_produtora_filme: 29 |fk_id_produtora: 6 |fk_id_filme: 14'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','30',NULL,'pk_id_produtora_filme: 30 |fk_id_produtora: 20 |fk_id_filme: 15'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','31',NULL,'pk_id_produtora_filme: 31 |fk_id_produtora: 21 |fk_id_filme: 16'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','32',NULL,'pk_id_produtora_filme: 32 |fk_id_produtora: 11 |fk_id_filme: 16'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','33',NULL,'pk_id_produtora_filme: 33 |fk_id_produtora: 22 |fk_id_filme: 16'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','34',NULL,'pk_id_produtora_filme: 34 |fk_id_produtora: 23 |fk_id_filme: 16'),('produtora_filme','Insert','root@localhost','2023-02-15 01:11:31','35',NULL,'pk_id_produtora_filme: 35 |fk_id_produtora: 24 |fk_id_filme: 16'),('oscar_ano','Insert','root@localhost','2023-02-15 14:32:59','1',NULL,'fk_id_oscar: 1 |fk_id_ano : 1 |pk_id_oscar_ano : 1'),('oscar_ganhou','Insert','root@localhost','2023-02-16 17:33:19','22',NULL,'pk_id_oscar: 22 |categoria_oscar: Melhor montagem'),('oscar_ganhou','Insert','root@localhost','2023-02-16 17:46:02','23',NULL,'pk_id_oscar: 23 |categoria_oscar: Melhor Efeito Sonoro'),('oscar_ganhou','Insert','root@localhost','2023-02-16 17:50:49','24',NULL,'pk_id_oscar: 24 |categoria_oscar: Melhor Figurino'),('oscar_ganhou','Update','root@localhost','2023-02-16 17:53:03','12','pk_id_oscar: 12 |categoria_oscar: Melhor Som','pk_id_oscar: 12 |categoria_oscar: Melhor Mixagem de Som'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','1',NULL,'pk_id_filme_oscar: 1 |fk_id_filme: 1 |fk_id_oscar: 1'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','2',NULL,'pk_id_filme_oscar: 2 |fk_id_filme: 1 |fk_id_oscar: 2'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','3',NULL,'pk_id_filme_oscar: 3 |fk_id_filme: 1 |fk_id_oscar: 7'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','4',NULL,'pk_id_filme_oscar: 4 |fk_id_filme: 1 |fk_id_oscar: 22'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','5',NULL,'pk_id_filme_oscar: 5 |fk_id_filme: 1 |fk_id_oscar: 21'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','6',NULL,'pk_id_filme_oscar: 6 |fk_id_filme: 1 |fk_id_oscar: 23'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','7',NULL,'pk_id_filme_oscar: 7 |fk_id_filme: 1 |fk_id_oscar: 10'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','8',NULL,'pk_id_filme_oscar: 8 |fk_id_filme: 1 |fk_id_oscar: 24'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','9',NULL,'pk_id_filme_oscar: 9 |fk_id_filme: 1 |fk_id_oscar: 12'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','10',NULL,'pk_id_filme_oscar: 10 |fk_id_filme: 1 |fk_id_oscar: 15'),('filme_oscar','Insert','root@localhost','2023-02-16 17:54:43','11',NULL,'pk_id_filme_oscar: 11 |fk_id_filme: 1 |fk_id_oscar: 14'),('oscar_ganhou','Update','root@localhost','2023-02-16 18:08:03','24','pk_id_oscar: 24 |categoria_oscar: Melhor Figurino','pk_id_oscar: 24 |categoria_oscar: Melhor direção de Arte'),('oscar_ganhou','Insert','root@localhost','2023-02-17 16:10:09','25',NULL,'pk_id_oscar: 25 |categoria_oscar: Melhor Trilha Sonora'),('filme_oscar','Insert','root@localhost','2023-02-19 14:16:06','12',NULL,'pk_id_filme_oscar: 12 |fk_id_filme: 2 |fk_id_oscar: 1'),('filme_oscar','Insert','root@localhost','2023-02-19 14:16:06','13',NULL,'pk_id_filme_oscar: 13 |fk_id_filme: 2 |fk_id_oscar: 2'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','12',NULL,'pk_id_filme_oscar: 12 |fk_id_filme: 2 |fk_id_oscar: 1'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','13',NULL,'pk_id_filme_oscar: 13 |fk_id_filme: 2 |fk_id_oscar: 2'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','14',NULL,'pk_id_filme_oscar: 14 |fk_id_filme: 2 |fk_id_oscar: 3'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','15',NULL,'pk_id_filme_oscar: 15 |fk_id_filme: 2 |fk_id_oscar: 4'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','16',NULL,'pk_id_filme_oscar: 16 |fk_id_filme: 2 |fk_id_oscar: 7'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','17',NULL,'pk_id_filme_oscar: 17 |fk_id_filme: 2 |fk_id_oscar: 22'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','18',NULL,'pk_id_filme_oscar: 18 |fk_id_filme: 2 |fk_id_oscar: 21'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','19',NULL,'pk_id_filme_oscar: 19 |fk_id_filme: 2 |fk_id_oscar: 10'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','20',NULL,'pk_id_filme_oscar: 20 |fk_id_filme: 2 |fk_id_oscar: 24'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','21',NULL,'pk_id_filme_oscar: 21 |fk_id_filme: 2 |fk_id_oscar: 12'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','22',NULL,'pk_id_filme_oscar: 22 |fk_id_filme: 2 |fk_id_oscar: 15'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','23',NULL,'pk_id_filme_oscar: 23 |fk_id_filme: 3 |fk_id_oscar: 21'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','24',NULL,'pk_id_filme_oscar: 24 |fk_id_filme: 4 |fk_id_oscar: 7'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','25',NULL,'pk_id_filme_oscar: 25 |fk_id_filme: 4 |fk_id_oscar: 21'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','26',NULL,'pk_id_filme_oscar: 26 |fk_id_filme: 4 |fk_id_oscar: 11'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','27',NULL,'pk_id_filme_oscar: 27 |fk_id_filme: 4 |fk_id_oscar: 12'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','28',NULL,'pk_id_filme_oscar: 28 |fk_id_filme: 4 |fk_id_oscar: 11'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','29',NULL,'pk_id_filme_oscar: 29 |fk_id_filme: 5 |fk_id_oscar: 2'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','30',NULL,'pk_id_filme_oscar: 30 |fk_id_filme: 5 |fk_id_oscar: 3'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','31',NULL,'pk_id_filme_oscar: 31 |fk_id_filme: 5 |fk_id_oscar: 25'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','32',NULL,'pk_id_filme_oscar: 32 |fk_id_filme: 5 |fk_id_oscar: 14'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','33',NULL,'pk_id_filme_oscar: 33 |fk_id_filme: 5 |fk_id_oscar: 24'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','34',NULL,'pk_id_filme_oscar: 34 |fk_id_filme: 5 |fk_id_oscar: 7'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','35',NULL,'pk_id_filme_oscar: 35 |fk_id_filme: 6 |fk_id_oscar: 1'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','36',NULL,'pk_id_filme_oscar: 36 |fk_id_filme: 6 |fk_id_oscar: 10'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','37',NULL,'pk_id_filme_oscar: 37 |fk_id_filme: 6 |fk_id_oscar: 15'),('filme_oscar','Insert','root@localhost','2023-02-19 14:23:11','38',NULL,'pk_id_filme_oscar: 38 |fk_id_filme: 6 |fk_id_oscar: 9');
/*!40000 ALTER TABLE audit ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table filme
--

DROP TABLE IF EXISTS filme;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE filme (
  pk_id_filme varchar(4) NOT NULL,
  nome_filme varchar(45) DEFAULT NULL,
  ano_filme year DEFAULT NULL,
  diretor_filme varchar(45) DEFAULT NULL,
  orcamento_filme varchar(50) DEFAULT NULL,
  bilheteria_filme varchar(50) DEFAULT NULL,
  PRIMARY KEY (pk_id_filme)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table filme
--

LOCK TABLES filme WRITE;
/*!40000 ALTER TABLE filme DISABLE KEYS */;
INSERT INTO filme VALUES ('1','Titanic',1997,'James Cameron','R$200 milhões','R$10 bilhôes'),('10','A Lista de Schindler',2009,'Steven Spielberg','R$ 110 milhões','R$ 1,6 bilhão'),('11','A Origem',2010,'Christopher Nolan','R$ 800 milhões','R$ 4,1 bilhões'),('12','Matrix',1999,'Joel Silver','R$ 315 milhões','R$ 2,3 bilhões'),('13','A viagem de Chihiro',2001,'Hayao Miyazaki','R$ 60 milhões','R$ 1,7 bilhões'),('14','Cisne Negro',2010,'Darren Aronofsky','R$ 315 milhões','R$ 2,3 bilhões'),('15','Wall-E',2007,'Andrew Stanton','R$ 900 milhões','R$ 2,6 bilhões'),('16','Eu Sou a Lenda',2007,'Francis Lawrence','R$  750 milhões','R$ 2,9 bilhões'),('2','BEN-HUR',1959,'William Wyler','R$77,3 milhões','R$756,96 milhões'),('3','alien, oitavo passageiro',1979,'Ridley Scott','R$55 milhões','R$ 419,6 milhôes'),('4','O senhor dos aneis - Sociedade do anel',1997,'Peter Jackson','R$465 milhões','R$ 2,8 bilhôes'),('5','La La Land: Cantando Estações',1996,'Damien Chazelle','R$150 milhões','R$2,2 bilhões'),('6','Pantera Negra ',2018,'Ryan Coogler','R$1 bilhões','R$ 6,5 bilhôes'),('7','O senhor dos aneis - As duas torres',2002,'Peter Jackson','R$ 450 milhões','R$ 4,8 bilhões'),('8','O senhor dos aneis - O Retorno do Rei',2003,'Peter Jackson','R$ 450 milhões','R$ 4,73 bilhões'),('9','Avatar',2009,'James Cameron','R$ 1,1 Bilhão','R$ 14,6 bilhões');
/*!40000 ALTER TABLE filme ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table filme_genero
--

DROP TABLE IF EXISTS filme_genero;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE filme_genero (
  pk_filme_genero varchar(4) NOT NULL,
  fk_id_filme varchar(4) DEFAULT NULL,
  fk_id_genero varchar(4) DEFAULT NULL,
  PRIMARY KEY (pk_filme_genero),
  KEY fk_FILME_has_GENERO_GENERO1_idx (fk_id_genero),
  KEY fk_FILME_has_GENERO_FILME1_idx (fk_id_filme),
  CONSTRAINT fk_FILME_GENERO_FILME1 FOREIGN KEY (fk_id_filme) REFERENCES filme (pk_id_filme),
  CONSTRAINT fk_FILME_GENERO_GENERO1 FOREIGN KEY (fk_id_genero) REFERENCES genero (pk_id_genero)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table filme_genero
--

LOCK TABLES filme_genero WRITE;
/*!40000 ALTER TABLE filme_genero DISABLE KEYS */;
INSERT INTO filme_genero VALUES ('1','1','10'),('10','4','15'),('11','4','21'),('12','5','6'),('13','5','10'),('14','5','22'),('15','6','1'),('16','6','2'),('17','6','11'),('18','7','2'),('19','7','15'),('2','1','14'),('20','7','21'),('21','8','2'),('22','8','15'),('23','8','11'),('24','9','1'),('25','9','2'),('26','9','11'),('27','9','21'),('28','10','16'),('29','10','10'),('3','1','10'),('30','11','11'),('31','11','1'),('32','11','2'),('33','11','10'),('34','11','17'),('35','11','23'),('36','12','11'),('37','12','1'),('38','12','2'),('39','12','15'),('4','1','14'),('40','13','19'),('41','13','7'),('42','13','15'),('43','13','2'),('44','13','18'),('45','13','5'),('46','13','12'),('47','14','10'),('48','14','17'),('49','14','20'),('5','2','21'),('50','15','19'),('51','15','11'),('52','15','6'),('53','16','10'),('54','16','1'),('55','16','14'),('56','16','11'),('57','16','17'),('6','2','10'),('7','3','11'),('8','3','14'),('9','4','2');
/*!40000 ALTER TABLE filme_genero ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table filme_oscar
--

DROP TABLE IF EXISTS filme_oscar;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE filme_oscar (
  pk_id_filme_oscar varchar(4) NOT NULL,
  fk_id_filme varchar(4) DEFAULT NULL,
  fk_id_oscar varchar(4) DEFAULT NULL,
  PRIMARY KEY (pk_id_filme_oscar),
  KEY fk_FILME_has_OSCAR_OSCAR1_idx (fk_id_oscar),
  KEY fk_FILME_has_OSCAR_FILME1_idx (fk_id_filme),
  CONSTRAINT fk_FILME_OSCAR1 FOREIGN KEY (fk_id_oscar) REFERENCES oscar_ganhou (pk_id_oscar),
  CONSTRAINT fk_FILME_OSCAR_FILME1 FOREIGN KEY (fk_id_filme) REFERENCES filme (pk_id_filme)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table filme_oscar
--

LOCK TABLES filme_oscar WRITE;
/*!40000 ALTER TABLE filme_oscar DISABLE KEYS */;
INSERT INTO filme_oscar VALUES ('1','1','1'),('10','1','15'),('11','1','14'),('12','2','1'),('13','2','2'),('14','2','3'),('15','2','4'),('16','2','7'),('17','2','22'),('18','2','21'),('19','2','10'),('2','1','2'),('20','2','24'),('21','2','12'),('22','2','15'),('23','3','21'),('24','4','7'),('25','4','21'),('26','4','11'),('27','4','12'),('28','4','11'),('29','5','2'),('3','1','7'),('30','5','3'),('31','5','25'),('32','5','14'),('33','5','24'),('34','5','7'),('35','6','1'),('36','6','10'),('37','6','15'),('38','6','9'),('4','1','22'),('5','1','21'),('6','1','23'),('7','1','10'),('8','1','24'),('9','1','12');
/*!40000 ALTER TABLE filme_oscar ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table genero
--

DROP TABLE IF EXISTS genero;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE genero (
  pk_id_genero varchar(4) NOT NULL,
  nome_genero varchar(45) DEFAULT NULL,
  PRIMARY KEY (pk_id_genero)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table genero
--

LOCK TABLES genero WRITE;
/*!40000 ALTER TABLE genero DISABLE KEYS */;
INSERT INTO genero VALUES ('1','Ação'),('10','Drama'),('11','Ficção científica'),('12','Mistério'),('13','Romance'),('14','Terror'),('15','fantasia'),('16','biografia'),('17','suspense'),('18','amadurecimento'),('19','animação'),('2','Aventura'),('20','terror psicologico'),('21','Epico'),('22','musical'),('23','assalto'),('3','Cinema Arte'),('4','Chanchada'),('5','animação_oriental'),('6','Comédia'),('7','infantil'),('8','Dança'),('9','Documentario');
/*!40000 ALTER TABLE genero ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table oscar_ano
--

DROP TABLE IF EXISTS oscar_ano;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE oscar_ano (
  pk_id_oscar_ano varchar(45) NOT NULL,
  fk_id_oscar varchar(4) DEFAULT NULL,
  fk_id_ano varchar(4) DEFAULT NULL,
  PRIMARY KEY (pk_id_oscar_ano),
  KEY fk_OSCAR_has_ANO_ANO1_idx (fk_id_ano),
  KEY fk_OSCAR_has_ANO_OSCAR1_idx (fk_id_oscar),
  CONSTRAINT fk_OSCAR_ANO_ANO1 FOREIGN KEY (fk_id_ano) REFERENCES ano (pk_id_ano),
  CONSTRAINT fk_OSCAR_ANO_OSCAR1 FOREIGN KEY (fk_id_oscar) REFERENCES oscar_ganhou (pk_id_oscar)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table oscar_ano
--

LOCK TABLES oscar_ano WRITE;
/*!40000 ALTER TABLE oscar_ano DISABLE KEYS */;
INSERT INTO oscar_ano VALUES ('1','1','1');
/*!40000 ALTER TABLE oscar_ano ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table oscar_ganhou
--

DROP TABLE IF EXISTS oscar_ganhou;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE oscar_ganhou (
  pk_id_oscar varchar(4) NOT NULL,
  categoria_oscar varchar(45) DEFAULT NULL,
  PRIMARY KEY (pk_id_oscar)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table oscar_ganhou
--

LOCK TABLES oscar_ganhou WRITE;
/*!40000 ALTER TABLE oscar_ganhou DISABLE KEYS */;
INSERT INTO oscar_ganhou VALUES ('1','melhor Filme'),('10','Melhor Figurino'),('11','Melhor Maquiagem e Cabelo'),('12','Melhor Mixagem de Som'),('13','Melhor Edição'),('14','Melhor Canção Original'),('15','Melhor Trilha Sonora Original'),('16','Melhor Curta-Metragem em live-action'),('17','Melhor Animação em Curta-Metragem'),('18','Melhor Documentário em Curta-Metragem'),('19','Melhor Animação de Longa-Metragem'),('2','Melhor Direção'),('20','Melhor Documentário'),('21','Melhores Efeitos Visuais'),('22','Melhor montagem'),('23','Melhor Efeito Sonoro'),('24','Melhor direção de Arte'),('25','Melhor Trilha Sonora'),('3','Melhor Ator e Atriz'),('4','Melhor Ator e Atriz Coadjuvante'),('5','Melhor Roteiro Original'),('6','Melhor Roteiro Adaptado'),('7','Melhor Fotografia'),('8','Melhor Filme Internacional'),('9','Melhor Design de Produção');
/*!40000 ALTER TABLE oscar_ganhou ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table produtora
--

DROP TABLE IF EXISTS produtora;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE produtora (
  pk_id_produtora varchar(4) NOT NULL,
  nome_produtora varchar(50) DEFAULT NULL,
  PRIMARY KEY (pk_id_produtora)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table produtora
--

LOCK TABLES produtora WRITE;
/*!40000 ALTER TABLE produtora DISABLE KEYS */;
INSERT INTO produtora VALUES ('1','20th Century Studios'),('10','Syncopy Films'),('11','Village Roadshow'),('12','Silver Pictures'),('13','Studio Ghibli'),('14','Walt Disney Pictures'),('15','Tokuma Shoten'),('16','Cross Creek Pictures'),('17','Phoenix Pictures'),('18','Protozoa Pictures'),('19','null'),('2','Metro-Goldwyn-Mayer'),('20','Pixar Animation Studios'),('21','Warner Bros. Pictures'),('22','Weed Road Pictures'),('23','Overbrook Entertainment'),('24','3 Arts Entertainment'),('25','Heyday Films, Original Film'),('26','Paramount Pictures'),('27','Brandywine Productions'),('28','Black Label Media'),('29','TIK Films'),('3','WingNut Films'),('30','Impostor Pictures'),('31','Gilbert Films'),('32','Marc Platt Productions'),('33','Marvel Studios'),('4','The Saul Zaentz Company'),('5','Lightstorm Entertainment'),('6','Dune Entertainment'),('7','Amblin Entertainment'),('9','Legendary Pictures');
/*!40000 ALTER TABLE produtora ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table produtora_filme
--

DROP TABLE IF EXISTS produtora_filme;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE produtora_filme (
  pk_id_produtora_filme varchar(4) NOT NULL,
  fk_id_produtora varchar(4) DEFAULT NULL,
  fk_id_filme varchar(4) DEFAULT NULL,
  PRIMARY KEY (pk_id_produtora_filme),
  KEY fk_PRODUTORA_has_FILME_FILME1_idx (fk_id_filme),
  KEY fk_PRODUTORA_has_FILME_PRODUTORA_idx (fk_id_produtora),
  CONSTRAINT fk_PRODUTORA_FILME_FILME1 FOREIGN KEY (fk_id_filme) REFERENCES filme (pk_id_filme),
  CONSTRAINT fk_PRODUTORA_FILME_PRODUTORA FOREIGN KEY (fk_id_produtora) REFERENCES produtora (pk_id_produtora)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table produtora_filme
--

LOCK TABLES produtora_filme WRITE;
/*!40000 ALTER TABLE produtora_filme DISABLE KEYS */;
INSERT INTO produtora_filme VALUES ('1','26','1'),('10','31','5'),('11','32','5'),('12','33','6'),('13','3','7'),('14','4','7'),('15','3','8'),('16','4','8'),('17','5','9'),('18','6','9'),('19','7','10'),('2','1','1'),('20','9','11'),('21','10','11'),('22','21','12'),('23','13','13'),('24','14','13'),('25','15','13'),('26','16','14'),('27','17','14'),('28','18','14'),('29','6','14'),('3','5','1'),('30','20','15'),('31','21','16'),('32','11','16'),('33','22','16'),('34','23','16'),('35','24','16'),('4','2','2'),('5','27','3'),('6','3','4'),('7','4','4'),('8','28','5'),('9','29','5');
/*!40000 ALTER TABLE produtora_filme ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 21:10:44

SELECT * FROM audit;
SELECT * FROM ano;
SELECT * FROM filme;
SELECT * FROM filme_genero;
SELECT * FROM filme_oscar;
SELECT * FROM genero;
SELECT * FROM oscar_ano;
SELECT * FROM oscar_ganhou;
SELECT * FROM produtora;
SELECT * FROM produtora_filme;

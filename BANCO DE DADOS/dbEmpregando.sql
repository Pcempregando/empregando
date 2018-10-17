CREATE DATABASE  IF NOT EXISTS `dbempregando` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbempregando`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: dbempregando
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `cd_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nm_bairro` varchar(60) DEFAULT NULL,
  `cd_cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_bairro`),
  KEY `fk_cidade_bairro` (`cd_cidade`),
  CONSTRAINT `fk_cidade_bairro` FOREIGN KEY (`cd_cidade`) REFERENCES `cidade` (`cd_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `cd_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cidade` varchar(60) DEFAULT NULL,
  `cd_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_cidade`),
  KEY `fk_estado_cidade` (`cd_estado`),
  CONSTRAINT `fk_estado_cidade` FOREIGN KEY (`cd_estado`) REFERENCES `estado` (`cd_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculo_candidato`
--

DROP TABLE IF EXISTS `curriculo_candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculo_candidato` (
  `cd_curriculo` int(11) NOT NULL AUTO_INCREMENT,
  `cd_candidato` int(11) DEFAULT NULL,
  `ds_curriculo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cd_curriculo`),
  UNIQUE KEY `cd_candidato` (`cd_candidato`),
  CONSTRAINT `fk_candidato_curriculo` FOREIGN KEY (`cd_candidato`) REFERENCES `dados_candidato` (`cd_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculo_candidato`
--

LOCK TABLES `curriculo_candidato` WRITE;
/*!40000 ALTER TABLE `curriculo_candidato` DISABLE KEYS */;
/*!40000 ALTER TABLE `curriculo_candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_candidato`
--

DROP TABLE IF EXISTS `dados_candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_candidato` (
  `cd_candidato` int(11) NOT NULL AUTO_INCREMENT,
  `nm_candidato` varchar(60) NOT NULL,
  `sg_sexo` char(1) NOT NULL,
  `cd_telefone_residencial` char(15) DEFAULT NULL,
  `cd_telefone_celular` char(15) DEFAULT NULL,
  `cd_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_candidato`),
  KEY `fk_usuario_candidato` (`cd_usuario`),
  CONSTRAINT `fk_usuario_candidato` FOREIGN KEY (`cd_usuario`) REFERENCES `usuario` (`cd_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_candidato`
--

LOCK TABLES `dados_candidato` WRITE;
/*!40000 ALTER TABLE `dados_candidato` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_empregador`
--

DROP TABLE IF EXISTS `dados_empregador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_empregador` (
  `cd_empregador` int(11) NOT NULL AUTO_INCREMENT,
  `ds_empregador` text NOT NULL,
  `cd_cnpj` char(15) NOT NULL,
  `ds_ramo` varchar(60) NOT NULL,
  `cd_usuario` int(11) DEFAULT NULL,
  `cd_telefone_comercial` char(15) NOT NULL,
  `nm_empregador` varchar(60) NOT NULL,
  PRIMARY KEY (`cd_empregador`),
  KEY `fk_usuario_empregador` (`cd_usuario`),
  CONSTRAINT `fk_usuario_empregador` FOREIGN KEY (`cd_usuario`) REFERENCES `usuario` (`cd_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_empregador`
--

LOCK TABLES `dados_empregador` WRITE;
/*!40000 ALTER TABLE `dados_empregador` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_empregador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descricao_vaga`
--

DROP TABLE IF EXISTS `descricao_vaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descricao_vaga` (
  `cd_descricao_vaga` int(11) NOT NULL AUTO_INCREMENT,
  `ds_vaga` text NOT NULL,
  `ds_requisitos` text,
  `ds_beneficios` text,
  `ds_salario` varchar(30) NOT NULL,
  `cd_vaga` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_descricao_vaga`),
  KEY `fk_vaga_descricao` (`cd_vaga`),
  CONSTRAINT `fk_vaga_descricao` FOREIGN KEY (`cd_vaga`) REFERENCES `vaga` (`cd_vaga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descricao_vaga`
--

LOCK TABLES `descricao_vaga` WRITE;
/*!40000 ALTER TABLE `descricao_vaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `descricao_vaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `cd_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `nm_logradouro` varchar(100) DEFAULT NULL,
  `cd_num` varchar(5) DEFAULT NULL,
  `cd_cep` char(8) DEFAULT NULL,
  `cd_usuario` int(11) DEFAULT NULL,
  `cd_bairro` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_endereco`),
  KEY `fk_bairro_endereco` (`cd_bairro`),
  KEY `fk_usuario_endereco` (`cd_usuario`),
  CONSTRAINT `fk_bairro_endereco` FOREIGN KEY (`cd_bairro`) REFERENCES `bairro` (`cd_bairro`),
  CONSTRAINT `fk_usuario_endereco` FOREIGN KEY (`cd_usuario`) REFERENCES `usuario` (`cd_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `cd_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nm_estado` varchar(60) DEFAULT NULL,
  `sg_estado` char(2) DEFAULT NULL,
  PRIMARY KEY (`cd_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `cd_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nm_email` varchar(60) NOT NULL,
  `ds_senha` varchar(15) DEFAULT NULL,
  `ds_usuario` char(3) NOT NULL,
  PRIMARY KEY (`cd_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaga`
--

DROP TABLE IF EXISTS `vaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaga` (
  `cd_vaga` int(11) NOT NULL AUTO_INCREMENT,
  `nm_vaga` varchar(60) NOT NULL,
  `nm_tipo_vaga` varchar(60) NOT NULL,
  `cd_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`cd_vaga`),
  KEY `fk_usuario_vaga` (`cd_usuario`),
  CONSTRAINT `fk_usuario_vaga` FOREIGN KEY (`cd_usuario`) REFERENCES `usuario` (`cd_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaga`
--

LOCK TABLES `vaga` WRITE;
/*!40000 ALTER TABLE `vaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbempregando'
--

--
-- Dumping routines for database 'dbempregando'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_insere_candidato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insere_candidato`(
IN estado VARCHAR(60),
IN sigla CHAR(2),
IN cidade VARCHAR(60),
IN bairro VARCHAR(60),
IN logradouro VARCHAR(100),
IN numero VARCHAR(5),
IN cep CHAR(8),
IN email VARCHAR(60),
IN senha VARCHAR(15),
IN candidato VARCHAR(60),
IN sexo CHAR(1),
IN residencial CHAR(15),
IN celular CHAR(15),
IN curriculo VARCHAR(250))
BEGIN
	DECLARE bair, usu INT;
    
    INSERT INTO estado (nm_estado, sg_estado)
		VALUES (estado, sigla);
        
	INSERT INTO cidade (nm_cidade, cd_estado)
		VALUES (cidade, LAST_INSERT_ID());
        
	INSERT INTO bairro (nm_bairro, cd_cidade)
		VALUES (bairro, LAST_INSERT_ID());
	
    SELECT cd_bairro INTO bair FROM bairro WHERE cd_bairro = LAST_INSERT_ID();
    
    INSERT INTO usuario (nm_email, ds_senha, ds_usuario)
		VALUES (email, senha, 'CAN');
	
    SELECT cd_usuario INTO usu FROM usuario WHERE cd_usuario = LAST_INSERT_ID();
    
    INSERT INTO endereco (nm_logradouro, cd_num, cd_cep, cd_bairro, cd_usuario)
		VALUES (logradouro, numero, bair, LAST_INSERT_ID());
        
	INSERT INTO dados_candidato (nm_candidato, sg_sexo, cd_telefone_residencial, cd_telefone_celular, cd_usuario)
		VALUES (candidato, sexo, residencial, celular, usu);
        
	INSERT INTO curriculo_candidato (nm_caminho, cd_candidato)
		VALUES (caminho, LAST_INSERT_ID());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insere_empregador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insere_empregador`(
IN estado VARCHAR(60),
IN sigla CHAR(2),
IN cidade VARCHAR(60),
IN bairro VARCHAR(60),
IN logradouro VARCHAR(100),
IN numero VARCHAR(5),
IN cep CHAR(8),
IN email VARCHAR(60),
IN senha VARCHAR(15),
IN empregador VARCHAR(60),
IN descricao TEXT,
IN cnpj CHAR(14),
IN ramo VARCHAR(60),
IN comercial CHAR(15))
BEGIN
	DECLARE bair, usu INT;
    
    INSERT INTO estado (nm_estado, sg_estado)
		VALUES (estado, sigla);
        
	INSERT INTO cidade (nm_cidade, cd_estado)
		VALUES (cidade, LAST_INSERT_ID());
        
	INSERT INTO bairro (nm_bairro, cd_cidade)
		VALUES (bairro, LAST_INSERT_ID());
	
    SELECT cd_bairro INTO bair FROM bairro WHERE cd_bairro = LAST_INSERT_ID();
    
    INSERT INTO usuario (nm_email, ds_senha, ds_usuario)
		VALUES (email, senha, 'EMP');
	
    SELECT cd_usuario INTO usu FROM usuario WHERE cd_usuario = LAST_INSERT_ID();
    
    INSERT INTO endereco (nm_logradouro, cd_num, cd_cep, cd_bairro, cd_usuario)
		VALUES (logradouro, numero, bair, LAST_INSERT_ID());
        
	INSERT INTO dados_empregador (nm_empregador, ds_empregador, cd_telefone_comercial, cd_cnpj, ds_ramo, cd_usuario)
		VALUES (empregador, descricao, comercial, ramo, usu);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_painel_vagas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_painel_vagas`()
BEGIN
	SELECT nm_empregador AS Empregador, nm_vaga AS Vaga, nm_tipo_vaga AS Tipo, ds_requisitos AS Requisitos, ds_beneficios AS Beneficios, ds_salario AS Salario FROM dados_empregador
		JOIN usuario ON dados_empregador.cd_usuario = usuario.cd_usuario
			JOIN vaga ON usuario.cd_usuario = vaga.cd_usuario
				JOIN descricao_vaga ON vaga.cd_vaga = descricao_vaga.cd_vaga;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verifica_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verifica_login`(
IN email VARCHAR(60),
IN senha VARCHAR(15))
BEGIN
	SELECT nm_email, ds_senha FROM usuario
		WHERE nm_email = email
			AND ds_senha = senha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 22:57:31

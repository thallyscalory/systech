CREATE DATABASE  IF NOT EXISTS `systech` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `systech`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: systech
-- ------------------------------------------------------
-- Server version	5.5.55-log

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
-- Table structure for table `agencia`
--

DROP TABLE IF EXISTS `agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencia` (
  `id_agencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_banco` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_agencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencia`
--

LOCK TABLES `agencia` WRITE;
/*!40000 ALTER TABLE `agencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id_banco` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa` (
  `id_Caixa` int(11) NOT NULL AUTO_INCREMENT,
  `id_Usuario` int(11) NOT NULL,
  `id_ContaRec` int(11) NOT NULL,
  `id_ContaPag` int(11) NOT NULL,
  `id_Banco` int(11) NOT NULL,
  `id_ContaCaixa` int(11) NOT NULL,
  `id_FormaPagamento` int(11) NOT NULL,
  `id_CentroCustoReceita` int(11) NOT NULL,
  `datacadastro` date DEFAULT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `tipo` char(10) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Caixa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ibge` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `id_estado_idx` (`id_estado`),
  CONSTRAINT `id_estado` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_razaosocial` varchar(60) NOT NULL,
  `tipopessoa` char(1) DEFAULT NULL,
  `cpf_cnpj` varchar(15) NOT NULL,
  `rg_ie` varchar(15) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `endereco` varchar(60) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nomepai` varchar(45) DEFAULT NULL,
  `nomemae` varchar(45) DEFAULT NULL,
  `genero` char(2) DEFAULT NULL,
  `estadocivil` char(5) DEFAULT NULL,
  `grauescolaridade` varchar(20) DEFAULT NULL,
  `localdetrabalho` varchar(45) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL,
  `renda` decimal(8,2) DEFAULT NULL,
  `contatotrabalho` varchar(30) DEFAULT NULL,
  `id_referencia` int(11) DEFAULT NULL,
  `datadecadastro` date DEFAULT NULL,
  `datanascimento` date DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `observacao` text,
  `autorizacoes` varchar(45) DEFAULT NULL,
  `valormaxcred` decimal(8,2) DEFAULT NULL,
  `naturalidade` varchar(45) DEFAULT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_cidade_idx` (`id_cidade`),
  KEY `id_cargo_idx` (`id_cargo`),
  KEY `id_referencia_idx` (`id_referencia`),
  CONSTRAINT `id_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_referencia` FOREIGN KEY (`id_referencia`) REFERENCES `referenciacomercial` (`id_referencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `datacadastro` int(11) NOT NULL,
  `dataemissaonf` date NOT NULL,
  `observacoes` varchar(45) NOT NULL,
  `nf` varchar(45) NOT NULL,
  `possuinf` char(1) NOT NULL,
  `basecalcicms` double NOT NULL,
  `totalicms_s_t` double NOT NULL,
  `basecalcicms_s_t` double NOT NULL,
  `totalprodutos` double NOT NULL,
  `totalfrete` double NOT NULL,
  `totalseguro` double NOT NULL,
  `totaldesconto` double NOT NULL,
  `outrasdespesas` double NOT NULL,
  `TotalNF` double NOT NULL,
  `totalipi` double NOT NULL,
  `totalpis` double NOT NULL,
  `totalcofins` double NOT NULL,
  `valortotal` double NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `UF` char(2) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `naturalidade` varchar(25) DEFAULT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  `nome_mae` varchar(45) DEFAULT NULL,
  `estado_civil` varchar(10) DEFAULT NULL,
  `id_cargo` varchar(30) DEFAULT NULL,
  `data_entrada` date DEFAULT NULL,
  `data_saida` date DEFAULT NULL,
  `statusl` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `id_cidade_idx` (`id_cidade`),
  CONSTRAINT `fk_id_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `nome` varchar(30) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referenciacomercial`
--

DROP TABLE IF EXISTS `referenciacomercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referenciacomercial` (
  `id_referencia` int(11) NOT NULL AUTO_INCREMENT,
  `empresaref` varchar(20) NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referenciacomercial`
--

LOCK TABLES `referenciacomercial` WRITE;
/*!40000 ALTER TABLE `referenciacomercial` DISABLE KEYS */;
/*!40000 ALTER TABLE `referenciacomercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupo`
--

DROP TABLE IF EXISTS `subgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgrupo` (
  `id_subgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `nome` varchar(30) NOT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_subgrupo`),
  KEY `id_grupo_idx` (`id_grupo`),
  CONSTRAINT `id_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo`
--

LOCK TABLES `subgrupo` WRITE;
/*!40000 ALTER TABLE `subgrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `subgrupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-26 21:36:14

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
-- Table structure for table `aberturaefechamentodecaixa`
--

DROP TABLE IF EXISTS `aberturaefechamentodecaixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aberturaefechamentodecaixa` (
  `id_aberturaefechamentodecaixa` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `data_abertura` date DEFAULT NULL,
  `data_fechamento` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_aberturaefechamentodecaixa`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario_7` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aberturaefechamentodecaixa`
--

LOCK TABLES `aberturaefechamentodecaixa` WRITE;
/*!40000 ALTER TABLE `aberturaefechamentodecaixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `aberturaefechamentodecaixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agencia`
--

DROP TABLE IF EXISTS `agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencia` (
  `id_agencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_banco` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
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
  `nome` varchar(30) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
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
  `id_caixa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_contarec` int(11) NOT NULL,
  `id_contapag` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `id_contacaixa` int(11) NOT NULL,
  `id_formapagamento` int(11) NOT NULL,
  `id_centrocustoreceita` int(11) NOT NULL,
  `datacadastro` date DEFAULT NULL,
  `nome` varchar(25) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `tipo` char(10) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_caixa`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_contarec_idx` (`id_contarec`),
  KEY `id_contapag_idx` (`id_contapag`),
  KEY `id_banco_idx` (`id_banco`),
  KEY `id_contacaixa_idx` (`id_contacaixa`),
  KEY `id_formapagamento_idx` (`id_formapagamento`),
  KEY `id_usuario_idx1` (`id_usuario`),
  KEY `id_contarec_idx1` (`id_contarec`),
  KEY `id_contapag_idx1` (`id_contapag`),
  KEY `id_banco_idx1` (`id_banco`),
  KEY `id_contacaixa_idx1` (`id_contacaixa`),
  KEY `id_formapagamento_idx1` (`id_formapagamento`),
  KEY `id_centrocustoereceita_idx` (`id_centrocustoreceita`),
  CONSTRAINT `id_centrocustoereceita_1` FOREIGN KEY (`id_centrocustoreceita`) REFERENCES `centrocustoereceita` (`id_centrocustoereceita`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_banco_2` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_contacaixa_1` FOREIGN KEY (`id_contacaixa`) REFERENCES `contacaixa` (`id_contacaixa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_contapag_1` FOREIGN KEY (`id_contapag`) REFERENCES `contasapagar` (`id_contasapagar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_contarec_1` FOREIGN KEY (`id_contarec`) REFERENCES `contasareceber` (`id_contasareceber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_formadepagamento_3` FOREIGN KEY (`id_formapagamento`) REFERENCES `formadepagamento` (`id_formadepagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario_5` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
-- Table structure for table `centrocustoereceita`
--

DROP TABLE IF EXISTS `centrocustoereceita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centrocustoereceita` (
  `id_centrocustoereceita` int(11) NOT NULL,
  `id_grupocentrocustoreceita` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_centrocustoereceita`),
  CONSTRAINT `id_grupocentrocustoereceita` FOREIGN KEY (`id_centrocustoereceita`) REFERENCES `grupocentrocustoreceita` (`id_grupocentrocustoreceita`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centrocustoereceita`
--

LOCK TABLES `centrocustoereceita` WRITE;
/*!40000 ALTER TABLE `centrocustoereceita` DISABLE KEYS */;
/*!40000 ALTER TABLE `centrocustoereceita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheque`
--

DROP TABLE IF EXISTS `cheque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheque` (
  `id_cheque` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `data_cadastro` date NOT NULL,
  `data_cheque` date NOT NULL,
  `titular_do_cheque` varchar(45) NOT NULL,
  `numero_do_cheque` float NOT NULL,
  `agenda` float DEFAULT NULL,
  `valor` float NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_compensacao` date DEFAULT NULL,
  `cheque_repassado` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_cheque`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_cliente_idx` (`id_cliente`),
  KEY `id_banco_idx` (`id_banco`),
  CONSTRAINT `id_usuario_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente_3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_banco_1` FOREIGN KEY (`id_banco`) REFERENCES `banco` (`id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheque`
--

LOCK TABLES `cheque` WRITE;
/*!40000 ALTER TABLE `cheque` DISABLE KEYS */;
/*!40000 ALTER TABLE `cheque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ibge` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`id_compra`),
  KEY `id_fornecedor_idx` (`id_fornecedor`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_fornecedor` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
-- Table structure for table `contacaixa`
--

DROP TABLE IF EXISTS `contacaixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacaixa` (
  `id_contacaixa` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_contacaixa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacaixa`
--

LOCK TABLES `contacaixa` WRITE;
/*!40000 ALTER TABLE `contacaixa` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacaixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contasapagar`
--

DROP TABLE IF EXISTS `contasapagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contasapagar` (
  `id_contasapagar` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  `id_formadepagamento` int(11) DEFAULT NULL,
  `id_grupocentrocustoreceita` int(11) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `valor_desconto` float DEFAULT NULL,
  `valor_multa` float DEFAULT NULL,
  `valor_juros` float DEFAULT NULL,
  `valor_total` float DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_contasapagar`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_compra_idx` (`id_compra`),
  KEY `id_fornecedor_idx` (`id_fornecedor`),
  KEY `id_formadepagamento_idx` (`id_formadepagamento`),
  CONSTRAINT `id_usuario_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_compra_4` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_fornecedor_2` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_formadepagamento_2` FOREIGN KEY (`id_formadepagamento`) REFERENCES `formadepagamento` (`id_formadepagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contasapagar`
--

LOCK TABLES `contasapagar` WRITE;
/*!40000 ALTER TABLE `contasapagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `contasapagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contasareceber`
--

DROP TABLE IF EXISTS `contasareceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contasareceber` (
  `id_contasareceber` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_venda` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_formapagamento` int(11) DEFAULT NULL,
  `id_grupocentrocustoreceita` int(11) DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  `valor` float NOT NULL,
  `valor_desconto` float DEFAULT NULL,
  `valor_multa` float DEFAULT NULL,
  `valor_juros` float DEFAULT NULL,
  `valor_total` float NOT NULL,
  `data_lancamento` date NOT NULL,
  `data_vencimento` date NOT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_contasareceber`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_venda_idx` (`id_venda`),
  KEY `id_cliente_idx` (`id_cliente`),
  KEY `id_formadepagamento_idx` (`id_formapagamento`),
  CONSTRAINT `id_formadepagamento` FOREIGN KEY (`id_formapagamento`) REFERENCES `formadepagamento` (`id_formadepagamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_venda_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contasareceber`
--

LOCK TABLES `contasareceber` WRITE;
/*!40000 ALTER TABLE `contasareceber` DISABLE KEYS */;
/*!40000 ALTER TABLE `contasareceber` ENABLE KEYS */;
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
-- Table structure for table `formadepagamento`
--

DROP TABLE IF EXISTS `formadepagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formadepagamento` (
  `id_formadepagamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_formadepagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formadepagamento`
--

LOCK TABLES `formadepagamento` WRITE;
/*!40000 ALTER TABLE `formadepagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `formadepagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `id_cidade` int(11) NOT NULL,
  `datacadastro` date NOT NULL,
  `tipopessoa` int(11) NOT NULL,
  `razaosocial` varchar(45) NOT NULL,
  `nomefantasia` varchar(45) NOT NULL,
  `cpf_cnpj` varchar(45) NOT NULL,
  `rg_ie` varchar(45) DEFAULT NULL,
  `inscmunicipal` varchar(45) DEFAULT NULL,
  `data_nasc_fund` date NOT NULL,
  `cep` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `contato` varchar(45) NOT NULL,
  `site` varchar(45) DEFAULT NULL,
  `fone_01` varchar(45) NOT NULL,
  `fone_02` varchar(45) DEFAULT NULL,
  `fone_03` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_fornecedor`),
  KEY `id_cidade_idx` (`id_cidade`),
  CONSTRAINT `oi_id_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
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
-- Table structure for table `gerarrecibo`
--

DROP TABLE IF EXISTS `gerarrecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerarrecibo` (
  `id_recibo` int(11) NOT NULL AUTO_INCREMENT,
  `id_caixa` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `cpf_cnpj` int(11) DEFAULT NULL,
  `rg_ie` int(11) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_recibo`),
  KEY `id_caixa_idx` (`id_caixa`),
  CONSTRAINT `id_caixa_1` FOREIGN KEY (`id_caixa`) REFERENCES `caixa` (`id_caixa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerarrecibo`
--

LOCK TABLES `gerarrecibo` WRITE;
/*!40000 ALTER TABLE `gerarrecibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerarrecibo` ENABLE KEYS */;
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
-- Table structure for table `grupocentrocustoreceita`
--

DROP TABLE IF EXISTS `grupocentrocustoreceita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupocentrocustoreceita` (
  `id_grupocentrocustoreceita` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_grupocentrocustoreceita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupocentrocustoreceita`
--

LOCK TABLES `grupocentrocustoreceita` WRITE;
/*!40000 ALTER TABLE `grupocentrocustoreceita` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupocentrocustoreceita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcompra`
--

DROP TABLE IF EXISTS `itemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemcompra` (
  `id_itemcompra` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `datavalidade` date NOT NULL,
  `lote` varchar(45) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valordesconto` double DEFAULT NULL,
  `percentualdesconto` double DEFAULT NULL,
  `valoricms` double NOT NULL,
  `valorbasecalcicms` double NOT NULL,
  `valoricms_s_t` double NOT NULL,
  `valorfrete` double DEFAULT NULL,
  `valoripi` double NOT NULL,
  `valorpis` double NOT NULL,
  `valorcofins` double NOT NULL,
  `valorunitario` double NOT NULL,
  `valortotal` double NOT NULL,
  PRIMARY KEY (`id_itemcompra`),
  KEY `id_compra_idx` (`id_compra`),
  KEY `id_produto_idx` (`id_produto`),
  CONSTRAINT `id_compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompra`
--

LOCK TABLES `itemcompra` WRITE;
/*!40000 ALTER TABLE `itemcompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemvenda`
--

DROP TABLE IF EXISTS `itemvenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemvenda` (
  `id_itemvenda` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) DEFAULT NULL,
  `id_venda` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorunitario` float DEFAULT NULL,
  `valordesconto` float DEFAULT NULL,
  `valortotal` float DEFAULT NULL,
  PRIMARY KEY (`id_itemvenda`),
  KEY `id_produto_idx` (`id_produto`),
  KEY `id_venda_idx` (`id_venda`),
  CONSTRAINT `oi_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `oi_id_venda` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemvenda`
--

LOCK TABLES `itemvenda` WRITE;
/*!40000 ALTER TABLE `itemvenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemvenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `datacadastro` date NOT NULL,
  `nome` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `id_marca` int(11) DEFAULT NULL,
  `id_subgrupo` int(11) DEFAULT NULL,
  `datacadastro` date NOT NULL,
  `codigodebarras` varchar(100) DEFAULT NULL,
  `nome` varchar(45) NOT NULL,
  `nomecomum` varchar(45) DEFAULT NULL,
  `peso` varchar(45) DEFAULT NULL,
  `medidas` varchar(45) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `numfabricante` varchar(45) DEFAULT NULL,
  `estoqueatual` int(11) DEFAULT NULL,
  `estoqueminimo` int(11) DEFAULT NULL,
  `ultimocusto` float DEFAULT NULL,
  `valorvenda` float NOT NULL,
  `margemlucro` float NOT NULL,
  `descontomax` float NOT NULL,
  `origem` int(11) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `imagem` blob,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `id_subgrupo_idx` (`id_subgrupo`),
  KEY `id_marca_idx` (`id_marca`),
  CONSTRAINT `id_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_subgrupo` FOREIGN KEY (`id_subgrupo`) REFERENCES `subgrupo` (`id_subgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `id_funcionario` int(11) NOT NULL,
  `financeiro` char(1) DEFAULT NULL,
  `venda` char(1) DEFAULT NULL,
  `compra` char(1) DEFAULT NULL,
  `caixa` char(1) DEFAULT NULL,
  `contasreceber` char(1) DEFAULT NULL,
  `relatoriogeral` char(1) DEFAULT NULL,
  `relatoriogestao` char(1) DEFAULT NULL,
  `casdastroproduto` char(1) DEFAULT NULL,
  `cadastrousuario` char(1) DEFAULT NULL,
  `cadastrofuncionario` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_funcionario_idx` (`id_funcionario`),
  CONSTRAINT `id_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `datadefinalizacao` date NOT NULL,
  `datavenda` date NOT NULL,
  `totaldesconto` float NOT NULL,
  `totalprodutos` float NOT NULL,
  `totalvenda` float NOT NULL,
  `id_formadepagamento` int(11) NOT NULL,
  `observacoes` varchar(45) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_cliente_idx` (`id_cliente`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `oi_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `oi_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-17 20:12:11

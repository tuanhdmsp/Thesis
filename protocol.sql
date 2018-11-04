-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.40.141    Database: snort
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `protocol`
--

DROP TABLE IF EXISTS `protocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protocol` (
  `id` int(11) NOT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protocol`
--

LOCK TABLES `protocol` WRITE;
/*!40000 ALTER TABLE `protocol` DISABLE KEYS */;
INSERT INTO `protocol` VALUES (1,'ICMP','Internet Control Message'),(2,'IGMP','Internet Group Management'),(3,'GGP','Gateway-to-Gateway'),(4,'IPv4','IPv4 encapsulation'),(5,'ST','Stream'),(6,'TCP','Transmission Control'),(7,'CBT','CBT'),(8,'EGP','Exterior Gateway Protocol'),(9,'IGP','any private interior gateway (used by Cisco for their IGRP)'),(10,'BBN-RCC-MON','BBN RCC Monitoring'),(11,'NVP-II','Network Voice Protocol'),(12,'PUP','PUP'),(13,'ARGUS (deprecated)','ARGUS'),(14,'EMCON','EMCON'),(15,'XNET','Cross Net Debugger'),(16,'CHAOS','Chaos'),(17,'UDP','User Datagram'),(18,'MUX','Multiplexing'),(19,'DCN-MEAS','DCN Measurement Subsystems'),(20,'HMP','Host Monitoring'),(21,'PRM','Packet Radio Measurement'),(22,'XNS-IDP','XEROX NS IDP'),(23,'TRUNK-1','Trunk-1'),(24,'TRUNK-2','Trunk-2'),(25,'LEAF-1','Leaf-1'),(26,'LEAF-2','Leaf-2'),(27,'RDP','Reliable Data Protocol'),(28,'IRTP','Internet Reliable Transaction'),(29,'ISO-TP4','ISO Transport Protocol Class 4'),(30,'NETBLT','Bulk Data Transfer Protocol'),(31,'MFE-NSP','MFE Network Services Protocol'),(32,'MERIT-INP','MERIT Internodal Protocol'),(33,'DCCP','Datagram Congestion Control Protocol'),(34,'3PC','Third Party Connect Protocol'),(35,'IDPR','Inter-Domain Policy Routing Protocol'),(36,'XTP','XTP'),(37,'DDP','Datagram Delivery Protocol'),(38,'IDPR-CMTP','IDPR Control Message Transport Proto'),(39,'TP++','TP++ Transport Protocol'),(40,'IL','IL Transport Protocol'),(41,'IPv6','IPv6 encapsulation'),(42,'SDRP','Source Demand Routing Protocol'),(43,'IPv6-Route','Routing Header for IPv6'),(44,'IPv6-Frag','Fragment Header for IPv6'),(45,'IDRP','Inter-Domain Routing Protocol'),(46,'RSVP','Reservation Protocol'),(47,'GRE','Generic Routing Encapsulation'),(48,'DSR','Dynamic Source Routing Protocol'),(49,'BNA','BNA'),(50,'ESP','Encap Security Payload'),(51,'AH','Authentication Header'),(52,'I-NLSP','Integrated Net Layer Security TUBA'),(53,'SWIPE (deprecated)','IP with Encryption'),(54,'NARP','NBMA Address Resolution Protocol'),(55,'MOBILE','IP Mobility'),(56,'TLSP','Transport Layer Security Protocol using Kryptonet key management'),(57,'SKIP','SKIP'),(58,'IPv6-ICMP','ICMP for IPv6'),(59,'IPv6-NoNxt','No Next Header for IPv6'),(60,'IPv6-Opts','Destination Options for IPv6'),(61,'','any host internal protocol'),(62,'CFTP','CFTP'),(63,'','any local network'),(64,'SAT-EXPAK','SATNET and Backroom EXPAK'),(65,'KRYPTOLAN','Kryptolan'),(66,'RVD','MIT Remote Virtual Disk Protocol'),(67,'IPPC','Internet Pluribus Packet Core'),(68,'','any distributed file system'),(69,'SAT-MON','SATNET Monitoring'),(70,'VISA','VISA Protocol'),(71,'IPCV','Internet Packet Core Utility'),(72,'CPNX','Computer Protocol Network Executive'),(73,'CPHB','Computer Protocol Heart Beat'),(74,'WSN','Wang Span Network'),(75,'PVP','Packet Video Protocol'),(76,'BR-SAT-MON','Backroom SATNET Monitoring'),(77,'SUN-ND','SUN ND PROTOCOL-Temporary'),(78,'WB-MON','WIDEBAND Monitoring'),(79,'WB-EXPAK','WIDEBAND EXPAK'),(80,'ISO-IP','ISO Internet Protocol'),(81,'VMTP','VMTP'),(82,'SECURE-VMTP','SECURE-VMTP'),(83,'VINES','VINES'),(84,'IPTM','Internet Protocol Traffic Manager'),(85,'NSFNET-IGP','NSFNET-IGP'),(86,'DGP','Dissimilar Gateway Protocol'),(87,'TCF','TCF'),(88,'EIGRP','EIGRP'),(89,'OSPFIGP','OSPFIGP'),(90,'Sprite-RPC','Sprite RPC Protocol'),(91,'LARP','Locus Address Resolution Protocol'),(92,'MTP','Multicast Transport Protocol'),(93,'AX.25','AX.25 Frames'),(94,'IPIP','IP-within-IP Encapsulation Protocol'),(95,'MICP (deprecated)','Mobile Internetworking Control Pro.'),(96,'SCC-SP','Semaphore Communications Sec. Pro.'),(97,'ETHERIP','Ethernet-within-IP Encapsulation'),(98,'ENCAP','Encapsulation Header'),(99,'','any private encryption scheme'),(100,'GMTP','GMTP'),(101,'IFMP','Ipsilon Flow Management Protocol'),(102,'PNNI','PNNI over IP'),(103,'PIM','Protocol Independent Multicast'),(104,'ARIS','ARIS'),(105,'SCPS','SCPS'),(106,'QNX','QNX'),(107,'A/N','Active Networks'),(108,'IPComp','IP Payload Compression Protocol'),(109,'SNP','Sitara Networks Protocol'),(110,'Compaq-Peer','Compaq Peer Protocol'),(111,'IPX-in-IP','IPX in IP'),(112,'VRRP','Virtual Router Redundancy Protocol'),(113,'PGM','PGM Reliable Transport Protocol'),(114,'','any 0-hop protocol'),(115,'L2TP','Layer Two Tunneling Protocol'),(116,'DDX','D-II Data Exchange (DDX)'),(117,'IATP','Interactive Agent Transfer Protocol'),(118,'STP','Schedule Transfer Protocol'),(119,'SRP','SpectraLink Radio Protocol'),(120,'UTI','UTI'),(121,'SMP','Simple Message Protocol'),(122,'SM (deprecated)','Simple Multicast Protocol'),(123,'PTP','Performance Transparency Protocol'),(124,'ISIS over IPv4',''),(125,'FIRE',''),(126,'CRTP','Combat Radio Transport Protocol'),(127,'CRUDP','Combat Radio User Datagram'),(128,'SSCOPMCE',''),(129,'IPLT',''),(130,'SPS','Secure Packet Shield'),(131,'PIPE','Private IP Encapsulation within IP'),(132,'SCTP','Stream Control Transmission Protocol'),(133,'FC','Fibre Channel'),(134,'RSVP-E2E-IGNORE',''),(135,'Mobility Header',''),(136,'UDPLite',''),(137,'MPLS-in-IP',''),(138,'manet','MANET Protocols'),(139,'HIP','Host Identity Protocol'),(140,'Shim6','Shim6 Protocol'),(141,'WESP','Wrapped Encapsulating Security Payload'),(142,'ROHC','Robust Header Compression'),(253,'','Use for experimentation and testing'),(254,'','Use for experimentation and testing'),(255,'Reserved','');
/*!40000 ALTER TABLE `protocol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 17:36:25

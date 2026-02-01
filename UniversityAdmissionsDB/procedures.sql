-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: db_project
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `examscores`
--

DROP TABLE IF EXISTS `examscores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examscores` (
  `ExamScoreID` int NOT NULL AUTO_INCREMENT,
  `Percentile` enum('25','50','75') NOT NULL,
  `ScoreValue` int DEFAULT NULL,
  `InstitutionID` int NOT NULL,
  `ExamTypeID` tinyint NOT NULL,
  `ScoreTypeID` tinyint NOT NULL,
  PRIMARY KEY (`ExamScoreID`),
  KEY `InstitutionID` (`InstitutionID`),
  KEY `ExamTypeID` (`ExamTypeID`),
  KEY `ScoreTypeID` (`ScoreTypeID`),
  CONSTRAINT `examscores_ibfk_1` FOREIGN KEY (`InstitutionID`) REFERENCES `institutions` (`InstitutionID`),
  CONSTRAINT `examscores_ibfk_2` FOREIGN KEY (`ExamTypeID`) REFERENCES `examtypes` (`ExamTypeID`),
  CONSTRAINT `examscores_ibfk_3` FOREIGN KEY (`ScoreTypeID`) REFERENCES `scoretypes` (`ScoreTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16390 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examtypes`
--

DROP TABLE IF EXISTS `examtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examtypes` (
  `ExamTypeID` tinyint NOT NULL,
  `ExamTypeName` varchar(10) NOT NULL,
  PRIMARY KEY (`ExamTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `incomedistributions`
--

DROP TABLE IF EXISTS `incomedistributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incomedistributions` (
  `IncomeDistributionsID` int NOT NULL AUTO_INCREMENT,
  `InstitutionID` int NOT NULL,
  `IncomeBracket` tinyint NOT NULL,
  `IncomePercent` double DEFAULT NULL,
  PRIMARY KEY (`IncomeDistributionsID`),
  KEY `InstitutionID` (`InstitutionID`),
  CONSTRAINT `incomedistributions_ibfk_1` FOREIGN KEY (`InstitutionID`) REFERENCES `institutions` (`InstitutionID`)
) ENGINE=InnoDB AUTO_INCREMENT=4186 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutions` (
  `InstitutionID` int NOT NULL AUTO_INCREMENT,
  `Institutions` varchar(255) NOT NULL,
  `FundingType` varchar(45) DEFAULT NULL,
  `PublicPrivate` varchar(45) DEFAULT NULL,
  `Flagship` varchar(10) DEFAULT NULL,
  `Tier` varchar(45) DEFAULT NULL,
  `TierTestBand` varchar(45) DEFAULT NULL,
  `USNewsTop100Rank` int DEFAULT NULL,
  `AdmissionsRate` double DEFAULT NULL,
  `TotalUndergraduates` int DEFAULT NULL,
  `InStateTuition` int DEFAULT NULL,
  `OutStateTuition` int DEFAULT NULL,
  PRIMARY KEY (`InstitutionID`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scoretypes`
--

DROP TABLE IF EXISTS `scoretypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoretypes` (
  `ScoreTypeID` tinyint NOT NULL,
  `ScoreTypeName` varchar(45) NOT NULL,
  PRIMARY KEY (`ScoreTypeID`),
  UNIQUE KEY `ScoreTypeName` (`ScoreTypeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `university_test_scores`
--

DROP TABLE IF EXISTS `university_test_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university_test_scores` (
  `Institution` text,
  `Admissions_Rate` double DEFAULT NULL,
  `SAT_Verbal_25` int DEFAULT NULL,
  `SAT_Verbal_50` int DEFAULT NULL,
  `SAT_Verbal_75` int DEFAULT NULL,
  `SAT_Math_25` int DEFAULT NULL,
  `SAT_Math_50` int DEFAULT NULL,
  `SAT_Math_75` int DEFAULT NULL,
  `SAT_Writing_25` text,
  `SAT_Writing_75` text,
  `SAT_Average` int DEFAULT NULL,
  `ACT_English_25` int DEFAULT NULL,
  `ACT_English_50` int DEFAULT NULL,
  `ACT_English_75` int DEFAULT NULL,
  `ACT_Math_25` int DEFAULT NULL,
  `ACT_Math_50` int DEFAULT NULL,
  `ACT_Math_75` int DEFAULT NULL,
  `ACT_Composite_25` int DEFAULT NULL,
  `ACT_Composite_50` int DEFAULT NULL,
  `ACT_Composite_75` int DEFAULT NULL,
  `ACT_Writing_25` text,
  `ACT_Writing_75` text,
  `Total_Undergraduates` int DEFAULT NULL,
  `InState_Tuition` int DEFAULT NULL,
  `OutState_Tuition` int DEFAULT NULL,
  `Funding_Type` text,
  `Income_1_Percent` double DEFAULT NULL,
  `Income_2_Percent` double DEFAULT NULL,
  `Income_3_Percent` double DEFAULT NULL,
  `Income_4_Percent` double DEFAULT NULL,
  `Income_5_Percent` double DEFAULT NULL,
  `USnewsTop100Rank` text,
  `Public/Private` text,
  `Flagship` text,
  `Tier` text,
  `Tier_Name` text,
  `Tier_TestBand` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `vw_allexamscores`
--

DROP TABLE IF EXISTS `vw_allexamscores`;
/*!50001 DROP VIEW IF EXISTS `vw_allexamscores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_allexamscores` AS SELECT 
 1 AS `ExamScoreID`,
 1 AS `InstitutionName`,
 1 AS `ExamType`,
 1 AS `ScoreType`,
 1 AS `Percentile`,
 1 AS `ScoreValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_avgexamscoresbyinstitution`
--

DROP TABLE IF EXISTS `vw_avgexamscoresbyinstitution`;
/*!50001 DROP VIEW IF EXISTS `vw_avgexamscoresbyinstitution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_avgexamscoresbyinstitution` AS SELECT 
 1 AS `InstitutionID`,
 1 AS `InstitutionName`,
 1 AS `ExamType`,
 1 AS `ScoreType`,
 1 AS `Percentile`,
 1 AS `AvgScore`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'db_project'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetInstitutionExamScores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInstitutionExamScores`(
    IN pInstitutionName VARCHAR(255)
)
BEGIN
    SELECT 
        i.Institutions              AS InstitutionName,
        et.ExamTypeName             AS ExamType,
        st.ScoreTypeName            AS ScoreType,
        es.Percentile,
        es.ScoreValue
    FROM ExamScores es
    JOIN Institutions i ON es.InstitutionID = i.InstitutionID
    JOIN ExamTypes   et ON es.ExamTypeID    = et.ExamTypeID
    JOIN ScoreTypes  st ON es.ScoreTypeID   = st.ScoreTypeID
    WHERE i.Institutions = pInstitutionName
    ORDER BY
        et.ExamTypeName,
        st.ScoreTypeName,
        es.Percentile;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTopInstitutionsByScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTopInstitutionsByScore`(
    IN pExamTypeName   VARCHAR(10),
    IN pScoreTypeName  VARCHAR(45),
    IN pPercentile     ENUM('25','50','75'),
    IN pLimitN         INT
)
BEGIN
    SELECT 
        i.Institutions              AS InstitutionName,
        et.ExamTypeName             AS ExamType,
        st.ScoreTypeName            AS ScoreType,
        es.Percentile,
        es.ScoreValue
    FROM ExamScores es
    JOIN Institutions i ON es.InstitutionID = i.InstitutionID
    JOIN ExamTypes   et ON es.ExamTypeID    = et.ExamTypeID
    JOIN ScoreTypes  st ON es.ScoreTypeID   = st.ScoreTypeID
    WHERE et.ExamTypeName  = pExamTypeName
      AND st.ScoreTypeName = pScoreTypeName
      AND es.Percentile    = pPercentile
    ORDER BY es.ScoreValue DESC
    LIMIT pLimitN;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertExamScore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertExamScore`(
    IN pInstitutionName VARCHAR(255),
    IN pExamTypeName    VARCHAR(10),
    IN pScoreTypeName   VARCHAR(45),
    IN pPercentile      ENUM('25','50','75'),
    IN pScoreValue      INT
)
BEGIN
    DECLARE vInstitutionID INT;
    DECLARE vExamTypeID    TINYINT;
    DECLARE vScoreTypeID   TINYINT;

    SELECT InstitutionID INTO vInstitutionID
    FROM Institutions
    WHERE Institutions = pInstitutionName
    LIMIT 1;

    SELECT ExamTypeID INTO vExamTypeID
    FROM ExamTypes
    WHERE ExamTypeName = pExamTypeName
    LIMIT 1;

    SELECT ScoreTypeID INTO vScoreTypeID
    FROM ScoreTypes
    WHERE ScoreTypeName = pScoreTypeName
    LIMIT 1;

    INSERT INTO ExamScores (
        ExamTypeID,
        ScoreTypeID,
        InstitutionID,
        Percentile,
        ScoreValue
    )
    VALUES (
        vExamTypeID,
        vScoreTypeID,
        vInstitutionID,
        pPercentile,
        pScoreValue
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_allexamscores`
--

/*!50001 DROP VIEW IF EXISTS `vw_allexamscores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_allexamscores` AS select `es`.`ExamScoreID` AS `ExamScoreID`,`i`.`Institutions` AS `InstitutionName`,`et`.`ExamTypeName` AS `ExamType`,`st`.`ScoreTypeName` AS `ScoreType`,`es`.`Percentile` AS `Percentile`,`es`.`ScoreValue` AS `ScoreValue` from (((`examscores` `es` join `institutions` `i` on((`es`.`InstitutionID` = `i`.`InstitutionID`))) join `examtypes` `et` on((`es`.`ExamTypeID` = `et`.`ExamTypeID`))) join `scoretypes` `st` on((`es`.`ScoreTypeID` = `st`.`ScoreTypeID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_avgexamscoresbyinstitution`
--

/*!50001 DROP VIEW IF EXISTS `vw_avgexamscoresbyinstitution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_avgexamscoresbyinstitution` AS select `i`.`InstitutionID` AS `InstitutionID`,`i`.`Institutions` AS `InstitutionName`,`et`.`ExamTypeName` AS `ExamType`,`st`.`ScoreTypeName` AS `ScoreType`,`es`.`Percentile` AS `Percentile`,avg(`es`.`ScoreValue`) AS `AvgScore` from (((`examscores` `es` join `institutions` `i` on((`es`.`InstitutionID` = `i`.`InstitutionID`))) join `examtypes` `et` on((`es`.`ExamTypeID` = `et`.`ExamTypeID`))) join `scoretypes` `st` on((`es`.`ScoreTypeID` = `st`.`ScoreTypeID`))) group by `i`.`InstitutionID`,`i`.`Institutions`,`et`.`ExamTypeName`,`st`.`ScoreTypeName`,`es`.`Percentile` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01 12:21:47

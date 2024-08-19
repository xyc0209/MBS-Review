/*
 Navicat Premium Data Transfer

 Source Server         : node1
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36)
 Source Host           : 172.16.17.38:3306
 Source Schema         : papers

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36)
 File Encoding         : 65001

 Date: 19/08/2024 14:56:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accumulated
-- ----------------------------
DROP TABLE IF EXISTS `accumulated`;
CREATE TABLE `accumulated`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  `inclusion` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accumulated
-- ----------------------------
INSERT INTO `accumulated` VALUES ('\r\na visualization tool to detect refactoring opportunities in soa applications', 2017, 3);
INSERT INTO `accumulated` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022, 1);
INSERT INTO `accumulated` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019, 1);
INSERT INTO `accumulated` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019, 1);
INSERT INTO `accumulated` VALUES ('\r\nautomatic anti-pattern detection in microservice architectures based on distributed tracing', 2022, 2);
INSERT INTO `accumulated` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019, 1);
INSERT INTO `accumulated` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018, 1);
INSERT INTO `accumulated` VALUES ('\r\ntechnical debt in service-oriented software systems', 2022, 1);
INSERT INTO `accumulated` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018, 1);
INSERT INTO `accumulated` VALUES ('\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017, 4);
INSERT INTO `accumulated` VALUES ('\r\ntowards microservice smells detection', 2020, 12);
INSERT INTO `accumulated` VALUES ('\r\nusing microservice telemetry data for system dynamic analysis', 2022, 4);
INSERT INTO `accumulated` VALUES ('a comparative analysis on the detection of web service anti-patterns using various metrics', 2023, 2);
INSERT INTO `accumulated` VALUES ('a graph-based solution to deal with cyclic dependencies in microservices architecture', 2022, 2);
INSERT INTO `accumulated` VALUES ('a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020, 4);
INSERT INTO `accumulated` VALUES ('a microservice infrastructure for distributed communities of practice', 2018, 1);
INSERT INTO `accumulated` VALUES ('a microservices quality model based on microservices anti-patterns', 2022, 14);
INSERT INTO `accumulated` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021, 2);
INSERT INTO `accumulated` VALUES ('a study on the taxonomy of service antipatterns', 2015, 1);
INSERT INTO `accumulated` VALUES ('a uri parsing technique and algorithm for anti-pattern detection in restful web services', 2021, 2);
INSERT INTO `accumulated` VALUES ('a validated set of smells in model-view-controller architectures', 2016, 1);
INSERT INTO `accumulated` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023, 14);
INSERT INTO `accumulated` VALUES ('an effective web service anti-pattern prediction model using smote', 2019, 2);
INSERT INTO `accumulated` VALUES ('an efficient method for automatic antipatterns detection of rest web services', 2021, 2);
INSERT INTO `accumulated` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021, 2);
INSERT INTO `accumulated` VALUES ('an empirical analysis on the role of wsdl metrics in web service anti-pattern prediction', 2020, 2);
INSERT INTO `accumulated` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018, 2);
INSERT INTO `accumulated` VALUES ('an empirical framework for web service anti-pattern prediction using machine learning techniques', 2019, 2);
INSERT INTO `accumulated` VALUES ('an empirical study of security practices for microservices systems', 2022, 1);
INSERT INTO `accumulated` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021, 4);
INSERT INTO `accumulated` VALUES ('an empirical study to investigate the effectiveness of different variants of smote for improving web service anti-patterns prediction', 2021, 2);
INSERT INTO `accumulated` VALUES ('analysis of microservice evolution using cohesion metrics', 2022, 4);
INSERT INTO `accumulated` VALUES ('anti-patterns in search-based program repair', 2016, 1);
INSERT INTO `accumulated` VALUES ('architectural smells detected by tools：a catalogue proposal', 2019, 12);
INSERT INTO `accumulated` VALUES ('architecture patterns of web services applications', 2021, 1);
INSERT INTO `accumulated` VALUES ('are architectural smells independent from code smells', 2019, 1);
INSERT INTO `accumulated` VALUES ('are restful apis well-designed? detection of their linguistic (anti)patterns', 2015, 2);
INSERT INTO `accumulated` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020, 14);
INSERT INTO `accumulated` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020, 12);
INSERT INTO `accumulated` VALUES ('automated microservice code-smell detection', 2021, 12);
INSERT INTO `accumulated` VALUES ('automated scalability assessment in devops environments', 2020, 4);
INSERT INTO `accumulated` VALUES ('benchmarking microservice performance: a pattern-based approach', 2020, 4);
INSERT INTO `accumulated` VALUES ('collection and identification of microservices patterns and antipatterns', 2019, 12);
INSERT INTO `accumulated` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017, 1);
INSERT INTO `accumulated` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021, 2);
INSERT INTO `accumulated` VALUES ('detecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023, 23);
INSERT INTO `accumulated` VALUES ('detecting latency degradation patterns in service-based systems', 2020, 2);
INSERT INTO `accumulated` VALUES ('detection of web service anti-patterns using machine learning framework', 2020, 2);
INSERT INTO `accumulated` VALUES ('detection of web service anti-patterns using neural networks with multiple layers', 2020, 2);
INSERT INTO `accumulated` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022, 12);
INSERT INTO `accumulated` VALUES ('early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020, 4);
INSERT INTO `accumulated` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017, 1);
INSERT INTO `accumulated` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021, 1);
INSERT INTO `accumulated` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020, 13);
INSERT INTO `accumulated` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017, 1);
INSERT INTO `accumulated` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017, 1);
INSERT INTO `accumulated` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015, 12);
INSERT INTO `accumulated` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023, 1);
INSERT INTO `accumulated` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017, 1);
INSERT INTO `accumulated` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022, 13);
INSERT INTO `accumulated` VALUES ('implementation patterns for microservices architectures', 2016, 1);
INSERT INTO `accumulated` VALUES ('improving agility by managing shared libraries in microservices', 2020, 3);
INSERT INTO `accumulated` VALUES ('improving detection of web service antipatterns using crowdsourcing', 2021, 2);
INSERT INTO `accumulated` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015, 1);
INSERT INTO `accumulated` VALUES ('interface quality patterns: communicating and improving the quality of microservices apis', 2018, 4);
INSERT INTO `accumulated` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014, 1);
INSERT INTO `accumulated` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018, 1);
INSERT INTO `accumulated` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023, 12);
INSERT INTO `accumulated` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023, 123);
INSERT INTO `accumulated` VALUES ('leveraging the layered architecture for microservice recovery', 2022, 3);
INSERT INTO `accumulated` VALUES ('live versioning of web applications through refactoring', 2018, 3);
INSERT INTO `accumulated` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023, 2);
INSERT INTO `accumulated` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020, 14);
INSERT INTO `accumulated` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018, 1);
INSERT INTO `accumulated` VALUES ('microservices anti-patterns: a taxonomy', 2020, 1);
INSERT INTO `accumulated` VALUES ('microservices backlog - a model of granularity specification and microservice identification', 2020, 4);
INSERT INTO `accumulated` VALUES ('microservices migration patterns', 2018, 1);
INSERT INTO `accumulated` VALUES ('microservices smell detection through dynamic analysis', 2022, 12);
INSERT INTO `accumulated` VALUES ('migrating towards microservices: migration and architecture smells', 2018, 1);
INSERT INTO `accumulated` VALUES ('mining microservice design patterns', 2022, 1);
INSERT INTO `accumulated` VALUES ('on the definition of microservice bad smells', 2018, 1);
INSERT INTO `accumulated` VALUES ('on the study of microservices antipatterns:a catalog proposal', 2020, 1);
INSERT INTO `accumulated` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017, 124);
INSERT INTO `accumulated` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020, 2);
INSERT INTO `accumulated` VALUES ('privacy smells: detecting privacy problems in cloud architectures', 2020, 2);
INSERT INTO `accumulated` VALUES ('quality assurance for microservice architectures', 2021, 4);
INSERT INTO `accumulated` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016, 4);
INSERT INTO `accumulated` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021, 1);
INSERT INTO `accumulated` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014, 13);
INSERT INTO `accumulated` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022, 1);
INSERT INTO `accumulated` VALUES ('role of wsdl metrics in the detection of web service anti-patterns', 2022, 2);
INSERT INTO `accumulated` VALUES ('search-based web service antipatterns detection', 2017, 2);
INSERT INTO `accumulated` VALUES ('semi-automated smell resolution in kubernetes-deployed microservices', 2023, 2);
INSERT INTO `accumulated` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014, 1);
INSERT INTO `accumulated` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022, 3);
INSERT INTO `accumulated` VALUES ('specification and detection of business process antipatterns', 2015, 12);
INSERT INTO `accumulated` VALUES ('specification and detection of soa antipatterns in web services', 2014, 12);
INSERT INTO `accumulated` VALUES ('technical debt in service-oriented software systems', 2022, 1);
INSERT INTO `accumulated` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020, 1);
INSERT INTO `accumulated` VALUES ('tool support for architectural pattern selection and application in cloud-centric service-oriented ides', 2023, 3);
INSERT INTO `accumulated` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019, 1);
INSERT INTO `accumulated` VALUES ('towards a metrics-based software quality rating for a microservice architecture', 2019, 4);
INSERT INTO `accumulated` VALUES ('towards an architectural debt Index', 2018, 1);
INSERT INTO `accumulated` VALUES ('towards resolving security smells in microservice-based applications', 2020, 3);
INSERT INTO `accumulated` VALUES ('towards resolving security smells in microservices, model-driven', 2023, 3);
INSERT INTO `accumulated` VALUES ('using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021, 2);
INSERT INTO `accumulated` VALUES ('web service anti-patterns detection using cnn with varying sequence padding size', 2023, 2);
INSERT INTO `accumulated` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022, 2);
INSERT INTO `accumulated` VALUES ('web service api anti-patterns detection as a multi-label learning problem', 2020, 2);

-- ----------------------------
-- Table structure for acm
-- ----------------------------
DROP TABLE IF EXISTS `acm`;
CREATE TABLE `acm`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of acm
-- ----------------------------
INSERT INTO `acm` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019);
INSERT INTO `acm` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018);
INSERT INTO `acm` VALUES ('\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017);
INSERT INTO `acm` VALUES ('a comparative analysis on the detection of web service anti-patterns using various metrics', 2023);
INSERT INTO `acm` VALUES ('a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020);
INSERT INTO `acm` VALUES ('a pattern for wsdl-based testing of web service compositions', 2015);
INSERT INTO `acm` VALUES ('a pattern language for scalable microservices-based systems', 2018);
INSERT INTO `acm` VALUES ('a pattern language for service-based platform integration and adaptation', 2012);
INSERT INTO `acm` VALUES ('a pattern-driven security advisor for service-oriented architectures', 2009);
INSERT INTO `acm` VALUES ('a service configuration and composition design pattern for autonomic computing systems using service oriented architecture', 2012);
INSERT INTO `acm` VALUES ('an empirical study to investigate the effectiveness of different variants of smote for improving web service anti-patterns prediction', 2021);
INSERT INTO `acm` VALUES ('analysis of microservice evolution using cohesion metrics', 2022);
INSERT INTO `acm` VALUES ('anti-patterns in search-based program repair', 2016);
INSERT INTO `acm` VALUES ('architecture patterns of web services applications', 2021);
INSERT INTO `acm` VALUES ('are we speaking the industry language? the practice and literature of modernizing legacy systems with microservices', 2021);
INSERT INTO `acm` VALUES ('automatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `acm` VALUES ('benchmarking microservice performance: a pattern-based approach', 2020);
INSERT INTO `acm` VALUES ('cloudmtd: using real options to manage technical debt in cloud-based service selection', 2013);
INSERT INTO `acm` VALUES ('designed and delivered today, eroded tomorrow?: towards an open and lean architecting framework balancing agility and sustainability', 2016);
INSERT INTO `acm` VALUES ('detecting latency degradation patterns in service-based systems', 2020);
INSERT INTO `acm` VALUES ('execution patterns for visualizing web services', 2006);
INSERT INTO `acm` VALUES ('Exploration of academic and industrial evidence about architectural tactics and patterns in microservices', 2018);
INSERT INTO `acm` VALUES ('fifth international workshop on soa & web services best practices', 2007);
INSERT INTO `acm` VALUES ('from the decorator pattern to circuit breakers in microservices', 2018);
INSERT INTO `acm` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017);
INSERT INTO `acm` VALUES ('how can we cope with the impact of microservice architecture smells?', 2022);
INSERT INTO `acm` VALUES ('implementation patterns for microservices architectures', 2016);
INSERT INTO `acm` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015);
INSERT INTO `acm` VALUES ('interaction patterns based checkpointing of choreographed web services', 2014);
INSERT INTO `acm` VALUES ('interface quality patterns: communicating and improving the quality of microservices apis', 2018);
INSERT INTO `acm` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018);
INSERT INTO `acm` VALUES ('limiting technical debt with maintainability assurance: an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `acm` VALUES ('managing simulation workflow patterns using dynamic service-oriented compositions', 2010);
INSERT INTO `acm` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018);
INSERT INTO `acm` VALUES ('mining microservice design patterns', 2022);
INSERT INTO `acm` VALUES ('mirrortaint: practical non-intrusive dynamic taint tracking for jvm-based microservice systems', 2023);
INSERT INTO `acm` VALUES ('model driven distribution pattern design for dynamic web service compositions', 2006);
INSERT INTO `acm` VALUES ('modeling process-driven and service-oriented architectures using patterns and pattern primitives', 2007);
INSERT INTO `acm` VALUES ('monitoring performance-related qos properties in service-oriented systems: a pattern-based architectural decision model', 2011);
INSERT INTO `acm` VALUES ('mono2micro: a practical and effective tool for decomposing monolithic java applications to microservices', 2021);
INSERT INTO `acm` VALUES ('multi-criteria web services selection: balancing the quality of design and quality of service', 2022);
INSERT INTO `acm` VALUES ('on the nature of issues in five open source microservices systems: an empirical study', 2021);
INSERT INTO `acm` VALUES ('pattern based adaptation for service oriented applications', 2012);
INSERT INTO `acm` VALUES ('pattern-based design of a service-oriented middleware for remote object federations', 2008);
INSERT INTO `acm` VALUES ('patterns for business object model integration in process-driven and service-oriented architectures', 2006);
INSERT INTO `acm` VALUES ('patterns for measuring performance-related qos properties in service-oriented systems', 2010);
INSERT INTO `acm` VALUES ('patterns for service-oriented information exchange requirements', 2006);
INSERT INTO `acm` VALUES ('practical efficient microservice autoscaling', 2023);
INSERT INTO `acm` VALUES ('practical efficient microservice autoscaling with qos assurance', 2022);
INSERT INTO `acm` VALUES ('practical service placement approach for microservices architecture', 2017);
INSERT INTO `acm` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020);
INSERT INTO `acm` VALUES ('restful web services: principles, patterns, emerging technologies', 2010);
INSERT INTO `acm` VALUES ('role of wsdl metrics in the detection of web service anti-patterns', 2022);
INSERT INTO `acm` VALUES ('sage: practical and scalable ml-driven performance debugging in microservices', 2021);
INSERT INTO `acm` VALUES ('separation of concerns in service-oriented applications based on pervasive design patterns', 2010);
INSERT INTO `acm` VALUES ('sixth international workshop on soa & web services: best practices', 2008);
INSERT INTO `acm` VALUES ('software adaptation patterns for service-oriented architectures', 2010);
INSERT INTO `acm` VALUES ('stimulating interest in practical e-commerce programming using barcodes, amazon web services, java, and xml', 2007);
INSERT INTO `acm` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020);
INSERT INTO `acm` VALUES ('tool support for architectural pattern selection and application in cloud-centric service-oriented ides', 2023);
INSERT INTO `acm` VALUES ('towards microservice smells detectiontowards a practical maintainability quality model for service-and microservice-based systems', 2020);
INSERT INTO `acm` VALUES ('transactional patterns for reliable web services compositions', 2006);

-- ----------------------------
-- Table structure for catelog
-- ----------------------------
DROP TABLE IF EXISTS `catelog`;
CREATE TABLE `catelog`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  `inclusion` int NULL DEFAULT NULL,
  `full read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `snowball` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `from` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catelog
-- ----------------------------
INSERT INTO `catelog` VALUES (1, '\r\na validated set of smells in model-view-controller architectures', 2016, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (2, '\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (3, 'a study on the taxonomy of service antipatterns', 2015, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (4, 'architectural patterns for microservices_a systematic mapping study', 2018, 1, 'Y', 'N', 23);
INSERT INTO `catelog` VALUES (5, 'architectural smells detected by tools_a catalogue proposal', 2019, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (6, 'architectural technical debt in microservices: a case study in a large company', 2019, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (7, 'architecture patterns of web services applications', 2021, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (9, 'catalog and detection techniques of microservice anti-patterns and bad smells: a tertiary study', 2023, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (10, 'decor_a method for the specification and detection of code and design smells', 2009, 1, 'Y', 'N', 23);
INSERT INTO `catelog` VALUES (11, 'design principles, architectural smells and refactorings for microservices: a multivocal review', 2019, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (12, 'exploration of academic and industrial evidence about architectural tactics and patterns in microservices ', 2018, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (13, 'how can we cope with the impact of microservice architecture smells?', 2022, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (14, 'how developers perceive smells in source code_a replicated study', 2017, 1, 'T', 'N', 23);
INSERT INTO `catelog` VALUES (15, 'identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (16, 'implementation patterns for microservices architectures', 2016, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (17, 'industry practices and challenges for the evolvability assurance of microservices an interview study and systematic grey literature review', 2021, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (18, 'microservice patterns for the life cycle of industrial edge software', 2018, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (19, 'microservices anti-patterns: a taxonomy', 2020, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (20, 'microservices security: bad vs. good practices', 2022, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (21, 'migrating towards microservices: migration and architecture smells', 2018, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (22, 'mining microservice design patterns', 2022, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (23, 'on the definition of microservice bad smells', 2018, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (24, 'revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (25, 'should microservice security smells stay or be refactored? towards a trade-off analysis', 2022, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (26, 'smells and refactorings for microservices security: a multivocal literature review', 2022, 13, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (27, 'technical debt in service-oriented software systems', 2022, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (28, 'towards a collaborative repository for the documentation of service-based antipatterns and bad smells', 2019, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (29, 'towards an interdisciplinary technical debt interaction and visualization tool', 2023, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (30, 'towards an architectural debt Index', 2018, 1, 'Y', 'N', 5);
INSERT INTO `catelog` VALUES (31, 'microservices migration patterns', 2018, 1, 'Y', 'N', 6);
INSERT INTO `catelog` VALUES (32, 'the database-is-the-service pattern\r\nfor microservice architectures', 2016, 1, 'Y', 'N', 12);
INSERT INTO `catelog` VALUES (33, 'hotspot patterns: the formal definition and automatic detection of architecture smells', 2015, 1, 'Y', 'N', 13);
INSERT INTO `catelog` VALUES (34, 'on the study of microservices antipatterns:a catalog proposal', 2018, 1, 'Y', 'N', 13);
INSERT INTO `catelog` VALUES (35, 'are architectural smells independent from code smells', 2019, 1, 'Y', 'N', 19);
INSERT INTO `catelog` VALUES (36, 'Microservice Patterns and Best Practices', 2018, 1, 'Y', 'Y', NULL);
INSERT INTO `catelog` VALUES (37, 'Microservices Best Practices for Java', 2017, 1, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (38, 'Spring Microservices in Action', 2017, 1, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (39, 'Microservices Security in Action', 2020, 1, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (40, 'Specification and detection of SOA antipatterns in web services', 2014, 12, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (41, 'UniDoSA: The unified specification\r\nand detection of service antipatterns', 2019, 12, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (42, 'Investigating the Change-proneness of\r\nService Patterns and Antipatterns', 2014, 1, NULL, NULL, NULL);
INSERT INTO `catelog` VALUES (43, 'refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for dblp
-- ----------------------------
DROP TABLE IF EXISTS `dblp`;
CREATE TABLE `dblp`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dblp
-- ----------------------------
INSERT INTO `dblp` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023);
INSERT INTO `dblp` VALUES ('detecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023);
INSERT INTO `dblp` VALUES ('semi-automated smell resolution in kubernetes-deployed microservices', 2023);
INSERT INTO `dblp` VALUES ('towards resolving security smells in microservices, model-driven', 2023);
INSERT INTO `dblp` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023);
INSERT INTO `dblp` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022);
INSERT INTO `dblp` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022);
INSERT INTO `dblp` VALUES ('microservices smell detection through dynamic analysis', 2022);
INSERT INTO `dblp` VALUES ('how can we cope with the impact of microservice architecture smells?', 2022);
INSERT INTO `dblp` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021);
INSERT INTO `dblp` VALUES ('towards resolving security smells in microservice-based applications', 2020);
INSERT INTO `dblp` VALUES ('towards microservice smells detection', 2020);
INSERT INTO `dblp` VALUES ('on the definition of microservice bad smells', 2018);
INSERT INTO `dblp` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023);
INSERT INTO `dblp` VALUES ('automatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `dblp` VALUES ('a microservices quality model based on microservices anti-patterns', 2022);
INSERT INTO `dblp` VALUES ('microservices anti-patterns: a taxonomy', 2020);
INSERT INTO `dblp` VALUES ('collection and identification of microservices patterns and antipatterns', 2019);
INSERT INTO `dblp` VALUES ('accumulation and prioritization of architectural debt in three companies migrating to microservices', 2022);
INSERT INTO `dblp` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021);
INSERT INTO `dblp` VALUES ('architectural technical debt in microservices: a case study in a large company', 2019);
INSERT INTO `dblp` VALUES ('limiting technical debt with maintainability assurance: an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `dblp` VALUES ('microservices, continuous architecture, and technical debt interest: an empirical study', 2018);
INSERT INTO `dblp` VALUES ('large scale reuse of microservices using devops and innersource practices - a longitudinal case study', 2023);
INSERT INTO `dblp` VALUES ('technical debt in service-oriented software systems', 2022);
INSERT INTO `dblp` VALUES ('value- and debt-aware selection and composition in cloud-based service-oriented architectures using real options', 2015);
INSERT INTO `dblp` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018);

-- ----------------------------
-- Table structure for elsevier
-- ----------------------------
DROP TABLE IF EXISTS `elsevier`;
CREATE TABLE `elsevier`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of elsevier
-- ----------------------------
INSERT INTO `elsevier` VALUES ('an empirical study of security practices for microservices systems', 2022);
INSERT INTO `elsevier` VALUES ('an evaluation of evaluation: problems with performance measurement in small business loan and grant schemes', 2001);
INSERT INTO `elsevier` VALUES ('bpel process defects prediction using multi-objective evolutionary search', 2023);
INSERT INTO `elsevier` VALUES ('capital structure in the hospitality industry: the role of the asset-light and fee-oriented strategy', 2019);
INSERT INTO `elsevier` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022);
INSERT INTO `elsevier` VALUES ('determinants of soft budget constraints: how public debt affects hospital performance in austria', 2020);
INSERT INTO `elsevier` VALUES ('does government spending efficiency improve fiscal sustainability?', 2023);
INSERT INTO `elsevier` VALUES ('does migrating a monolithic system to microservices decrease the technical debt?', 2020);
INSERT INTO `elsevier` VALUES ('early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020);
INSERT INTO `elsevier` VALUES ('ecosystem services-based decision-making: a bridge from science to practice', 2022);
INSERT INTO `elsevier` VALUES ('energy for a sustainable road/rail transport system in india', 2000);
INSERT INTO `elsevier` VALUES ('erratum to “promoting service-oriented organizational citizenship behaviors in hotels: the role of high-performance human resource practices and organizational social climates”', 2012);
INSERT INTO `elsevier` VALUES ('etters: cost-justifying service-oriented practice', 1985);
INSERT INTO `elsevier` VALUES ('factors influencing hematology career choice in hematology and oncology fellows at a major academic institution', 2016);
INSERT INTO `elsevier` VALUES ('failing entrepreneurial governance: from economic crisis to fiscal crisis in the city of dongguan, china', 2015);
INSERT INTO `elsevier` VALUES ('handling missing values for mining gradual patterns from nosql graph databases', 2019);
INSERT INTO `elsevier` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017);
INSERT INTO `elsevier` VALUES ('improving web service descriptions for effective service discovery', 2010);
INSERT INTO `elsevier` VALUES ('investment and capital structure decisions with strategic debt service under asymmetric information', 2018);
INSERT INTO `elsevier` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023);
INSERT INTO `elsevier` VALUES ('odorify: a conglomerate of artificial intelligence–driven prediction engines for olfactory decoding', 2021);
INSERT INTO `elsevier` VALUES ('productivity growth and efficiency change: comparing manufacturing- and service-based firms in india', 2018);
INSERT INTO `elsevier` VALUES ('promoting service-oriented organizational citizenship behaviors in hotels: the role of high-performance human resource practices and organizational social climates', 2012);
INSERT INTO `elsevier` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014);
INSERT INTO `elsevier` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022);
INSERT INTO `elsevier` VALUES ('risk-based optimization of the debt service schedule in renewable energy project finance', 2021);
INSERT INTO `elsevier` VALUES ('role stereotypes in software designs and their evolution', 2022);
INSERT INTO `elsevier` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014);
INSERT INTO `elsevier` VALUES ('service-oriented technology and management: perspectives on research and practice for the coming decade', 2008);
INSERT INTO `elsevier` VALUES ('spotting and removing wsdl anti-pattern root causes in code-first web services using nlp techniques: a thorough validation of impact on service discoverability', 2018);
INSERT INTO `elsevier` VALUES ('stochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2020);
INSERT INTO `elsevier` VALUES ('supply chain downsizing under bankruptcy: a robust optimization approach', 2014);
INSERT INTO `elsevier` VALUES ('ten years after restructuring: degraded distribution reliability and regulatory failure in ontario', 2011);
INSERT INTO `elsevier` VALUES ('the structure of the world economy and prospects for a new international economic order', 1983);
INSERT INTO `elsevier` VALUES ('the supply behaviour of state mining enterprises: a case study of the jordanian phosphate industry', 2008);
INSERT INTO `elsevier` VALUES ('trade and integration', 1980);
INSERT INTO `elsevier` VALUES ('transitioning towards commercial upland agriculture: a comparative study in northern lao pdr', 2019);
INSERT INTO `elsevier` VALUES ('willingness to pay for public health services in rural central java, indonesia: methodological considerations when using the contingent valuation method', 2014);

-- ----------------------------
-- Table structure for evaluation_snowball
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_snowball`;
CREATE TABLE `evaluation_snowball`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  `inclusion` int NULL DEFAULT NULL,
  `source` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation_snowball
-- ----------------------------
INSERT INTO `evaluation_snowball` VALUES (1, '\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (3, 'a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (4, 'a microservices quality model based on microservices anti-patterns', 2022, 14, NULL);
INSERT INTO `evaluation_snowball` VALUES (5, 'an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023, 14, NULL);
INSERT INTO `evaluation_snowball` VALUES (6, 'an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (7, 'analysis of microservice evolution using cohesion metrics', 2022, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (8, 'assessing architecture conformance to coupling-related patterns and practices in microservices', 2020, 14, NULL);
INSERT INTO `evaluation_snowball` VALUES (9, 'A Quantitative Approach\r\nfor the Assessment of Microservice\r\nArchitecture Deployment Alternatives\r\nby Automated Performance Testing', 2018, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (10, 'benchmarking microservice performance: a pattern-based approach', 2020, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (11, 'early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (12, 'interface quality patterns: communicating and improving the quality of microservices apis', 2018, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (13, 'metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020, 14, NULL);
INSERT INTO `evaluation_snowball` VALUES (14, 'microservices backlog - a model of granularity specification and microservice identification', 2020, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (15, 'on the value of quality of service attributes for detecting bad design practices', 2017, 124, NULL);
INSERT INTO `evaluation_snowball` VALUES (16, 'quality assurance for microservice architectures', 2021, 14, NULL);
INSERT INTO `evaluation_snowball` VALUES (17, 'quantifying and evaluating the technical debt on mobile cloud-based service level', 2016, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (18, 'towards a metrics-based software quality rating for a microservice architecture', 2019, 4, NULL);
INSERT INTO `evaluation_snowball` VALUES (19, 'A Maintainability Assessment Model for Service-Oriented Systems', 2015, 4, 1);
INSERT INTO `evaluation_snowball` VALUES (20, 'Semi-automatic feed-\r\nback for improving architecture conformance to microservice patterns\r\nand practices', 2021, 4, 5);
INSERT INTO `evaluation_snowball` VALUES (21, 'Performance analysis of microservice design patterns', 2019, 4, 5);
INSERT INTO `evaluation_snowball` VALUES (22, 'Ensuring and Assessing Architecture\r\nConformance to Microservice Decomposition Patterns', 2017, 4, 8);

-- ----------------------------
-- Table structure for exclusion2
-- ----------------------------
DROP TABLE IF EXISTS `exclusion2`;
CREATE TABLE `exclusion2`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exclusion2
-- ----------------------------
INSERT INTO `exclusion2` VALUES ('\r\na visualization tool to detect refactoring opportunities in soa applications', 2017);
INSERT INTO `exclusion2` VALUES ('\r\nabstract\r\nhtml\r\n\r\nintrusion prevention in asterisk-based telephony system', 2014);
INSERT INTO `exclusion2` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022);
INSERT INTO `exclusion2` VALUES ('\r\napparatus for bundling debt of healthcare services downstream from healthcare service provider, has processor to determines bundle price for bundled set of healthcare services based on location associated with providing healthcare service', 2022);
INSERT INTO `exclusion2` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019);
INSERT INTO `exclusion2` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019);
INSERT INTO `exclusion2` VALUES ('\r\nautomatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `exclusion2` VALUES ('\r\nbpel process defects prediction using multi-objective evolutionary search', 2023);
INSERT INTO `exclusion2` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019);
INSERT INTO `exclusion2` VALUES ('\r\ndesign of a distributed collaborative chinese medicine treatment platform', 2022);
INSERT INTO `exclusion2` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `exclusion2` VALUES ('\r\nposter: reengineering legacy systems for supporting soa a case study on the brazilian\'s secretary of state for taxation', 2018);
INSERT INTO `exclusion2` VALUES ('\r\nspread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022);
INSERT INTO `exclusion2` VALUES ('\r\nstochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2021);
INSERT INTO `exclusion2` VALUES ('\r\nsystem for providing business agency service based on factoring business, has debt collection processing unit that receives cost payment information including rental amount deposited monthly by customer from payment gateway', 2023);
INSERT INTO `exclusion2` VALUES ('\r\ntechnical debt in service-oriented software systems', 2022);
INSERT INTO `exclusion2` VALUES ('\r\nthe data privacy matrix project: towards a global alignment of data privacy laws', 2016);
INSERT INTO `exclusion2` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018);
INSERT INTO `exclusion2` VALUES ('\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017);
INSERT INTO `exclusion2` VALUES ('\r\ntowards microservice smells detection', 2020);
INSERT INTO `exclusion2` VALUES ('\r\nusing microservice telemetry data for system dynamic analysis', 2022);
INSERT INTO `exclusion2` VALUES ('\r\nusing selective memoization to defeat regular expression denial of service (redos)', 2021);
INSERT INTO `exclusion2` VALUES ('\r\nvalue- and debt-aware selection and composition in cloud-based service-oriented architectures using real options', 2015);
INSERT INTO `exclusion2` VALUES ('\r\nweb service composition automation based on term rewriting system', 2015);
INSERT INTO `exclusion2` VALUES ('\r\nweb service interface decomposition using formal concept analysis', 2017);
INSERT INTO `exclusion2` VALUES ('a comparative analysis on the detection of web service anti-patterns using various metrics', 2023);
INSERT INTO `exclusion2` VALUES ('a fuzzy-based method for cloud service migration using a shark smell optimization algorithm', 2022);
INSERT INTO `exclusion2` VALUES ('a graph-based solution to deal with cyclic dependencies in microservices architecture', 2022);
INSERT INTO `exclusion2` VALUES ('a hybrid meta-heuristic approach for qos-aware cloud service composition', 2018);
INSERT INTO `exclusion2` VALUES ('a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020);
INSERT INTO `exclusion2` VALUES ('a microservice infrastructure for distributed communities of practice', 2018);
INSERT INTO `exclusion2` VALUES ('a microservices quality model based on microservices anti-patterns', 2022);
INSERT INTO `exclusion2` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021);
INSERT INTO `exclusion2` VALUES ('a pattern for wsdl-based testing of web service compositions', 2015);
INSERT INTO `exclusion2` VALUES ('a pattern language for scalable microservices-based systems', 2018);
INSERT INTO `exclusion2` VALUES ('a qualitative analysis of factors that influence vietnamese ethnic minority women to seek maternal health care', 2019);
INSERT INTO `exclusion2` VALUES ('a smart background scheduler for storage systems', 2020);
INSERT INTO `exclusion2` VALUES ('a stitch in time saves nine: early improving code-first web services discoverability', 2015);
INSERT INTO `exclusion2` VALUES ('a study on the taxonomy of service antipatterns', 2015);
INSERT INTO `exclusion2` VALUES ('a tool to improve code-first web services discoverability through text mining techniques', 2015);
INSERT INTO `exclusion2` VALUES ('a uri parsing technique and algorithm for anti-pattern detection in restful web services', 2021);
INSERT INTO `exclusion2` VALUES ('a validated set of smells in model-view-controller architectures', 2016);
INSERT INTO `exclusion2` VALUES ('an analysis of performance anti-patterns in systems stored on the brazilian public software portal', 2017);
INSERT INTO `exclusion2` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023);
INSERT INTO `exclusion2` VALUES ('an effective web service anti-pattern prediction model using smote', 2019);
INSERT INTO `exclusion2` VALUES ('an efficient method for automatic antipatterns detection of rest web services', 2021);
INSERT INTO `exclusion2` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021);
INSERT INTO `exclusion2` VALUES ('an empirical analysis on the role of wsdl metrics in web service anti-pattern prediction', 2020);
INSERT INTO `exclusion2` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018);
INSERT INTO `exclusion2` VALUES ('an empirical framework for web service anti-pattern prediction using machine learning techniques', 2019);
INSERT INTO `exclusion2` VALUES ('an empirical study of security practices for microservices systems', 2022);
INSERT INTO `exclusion2` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021);
INSERT INTO `exclusion2` VALUES ('an empirical study to investigate the effectiveness of different variants of smote for improving web service anti-patterns prediction', 2021);
INSERT INTO `exclusion2` VALUES ('analysis of microservice evolution using cohesion metrics', 2022);
INSERT INTO `exclusion2` VALUES ('anti-patterns in search-based program repair', 2016);
INSERT INTO `exclusion2` VALUES ('architectural design of cloud applications: a performance-aware cost minimization approach', 2022);
INSERT INTO `exclusion2` VALUES ('architectural smells detected by tools：a catalogue proposal', 2019);
INSERT INTO `exclusion2` VALUES ('architecture patterns of web services applications', 2021);
INSERT INTO `exclusion2` VALUES ('are restful apis well-designed? detection of their linguistic (anti)patterns', 2015);
INSERT INTO `exclusion2` VALUES ('are we speaking the industry language? the practice and literature of modernizing legacy systems with microservices', 2021);
INSERT INTO `exclusion2` VALUES ('aspect-oriented modeling of technology heterogeneity in microservice architecture', 2019);
INSERT INTO `exclusion2` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020);
INSERT INTO `exclusion2` VALUES ('assessment of society\'s perceptions on cultural ecosystem services in a cultural landscape in nanchang, china', 2023);
INSERT INTO `exclusion2` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020);
INSERT INTO `exclusion2` VALUES ('automated microservice code-smell detection', 2021);
INSERT INTO `exclusion2` VALUES ('automated scalability assessment in devops environments', 2020);
INSERT INTO `exclusion2` VALUES ('benchmarking microservice performance: a pattern-based approach', 2020);
INSERT INTO `exclusion2` VALUES ('best practices and lessons learned in microservices', 2018);
INSERT INTO `exclusion2` VALUES ('capital structure in the hospitality industry: the role of the asset-light and fee-oriented strategy', 2019);
INSERT INTO `exclusion2` VALUES ('child undernutrition in sudan: the social and economic impact and future perspectives', 2021);
INSERT INTO `exclusion2` VALUES ('cloud service based intelligent video storage device management system, has data collection and transmission controlling center connected with device controller through temperature and humidity sensor, smell sensor and pressure sensor', 2017);
INSERT INTO `exclusion2` VALUES ('collection and identification of microservices patterns and antipatterns', 2019);
INSERT INTO `exclusion2` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017);
INSERT INTO `exclusion2` VALUES ('datesso: self-adapting service composition with debt-aware two levels constraint reasoning', 2020);
INSERT INTO `exclusion2` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021);
INSERT INTO `exclusion2` VALUES ('debt of family medicine residents continues to grow', 2021);
INSERT INTO `exclusion2` VALUES ('debtcom: technical debt-aware service recomposition in saas cloud', 2023);
INSERT INTO `exclusion2` VALUES ('designed and delivered today, eroded tomorrow?: towards an open and lean architecting framework balancing agility and sustainability', 2016);
INSERT INTO `exclusion2` VALUES ('detecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023);
INSERT INTO `exclusion2` VALUES ('detecting latency degradation patterns in service-based systems', 2020);
INSERT INTO `exclusion2` VALUES ('detection of web service anti-patterns using machine learning framework', 2020);
INSERT INTO `exclusion2` VALUES ('detection of web service anti-patterns using neural networks with multiple layers', 2020);
INSERT INTO `exclusion2` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022);
INSERT INTO `exclusion2` VALUES ('determinants of soft budget constraints: how public debt affects hospital performance in austria', 2020);
INSERT INTO `exclusion2` VALUES ('does government spending efficiency improve fiscal sustainability?', 2023);
INSERT INTO `exclusion2` VALUES ('early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020);
INSERT INTO `exclusion2` VALUES ('ecosystem services-based decision-making: a bridge from science to practice', 2022);
INSERT INTO `exclusion2` VALUES ('embracing microservices design: a practical guide to revealing anti-patterns and architectural pitfalls to avoid microservices fallacies', 2021);
INSERT INTO `exclusion2` VALUES ('emotion and worry measurement comparison of united kingdom and thailand during the first covid-19 lockdown situation', 2021);
INSERT INTO `exclusion2` VALUES ('enhanced iot-aware online shopping system', 2016);
INSERT INTO `exclusion2` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017);
INSERT INTO `exclusion2` VALUES ('evolutionary computing assisted heterogenous ensemble model for web-of-service software reusability prediction', 2019);
INSERT INTO `exclusion2` VALUES ('exploration of academic and industrial evidence about architectural tactics and patterns in microservices', 2018);
INSERT INTO `exclusion2` VALUES ('extending the semat kernel for thepracticeof designing and implementingmicroservice-based applications using domain driven design', 2020);
INSERT INTO `exclusion2` VALUES ('factors influencing hematology career choice in hematology and oncology fellows at a major academic institution', 2016);
INSERT INTO `exclusion2` VALUES ('failing entrepreneurial governance: from economic crisis to fiscal crisis in the city of dongguan, china', 2015);
INSERT INTO `exclusion2` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021);
INSERT INTO `exclusion2` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020);
INSERT INTO `exclusion2` VALUES ('from the decorator pattern to circuit breakers in microservices', 2018);
INSERT INTO `exclusion2` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017);
INSERT INTO `exclusion2` VALUES ('handling missing values for mining gradual patterns from nosql graph databases', 2019);
INSERT INTO `exclusion2` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017);
INSERT INTO `exclusion2` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015);
INSERT INTO `exclusion2` VALUES ('identifying and estimating technical debt for service composition in saas cloud', 2019);
INSERT INTO `exclusion2` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023);
INSERT INTO `exclusion2` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017);
INSERT INTO `exclusion2` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022);
INSERT INTO `exclusion2` VALUES ('implementation patterns for microservices architectures', 2016);
INSERT INTO `exclusion2` VALUES ('improving agility by managing shared libraries in microservices', 2020);
INSERT INTO `exclusion2` VALUES ('improving detection of web service antipatterns using crowdsourcing', 2021);
INSERT INTO `exclusion2` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015);
INSERT INTO `exclusion2` VALUES ('interaction patterns based checkpointing of choreographed web services', 2014);
INSERT INTO `exclusion2` VALUES ('interface quality patterns: communicating and improving the quality of microservices apis', 2018);
INSERT INTO `exclusion2` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014);
INSERT INTO `exclusion2` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018);
INSERT INTO `exclusion2` VALUES ('investment and capital structure decisions with strategic debt service under asymmetric information', 2018);
INSERT INTO `exclusion2` VALUES ('kobold: web usability as a service', 2017);
INSERT INTO `exclusion2` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023);
INSERT INTO `exclusion2` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023);
INSERT INTO `exclusion2` VALUES ('large scale reuse of microservices using devops and innersource practices - a longitudinal case study', 2023);
INSERT INTO `exclusion2` VALUES ('lattice-based public key searchable encryption from experimental perspectives', 2020);
INSERT INTO `exclusion2` VALUES ('leveraging the layered architecture for microservice recovery', 2022);
INSERT INTO `exclusion2` VALUES ('live versioning of web applications through refactoring', 2018);
INSERT INTO `exclusion2` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023);
INSERT INTO `exclusion2` VALUES ('managing architectural technical debt in microservices', 2022);
INSERT INTO `exclusion2` VALUES ('methodology to transform a monolithic software into a microservice architecture', 2017);
INSERT INTO `exclusion2` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020);
INSERT INTO `exclusion2` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018);
INSERT INTO `exclusion2` VALUES ('microservices anti-patterns: a taxonomy', 2020);
INSERT INTO `exclusion2` VALUES ('microservices backlog - a model of granularity specification and microservice identification', 2020);
INSERT INTO `exclusion2` VALUES ('microservices security: bad vs. good practices', 2022);
INSERT INTO `exclusion2` VALUES ('microservices smell detection through dynamic analysis', 2022);
INSERT INTO `exclusion2` VALUES ('microservices, continuous architecture, and technical debt interest: an empirical study', 2018);
INSERT INTO `exclusion2` VALUES ('microservicesinpractice', 2017);
INSERT INTO `exclusion2` VALUES ('migrating towards microservices: migration and architecture smells', 2018);
INSERT INTO `exclusion2` VALUES ('mining microservice design patterns', 2022);
INSERT INTO `exclusion2` VALUES ('mirrortaint: practical non-intrusive dynamic taint tracking for jvm-based microservice systems', 2023);
INSERT INTO `exclusion2` VALUES ('mono2micro: a practical and effective tool for decomposing monolithic java applications to microservices', 2021);
INSERT INTO `exclusion2` VALUES ('multi-criteria web services selection: balancing the quality of design and quality of service', 2022);
INSERT INTO `exclusion2` VALUES ('nations and nationalism celebrates international women’s day', 2022);
INSERT INTO `exclusion2` VALUES ('odorify: a conglomerate of artificial intelligence-driven prediction engines for olfactory decoding', 2021);
INSERT INTO `exclusion2` VALUES ('on the definition of microservice bad smells', 2018);
INSERT INTO `exclusion2` VALUES ('on the nature of issues in five open source microservices systems: an empirical study', 2021);
INSERT INTO `exclusion2` VALUES ('on the study of microservices antipatterns:a catalog proposal', 2020);
INSERT INTO `exclusion2` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017);
INSERT INTO `exclusion2` VALUES ('other patterns in java ee', 2014);
INSERT INTO `exclusion2` VALUES ('practical efficient microservice autoscaling with qos assurance', 2022);
INSERT INTO `exclusion2` VALUES ('practical service placement approach for microservices architecture', 2017);
INSERT INTO `exclusion2` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020);
INSERT INTO `exclusion2` VALUES ('privacy smells: detecting privacy problems in cloud architectures', 2020);
INSERT INTO `exclusion2` VALUES ('productivity growth and efficiency change: comparing manufacturing- and service-based firms in india', 2018);
INSERT INTO `exclusion2` VALUES ('quality assurance for microservice architectures', 2021);
INSERT INTO `exclusion2` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016);
INSERT INTO `exclusion2` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021);
INSERT INTO `exclusion2` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014);
INSERT INTO `exclusion2` VALUES ('relevance of moocs for training of public sector employees', 2015);
INSERT INTO `exclusion2` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022);
INSERT INTO `exclusion2` VALUES ('risk-based optimization of the debt service schedule in renewable energy project finance', 2021);
INSERT INTO `exclusion2` VALUES ('role of wsdl metrics in the detection of web service anti-patterns', 2022);
INSERT INTO `exclusion2` VALUES ('role stereotypes in software designs and their evolution', 2022);
INSERT INTO `exclusion2` VALUES ('sage: practical and scalable ml-driven performance debugging in microservices', 2021);
INSERT INTO `exclusion2` VALUES ('search-based web service antipatterns detection', 2017);
INSERT INTO `exclusion2` VALUES ('semantic-based thai recipe recommendation', 2022);
INSERT INTO `exclusion2` VALUES ('semi-automated smell resolution in kubernetes-deployed microservices', 2023);
INSERT INTO `exclusion2` VALUES ('semi-automatic feedback for improving architecture conformance tomicroservicepatterns andpractices', 2021);
INSERT INTO `exclusion2` VALUES ('serverless: from bad practices to good solutions', 2022);
INSERT INTO `exclusion2` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014);
INSERT INTO `exclusion2` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022);
INSERT INTO `exclusion2` VALUES ('sim: an automated approach to improve web service interface modularization', 2016);
INSERT INTO `exclusion2` VALUES ('sok: security of microservice applications: a practitioners’ perspective on challenges and best practices', 2022);
INSERT INTO `exclusion2` VALUES ('solid-waste management system for urban sri lanka using iot and machine learning', 2022);
INSERT INTO `exclusion2` VALUES ('specification and detection of business process antipatterns', 2015);
INSERT INTO `exclusion2` VALUES ('specification and detection of soa antipatterns in web services', 2014);
INSERT INTO `exclusion2` VALUES ('speeding up the rul- dynamic-controllability-checking algorithm for simple temporal networks with uncertainty', 2022);
INSERT INTO `exclusion2` VALUES ('spotting and removing wsdl anti-pattern root causes in code-first web services using nlp techniques: a thorough validation of impact on service discoverability', 2018);
INSERT INTO `exclusion2` VALUES ('spread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022);
INSERT INTO `exclusion2` VALUES ('stochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2020);
INSERT INTO `exclusion2` VALUES ('stock portfolio health monitoring system', 2023);
INSERT INTO `exclusion2` VALUES ('supply chain downsizing under bankruptcy: a robust optimization approach', 2014);
INSERT INTO `exclusion2` VALUES ('technical debt in service-oriented software systems', 2022);
INSERT INTO `exclusion2` VALUES ('the parallel agile process: applying parallel processing techniques to software engineering', 2019);
INSERT INTO `exclusion2` VALUES ('the role of community pharmacy in supporting people with diabetes who have a history of repeated non-attendance at healthcare appointments', 2023);
INSERT INTO `exclusion2` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020);
INSERT INTO `exclusion2` VALUES ('the μtosca toolchain: mining, analyzing, and refactoring microservice-based architectures', 2021);
INSERT INTO `exclusion2` VALUES ('tool support for architectural pattern selection and application in cloud-centric service-oriented ides', 2023);
INSERT INTO `exclusion2` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019);
INSERT INTO `exclusion2` VALUES ('toward design decisions to enable deployability: empirical study of three projects reaching for the continuous delivery holy grail', 2014);
INSERT INTO `exclusion2` VALUES ('towards a collaborative repository for the documentation of service-based antipatterns and bad smells', 2019);
INSERT INTO `exclusion2` VALUES ('towards a metrics-based software quality rating for a microservice architecture', 2019);
INSERT INTO `exclusion2` VALUES ('towards an interdisciplinary technical debt interaction and visualization tool', 2023);
INSERT INTO `exclusion2` VALUES ('towards microservice smells detectiontowards a practical maintainability quality model for service-and microservice-based systems', 2020);
INSERT INTO `exclusion2` VALUES ('towards resolving security smells in microservice-based applications', 2020);
INSERT INTO `exclusion2` VALUES ('towards resolving security smells in microservices, model-driven', 2023);
INSERT INTO `exclusion2` VALUES ('transitioning towards commercial upland agriculture: a comparative study in northern lao pdr', 2019);
INSERT INTO `exclusion2` VALUES ('uis-hunter: detecting ui design smells in android apps', 2021);
INSERT INTO `exclusion2` VALUES ('unidosa: the unified specification and detection of service antipatterns', 2018);
INSERT INTO `exclusion2` VALUES ('using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021);
INSERT INTO `exclusion2` VALUES ('visualization beyond the desktop--the next big thing', 2014);
INSERT INTO `exclusion2` VALUES ('web service anti-patterns detection using cnn with varying sequence padding size', 2023);
INSERT INTO `exclusion2` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022);
INSERT INTO `exclusion2` VALUES ('web service api anti-patterns detection as a multi-label learning problem', 2020);
INSERT INTO `exclusion2` VALUES ('willingness to pay for public health services in rural central java, indonesia: methodological considerations when using the contingent valuation method', 2014);
INSERT INTO `exclusion2` VALUES ('xml development with plug-ins as a service', 2014);

-- ----------------------------
-- Table structure for ieee
-- ----------------------------
DROP TABLE IF EXISTS `ieee`;
CREATE TABLE `ieee`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ieee
-- ----------------------------
INSERT INTO `ieee` VALUES ('\r\na transformational approach to managing data model evolution of web services', 2013);
INSERT INTO `ieee` VALUES ('\r\na validated set of smells in model-view-controller architectures', 2016);
INSERT INTO `ieee` VALUES ('\r\nabstract\r\nhtml\r\n\r\nintrusion prevention in asterisk-based telephony system', 2014);
INSERT INTO `ieee` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019);
INSERT INTO `ieee` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019);
INSERT INTO `ieee` VALUES ('\r\ndesign of a distributed collaborative chinese medicine treatment platform', 2022);
INSERT INTO `ieee` VALUES ('\r\ndetecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023);
INSERT INTO `ieee` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `ieee` VALUES ('\r\npractical soa: service modeling, enterprise service bus and governance', 2008);
INSERT INTO `ieee` VALUES ('\r\nresearch on streaming media online charging system', 2008);
INSERT INTO `ieee` VALUES ('\r\nthe data privacy matrix project: towards a global alignment of data privacy laws', 2016);
INSERT INTO `ieee` VALUES ('\r\nusing dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021);
INSERT INTO `ieee` VALUES ('\r\nusing selective memoization to defeat regular expression denial of service (redos)', 2021);
INSERT INTO `ieee` VALUES ('\r\nweb service composition automation based on term rewriting system', 2015);
INSERT INTO `ieee` VALUES ('a graph-based solution to deal with cyclic dependencies in microservices architecture', 2022);
INSERT INTO `ieee` VALUES ('a microservices quality model based on microservices anti-patterns', 2022);
INSERT INTO `ieee` VALUES ('a preliminary practice for bpel based multimedia conference web services orchestration', 2008);
INSERT INTO `ieee` VALUES ('a quantitative service accountability model', 2009);
INSERT INTO `ieee` VALUES ('a smart background scheduler for storage systems', 2020);
INSERT INTO `ieee` VALUES ('a study on the taxonomy of service antipatterns', 2015);
INSERT INTO `ieee` VALUES ('a versatile soa-based e-business platform', 2008);
INSERT INTO `ieee` VALUES ('a visualization tool to detect refactoring opportunities in soa applications', 2017);
INSERT INTO `ieee` VALUES ('accumulation and prioritization of architectural debt in three companies migrating to microservices', 2022);
INSERT INTO `ieee` VALUES ('an analysis of performance anti-patterns in systems stored on the brazilian public software portal', 2017);
INSERT INTO `ieee` VALUES ('an approach for detecting profile cloning in online social networks', 2013);
INSERT INTO `ieee` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023);
INSERT INTO `ieee` VALUES ('an effective web service anti-pattern prediction model using smote', 2019);
INSERT INTO `ieee` VALUES ('an efficient method for automatic antipatterns detection of rest web services', 2021);
INSERT INTO `ieee` VALUES ('an empirical analysis on the role of wsdl metrics in web service anti-pattern prediction', 2020);
INSERT INTO `ieee` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018);
INSERT INTO `ieee` VALUES ('an empirical framework for web service anti-pattern prediction using machine learning techniques', 2019);
INSERT INTO `ieee` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and “bad smells” of microservice systems', 2021);
INSERT INTO `ieee` VALUES ('an enhanced dropping scheme for proportional differentiated services', 2003);
INSERT INTO `ieee` VALUES ('analyzing the change-proneness of service-oriented systems from an industrial perspective', 2013);
INSERT INTO `ieee` VALUES ('appendix c:service-orientedarchitecture: example of an implementation with adp bestpractices', 2007);
INSERT INTO `ieee` VALUES ('application framework of web service based on metadata-principle and practice', 2010);
INSERT INTO `ieee` VALUES ('architectural design of cloud applications: a performance-aware cost minimization approach', 2022);
INSERT INTO `ieee` VALUES ('architectural smells detected by tools：a catalogue proposal', 2019);
INSERT INTO `ieee` VALUES ('are biometric web services a reality? a best practice analysis for telebiometric deployment in open networks', 2013);
INSERT INTO `ieee` VALUES ('artificial neural network approach to credit risk assessment', 2007);
INSERT INTO `ieee` VALUES ('aservice-orientedintegratingpracticefor data modeling', 0);
INSERT INTO `ieee` VALUES ('aspect-oriented modeling of technology heterogeneity in microservice architecture', 2019);
INSERT INTO `ieee` VALUES ('asynchronous semantics and anti-patterns for interacting web services', 2006);
INSERT INTO `ieee` VALUES ('automatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `ieee` VALUES ('best-practice patterns and tool support for configuring secure web services messaging', 2004);
INSERT INTO `ieee` VALUES ('cloudmtd: using real options to manage technical debt in cloud-based service selection', 2013);
INSERT INTO `ieee` VALUES ('configuration reasoning and ontology for web', 2007);
INSERT INTO `ieee` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017);
INSERT INTO `ieee` VALUES ('datesso: self-adapting service composition with debt-aware two levels constraint reasoning', 2020);
INSERT INTO `ieee` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021);
INSERT INTO `ieee` VALUES ('debtcom: technical debt-aware service recomposition in saas cloud', 2023);
INSERT INTO `ieee` VALUES ('developing enterprise web services and applications: opportunities and best practices for the healthcare industry', 2003);
INSERT INTO `ieee` VALUES ('economics-driven approach for managing technical debt in cloud-based architectures', 2013);
INSERT INTO `ieee` VALUES ('emotion and worry measurement comparison of united kingdom and thailand during the first covid-19 lockdown situation', 2021);
INSERT INTO `ieee` VALUES ('enhanced iot-aware online shopping system', 2016);
INSERT INTO `ieee` VALUES ('evaluating technical debt in cloud-based architectures using real options', 2013);
INSERT INTO `ieee` VALUES ('evaluation ofservice-orientedit management inpractice', 2005);
INSERT INTO `ieee` VALUES ('evolutionary computing assisted heterogenous ensemble model for web-of-service software reusability prediction', 2019);
INSERT INTO `ieee` VALUES ('extending the semat kernel for thepracticeof designing and implementingmicroservice-based applications using domain driven design', 2020);
INSERT INTO `ieee` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021);
INSERT INTO `ieee` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017);
INSERT INTO `ieee` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015);
INSERT INTO `ieee` VALUES ('identifying and estimating technical debt for service composition in saas cloud', 2019);
INSERT INTO `ieee` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023);
INSERT INTO `ieee` VALUES ('inter-enterprise integration — moving beyond data level integration', 2009);
INSERT INTO `ieee` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014);
INSERT INTO `ieee` VALUES ('kobold: web usability as a service', 2017);
INSERT INTO `ieee` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023);
INSERT INTO `ieee` VALUES ('lattice-based public key searchable encryption from experimental perspectives', 2020);
INSERT INTO `ieee` VALUES ('leveraging the layered architecture for microservice recovery', 2022);
INSERT INTO `ieee` VALUES ('linking collaborative learningpracticewith ims ld andservice-orientedtechnologies: an approach based on collaborative learning flow patterns', 2006);
INSERT INTO `ieee` VALUES ('live versioning of web applications through refactoring', 2018);
INSERT INTO `ieee` VALUES ('methodology to transform a monolithic software into a microservice architecture', 2017);
INSERT INTO `ieee` VALUES ('microservices smell detection through dynamic analysis', 2022);
INSERT INTO `ieee` VALUES ('microservicesinpractice', 2017);
INSERT INTO `ieee` VALUES ('migrating to service-oriented systems (why and how to avoid developing customized software applications from scratch)', 2013);
INSERT INTO `ieee` VALUES ('on the definition of microservice bad smells', 2018);
INSERT INTO `ieee` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017);
INSERT INTO `ieee` VALUES ('poster: reengineering legacy systems for supporting soa: a case study on the brazilian\'s secretary of state for taxation', 2018);
INSERT INTO `ieee` VALUES ('practical soa: service modeling, enterprise service bus and governance', 2008);
INSERT INTO `ieee` VALUES ('privacy smells: detecting privacy problems in cloud architectures', 2020);
INSERT INTO `ieee` VALUES ('quality assurance for microservice architectures', 2021);
INSERT INTO `ieee` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016);
INSERT INTO `ieee` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021);
INSERT INTO `ieee` VALUES ('refactoring for usability in web applications', 2011);
INSERT INTO `ieee` VALUES ('relevance of moocs for training of public sector employees', 2015);
INSERT INTO `ieee` VALUES ('semantic-based thai recipe recommendation', 2022);
INSERT INTO `ieee` VALUES ('semi-automatic feedback for improving architecture conformance tomicroservicepatterns andpractices', 2021);
INSERT INTO `ieee` VALUES ('serverless: from bad practices to good solutions', 2022);
INSERT INTO `ieee` VALUES ('service migration patterns -- decision support and bestpracticesfor the migration of existingservice-basedapplications to cloud environments', 2013);
INSERT INTO `ieee` VALUES ('service orienteddesign method andpracticefor constructing citizen-centric public services', 2006);
INSERT INTO `ieee` VALUES ('sim: an automated approach to improve web service interface modularization', 2016);
INSERT INTO `ieee` VALUES ('smarter soa', 2008);
INSERT INTO `ieee` VALUES ('solid-waste management system for urban sri lanka using iot and machine learning', 2022);
INSERT INTO `ieee` VALUES ('specification and detection of soa antipatterns', 2014);
INSERT INTO `ieee` VALUES ('stock portfolio health monitoring system', 2023);
INSERT INTO `ieee` VALUES ('taking advantage of web 2.0 and video resources for developing a social service: babelium project, the web community for foreign language speaking practice', 2010);
INSERT INTO `ieee` VALUES ('the easysoc project: a rich catalog of best practices for developing web service applications', 2010);
INSERT INTO `ieee` VALUES ('toward design decisions to enable deployability: empirical study of three projects reaching for the continuous delivery holy grail', 2014);
INSERT INTO `ieee` VALUES ('towards an interdisciplinary technical debt interaction and visualization tool', 2023);
INSERT INTO `ieee` VALUES ('towards microservice smells detection', 2020);
INSERT INTO `ieee` VALUES ('uis-hunter: detecting ui design smells in android apps', 2021);
INSERT INTO `ieee` VALUES ('unidosa: the unified specification and detection of service antipatterns\r\n\r\nunidosa: the unified specification and detection of service antipatterns\r\n\r\nunidosa: the unified specification and detection of service antipatterns', 2018);
INSERT INTO `ieee` VALUES ('using microservice telemetry data for system dynamic analysis', 2022);
INSERT INTO `ieee` VALUES ('using web-services to support collaboration practices along the supply chain', 2005);
INSERT INTO `ieee` VALUES ('visualization beyond the desktop--the next big thing', 2014);
INSERT INTO `ieee` VALUES ('web 2.0 services for identifying communities of practice through social networks', 2007);
INSERT INTO `ieee` VALUES ('web service interface decomposition using formal concept analysis', 2017);
INSERT INTO `ieee` VALUES ('web services interaction models. current practice', 2002);
INSERT INTO `ieee` VALUES ('xml development with plug-ins as a service', 2014);

-- ----------------------------
-- Table structure for inclusion
-- ----------------------------
DROP TABLE IF EXISTS `inclusion`;
CREATE TABLE `inclusion`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  `inclusion` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inclusion
-- ----------------------------
INSERT INTO `inclusion` VALUES ('\r\na visualization tool to detect refactoring opportunities in soa applications', 2017, 3);
INSERT INTO `inclusion` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022, 1);
INSERT INTO `inclusion` VALUES ('\r\napparatus for bundling debt of healthcare services downstream from healthcare service provider, has processor to determines bundle price for bundled set of healthcare services based on location associated with providing healthcare service', 2022, NULL);
INSERT INTO `inclusion` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019, 1);
INSERT INTO `inclusion` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019, 1);
INSERT INTO `inclusion` VALUES ('\r\nautomatic anti-pattern detection in microservice architectures based on distributed tracing', 2022, 2);
INSERT INTO `inclusion` VALUES ('\r\nbpel process defects prediction using multi-objective evolutionary search', 2023, NULL);
INSERT INTO `inclusion` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019, 1);
INSERT INTO `inclusion` VALUES ('\r\ndesign of a distributed collaborative chinese medicine treatment platform', 2022, NULL);
INSERT INTO `inclusion` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018, 1);
INSERT INTO `inclusion` VALUES ('\r\nposter: reengineering legacy systems for supporting soa a case study on the brazilian\'s secretary of state for taxation', 2018, NULL);
INSERT INTO `inclusion` VALUES ('\r\nspread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022, NULL);
INSERT INTO `inclusion` VALUES ('\r\nstochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2021, NULL);
INSERT INTO `inclusion` VALUES ('\r\nsystem for providing business agency service based on factoring business, has debt collection processing unit that receives cost payment information including rental amount deposited monthly by customer from payment gateway', 2023, NULL);
INSERT INTO `inclusion` VALUES ('\r\ntechnical debt in service-oriented software systems', 2022, 1);
INSERT INTO `inclusion` VALUES ('\r\nthe data privacy matrix project: towards a global alignment of data privacy laws', 2016, NULL);
INSERT INTO `inclusion` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018, 1);
INSERT INTO `inclusion` VALUES ('\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017, 4);
INSERT INTO `inclusion` VALUES ('\r\ntowards microservice smells detection', 2020, 12);
INSERT INTO `inclusion` VALUES ('\r\nusing microservice telemetry data for system dynamic analysis', 2022, 3);
INSERT INTO `inclusion` VALUES ('\r\nusing selective memoization to defeat regular expression denial of service (redos)', 2021, NULL);
INSERT INTO `inclusion` VALUES ('\r\nvalue- and debt-aware selection and composition in cloud-based service-oriented architectures using real options', 2015, NULL);
INSERT INTO `inclusion` VALUES ('\r\nweb service composition automation based on term rewriting system', 2015, NULL);
INSERT INTO `inclusion` VALUES ('\r\nweb service interface decomposition using formal concept analysis', 2017, NULL);
INSERT INTO `inclusion` VALUES ('a comparative analysis on the detection of web service anti-patterns using various metrics', 2023, 2);
INSERT INTO `inclusion` VALUES ('a fuzzy-based method for cloud service migration using a shark smell optimization algorithm', 2022, NULL);
INSERT INTO `inclusion` VALUES ('a graph-based solution to deal with cyclic dependencies in microservices architecture', 2022, 2);
INSERT INTO `inclusion` VALUES ('a hybrid meta-heuristic approach for qos-aware cloud service composition', 2018, NULL);
INSERT INTO `inclusion` VALUES ('a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020, 4);
INSERT INTO `inclusion` VALUES ('a microservice infrastructure for distributed communities of practice', 2018, 1);
INSERT INTO `inclusion` VALUES ('a microservices quality model based on microservices anti-patterns', 2022, 14);
INSERT INTO `inclusion` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021, 2);
INSERT INTO `inclusion` VALUES ('a pattern for wsdl-based testing of web service compositions', 2015, NULL);
INSERT INTO `inclusion` VALUES ('a pattern language for scalable microservices-based systems', 2018, NULL);
INSERT INTO `inclusion` VALUES ('a qualitative analysis of factors that influence vietnamese ethnic minority women to seek maternal health care', 2019, NULL);
INSERT INTO `inclusion` VALUES ('a smart background scheduler for storage systems', 2020, NULL);
INSERT INTO `inclusion` VALUES ('a stitch in time saves nine: early improving code-first web services discoverability', 2015, NULL);
INSERT INTO `inclusion` VALUES ('a study on the taxonomy of service antipatterns', 2015, 1);
INSERT INTO `inclusion` VALUES ('a tool to improve code-first web services discoverability through text mining techniques', 2015, NULL);
INSERT INTO `inclusion` VALUES ('a uri parsing technique and algorithm for anti-pattern detection in restful web services', 2021, 2);
INSERT INTO `inclusion` VALUES ('a validated set of smells in model-view-controller architectures', 2016, 1);
INSERT INTO `inclusion` VALUES ('an analysis of performance anti-patterns in systems stored on the brazilian public software portal', 2017, NULL);
INSERT INTO `inclusion` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023, 14);
INSERT INTO `inclusion` VALUES ('an effective web service anti-pattern prediction model using smote', 2019, 2);
INSERT INTO `inclusion` VALUES ('an efficient method for automatic antipatterns detection of rest web services', 2021, 2);
INSERT INTO `inclusion` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021, 2);
INSERT INTO `inclusion` VALUES ('an empirical analysis on the role of wsdl metrics in web service anti-pattern prediction', 2020, 2);
INSERT INTO `inclusion` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018, 2);
INSERT INTO `inclusion` VALUES ('an empirical framework for web service anti-pattern prediction using machine learning techniques', 2019, 2);
INSERT INTO `inclusion` VALUES ('an empirical study of security practices for microservices systems', 2022, 1);
INSERT INTO `inclusion` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021, 4);
INSERT INTO `inclusion` VALUES ('an empirical study to investigate the effectiveness of different variants of smote for improving web service anti-patterns prediction', 2021, 2);
INSERT INTO `inclusion` VALUES ('analysis of microservice evolution using cohesion metrics', 2022, 4);
INSERT INTO `inclusion` VALUES ('anti-patterns in search-based program repair', 2016, 1);
INSERT INTO `inclusion` VALUES ('architectural design of cloud applications: a performance-aware cost minimization approach', 2022, NULL);
INSERT INTO `inclusion` VALUES ('architectural smells detected by tools：a catalogue proposal', 2019, 12);
INSERT INTO `inclusion` VALUES ('architecture patterns of web services applications', 2021, 1);
INSERT INTO `inclusion` VALUES ('are restful apis well-designed? detection of their linguistic (anti)patterns', 2015, 2);
INSERT INTO `inclusion` VALUES ('are we speaking the industry language? the practice and literature of modernizing legacy systems with microservices', 2021, NULL);
INSERT INTO `inclusion` VALUES ('aspect-oriented modeling of technology heterogeneity in microservice architecture', 2019, NULL);
INSERT INTO `inclusion` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020, 14);
INSERT INTO `inclusion` VALUES ('assessment of society\'s perceptions on cultural ecosystem services in a cultural landscape in nanchang, china', 2023, NULL);
INSERT INTO `inclusion` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020, 12);
INSERT INTO `inclusion` VALUES ('automated microservice code-smell detection', 2021, 12);
INSERT INTO `inclusion` VALUES ('automated scalability assessment in devops environments', 2020, 4);
INSERT INTO `inclusion` VALUES ('benchmarking microservice performance: a pattern-based approach', 2020, 4);
INSERT INTO `inclusion` VALUES ('capital structure in the hospitality industry: the role of the asset-light and fee-oriented strategy', 2019, NULL);
INSERT INTO `inclusion` VALUES ('child undernutrition in sudan: the social and economic impact and future perspectives', 2021, NULL);
INSERT INTO `inclusion` VALUES ('cloud service based intelligent video storage device management system, has data collection and transmission controlling center connected with device controller through temperature and humidity sensor, smell sensor and pressure sensor', 2017, NULL);
INSERT INTO `inclusion` VALUES ('collection and identification of microservices patterns and antipatterns', 2019, 12);
INSERT INTO `inclusion` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017, 1);
INSERT INTO `inclusion` VALUES ('datesso: self-adapting service composition with debt-aware two levels constraint reasoning', 2020, NULL);
INSERT INTO `inclusion` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021, 2);
INSERT INTO `inclusion` VALUES ('debt of family medicine residents continues to grow', 2021, NULL);
INSERT INTO `inclusion` VALUES ('debtcom: technical debt-aware service recomposition in saas cloud', 2023, NULL);
INSERT INTO `inclusion` VALUES ('designed and delivered today, eroded tomorrow?: towards an open and lean architecting framework balancing agility and sustainability', 2016, NULL);
INSERT INTO `inclusion` VALUES ('detecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023, 23);
INSERT INTO `inclusion` VALUES ('detecting latency degradation patterns in service-based systems', 2020, 2);
INSERT INTO `inclusion` VALUES ('detection of web service anti-patterns using machine learning framework', 2020, 2);
INSERT INTO `inclusion` VALUES ('detection of web service anti-patterns using neural networks with multiple layers', 2020, 2);
INSERT INTO `inclusion` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022, 12);
INSERT INTO `inclusion` VALUES ('determinants of soft budget constraints: how public debt affects hospital performance in austria', 2020, NULL);
INSERT INTO `inclusion` VALUES ('does government spending efficiency improve fiscal sustainability?', 2023, NULL);
INSERT INTO `inclusion` VALUES ('early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020, 4);
INSERT INTO `inclusion` VALUES ('ecosystem services-based decision-making: a bridge from science to practice', 2022, NULL);
INSERT INTO `inclusion` VALUES ('emotion and worry measurement comparison of united kingdom and thailand during the first covid-19 lockdown situation', 2021, NULL);
INSERT INTO `inclusion` VALUES ('enhanced iot-aware online shopping system', 2016, NULL);
INSERT INTO `inclusion` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017, 1);
INSERT INTO `inclusion` VALUES ('evolutionary computing assisted heterogenous ensemble model for web-of-service software reusability prediction', 2019, NULL);
INSERT INTO `inclusion` VALUES ('Exploration of academic and industrial evidence about architectural tactics and patterns in microservices', 2018, NULL);
INSERT INTO `inclusion` VALUES ('extending the semat kernel for thepracticeof designing and implementingmicroservice-based applications using domain driven design', 2020, NULL);
INSERT INTO `inclusion` VALUES ('factors influencing hematology career choice in hematology and oncology fellows at a major academic institution', 2016, NULL);
INSERT INTO `inclusion` VALUES ('failing entrepreneurial governance: from economic crisis to fiscal crisis in the city of dongguan, china', 2015, NULL);
INSERT INTO `inclusion` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021, 1);
INSERT INTO `inclusion` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020, 13);
INSERT INTO `inclusion` VALUES ('from the decorator pattern to circuit breakers in microservices', 2018, NULL);
INSERT INTO `inclusion` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017, 1);
INSERT INTO `inclusion` VALUES ('handling missing values for mining gradual patterns from nosql graph databases', 2019, NULL);
INSERT INTO `inclusion` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017, 1);
INSERT INTO `inclusion` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015, 12);
INSERT INTO `inclusion` VALUES ('identifying and estimating technical debt for service composition in saas cloud', 2019, NULL);
INSERT INTO `inclusion` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023, 1);
INSERT INTO `inclusion` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017, 1);
INSERT INTO `inclusion` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022, 13);
INSERT INTO `inclusion` VALUES ('implementation patterns for microservices architectures', 2016, 1);
INSERT INTO `inclusion` VALUES ('improving agility by managing shared libraries in microservices', 2020, 3);
INSERT INTO `inclusion` VALUES ('improving detection of web service antipatterns using crowdsourcing', 2021, 2);
INSERT INTO `inclusion` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015, 1);
INSERT INTO `inclusion` VALUES ('interaction patterns based checkpointing of choreographed web services', 2014, NULL);
INSERT INTO `inclusion` VALUES ('interface quality patterns: communicating and improving the quality of microservices apis', 2018, 4);
INSERT INTO `inclusion` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014, 1);
INSERT INTO `inclusion` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018, 1);
INSERT INTO `inclusion` VALUES ('investment and capital structure decisions with strategic debt service under asymmetric information', 2018, NULL);
INSERT INTO `inclusion` VALUES ('kobold: web usability as a service', 2017, NULL);
INSERT INTO `inclusion` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023, 12);
INSERT INTO `inclusion` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023, 123);
INSERT INTO `inclusion` VALUES ('lattice-based public key searchable encryption from experimental perspectives', 2020, NULL);
INSERT INTO `inclusion` VALUES ('leveraging the layered architecture for microservice recovery', 2022, 3);
INSERT INTO `inclusion` VALUES ('live versioning of web applications through refactoring', 2018, 3);
INSERT INTO `inclusion` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023, 2);
INSERT INTO `inclusion` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020, 14);
INSERT INTO `inclusion` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018, 1);
INSERT INTO `inclusion` VALUES ('microservices anti-patterns: a taxonomy', 2020, 1);
INSERT INTO `inclusion` VALUES ('microservices backlog - a model of granularity specification and microservice identification', 2020, 4);
INSERT INTO `inclusion` VALUES ('Microservices migration patterns', 2018, 1);
INSERT INTO `inclusion` VALUES ('microservices smell detection through dynamic analysis', 2022, 12);
INSERT INTO `inclusion` VALUES ('mining microservice design patterns', 2022, 1);
INSERT INTO `inclusion` VALUES ('mirrortaint: practical non-intrusive dynamic taint tracking for jvm-based microservice systems', 2023, NULL);
INSERT INTO `inclusion` VALUES ('mono2micro: a practical and effective tool for decomposing monolithic java applications to microservices', 2021, NULL);
INSERT INTO `inclusion` VALUES ('multi-criteria web services selection: balancing the quality of design and quality of service', 2022, NULL);
INSERT INTO `inclusion` VALUES ('nations and nationalism celebrates international women’s day', 2022, NULL);
INSERT INTO `inclusion` VALUES ('odorify: a conglomerate of artificial intelligence-driven prediction engines for olfactory decoding', 2021, NULL);
INSERT INTO `inclusion` VALUES ('on the definition of microservice bad smells', 2018, 1);
INSERT INTO `inclusion` VALUES ('on the nature of issues in five open source microservices systems: an empirical study', 2021, NULL);
INSERT INTO `inclusion` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017, 124);
INSERT INTO `inclusion` VALUES ('practical efficient microservice autoscaling with qos assurance', 2022, NULL);
INSERT INTO `inclusion` VALUES ('practical service placement approach for microservices architecture', 2017, NULL);
INSERT INTO `inclusion` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020, 2);
INSERT INTO `inclusion` VALUES ('privacy smells: detecting privacy problems in cloud architectures', 2020, 2);
INSERT INTO `inclusion` VALUES ('productivity growth and efficiency change: comparing manufacturing- and service-based firms in india', 2018, NULL);
INSERT INTO `inclusion` VALUES ('quality assurance for microservice architectures', 2021, 14);
INSERT INTO `inclusion` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016, 4);
INSERT INTO `inclusion` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021, 1);
INSERT INTO `inclusion` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014, 13);
INSERT INTO `inclusion` VALUES ('relevance of moocs for training of public sector employees', 2015, NULL);
INSERT INTO `inclusion` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022, 1);
INSERT INTO `inclusion` VALUES ('risk-based optimization of the debt service schedule in renewable energy project finance', 2021, NULL);
INSERT INTO `inclusion` VALUES ('role of wsdl metrics in the detection of web service anti-patterns', 2022, 2);
INSERT INTO `inclusion` VALUES ('role stereotypes in software designs and their evolution', 2022, NULL);
INSERT INTO `inclusion` VALUES ('sage: practical and scalable ml-driven performance debugging in microservices', 2021, NULL);
INSERT INTO `inclusion` VALUES ('search-based web service antipatterns detection', 2017, 2);
INSERT INTO `inclusion` VALUES ('semantic-based thai recipe recommendation', 2022, NULL);
INSERT INTO `inclusion` VALUES ('semi-automated smell resolution in kubernetes-deployed microservices', 2023, 2);
INSERT INTO `inclusion` VALUES ('semi-automatic feedback for improving architecture conformance to microservice patterns and practices', 2021, NULL);
INSERT INTO `inclusion` VALUES ('serverless: from bad practices to good solutions', 2022, NULL);
INSERT INTO `inclusion` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014, 1);
INSERT INTO `inclusion` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022, 3);
INSERT INTO `inclusion` VALUES ('sim: an automated approach to improve web service interface modularization', 2016, NULL);
INSERT INTO `inclusion` VALUES ('solid-waste management system for urban sri lanka using iot and machine learning', 2022, NULL);
INSERT INTO `inclusion` VALUES ('specification and detection of business process antipatterns', 2015, 12);
INSERT INTO `inclusion` VALUES ('specification and detection of soa antipatterns in web services', 2014, 12);
INSERT INTO `inclusion` VALUES ('speeding up the rul- dynamic-controllability-checking algorithm for simple temporal networks with uncertainty', 2022, NULL);
INSERT INTO `inclusion` VALUES ('spotting and removing wsdl anti-pattern root causes in code-first web services using nlp techniques: a thorough validation of impact on service discoverability', 2018, NULL);
INSERT INTO `inclusion` VALUES ('spread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022, NULL);
INSERT INTO `inclusion` VALUES ('stochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2020, NULL);
INSERT INTO `inclusion` VALUES ('stock portfolio health monitoring system', 2023, NULL);
INSERT INTO `inclusion` VALUES ('supply chain downsizing under bankruptcy: a robust optimization approach', 2014, NULL);
INSERT INTO `inclusion` VALUES ('technical debt in service-oriented software systems', 2022, 1);
INSERT INTO `inclusion` VALUES ('the parallel agile process: applying parallel processing techniques to software engineering', 2019, NULL);
INSERT INTO `inclusion` VALUES ('the role of community pharmacy in supporting people with diabetes who have a history of repeated non-attendance at healthcare appointments', 2023, NULL);
INSERT INTO `inclusion` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020, 1);
INSERT INTO `inclusion` VALUES ('the μtosca toolchain: mining, analyzing, and refactoring microservice-based architectures', 2021, NULL);
INSERT INTO `inclusion` VALUES ('tool support for architectural pattern selection and application in cloud-centric service-oriented ides', 2023, 3);
INSERT INTO `inclusion` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019, 1);
INSERT INTO `inclusion` VALUES ('toward design decisions to enable deployability: empirical study of three projects reaching for the continuous delivery holy grail', 2014, NULL);
INSERT INTO `inclusion` VALUES ('towards a metrics-based software quality rating for a microservice architecture', 2019, 4);
INSERT INTO `inclusion` VALUES ('towards an interdisciplinary technical debt interaction and visualization tool', 2023, NULL);
INSERT INTO `inclusion` VALUES ('towards microservice smells detectiontowards a practical maintainability quality model for service-and microservice-based systems', 2020, NULL);
INSERT INTO `inclusion` VALUES ('towards resolving security smells in microservice-based applications', 2020, 3);
INSERT INTO `inclusion` VALUES ('towards resolving security smells in microservices, model-driven', 2023, 3);
INSERT INTO `inclusion` VALUES ('transitioning towards commercial upland agriculture: a comparative study in northern lao pdr', 2019, NULL);
INSERT INTO `inclusion` VALUES ('uis-hunter: detecting ui design smells in android apps', 2021, NULL);
INSERT INTO `inclusion` VALUES ('unidosa: the unified specification and detection of service antipatterns', 2018, 12);
INSERT INTO `inclusion` VALUES ('using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021, 2);
INSERT INTO `inclusion` VALUES ('visualization beyond the desktop--the next big thing', 2014, NULL);
INSERT INTO `inclusion` VALUES ('web service anti-patterns detection using cnn with varying sequence padding size', 2023, 2);
INSERT INTO `inclusion` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022, 2);
INSERT INTO `inclusion` VALUES ('web service api anti-patterns detection as a multi-label learning problem', 2020, 2);
INSERT INTO `inclusion` VALUES ('willingness to pay for public health services in rural central java, indonesia: methodological considerations when using the contingent valuation method', 2014, NULL);
INSERT INTO `inclusion` VALUES ('xml development with plug-ins as a service', 2014, NULL);

-- ----------------------------
-- Table structure for merged_table
-- ----------------------------
DROP TABLE IF EXISTS `merged_table`;
CREATE TABLE `merged_table`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merged_table
-- ----------------------------
INSERT INTO `merged_table` VALUES ('\r\na transformational approach to managing data model evolution of web services', 2013);
INSERT INTO `merged_table` VALUES ('\r\na visualization tool to detect refactoring opportunities in soa applications', 2017);
INSERT INTO `merged_table` VALUES ('\r\nabstract\r\nhtml\r\n\r\nintrusion prevention in asterisk-based telephony system', 2014);
INSERT INTO `merged_table` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022);
INSERT INTO `merged_table` VALUES ('\r\nan approach for web service discoverability anti-pattern detection for journal of web engineering', 2013);
INSERT INTO `merged_table` VALUES ('\r\napparatus for bundling debt of healthcare services downstream from healthcare service provider, has processor to determines bundle price for bundled set of healthcare services based on location associated with providing healthcare service', 2022);
INSERT INTO `merged_table` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019);
INSERT INTO `merged_table` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019);
INSERT INTO `merged_table` VALUES ('\r\nautomatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `merged_table` VALUES ('\r\nbpel process defects prediction using multi-objective evolutionary search', 2023);
INSERT INTO `merged_table` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019);
INSERT INTO `merged_table` VALUES ('\r\ndesign of a distributed collaborative chinese medicine treatment platform', 2022);
INSERT INTO `merged_table` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `merged_table` VALUES ('\r\nposter: reengineering legacy systems for supporting soa a case study on the brazilian\'s secretary of state for taxation', 2018);
INSERT INTO `merged_table` VALUES ('\r\nresearch on streaming media online charging system', 2008);
INSERT INTO `merged_table` VALUES ('\r\nspread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022);
INSERT INTO `merged_table` VALUES ('\r\nstochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2021);
INSERT INTO `merged_table` VALUES ('\r\nsystem for providing business agency service based on factoring business, has debt collection processing unit that receives cost payment information including rental amount deposited monthly by customer from payment gateway', 2023);
INSERT INTO `merged_table` VALUES ('\r\ntechnical debt in service-oriented software systems', 2022);
INSERT INTO `merged_table` VALUES ('\r\nthe data privacy matrix project: towards a global alignment of data privacy laws', 2016);
INSERT INTO `merged_table` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018);
INSERT INTO `merged_table` VALUES ('\r\ntowards a practical maintainability quality model for service-and microservice-based systems', 2017);
INSERT INTO `merged_table` VALUES ('\r\ntowards microservice smells detection', 2020);
INSERT INTO `merged_table` VALUES ('\r\nusing microservice telemetry data for system dynamic analysis', 2022);
INSERT INTO `merged_table` VALUES ('\r\nusing selective memoization to defeat regular expression denial of service (redos)', 2021);
INSERT INTO `merged_table` VALUES ('\r\nvalue- and debt-aware selection and composition in cloud-based service-oriented architectures using real options', 2015);
INSERT INTO `merged_table` VALUES ('\r\nweb service composition automation based on term rewriting system', 2015);
INSERT INTO `merged_table` VALUES ('\r\nweb service interface decomposition using formal concept analysis', 2017);
INSERT INTO `merged_table` VALUES ('a comparative analysis on the detection of web service anti-patterns using various metrics', 2023);
INSERT INTO `merged_table` VALUES ('a fuzzy-based method for cloud service migration using a shark smell optimization algorithm', 2022);
INSERT INTO `merged_table` VALUES ('a graph-based solution to deal with cyclic dependencies in microservices architecture', 2022);
INSERT INTO `merged_table` VALUES ('a hybrid meta-heuristic approach for qos-aware cloud service composition', 2018);
INSERT INTO `merged_table` VALUES ('a method for architectural trade-off analysis based on patterns: evaluating microservices structural attributes', 2020);
INSERT INTO `merged_table` VALUES ('a microservice infrastructure for distributed communities of practice', 2018);
INSERT INTO `merged_table` VALUES ('a microservices quality model based on microservices anti-patterns', 2022);
INSERT INTO `merged_table` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021);
INSERT INTO `merged_table` VALUES ('a pattern for wsdl-based testing of web service compositions', 2015);
INSERT INTO `merged_table` VALUES ('a pattern language for scalable microservices-based systems', 2018);
INSERT INTO `merged_table` VALUES ('a pattern language for service-based platform integration and adaptation', 2012);
INSERT INTO `merged_table` VALUES ('a pattern-driven security advisor for service-oriented architectures', 2009);
INSERT INTO `merged_table` VALUES ('a preliminary practice for bpel based multimedia conference web services orchestration', 2008);
INSERT INTO `merged_table` VALUES ('a proposal of the olfactory information presentation method and its application for scent generator using web service', 2012);
INSERT INTO `merged_table` VALUES ('a qualitative analysis of factors that influence vietnamese ethnic minority women to seek maternal health care', 2019);
INSERT INTO `merged_table` VALUES ('a quantitative service accountability model', 2009);
INSERT INTO `merged_table` VALUES ('a rationale and model for addressing tobacco dependence in substance abuse treatment', 2006);
INSERT INTO `merged_table` VALUES ('a service configuration and composition design pattern for autonomic computing systems using service oriented architecture', 2012);
INSERT INTO `merged_table` VALUES ('a smart background scheduler for storage systems', 2020);
INSERT INTO `merged_table` VALUES ('a stitch in time saves nine: early improving code-first web services discoverability', 2015);
INSERT INTO `merged_table` VALUES ('a study on the taxonomy of service antipatterns', 2015);
INSERT INTO `merged_table` VALUES ('a tool to improve code-first web services discoverability through text mining techniques', 2015);
INSERT INTO `merged_table` VALUES ('a uri parsing technique and algorithm for anti-pattern detection in restful web services', 2021);
INSERT INTO `merged_table` VALUES ('a validated set of smells in model-view-controller architectures', 2016);
INSERT INTO `merged_table` VALUES ('a versatile soa-based e-business platform', 2008);
INSERT INTO `merged_table` VALUES ('an analysis of performance anti-patterns in systems stored on the brazilian public software portal', 2017);
INSERT INTO `merged_table` VALUES ('an approach for detecting profile cloning in online social networks', 2013);
INSERT INTO `merged_table` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023);
INSERT INTO `merged_table` VALUES ('an effective web service anti-pattern prediction model using smote', 2019);
INSERT INTO `merged_table` VALUES ('an efficient method for automatic antipatterns detection of rest web services', 2021);
INSERT INTO `merged_table` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021);
INSERT INTO `merged_table` VALUES ('an empirical analysis on the role of wsdl metrics in web service anti-pattern prediction', 2020);
INSERT INTO `merged_table` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018);
INSERT INTO `merged_table` VALUES ('an empirical framework for web service anti-pattern prediction using machine learning techniques', 2019);
INSERT INTO `merged_table` VALUES ('an empirical study of security practices for microservices systems', 2022);
INSERT INTO `merged_table` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021);
INSERT INTO `merged_table` VALUES ('an empirical study to investigate the effectiveness of different variants of smote for improving web service anti-patterns prediction', 2021);
INSERT INTO `merged_table` VALUES ('an enhanced dropping scheme for proportional differentiated services', 2003);
INSERT INTO `merged_table` VALUES ('an evaluation of evaluation: problems with performance measurement in small business loan and grant schemes', 2001);
INSERT INTO `merged_table` VALUES ('analysis of microservice evolution using cohesion metrics', 2022);
INSERT INTO `merged_table` VALUES ('analyzing the change-proneness of service-oriented systems from an industrial perspective', 2013);
INSERT INTO `merged_table` VALUES ('anti-pattern free code-first web services for state-of-the-art java wsdl generation tools', 2013);
INSERT INTO `merged_table` VALUES ('anti-patterns in search-based program repair', 2016);
INSERT INTO `merged_table` VALUES ('appendix c:service-orientedarchitecture: example of an implementation with adp bestpractices', 2007);
INSERT INTO `merged_table` VALUES ('application framework of web service based on metadata-principle and practice', 2010);
INSERT INTO `merged_table` VALUES ('architectural design of cloud applications: a performance-aware cost minimization approach', 2022);
INSERT INTO `merged_table` VALUES ('architectural smells detected by tools', 2019);
INSERT INTO `merged_table` VALUES ('architecture patterns of web services applications', 2021);
INSERT INTO `merged_table` VALUES ('are biometric web services a reality? a best practice analysis for telebiometric deployment in open networks', 2013);
INSERT INTO `merged_table` VALUES ('are restful apis well-designed? detection of their linguistic (anti)patterns', 2015);
INSERT INTO `merged_table` VALUES ('are we speaking the industry language? the practice and literature of modernizing legacy systems with microservices', 2021);
INSERT INTO `merged_table` VALUES ('artificial neural network approach to credit risk assessment', 2007);
INSERT INTO `merged_table` VALUES ('aservice-orientedintegratingpracticefor data modeling', 0);
INSERT INTO `merged_table` VALUES ('aspect-oriented modeling of technology heterogeneity in microservice architecture', 2019);
INSERT INTO `merged_table` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020);
INSERT INTO `merged_table` VALUES ('assessment of society\'s perceptions on cultural ecosystem services in a cultural landscape in nanchang, china', 2023);
INSERT INTO `merged_table` VALUES ('asynchronous semantics and anti-patterns for interacting web services', 2006);
INSERT INTO `merged_table` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020);
INSERT INTO `merged_table` VALUES ('automated microservice code-smell detection', 2021);
INSERT INTO `merged_table` VALUES ('automated scalability assessment in devops environments', 2020);
INSERT INTO `merged_table` VALUES ('benchmarking microservice performance: a pattern-based approach', 2020);
INSERT INTO `merged_table` VALUES ('best-practice patterns and tool support for configuring secure web services messaging', 2004);
INSERT INTO `merged_table` VALUES ('capital structure in the hospitality industry: the role of the asset-light and fee-oriented strategy', 2019);
INSERT INTO `merged_table` VALUES ('child undernutrition in sudan: the social and economic impact and future perspectives', 2021);
INSERT INTO `merged_table` VALUES ('cloud service based intelligent video storage device management system, has data collection and transmission controlling center connected with device controller through temperature and humidity sensor, smell sensor and pressure sensor', 2017);
INSERT INTO `merged_table` VALUES ('cloudmtd: using real options to manage technical debt in cloud-based service selection', 2013);
INSERT INTO `merged_table` VALUES ('collection and identification of microservices patterns and antipatterns', 2019);
INSERT INTO `merged_table` VALUES ('combat casualties and race: what can we learn from the 2003-2004 iraq conflict?', 2005);
INSERT INTO `merged_table` VALUES ('computer implemented method for structuring variable rate municipal bond, involves setting budgeted debt service based on savings versus debt service associated with fixed interest rate on bond structured to municipal bond', 2013);
INSERT INTO `merged_table` VALUES ('configuration reasoning and ontology for web', 2007);
INSERT INTO `merged_table` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017);
INSERT INTO `merged_table` VALUES ('datesso: self-adapting service composition with debt-aware two levels constraint reasoning', 2020);
INSERT INTO `merged_table` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021);
INSERT INTO `merged_table` VALUES ('debt of family medicine residents continues to grow', 2021);
INSERT INTO `merged_table` VALUES ('debtcom: technical debt-aware service recomposition in saas cloud', 2023);
INSERT INTO `merged_table` VALUES ('design and implementation of government debt managerment informantion system', 2008);
INSERT INTO `merged_table` VALUES ('designed and delivered today, eroded tomorrow?: towards an open and lean architecting framework balancing agility and sustainability', 2016);
INSERT INTO `merged_table` VALUES ('detecting and resolving coupling-related infrastructure as code based architecture smells in microservice deployments', 2023);
INSERT INTO `merged_table` VALUES ('detecting latency degradation patterns in service-based systems', 2020);
INSERT INTO `merged_table` VALUES ('detecting wsdl bad practices in code-first web services', 2011);
INSERT INTO `merged_table` VALUES ('detection of web service anti-patterns using machine learning framework', 2020);
INSERT INTO `merged_table` VALUES ('detection of web service anti-patterns using neural networks with multiple layers', 2020);
INSERT INTO `merged_table` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022);
INSERT INTO `merged_table` VALUES ('determinants of soft budget constraints: how public debt affects hospital performance in austria', 2020);
INSERT INTO `merged_table` VALUES ('developing enterprise web services and applications: opportunities and best practices for the healthcare industry', 2003);
INSERT INTO `merged_table` VALUES ('does government spending efficiency improve fiscal sustainability?', 2023);
INSERT INTO `merged_table` VALUES ('early prediction of quality of service using interface-level metrics, code-level metrics, and antipatterns', 2020);
INSERT INTO `merged_table` VALUES ('economics-driven approach for managing technical debt in cloud-based architectures', 2013);
INSERT INTO `merged_table` VALUES ('ecosystem services-based decision-making: a bridge from science to practice', 2022);
INSERT INTO `merged_table` VALUES ('emotion and worry measurement comparison of united kingdom and thailand during the first covid-19 lockdown situation', 2021);
INSERT INTO `merged_table` VALUES ('energy for a sustainable road/rail transport system in india', 2000);
INSERT INTO `merged_table` VALUES ('enhanced iot-aware online shopping system', 2016);
INSERT INTO `merged_table` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017);
INSERT INTO `merged_table` VALUES ('erratum to “promoting service-oriented organizational citizenship behaviors in hotels: the role of high-performance human resource practices and organizational social climates”', 2012);
INSERT INTO `merged_table` VALUES ('etters: cost-justifying service-oriented practice', 1985);
INSERT INTO `merged_table` VALUES ('evaluating technical debt in cloud-based architectures using real options', 2013);
INSERT INTO `merged_table` VALUES ('evaluation ofservice-orientedit management inpractice', 2005);
INSERT INTO `merged_table` VALUES ('evolutionary computing assisted heterogenous ensemble model for web-of-service software reusability prediction', 2019);
INSERT INTO `merged_table` VALUES ('execution patterns for visualizing web services', 2006);
INSERT INTO `merged_table` VALUES ('extending the semat kernel for thepracticeof designing and implementingmicroservice-based applications using domain driven design', 2020);
INSERT INTO `merged_table` VALUES ('factors influencing hematology career choice in hematology and oncology fellows at a major academic institution', 2016);
INSERT INTO `merged_table` VALUES ('failing entrepreneurial governance: from economic crisis to fiscal crisis in the city of dongguan, china', 2015);
INSERT INTO `merged_table` VALUES ('fifth international workshop on soa & web services best practices', 2007);
INSERT INTO `merged_table` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021);
INSERT INTO `merged_table` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020);
INSERT INTO `merged_table` VALUES ('from the decorator pattern to circuit breakers in microservices', 2018);
INSERT INTO `merged_table` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017);
INSERT INTO `merged_table` VALUES ('handling missing values for mining gradual patterns from nosql graph databases', 2019);
INSERT INTO `merged_table` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017);
INSERT INTO `merged_table` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015);
INSERT INTO `merged_table` VALUES ('identifying and estimating technical debt for service composition in saas cloud', 2019);
INSERT INTO `merged_table` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023);
INSERT INTO `merged_table` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017);
INSERT INTO `merged_table` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022);
INSERT INTO `merged_table` VALUES ('implementation patterns for microservices architectures', 2016);
INSERT INTO `merged_table` VALUES ('improving agility by managing shared libraries in microservices', 2020);
INSERT INTO `merged_table` VALUES ('improving detection of web service antipatterns using crowdsourcing', 2021);
INSERT INTO `merged_table` VALUES ('improving web service descriptions for effective service discovery', 2010);
INSERT INTO `merged_table` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015);
INSERT INTO `merged_table` VALUES ('inter-enterprise integration — moving beyond data level integration', 2009);
INSERT INTO `merged_table` VALUES ('interaction patterns based checkpointing of choreographed web services', 2014);
INSERT INTO `merged_table` VALUES ('interface quality patterns: communicating and improving the quality of microservices apis', 2018);
INSERT INTO `merged_table` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014);
INSERT INTO `merged_table` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018);
INSERT INTO `merged_table` VALUES ('investment and capital structure decisions with strategic debt service under asymmetric information', 2018);
INSERT INTO `merged_table` VALUES ('kobold: web usability as a service', 2017);
INSERT INTO `merged_table` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023);
INSERT INTO `merged_table` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023);
INSERT INTO `merged_table` VALUES ('lattice-based public key searchable encryption from experimental perspectives', 2020);
INSERT INTO `merged_table` VALUES ('leveraging the layered architecture for microservice recovery', 2022);
INSERT INTO `merged_table` VALUES ('linking collaborative learningpracticewith ims ld andservice-orientedtechnologies: an approach based on collaborative learning flow patterns', 2006);
INSERT INTO `merged_table` VALUES ('live versioning of web applications through refactoring', 2018);
INSERT INTO `merged_table` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023);
INSERT INTO `merged_table` VALUES ('managing simulation workflow patterns using dynamic service-oriented compositions', 2010);
INSERT INTO `merged_table` VALUES ('methodology to transform a monolithic software into a microservice architecture', 2017);
INSERT INTO `merged_table` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020);
INSERT INTO `merged_table` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018);
INSERT INTO `merged_table` VALUES ('microservices anti-patterns: a taxonomy', 2020);
INSERT INTO `merged_table` VALUES ('microservices backlog - a model of granularity specification and microservice identification', 2020);
INSERT INTO `merged_table` VALUES ('Microservices migration patterns', 2018);
INSERT INTO `merged_table` VALUES ('microservices smell detection through dynamic analysis', 2022);
INSERT INTO `merged_table` VALUES ('microservices, continuous architecture, and technical debt interest: an empirical study', 2018);
INSERT INTO `merged_table` VALUES ('microservicesinpractice', 2017);
INSERT INTO `merged_table` VALUES ('migrating to service-oriented systems (why and how to avoid developing customized software applications from scratch)', 2013);
INSERT INTO `merged_table` VALUES ('mining microservice design patterns', 2022);
INSERT INTO `merged_table` VALUES ('mirrortaint: practical non-intrusive dynamic taint tracking for jvm-based microservice systems', 2023);
INSERT INTO `merged_table` VALUES ('model driven distribution pattern design for dynamic web service compositions', 2006);
INSERT INTO `merged_table` VALUES ('modeling process-driven and service-oriented architectures using patterns and pattern primitives', 2007);
INSERT INTO `merged_table` VALUES ('monitoring performance-related qos properties in service-oriented systems: a pattern-based architectural decision model', 2011);
INSERT INTO `merged_table` VALUES ('mono2micro: a practical and effective tool for decomposing monolithic java applications to microservices', 2021);
INSERT INTO `merged_table` VALUES ('multi-criteria web services selection: balancing the quality of design and quality of service', 2022);
INSERT INTO `merged_table` VALUES ('nations and nationalism celebrates international women’s day', 2022);
INSERT INTO `merged_table` VALUES ('odorify: a conglomerate of artificial intelligence-driven prediction engines for olfactory decoding', 2021);
INSERT INTO `merged_table` VALUES ('on the definition of microservice bad smells', 2018);
INSERT INTO `merged_table` VALUES ('on the nature of issues in five open source microservices systems: an empirical study', 2021);
INSERT INTO `merged_table` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017);
INSERT INTO `merged_table` VALUES ('pattern based adaptation for service oriented applications', 2012);
INSERT INTO `merged_table` VALUES ('pattern-based design of a service-oriented middleware for remote object federations', 2008);
INSERT INTO `merged_table` VALUES ('patterns for business object model integration in process-driven and service-oriented architectures', 2006);
INSERT INTO `merged_table` VALUES ('patterns for measuring performance-related qos properties in service-oriented systems', 2010);
INSERT INTO `merged_table` VALUES ('patterns for service-oriented information exchange requirements', 2006);
INSERT INTO `merged_table` VALUES ('practical efficient microservice autoscaling with qos assurance', 2022);
INSERT INTO `merged_table` VALUES ('practical service placement approach for microservices architecture', 2017);
INSERT INTO `merged_table` VALUES ('practical soa: service modeling, enterprise service bus and governance', 2008);
INSERT INTO `merged_table` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020);
INSERT INTO `merged_table` VALUES ('privacy smells: detecting privacy problems in cloud architectures', 2020);
INSERT INTO `merged_table` VALUES ('productivity growth and efficiency change: comparing manufacturing- and service-based firms in india', 2018);
INSERT INTO `merged_table` VALUES ('promoting service-oriented organizational citizenship behaviors in hotels: the role of high-performance human resource practices and organizational social climates', 2012);
INSERT INTO `merged_table` VALUES ('public health services in ethnic minority areas', 2010);
INSERT INTO `merged_table` VALUES ('quality assurance for microservice architectures', 2021);
INSERT INTO `merged_table` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016);
INSERT INTO `merged_table` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021);
INSERT INTO `merged_table` VALUES ('reengineering software to three-tier applications and services', 2012);
INSERT INTO `merged_table` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014);
INSERT INTO `merged_table` VALUES ('refactoring for usability in web applications', 2011);
INSERT INTO `merged_table` VALUES ('relevance of moocs for training of public sector employees', 2015);
INSERT INTO `merged_table` VALUES ('restful web services: principles, patterns, emerging technologies', 2010);
INSERT INTO `merged_table` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022);
INSERT INTO `merged_table` VALUES ('risk-based optimization of the debt service schedule in renewable energy project finance', 2021);
INSERT INTO `merged_table` VALUES ('role of wsdl metrics in the detection of web service anti-patterns', 2022);
INSERT INTO `merged_table` VALUES ('role stereotypes in software designs and their evolution', 2022);
INSERT INTO `merged_table` VALUES ('sage: practical and scalable ml-driven performance debugging in microservices', 2021);
INSERT INTO `merged_table` VALUES ('search-based web service antipatterns detection', 2017);
INSERT INTO `merged_table` VALUES ('semantic-based thai recipe recommendation', 2022);
INSERT INTO `merged_table` VALUES ('semi-automated smell resolution in kubernetes-deployed microservices', 2023);
INSERT INTO `merged_table` VALUES ('semi-automatic feedback for improving architecture conformance tomicroservicepatterns andpractices', 2021);
INSERT INTO `merged_table` VALUES ('separation of concerns in service-oriented applications based on pervasive design patterns', 2010);
INSERT INTO `merged_table` VALUES ('serverless: from bad practices to good solutions', 2022);
INSERT INTO `merged_table` VALUES ('service migration patterns -- decision support and bestpracticesfor the migration of existingservice-basedapplications to cloud environments', 2013);
INSERT INTO `merged_table` VALUES ('service orienteddesign method andpracticefor constructing citizen-centric public services', 2006);
INSERT INTO `merged_table` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014);
INSERT INTO `merged_table` VALUES ('service-oriented technology and management: perspectives on research and practice for the coming decade', 2008);
INSERT INTO `merged_table` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022);
INSERT INTO `merged_table` VALUES ('sim: an automated approach to improve web service interface modularization', 2016);
INSERT INTO `merged_table` VALUES ('sixth international workshop on soa & web services: best practices', 2008);
INSERT INTO `merged_table` VALUES ('smarter soa', 2008);
INSERT INTO `merged_table` VALUES ('software adaptation patterns for service-oriented architectures', 2010);
INSERT INTO `merged_table` VALUES ('solid-waste management system for urban sri lanka using iot and machine learning', 2022);
INSERT INTO `merged_table` VALUES ('specification and detection of business process antipatterns', 2015);
INSERT INTO `merged_table` VALUES ('specification and detection of soa antipatterns in web services', 2014);
INSERT INTO `merged_table` VALUES ('speeding up the rul- dynamic-controllability-checking algorithm for simple temporal networks with uncertainty', 2022);
INSERT INTO `merged_table` VALUES ('spotting and removing wsdl anti-pattern root causes in code-first web services using nlp techniques: a thorough validation of impact on service discoverability', 2018);
INSERT INTO `merged_table` VALUES ('spread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022);
INSERT INTO `merged_table` VALUES ('stimulating interest in practical e-commerce programming using barcodes, amazon web services, java, and xml', 2007);
INSERT INTO `merged_table` VALUES ('stochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2020);
INSERT INTO `merged_table` VALUES ('stock portfolio health monitoring system', 2023);
INSERT INTO `merged_table` VALUES ('study on improving acceptance of government portal website', 2010);
INSERT INTO `merged_table` VALUES ('supply chain downsizing under bankruptcy: a robust optimization approach', 2014);
INSERT INTO `merged_table` VALUES ('taking advantage of web 2.0 and video resources for developing a social service: babelium project, the web community for foreign language speaking practice', 2010);
INSERT INTO `merged_table` VALUES ('technical debt in service-oriented software systems', 2022);
INSERT INTO `merged_table` VALUES ('technology and recent development of xml web services', 2010);
INSERT INTO `merged_table` VALUES ('ten years after restructuring: degraded distribution reliability and regulatory failure in ontario', 2011);
INSERT INTO `merged_table` VALUES ('the easysoc project: a rich catalog of best practices for developing web service applications', 2010);
INSERT INTO `merged_table` VALUES ('the parallel agile process: applying parallel processing techniques to software engineering', 2019);
INSERT INTO `merged_table` VALUES ('the role of community pharmacy in supporting people with diabetes who have a history of repeated non-attendance at healthcare appointments', 2023);
INSERT INTO `merged_table` VALUES ('the structure of the world economy and prospects for a new international economic order', 1983);
INSERT INTO `merged_table` VALUES ('the supply behaviour of state mining enterprises: a case study of the jordanian phosphate industry', 2008);
INSERT INTO `merged_table` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020);
INSERT INTO `merged_table` VALUES ('the μtosca toolchain: mining, analyzing, and refactoring microservice-based architectures', 2021);
INSERT INTO `merged_table` VALUES ('three common mistakes in modeling and analysis of qos of service-oriented systems', 2009);
INSERT INTO `merged_table` VALUES ('tool support for architectural pattern selection and application in cloud-centric service-oriented ides', 2023);
INSERT INTO `merged_table` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019);
INSERT INTO `merged_table` VALUES ('toward design decisions to enable deployability: empirical study of three projects reaching for the continuous delivery holy grail', 2014);
INSERT INTO `merged_table` VALUES ('towards a metrics-based software quality rating for a microservice architecture', 2019);
INSERT INTO `merged_table` VALUES ('towards an interdisciplinary technical debt interaction and visualization tool', 2023);
INSERT INTO `merged_table` VALUES ('towards microservice smells detectiontowards a practical maintainability quality model for service-and microservice-based systems', 2020);
INSERT INTO `merged_table` VALUES ('towards resolving security smells in microservice-based applications', 2020);
INSERT INTO `merged_table` VALUES ('towards resolving security smells in microservices, model-driven', 2023);
INSERT INTO `merged_table` VALUES ('trade and integration', 1980);
INSERT INTO `merged_table` VALUES ('transactional patterns for reliable web services compositions', 2006);
INSERT INTO `merged_table` VALUES ('transitioning towards commercial upland agriculture: a comparative study in northern lao pdr', 2019);
INSERT INTO `merged_table` VALUES ('uis-hunter: detecting ui design smells in android apps', 2021);
INSERT INTO `merged_table` VALUES ('unidosa: the unified specification and detection of service antipatterns', 2018);
INSERT INTO `merged_table` VALUES ('using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021);
INSERT INTO `merged_table` VALUES ('using web-services to support collaboration practices along the supply chain', 2005);
INSERT INTO `merged_table` VALUES ('visualization beyond the desktop--the next big thing', 2014);
INSERT INTO `merged_table` VALUES ('web 2.0 services for identifying communities of practice through social networks', 2007);
INSERT INTO `merged_table` VALUES ('web service anti-patterns detection using cnn with varying sequence padding size', 2023);
INSERT INTO `merged_table` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022);
INSERT INTO `merged_table` VALUES ('web service api anti-patterns detection as a multi-label learning problem', 2020);
INSERT INTO `merged_table` VALUES ('web services interaction models. current practice', 2002);
INSERT INTO `merged_table` VALUES ('willingness to pay for public health services in rural central java, indonesia: methodological considerations when using the contingent valuation method', 2014);
INSERT INTO `merged_table` VALUES ('xml development with plug-ins as a service', 2014);

-- ----------------------------
-- Table structure for snowballing
-- ----------------------------
DROP TABLE IF EXISTS `snowballing`;
CREATE TABLE `snowballing`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  `inclusion` int NULL DEFAULT NULL,
  `from` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of snowballing
-- ----------------------------
INSERT INTO `snowballing` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\narchitectural technical debt in microservices: a case study in a large company', 2019, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\nassuring the evolvability of microservices: insights into industry practices and challenges', 2019, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\nlimiting technical debt with maintainability assurance – an industry survey on used techniques and differences with service- and microservice-based systems', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\ntechnical debt in service-oriented software systems', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\nthe past, present and future of technical debt: learning from the past to prepare for the future', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('\r\ntowards microservice smells detection', 2020, 12, NULL);
INSERT INTO `snowballing` VALUES ('a microservice infrastructure for distributed communities of practice', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('a microservices quality model based on microservices anti-patterns', 2022, 14, NULL);
INSERT INTO `snowballing` VALUES ('a study on the taxonomy of service antipatterns', 2015, 1, NULL);
INSERT INTO `snowballing` VALUES ('a validated set of smells in model-view-controller architectures', 2016, 1, NULL);
INSERT INTO `snowballing` VALUES ('an approach for evaluating the potential impact of anti-patterns on microservices performance', 2023, 14, NULL);
INSERT INTO `snowballing` VALUES ('an empirical study of security practices for microservices systems', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('anti-patterns in search-based program repair', 2016, 1, NULL);
INSERT INTO `snowballing` VALUES ('architectural smells detected by tools：a catalogue proposal', 2019, 12, NULL);
INSERT INTO `snowballing` VALUES ('architecture patterns of web services applications', 2021, 1, NULL);
INSERT INTO `snowballing` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020, 14, NULL);
INSERT INTO `snowballing` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020, 12, NULL);
INSERT INTO `snowballing` VALUES ('automated microservice code-smell detection', 2021, 12, NULL);
INSERT INTO `snowballing` VALUES ('collection and identification of microservices patterns and antipatterns', 2019, 12, NULL);
INSERT INTO `snowballing` VALUES ('containerized development andmicroservicesfor self-driving vehicles: experiences & bestpractices', 2017, 1, NULL);
INSERT INTO `snowballing` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022, 12, NULL);
INSERT INTO `snowballing` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017, 1, NULL);
INSERT INTO `snowballing` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021, 1, NULL);
INSERT INTO `snowballing` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020, 13, NULL);
INSERT INTO `snowballing` VALUES ('guidelines for adopting frontend architectures and patterns in microservices-based systems', 2017, 1, NULL);
INSERT INTO `snowballing` VALUES ('highly-available applications on unreliable infrastructure:microservicearchitectures inpractice', 2017, 1, NULL);
INSERT INTO `snowballing` VALUES ('hotspot patterns: the formal definition and automatic detection of architecture smells', 2015, 12, NULL);
INSERT INTO `snowballing` VALUES ('identifying anti-patterns in distributed systems with heterogeneous dependencies', 2023, 1, NULL);
INSERT INTO `snowballing` VALUES ('identifying architectural technical debt, principal, and interest in microservices: a multiple-case study', 2017, 1, NULL);
INSERT INTO `snowballing` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022, 13, NULL);
INSERT INTO `snowballing` VALUES ('implementation patterns for microservices architectures', 2016, 1, NULL);
INSERT INTO `snowballing` VALUES ('incorporating security features in service-oriented architecture using security patterns', 2015, 1, NULL);
INSERT INTO `snowballing` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014, 1, NULL);
INSERT INTO `snowballing` VALUES ('investigating the relationship between code smell agglomerations and architectural concerns: similarities and dissimilarities from distributed, service-oriented, and mobile systems', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023, 12, NULL);
INSERT INTO `snowballing` VALUES ('kubernetes-enabled detection and resolution of architectural smells for microservices', 2023, 123, NULL);
INSERT INTO `snowballing` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020, 14, NULL);
INSERT INTO `snowballing` VALUES ('microservice patterns for the life cycle of industrial edge software', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('microservices anti-patterns: a taxonomy', 2020, 1, NULL);
INSERT INTO `snowballing` VALUES ('microservices migration patterns', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('microservices smell detection through dynamic analysis', 2022, 12, NULL);
INSERT INTO `snowballing` VALUES ('mining microservice design patterns', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('on the definition of microservice bad smells', 2018, 1, NULL);
INSERT INTO `snowballing` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017, 124, NULL);
INSERT INTO `snowballing` VALUES ('quality assurance for microservice architectures', 2021, 14, NULL);
INSERT INTO `snowballing` VALUES ('reducing incidents in microservices by repaying architectural technical debt', 2021, 1, NULL);
INSERT INTO `snowballing` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014, 13, NULL);
INSERT INTO `snowballing` VALUES ('revisiting the practices and pains of microservice architecture in reality: an industrial inquiry', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('service-oriented architecture projects in practice: a study of a shared document service implementation', 2014, 1, NULL);
INSERT INTO `snowballing` VALUES ('specification and detection of business process antipatterns', 2015, 12, NULL);
INSERT INTO `snowballing` VALUES ('specification and detection of soa antipatterns in web services', 2014, 12, NULL);
INSERT INTO `snowballing` VALUES ('technical debt in service-oriented software systems', 2022, 1, NULL);
INSERT INTO `snowballing` VALUES ('the weakest link: revealing and modeling the architectural patterns of microservice applications', 2020, 1, NULL);
INSERT INTO `snowballing` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019, 1, NULL);
INSERT INTO `snowballing` VALUES ('towards an architectural debt Index', 2018, 1, 5);
INSERT INTO `snowballing` VALUES ('unidosa: the unified specification and detection of service antipatterns', 2018, 12, NULL);

-- ----------------------------
-- Table structure for springer
-- ----------------------------
DROP TABLE IF EXISTS `springer`;
CREATE TABLE `springer`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of springer
-- ----------------------------
INSERT INTO `springer` VALUES ('a microservice infrastructure for distributed communities of practice', 2018);
INSERT INTO `springer` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021);
INSERT INTO `springer` VALUES ('A Quantitative Approach\r\nfor the Assessment of Microservice\r\nArchitecture Deployment Alternatives\r\nby Automated Performance Testing', 2018);
INSERT INTO `springer` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021);
INSERT INTO `springer` VALUES ('are restful apis well-designed? detection of their linguistic (anti)patterns', 2015);
INSERT INTO `springer` VALUES ('assessing architecture conformance to coupling-related patterns and practices in microservices', 2020);
INSERT INTO `springer` VALUES ('automated microservice code-smell detection', 2021);
INSERT INTO `springer` VALUES ('detection of web service anti-patterns using machine learning framework', 2020);
INSERT INTO `springer` VALUES ('detection of web service anti-patterns using neural networks with multiple layers', 2020);
INSERT INTO `springer` VALUES ('ensuring and assessing architecture conformance to microservice decomposition patterns', 2017);
INSERT INTO `springer` VALUES ('freshening the air in microservices: resolving architectural smells via refactoring', 2020);
INSERT INTO `springer` VALUES ('improving detection of web service antipatterns using crowdsourcingmetrics for assessing architecture conformance to microservice architecture patterns and practices', 2021);
INSERT INTO `springer` VALUES ('metrics for assessing architecture conformance to microservice architecture patterns and practices', 2020);
INSERT INTO `springer` VALUES ('microservices anti-patterns: a taxonomy', 2020);
INSERT INTO `springer` VALUES ('microservices backlog - a model of granularity specification and microservice identification', 2020);
INSERT INTO `springer` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022);
INSERT INTO `springer` VALUES ('specification and detection of business process antipatterns', 2015);
INSERT INTO `springer` VALUES ('specification and detection of soa antipatterns in web services', 2014);
INSERT INTO `springer` VALUES ('technical debt in service-oriented software systems', 2022);
INSERT INTO `springer` VALUES ('towards a metrics-based software quality rating for a microservice architecture', 2019);
INSERT INTO `springer` VALUES ('towards resolving security smells in microservice-based applications', 2020);
INSERT INTO `springer` VALUES ('web service anti-patterns detection using cnn with varying sequence padding size', 2023);
INSERT INTO `springer` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022);
INSERT INTO `springer` VALUES ('web service api anti-patterns detection as a multi-label learning problem', 2020);

-- ----------------------------
-- Table structure for wiley
-- ----------------------------
DROP TABLE IF EXISTS `wiley`;
CREATE TABLE `wiley`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `year` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wiley
-- ----------------------------
INSERT INTO `wiley` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022);
INSERT INTO `wiley` VALUES ('a fuzzy-based method for cloud service migration using a shark smell optimization algorithm', 2022);
INSERT INTO `wiley` VALUES ('the μtosca toolchain: mining, analyzing, and refactoring microservice-based architectures', 2021);
INSERT INTO `wiley` VALUES ('nations and nationalism celebrates international women’s day', 2022);
INSERT INTO `wiley` VALUES ('a tool to improve code-first web services discoverability through text mining techniques', 2015);
INSERT INTO `wiley` VALUES ('Microservices migration patterns', 2018);

-- ----------------------------
-- Table structure for wos
-- ----------------------------
DROP TABLE IF EXISTS `wos`;
CREATE TABLE `wos`  (
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NULL DEFAULT NULL,
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wos
-- ----------------------------
INSERT INTO `wos` VALUES ('\r\na visualization tool to detect refactoring opportunities in soa applications', 2017);
INSERT INTO `wos` VALUES ('\r\naccumulation and prioritization of architectural debt in three companies migrating to microservices', 2022);
INSERT INTO `wos` VALUES ('\r\nan approach for web service discoverability anti-pattern detection for journal of web engineering', 2013);
INSERT INTO `wos` VALUES ('\r\napparatus for bundling debt of healthcare services downstream from healthcare service provider, has processor to determines bundle price for bundled set of healthcare services based on location associated with providing healthcare service', 2022);
INSERT INTO `wos` VALUES ('\r\nbpel process defects prediction using multi-objective evolutionary search', 2023);
INSERT INTO `wos` VALUES ('\r\ncobol systems migration to soa: assessing antipatterns and complexity', 2019);
INSERT INTO `wos` VALUES ('\r\nimproving web service descriptions for effective service discovery', 2010);
INSERT INTO `wos` VALUES ('\r\ninvestigating the relationship between code smell agglomerations and architectural concerns', 2018);
INSERT INTO `wos` VALUES ('\r\nposter: reengineering legacy systems for supporting soa a case study on the brazilian\'s secretary of state for taxation', 2018);
INSERT INTO `wos` VALUES ('\r\nstochastic multi-objective integrated disassembly-reprocessing-reassembly scheduling via fruit fly optimization algorithm', 2021);
INSERT INTO `wos` VALUES ('\r\nsystem for providing business agency service based on factoring business, has debt collection processing unit that receives cost payment information including rental amount deposited monthly by customer from payment gateway', 2023);
INSERT INTO `wos` VALUES ('\r\nusing microservice telemetry data for system dynamic analysis', 2022);
INSERT INTO `wos` VALUES ('\r\nweb service composition automation based on term rewriting system', 2015);
INSERT INTO `wos` VALUES ('a hybrid meta-heuristic approach for qos-aware cloud service composition', 2018);
INSERT INTO `wos` VALUES ('a microservice infrastructure for distributed communities of practice', 2018);
INSERT INTO `wos` VALUES ('a microservices quality model based on microservices anti-patterns', 2022);
INSERT INTO `wos` VALUES ('a novel approach for the detection of web service anti-patterns using word embedding techniques', 2021);
INSERT INTO `wos` VALUES ('a proposal of the olfactory information presentation method and its application for scent generator using web service', 2012);
INSERT INTO `wos` VALUES ('a qualitative analysis of factors that influence vietnamese ethnic minority women to seek maternal health care', 2019);
INSERT INTO `wos` VALUES ('a rationale and model for addressing tobacco dependence in substance abuse treatment', 2006);
INSERT INTO `wos` VALUES ('a stitch in time saves nine: early improving code-first web services discoverability', 2015);
INSERT INTO `wos` VALUES ('a tool to improve code-first web services discoverability through text mining techniques', 2015);
INSERT INTO `wos` VALUES ('a uri parsing technique and algorithm for anti-pattern detection in restful web services', 2021);
INSERT INTO `wos` VALUES ('a versatile soa-based e-business platform', 2008);
INSERT INTO `wos` VALUES ('an effective web service anti-pattern prediction model using smote', 2019);
INSERT INTO `wos` VALUES ('an empirical analysis on the prediction of web service anti-patterns using source code metrics and ensemble techniques', 2021);
INSERT INTO `wos` VALUES ('an empirical analysis on web service anti-pattern detection using a machine learning framework', 2018);
INSERT INTO `wos` VALUES ('an empirical study on underlying correlations between runtime performance deficiencies and \"bad smells\" of microservice systems', 2021);
INSERT INTO `wos` VALUES ('analyzing the change-proneness of service-oriented systems from an industrial perspective', 2013);
INSERT INTO `wos` VALUES ('anti-pattern free code-first web services for state-of-the-art java wsdl generation tools', 2013);
INSERT INTO `wos` VALUES ('architectural design of cloud applications: a performance-aware cost minimization approach', 2022);
INSERT INTO `wos` VALUES ('aspect-oriented modeling of technology heterogeneity in microservice architecture', 2019);
INSERT INTO `wos` VALUES ('assessment of society\'s perceptions on cultural ecosystem services in a cultural landscape in nanchang, china', 2023);
INSERT INTO `wos` VALUES ('assuring the evolvability of microservices: insights into industry practices and challenges', 2019);
INSERT INTO `wos` VALUES ('asynchronous semantics and anti-patterns for interacting web services', 2006);
INSERT INTO `wos` VALUES ('automated code-smell detection in microservices through static analysis: a case study', 2020);
INSERT INTO `wos` VALUES ('automatic anti-pattern detection in microservice architectures based on distributed tracing', 2022);
INSERT INTO `wos` VALUES ('child undernutrition in sudan: the social and economic impact and future perspectives', 2021);
INSERT INTO `wos` VALUES ('cloud service based intelligent video storage device management system, has data collection and transmission controlling center connected with device controller through temperature and humidity sensor, smell sensor and pressure sensor', 2017);
INSERT INTO `wos` VALUES ('combat casualties and race: what can we learn from the 2003-2004 iraq conflict?', 2005);
INSERT INTO `wos` VALUES ('computer implemented method for structuring variable rate municipal bond, involves setting budgeted debt service based on savings versus debt service associated with fixed interest rate on bond structured to municipal bond', 2013);
INSERT INTO `wos` VALUES ('datesso: self-adapting service composition with debt-aware two levels constraint reasoning', 2020);
INSERT INTO `wos` VALUES ('dealing with label uncertainty in web service anti-patterns detection using a possibilistic evolutionary approach', 2021);
INSERT INTO `wos` VALUES ('debt of family medicine residents continues to grow', 2021);
INSERT INTO `wos` VALUES ('design and implementation of government debt managerment informantion system', 2008);
INSERT INTO `wos` VALUES ('detecting wsdl bad practices in code-first web services', 2011);
INSERT INTO `wos` VALUES ('detection of web service anti-patterns using weighted extreme learning machine', 2022);
INSERT INTO `wos` VALUES ('does migrating a monolithic system to microservices decrease the technical debt?', 2020);
INSERT INTO `wos` VALUES ('evaluating technical debt in cloud-based architectures using real options', 2013);
INSERT INTO `wos` VALUES ('following domain driven design principles for microservices decomposition: is it enough?', 2021);
INSERT INTO `wos` VALUES ('impacts, causes, and solutions of architectural smells in microservices: an industrial investigation', 2022);
INSERT INTO `wos` VALUES ('improving agility by managing shared libraries in microservices', 2020);
INSERT INTO `wos` VALUES ('investigating the change-proneness of service patterns and antipatterns', 2014);
INSERT INTO `wos` VALUES ('kubehound: detecting microservices\' security smells in kubernetes deployments', 2023);
INSERT INTO `wos` VALUES ('leveraging the layered architecture for microservice recovery', 2022);
INSERT INTO `wos` VALUES ('limiting technical debt with maintainability assurance - an industry survey on used techniques and differences with service- and microservice-based systems', 2018);
INSERT INTO `wos` VALUES ('machine learning with word embedding for detecting web-services anti-patterns', 2023);
INSERT INTO `wos` VALUES ('Microservices migration patterns', 2018);
INSERT INTO `wos` VALUES ('multi-criteria web services selection: balancing the quality of design and quality of service', 2022);
INSERT INTO `wos` VALUES ('odorify: a conglomerate of artificial intelligence-driven prediction engines for olfactory decoding', 2021);
INSERT INTO `wos` VALUES ('on the definition of microservice bad smells', 2018);
INSERT INTO `wos` VALUES ('on the value of quality of service attributes for detecting bad design practices', 2017);
INSERT INTO `wos` VALUES ('prediction of web service anti-patterns using aggregate software metrics and machine learning techniques', 2020);
INSERT INTO `wos` VALUES ('public health services in ethnic minority areas', 2010);
INSERT INTO `wos` VALUES ('quantifying and evaluating the technical debt on mobile cloud-based service level', 2016);
INSERT INTO `wos` VALUES ('reengineering software to three-tier applications and services', 2012);
INSERT INTO `wos` VALUES ('refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment', 2014);
INSERT INTO `wos` VALUES ('search-based web service antipatterns detection', 2017);
INSERT INTO `wos` VALUES ('should microservice security smells stay or be refactored? towards a trade-off analysis', 2022);
INSERT INTO `wos` VALUES ('specification and detection of soa antipatterns', 2014);
INSERT INTO `wos` VALUES ('speeding up the rul- dynamic-controllability-checking algorithm for simple temporal networks with uncertainty', 2022);
INSERT INTO `wos` VALUES ('spotting and removing wsdl anti-pattern root causes in code-first web services using nlp techniques: a thorough validation of impact on service discoverability', 2018);
INSERT INTO `wos` VALUES ('spread: service-oriented process for reengineering and devops developing microservices for a brazilian state department of taxation', 2022);
INSERT INTO `wos` VALUES ('study on improving acceptance of government portal website', 2010);
INSERT INTO `wos` VALUES ('technical debt in service-oriented software systems', 2022);
INSERT INTO `wos` VALUES ('technology and recent development of xml web services', 2010);
INSERT INTO `wos` VALUES ('the parallel agile process: applying parallel processing techniques to software engineering', 2019);
INSERT INTO `wos` VALUES ('the role of community pharmacy in supporting people with diabetes who have a history of repeated non-attendance at healthcare appointments', 2023);
INSERT INTO `wos` VALUES ('the μtosca toolchain: mining, analyzing, and refactoring microservice-based architectures', 2021);
INSERT INTO `wos` VALUES ('three common mistakes in modeling and analysis of qos of service-oriented systems', 2009);
INSERT INTO `wos` VALUES ('tool support for the migration to microservice architecture: an industrial case study', 2019);
INSERT INTO `wos` VALUES ('towards microservice smells detection', 2020);
INSERT INTO `wos` VALUES ('using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: a tool-based approach', 2021);
INSERT INTO `wos` VALUES ('value- and debt-aware selection and composition in cloud-based service-oriented architectures using real options', 2015);
INSERT INTO `wos` VALUES ('web service anti-patterns prediction using lstm with varying embedding sizes', 2022);
INSERT INTO `wos` VALUES ('web service interface decomposition using formal concept analysis', 2017);
INSERT INTO `wos` VALUES ('xml development with plug-ins as a service', 2014);

SET FOREIGN_KEY_CHECKS = 1;

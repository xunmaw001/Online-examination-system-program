-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmtxx6o
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmtxx6o/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmtxx6o/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmtxx6o/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixianxuexi`
--

DROP TABLE IF EXISTS `discusszaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixianxuexi`
--

LOCK TABLES `discusszaixianxuexi` WRITE;
/*!40000 ALTER TABLE `discusszaixianxuexi` DISABLE KEYS */;
INSERT INTO `discusszaixianxuexi` VALUES (121,'2021-02-08 08:04:43',1,1,'评论内容1','回复内容1'),(122,'2021-02-08 08:04:43',2,2,'评论内容2','回复内容2'),(123,'2021-02-08 08:04:43',3,3,'评论内容3','回复内容3'),(124,'2021-02-08 08:04:43',4,4,'评论内容4','回复内容4'),(125,'2021-02-08 08:04:43',5,5,'评论内容5','回复内容5'),(126,'2021-02-08 08:04:43',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabuwenti`
--

DROP TABLE IF EXISTS `fabuwenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabuwenti` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wentimiaoshu` longtext COMMENT '问题描述',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612771670147 DEFAULT CHARSET=utf8 COMMENT='发布问题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabuwenti`
--

LOCK TABLES `fabuwenti` WRITE;
/*!40000 ALTER TABLE `fabuwenti` DISABLE KEYS */;
INSERT INTO `fabuwenti` VALUES (31,'2021-02-08 08:04:42','标题1','类型1','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian1.jpg','问题描述1','2021-02-08','学号1','学生姓名1','是',''),(32,'2021-02-08 08:04:42','标题2','类型2','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian2.jpg','问题描述2','2021-02-08','学号2','学生姓名2','是',''),(33,'2021-02-08 08:04:42','标题3','类型3','http://localhost:8080/ssmtxx6o/upload/1612771985124.jpg','问题描述3','2021-02-08','学号3','学生姓名3','是',''),(34,'2021-02-08 08:04:42','标题4','类型4','http://localhost:8080/ssmtxx6o/upload/1612772003857.png','问题描述4','2021-02-08','学号4','学生姓名4','是',''),(35,'2021-02-08 08:04:42','标题5','类型5','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian5.jpg','问题描述5','2021-02-08','学号5','学生姓名5','是',''),(36,'2021-02-08 08:04:42','标题6','类型6','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian6.jpg','问题描述6','2021-02-08','学号6','学生姓名6','是','');
/*!40000 ALTER TABLE `fabuwenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-02-08 08:04:43','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-02-08 08:04:43','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-02-08 08:04:43','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-02-08 08:04:43','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-02-08 08:04:43','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-02-08 08:04:43','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-02-08 08:04:42','教师1','123456','教师姓名1','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881'),(22,'2021-02-08 08:04:42','教师2','123456','教师姓名2','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882'),(23,'2021-02-08 08:04:42','教师3','123456','教师姓名3','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883'),(24,'2021-02-08 08:04:42','教师4','123456','教师姓名4','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884'),(25,'2021-02-08 08:04:42','教师5','123456','教师姓名5','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885'),(26,'2021-02-08 08:04:42','教师6','123456','教师姓名6','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-02-08 08:04:43','标题1','简介1','http://localhost:8080/ssmtxx6o/upload/1612771917301.jpg','<p>内容1</p>'),(112,'2021-02-08 08:04:43','标题2','简介2','http://localhost:8080/ssmtxx6o/upload/1612771924960.jpg','<p>内容2</p>'),(113,'2021-02-08 08:04:43','标题3','简介3','http://localhost:8080/ssmtxx6o/upload/1612771932119.png','<p>内容3</p>'),(114,'2021-02-08 08:04:43','标题4','简介4','http://localhost:8080/ssmtxx6o/upload/1612771939609.jpg','<p>内容4</p>'),(115,'2021-02-08 08:04:43','标题5','简介5','http://localhost:8080/ssmtxx6o/upload/1612771947766.jpg','<p>内容5</p>'),(116,'2021-02-08 08:04:43','标题6','简介6','http://localhost:8080/ssmtxx6o/upload/1612771956788.jpg','<p>内容6</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','h21sdfd2hwlx70pelr2lna4yo539vn0s','2021-02-08 08:07:10','2021-02-08 09:08:17'),(2,11,'学生1','xuesheng','学生','mps4irge808e1973l3f3ge0z1ak1kgdx','2021-02-08 08:07:39','2021-02-08 09:07:40'),(3,21,'教师1','jiaoshi','管理员','5ao2ehxdacgiqagjpqxqbpizb8n65pg3','2021-02-08 08:07:56','2021-02-08 09:07:56');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-08 08:04:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-08 08:04:42','学生1','123456','学生姓名1','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-02-08 08:04:42','学生2','123456','学生姓名2','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-02-08 08:04:42','学生3','123456','学生姓名3','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-02-08 08:04:42','学生4','123456','学生姓名4','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-02-08 08:04:42','学生5','123456','学生姓名5','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-02-08 08:04:42','学生6','123456','学生姓名6','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixiandayi`
--

DROP TABLE IF EXISTS `zaixiandayi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixiandayi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `dayineirong` longtext COMMENT '答疑内容',
  `dayiriqi` date DEFAULT NULL COMMENT '答疑日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612771690078 DEFAULT CHARSET=utf8 COMMENT='在线答疑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixiandayi`
--

LOCK TABLES `zaixiandayi` WRITE;
/*!40000 ALTER TABLE `zaixiandayi` DISABLE KEYS */;
INSERT INTO `zaixiandayi` VALUES (41,'2021-02-08 08:04:43','标题1','类型1','答疑内容1','2021-02-08','学号1','学生姓名1','教师工号1','教师姓名1'),(42,'2021-02-08 08:04:43','标题2','类型2','答疑内容2','2021-02-08','学号2','学生姓名2','教师工号2','教师姓名2'),(43,'2021-02-08 08:04:43','标题3','类型3','答疑内容3','2021-02-08','学号3','学生姓名3','教师工号3','教师姓名3'),(44,'2021-02-08 08:04:43','标题4','类型4','答疑内容4','2021-02-08','学号4','学生姓名4','教师工号4','教师姓名4'),(45,'2021-02-08 08:04:43','标题5','类型5','答疑内容5','2021-02-08','学号5','学生姓名5','教师工号5','教师姓名5'),(46,'2021-02-08 08:04:43','标题6','类型6','答疑内容6','2021-02-08','学号6','学生姓名6','教师工号6','教师姓名6'),(1612771690077,'2021-02-08 08:08:09','1','1','二房热让她','2021-02-08','学生1','学生姓名1','教师1','教师姓名1');
/*!40000 ALTER TABLE `zaixiandayi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianxuexi`
--

DROP TABLE IF EXISTS `zaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirongjianjie` longtext COMMENT '内容简介',
  `xuexiziliao` longtext COMMENT '学习资料',
  `xuexishipin` varchar(200) DEFAULT NULL COMMENT '学习视频',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianxuexi`
--

LOCK TABLES `zaixianxuexi` WRITE;
/*!40000 ALTER TABLE `zaixianxuexi` DISABLE KEYS */;
INSERT INTO `zaixianxuexi` VALUES (51,'2021-02-08 08:04:43','标题1','类型1','http://localhost:8080/ssmtxx6o/upload/1612771737875.jpg','内容简介1','<p>学习资料1</p>','','2021-02-08','2021-02-08 16:08:42',2),(52,'2021-02-08 08:04:43','标题2','类型2','http://localhost:8080/ssmtxx6o/upload/1612771749776.jpg','内容简介2','<p>学习资料2</p>','','2021-02-08','2021-02-08 16:09:02',3),(53,'2021-02-08 08:04:43','标题3','类型3','http://localhost:8080/ssmtxx6o/upload/1612771798479.jpg','内容简介3','<p>学习资料3</p>','','2021-02-08','2021-02-08 16:09:46',4),(54,'2021-02-08 08:04:43','标题4','类型4','http://localhost:8080/ssmtxx6o/upload/1612771781107.jpg','内容简介4','<p>学习资料4</p>','','2021-02-08','2021-02-08 16:09:14',5),(55,'2021-02-08 08:04:43','标题5','类型5','http://localhost:8080/ssmtxx6o/upload/1612771810959.jpg','内容简介5','<p>学习资料5</p>','','2021-02-08','2021-02-08 16:10:04',6),(56,'2021-02-08 08:04:43','标题6','类型6','http://localhost:8080/ssmtxx6o/upload/1612771829626.jpg','内容简介6','<p>学习资料6</p>','','2021-02-08','2021-02-08 16:13:44',8);
/*!40000 ALTER TABLE `zaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-08 20:54:52

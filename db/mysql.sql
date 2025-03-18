DROP DATABASE IF EXISTS ssmtxx6o;

CREATE DATABASE ssmtxx6o default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmtxx6o;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(11,'学生1','123456','学生姓名1','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(12,'学生2','123456','学生姓名2','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(13,'学生3','123456','学生姓名3','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(14,'学生4','123456','学生姓名4','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(15,'学生5','123456','学生姓名5','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,touxiang,shouji,youxiang) VALUES(16,'学生6','123456','学生姓名6','男','http://localhost:8080/ssmtxx6o/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200) NOT NULL UNIQUE   COMMENT '教师工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhaopian` varchar(200)    COMMENT '照片',
	`zhicheng` varchar(200)    COMMENT '职称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(21,'教师1','123456','教师姓名1','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881');
INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(22,'教师2','123456','教师姓名2','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882');
INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(23,'教师3','123456','教师姓名3','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883');
INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(24,'教师4','123456','教师姓名4','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884');
INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(25,'教师5','123456','教师姓名5','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885');
INSERT INTO jiaoshi(id,jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua) VALUES(26,'教师6','123456','教师姓名6','男','http://localhost:8080/ssmtxx6o/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886');

DROP TABLE IF EXISTS `fabuwenti`;

CREATE TABLE `fabuwenti` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`leixing` varchar(200)    COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`wentimiaoshu` longtext    COMMENT '问题描述',
	`faburiqi` date    COMMENT '发布日期',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发布问题';

INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(31,'标题1','类型1','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian1.jpg','问题描述1',CURRENT_TIMESTAMP,'学号1','学生姓名1','是','');
INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(32,'标题2','类型2','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian2.jpg','问题描述2',CURRENT_TIMESTAMP,'学号2','学生姓名2','是','');
INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(33,'标题3','类型3','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian3.jpg','问题描述3',CURRENT_TIMESTAMP,'学号3','学生姓名3','是','');
INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(34,'标题4','类型4','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian4.jpg','问题描述4',CURRENT_TIMESTAMP,'学号4','学生姓名4','是','');
INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(35,'标题5','类型5','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian5.jpg','问题描述5',CURRENT_TIMESTAMP,'学号5','学生姓名5','是','');
INSERT INTO fabuwenti(id,biaoti,leixing,tupian,wentimiaoshu,faburiqi,xuehao,xueshengxingming,sfsh,shhf) VALUES(36,'标题6','类型6','http://localhost:8080/ssmtxx6o/upload/fabuwenti_tupian6.jpg','问题描述6',CURRENT_TIMESTAMP,'学号6','学生姓名6','是','');

DROP TABLE IF EXISTS `zaixiandayi`;

CREATE TABLE `zaixiandayi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`leixing` varchar(200)    COMMENT '类型',
	`dayineirong` longtext    COMMENT '答疑内容',
	`dayiriqi` date    COMMENT '答疑日期',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线答疑';

INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(41,'标题1','类型1','答疑内容1',CURRENT_TIMESTAMP,'学号1','学生姓名1','教师工号1','教师姓名1');
INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(42,'标题2','类型2','答疑内容2',CURRENT_TIMESTAMP,'学号2','学生姓名2','教师工号2','教师姓名2');
INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(43,'标题3','类型3','答疑内容3',CURRENT_TIMESTAMP,'学号3','学生姓名3','教师工号3','教师姓名3');
INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(44,'标题4','类型4','答疑内容4',CURRENT_TIMESTAMP,'学号4','学生姓名4','教师工号4','教师姓名4');
INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(45,'标题5','类型5','答疑内容5',CURRENT_TIMESTAMP,'学号5','学生姓名5','教师工号5','教师姓名5');
INSERT INTO zaixiandayi(id,biaoti,leixing,dayineirong,dayiriqi,xuehao,xueshengxingming,jiaoshigonghao,jiaoshixingming) VALUES(46,'标题6','类型6','答疑内容6',CURRENT_TIMESTAMP,'学号6','学生姓名6','教师工号6','教师姓名6');

DROP TABLE IF EXISTS `zaixianxuexi`;

CREATE TABLE `zaixianxuexi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`neirongjianjie` longtext    COMMENT '内容简介',
	`xuexiziliao` longtext    COMMENT '学习资料',
	`xuexishipin` varchar(200)    COMMENT '学习视频',
	`faburiqi` date    COMMENT '发布日期',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线学习';

INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(51,'标题1','类型1','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian1.jpg','内容简介1','学习资料1','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,1);
INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(52,'标题2','类型2','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian2.jpg','内容简介2','学习资料2','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,2);
INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(53,'标题3','类型3','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian3.jpg','内容简介3','学习资料3','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,3);
INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(54,'标题4','类型4','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian4.jpg','内容简介4','学习资料4','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,4);
INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(55,'标题5','类型5','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian5.jpg','内容简介5','学习资料5','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,5);
INSERT INTO zaixianxuexi(id,biaoti,leixing,tupian,neirongjianjie,xuexiziliao,xuexishipin,faburiqi,clicktime,clicknum) VALUES(56,'标题6','类型6','http://localhost:8080/ssmtxx6o/upload/zaixianxuexi_tupian6.jpg','内容简介6','学习资料6','',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛交流';

INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(61,'帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(62,'帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(63,'帖子标题3','帖子内容3',3,3,'用户名3','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(64,'帖子标题4','帖子内容4',4,4,'用户名4','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(65,'帖子标题5','帖子内容5',5,5,'用户名5','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(66,'帖子标题6','帖子内容6',6,6,'用户名6','开放');

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`name` varchar(200) NOT NULL   COMMENT '试卷名称',
	`time` int NOT NULL   COMMENT '考试时长(分钟)',
	`status` int NOT NULL  default '0' COMMENT '试卷状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';


DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`paperid` bigint NOT NULL   COMMENT '所属试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`type` bigint   default '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
	`sequence` bigint   default '100' COMMENT '试题排序，值越大排越前面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';


DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`paperid` bigint NOT NULL   COMMENT '试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionid` bigint NOT NULL   COMMENT '试题id（外键）',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`myscore` bigint NOT NULL  default '0' COMMENT '试题得分',
	`myanswer` varchar(200)    COMMENT '考生答案',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

INSERT INTO news(id,title,introduction,picture,content) VALUES(111,'标题1','简介1','http://localhost:8080/ssmtxx6o/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(112,'标题2','简介2','http://localhost:8080/ssmtxx6o/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(113,'标题3','简介3','http://localhost:8080/ssmtxx6o/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(114,'标题4','简介4','http://localhost:8080/ssmtxx6o/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(115,'标题5','简介5','http://localhost:8080/ssmtxx6o/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(116,'标题6','简介6','http://localhost:8080/ssmtxx6o/upload/news_picture6.jpg','内容6');

DROP TABLE IF EXISTS `discusszaixianxuexi`;

CREATE TABLE `discusszaixianxuexi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';

INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(121,1,1,'评论内容1','回复内容1');
INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(122,2,2,'评论内容2','回复内容2');
INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(123,3,3,'评论内容3','回复内容3');
INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(124,4,4,'评论内容4','回复内容4');
INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(125,5,5,'评论内容5','回复内容5');
INSERT INTO discusszaixianxuexi(id,refid,userid,content,reply) VALUES(126,6,6,'评论内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmtxx6o/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmtxx6o/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmtxx6o/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';


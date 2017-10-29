/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : jeesns

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-10-29 10:10:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_archive
-- ----------------------------
DROP TABLE IF EXISTS `tbl_archive`;
CREATE TABLE `tbl_archive` (
  `archive_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_type` int(11) DEFAULT '0' COMMENT '发布类型，1是普通文章，2是群组文章',
  `title` varchar(255) DEFAULT NULL COMMENT '文档标题',
  `member_id` int(11) DEFAULT NULL COMMENT '会员ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `description` varchar(255) DEFAULT NULL COMMENT '描述说明',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键词',
  `view_rank` int(11) DEFAULT '0' COMMENT '浏览权限，0不限制，1会员',
  `view_count` int(11) DEFAULT '0' COMMENT '浏览次数',
  `writer` varchar(30) DEFAULT '' COMMENT '作者',
  `source` varchar(30) DEFAULT '' COMMENT '来源',
  `pub_time` datetime DEFAULT NULL COMMENT '发布日期',
  `update_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `last_reply` datetime DEFAULT NULL COMMENT '最后回复时间',
  `can_reply` int(1) DEFAULT '0' COMMENT '是否可以回复，0可以回复，1不可以回复',
  `good_num` int(11) DEFAULT '0' COMMENT '点赞数量',
  `bad_num` int(11) DEFAULT '0' COMMENT '踩数量',
  `check_admin` int(11) DEFAULT '0' COMMENT '审核管理员id',
  `content` text COMMENT '内容',
  `favor` int(11) DEFAULT '0' COMMENT '喜欢、点赞',
  PRIMARY KEY (`archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_archive
-- ----------------------------
INSERT INTO `tbl_archive` VALUES ('1', '0', '第一次作业', '1', '2017-10-21 16:56:47', '几道问答题？', null, '0', '9', null, null, '2017-10-21 16:56:47', null, null, null, '0', '0', '0', '0', '<p>1.说说对高级软件工程的一些看法</p>\n\n<p>2.介绍一些设计模式</p>\n\n<p>3.编程时应该注意哪些问题</p>\n', '0');
INSERT INTO `tbl_archive` VALUES ('2', '0', '第二次作业', '1', '2017-10-24 18:35:13', '第二次作业', null, '0', '0', null, null, '2017-10-24 18:35:13', null, null, null, '0', '0', '0', '0', '<p>第二次作业第二次作业第二次作业第二次作业</p>\n', '0');
INSERT INTO `tbl_archive` VALUES ('3', '0', '第三次作业', '1', '2017-10-24 22:23:07', '测试test', null, '0', '1', null, null, '2017-10-24 22:23:07', null, null, null, '0', '0', '0', '0', '<p>测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test测试test</p>\n', '0');
INSERT INTO `tbl_archive` VALUES ('4', '0', '第四次作业', '1', '2017-10-24 22:25:00', '第四次作业', null, '0', '3', null, null, '2017-10-24 22:25:00', null, null, null, '0', '0', '0', '0', '<p>第四次作业第四次作业</p>\n', '0');
INSERT INTO `tbl_archive` VALUES ('5', '0', '第一次作业', '1', '2017-10-24 22:34:19', '第一次作业', null, '0', '5', null, null, '2017-10-24 22:34:19', null, null, null, '0', '0', '0', '0', '<p>第一次作业</p>\n', '1');
INSERT INTO `tbl_archive` VALUES ('6', '0', '第五次作业', '1', '2017-10-24 23:58:15', 'test', null, '0', '1', null, null, '2017-10-24 23:58:15', null, null, null, '0', '0', '0', '0', '<p>test2</p>\n', '0');
INSERT INTO `tbl_archive` VALUES ('7', '0', '123', '1', '2017-10-27 20:51:25', '123', null, '0', '1', null, null, '2017-10-27 20:51:25', null, null, null, '0', '0', '0', '0', '<p><a href=\"/upload/images/20171027/9b463050-40e8-4d91-8f36-5e935eba6573.jpg\">/upload/images/20171027/9b463050-40e8-4d91-8f36-5e935eba6573.jpg</a></p>\n', '0');

-- ----------------------------
-- Table structure for tbl_archive_favor
-- ----------------------------
DROP TABLE IF EXISTS `tbl_archive_favor`;
CREATE TABLE `tbl_archive_favor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `archive_id` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_archive_id_member_id` (`archive_id`,`member_id`),
  KEY `fk_archive_favor_member` (`member_id`),
  CONSTRAINT `fk_archive_favor_archive` FOREIGN KEY (`archive_id`) REFERENCES `tbl_archive` (`archive_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_archive_favor_member` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_archive_favor
-- ----------------------------
INSERT INTO `tbl_archive_favor` VALUES ('2', '2017-10-29 09:29:20', '5', '1');

-- ----------------------------
-- Table structure for tbl_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE `tbl_config` (
  `jkey` varchar(100) NOT NULL DEFAULT '',
  `jvalue` varchar(500) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  PRIMARY KEY (`jkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_config
-- ----------------------------
INSERT INTO `tbl_config` VALUES ('cms_post', '1', 'cms会员文章投稿，0关闭，1开启');
INSERT INTO `tbl_config` VALUES ('cms_post_review', '0', 'cms投稿审核，0需要审核，1不需要审核');
INSERT INTO `tbl_config` VALUES ('group_alias', '我的群组', '群组别名');
INSERT INTO `tbl_config` VALUES ('group_apply', '1', '群组是否可以申请，0不可以，1可以');
INSERT INTO `tbl_config` VALUES ('group_apply_review', '0', '群组申请是否需要审核，0需要审核，1不需要审核');
INSERT INTO `tbl_config` VALUES ('member_email_valid', '0', '邮箱验证，0不需要验证，1需要验证');
INSERT INTO `tbl_config` VALUES ('member_login_open', '1', '会员登录开关，0关闭，1开启');
INSERT INTO `tbl_config` VALUES ('member_register_open', '1', '会员注册开关，0关闭，1开启');
INSERT INTO `tbl_config` VALUES ('site_copyright', '课程群组', '版权说明');
INSERT INTO `tbl_config` VALUES ('site_description', '课程群组是一款很好用的教学系统，选课可以自动生成课程群组。', '网站描述');
INSERT INTO `tbl_config` VALUES ('site_domain', 'http://www.javateam.cn/', '网站域名');
INSERT INTO `tbl_config` VALUES ('site_icp', '湖北省武汉市武汉大学计算机学院', '备案号');
INSERT INTO `tbl_config` VALUES ('site_keys', 'java', '网站关键词');
INSERT INTO `tbl_config` VALUES ('site_logo', '/res/common/images/lxinetlogo.png', '网站LOGO');
INSERT INTO `tbl_config` VALUES ('site_name', '群组', '网站名称');
INSERT INTO `tbl_config` VALUES ('site_send_email_account', '', '发送邮箱账号');
INSERT INTO `tbl_config` VALUES ('site_send_email_password', '', '发送邮箱密码');
INSERT INTO `tbl_config` VALUES ('site_send_email_smtp', '', '发送邮箱SMTP服务器地址');
INSERT INTO `tbl_config` VALUES ('site_seo_title', '课程群组', 'SEO标题');
INSERT INTO `tbl_config` VALUES ('site_tongji', '<script>var _hmt = _hmt || [];(function() {var hm = document.createElement(\"script\");hm.src = \"https://hm.baidu.com/hm.js?6e79d941db914e4195f4a839b06f2567\";var s = document.getElementsByTagName(\"script\")[0]; s.parentNode.insertBefore(hm, s);})();</script>', '统计代码');
INSERT INTO `tbl_config` VALUES ('weibo_alias', '微博', '微博别名');
INSERT INTO `tbl_config` VALUES ('weibo_post', '1', '微博发布，0不可以发布，1可以发布');
INSERT INTO `tbl_config` VALUES ('weibo_post_maxcontent', '140', '微博内容字数');

-- ----------------------------
-- Table structure for tbl_group
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group`;
CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '群组名字',
  `logo` varchar(255) DEFAULT NULL COMMENT '群组logo',
  `creator` int(11) DEFAULT NULL COMMENT '创建人',
  `managers` varchar(200) DEFAULT NULL COMMENT '管理员',
  `tags` varchar(100) DEFAULT NULL COMMENT '标签',
  `introduce` varchar(255) DEFAULT NULL COMMENT '介绍',
  `can_post` int(11) DEFAULT '0' COMMENT '是否能发帖，0不可以，1可以',
  `topic_review` int(11) DEFAULT '0' COMMENT '帖子是否需要审核，0不需要，1需要',
  `status` int(11) DEFAULT '0' COMMENT '0未审核，1已审核，-1审核不通过',
  PRIMARY KEY (`id`),
  KEY `fk_group_member` (`creator`),
  CONSTRAINT `fk_group_member` FOREIGN KEY (`creator`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_group
-- ----------------------------
INSERT INTO `tbl_group` VALUES ('2', '2017-10-24 22:33:11', 'Java程序设计', '/res/common/images/nopic.png', '1', '1', '', 'Java程序设计', '1', '0', '1');
INSERT INTO `tbl_group` VALUES ('3', '2017-10-25 18:11:12', '高级软件工程', '/res/common/images/nopic.png', '1', '1', '', '高级软件工程是一门很有用的课程。', '1', '0', '1');
INSERT INTO `tbl_group` VALUES ('4', '2017-10-27 18:18:26', 'C语言', '/res/common/images/nopic.png', '1', '1', '', 'C语言', '1', '0', '1');
INSERT INTO `tbl_group` VALUES ('15', '2017-10-27 19:00:09', 'C++', '/res/common/images/nopic.png', '1', '1', '', 'C++', '1', '0', '1');

-- ----------------------------
-- Table structure for tbl_group_fans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group_fans`;
CREATE TABLE `tbl_group_fans` (
  `create_time` datetime DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  UNIQUE KEY `uk_group_id_member_id` (`group_id`,`member_id`),
  KEY `fk_group_fans_member` (`member_id`),
  CONSTRAINT `fk_group_fans_group` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_group_fans_member` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_group_fans
-- ----------------------------
INSERT INTO `tbl_group_fans` VALUES ('2017-10-24 22:33:11', '2', '1');
INSERT INTO `tbl_group_fans` VALUES ('2017-10-25 18:11:12', '3', '1');
INSERT INTO `tbl_group_fans` VALUES ('2017-10-26 19:41:56', '2', '2');
INSERT INTO `tbl_group_fans` VALUES ('2017-10-27 18:18:26', '4', '1');
INSERT INTO `tbl_group_fans` VALUES ('2017-10-27 19:00:10', '15', '1');

-- ----------------------------
-- Table structure for tbl_group_topic
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group_topic`;
CREATE TABLE `tbl_group_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collect_time` datetime DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `archive_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '状态，0未审核，1已审核',
  `is_essence` int(11) DEFAULT '0' COMMENT '精华，0不加精，1加精',
  `is_top` int(11) DEFAULT '0' COMMENT '置顶，0不置顶，1置顶，2超级置顶',
  PRIMARY KEY (`id`),
  KEY `fk_group_topic_group` (`group_id`),
  KEY `fk_group_topic_archive` (`archive_id`),
  CONSTRAINT `fk_group_topic_archive` FOREIGN KEY (`archive_id`) REFERENCES `tbl_archive` (`archive_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_group_topic_group` FOREIGN KEY (`group_id`) REFERENCES `tbl_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_group_topic
-- ----------------------------
INSERT INTO `tbl_group_topic` VALUES ('5', '2017-10-24 22:34:19', '2', '5', '1', '0', '0');
INSERT INTO `tbl_group_topic` VALUES ('7', '2017-10-27 20:51:25', '2', '7', '1', '0', '0');

-- ----------------------------
-- Table structure for tbl_group_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_group_topic_comment`;
CREATE TABLE `tbl_group_topic_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `group_topic_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `fk_group_topic_comment_member` (`member_id`),
  KEY `fk_group_topic_comment_group_topic` (`group_topic_id`),
  CONSTRAINT `fk_group_topic_comment_group_topic` FOREIGN KEY (`group_topic_id`) REFERENCES `tbl_group_topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_group_topic_comment_member` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_group_topic_comment
-- ----------------------------
INSERT INTO `tbl_group_topic_comment` VALUES ('3', '2017-10-24 22:34:29', '5', '1', null, '好 ');

-- ----------------------------
-- Table structure for tbl_link
-- ----------------------------
DROP TABLE IF EXISTS `tbl_link`;
CREATE TABLE `tbl_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `url` varchar(255) DEFAULT NULL COMMENT '网址',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序，越大越靠前',
  `recomment` int(11) NOT NULL DEFAULT '0' COMMENT '推荐，0不推荐，1推荐',
  `status` int(1) DEFAULT '0' COMMENT '状态，0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_link
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_member
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT '0' COMMENT '分组ID',
  `name` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `password` varchar(32) DEFAULT '' COMMENT '密码',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `regip` varchar(15) DEFAULT '' COMMENT '注册IP',
  `login_count` int(11) DEFAULT '0' COMMENT '登录次数',
  `curr_login_time` datetime DEFAULT NULL COMMENT '本次登录时间',
  `curr_login_ip` varchar(150) DEFAULT NULL COMMENT '本次登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(150) DEFAULT NULL COMMENT '上次登录IP',
  `update_time` datetime DEFAULT NULL COMMENT '更新资料时间',
  `money` double(11,2) DEFAULT '0.00' COMMENT '金额',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `is_active` int(1) DEFAULT '0' COMMENT '是否已激活，0未激活，1已激活',
  `status` int(2) DEFAULT '0' COMMENT '-1禁用，0启用',
  `birthday` varchar(10) DEFAULT NULL COMMENT '生日',
  `addprovince` varchar(20) DEFAULT '' COMMENT '居住省份',
  `addcity` varchar(20) DEFAULT '' COMMENT '居住城市',
  `addarea` varchar(20) DEFAULT '' COMMENT '居住地区',
  `address` varchar(50) DEFAULT '' COMMENT '居住地址',
  `qq` varchar(15) DEFAULT '' COMMENT 'QQ',
  `wechat` varchar(20) DEFAULT '' COMMENT '微信',
  `contact_phone` varchar(11) DEFAULT '' COMMENT '联系手机号',
  `contact_email` varchar(32) DEFAULT '' COMMENT '联系邮箱',
  `website` varchar(50) DEFAULT '' COMMENT '个人网站',
  `introduce` varchar(255) DEFAULT '' COMMENT '个人介绍',
  `is_admin` int(11) DEFAULT '0' COMMENT '是否管理员，0不是，1是普通管理员，2是超级管理员',
  `follows` int(11) DEFAULT '0' COMMENT '关注会员数量',
  `fans` int(11) DEFAULT '0' COMMENT '粉丝数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_member
-- ----------------------------
INSERT INTO `tbl_member` VALUES ('1', '0', 'admin', 'admin@jeesns.cn', '13800138000', '56b0436e6dd61a1f5f6a636cdf790eee', '女', '/res/common/images/default-avatar.png', '2017-10-21 16:05:46', '', '29', '2017-10-29 09:24:59', '192.168.56.1', '2017-10-27 20:47:30', 'fe80:0:0:0:b9b2:eeb5:c9a0:edaa%11', null, '0.00', '-9', '1', '0', '1971-12-20', '', '', '', '', '8888888', 'admin', '13800138000', 'admin@jeesns.cn', 'www.javateam.cn', '', '2', '0', '0');
INSERT INTO `tbl_member` VALUES ('2', '0', 'xiaoming', '7474@qq.com', '13513513513', '56b0436e6dd61a1f5f6a636cdf790eee', '男', '/res/common/images/default-avatar.png', '2017-10-26 19:40:00', '', '15', '2017-10-29 09:30:08', '192.168.56.1', '2017-10-27 20:27:02', 'fe80:0:0:0:b9b2:eeb5:c9a0:edaa%11', null, '0.00', '0', '0', '0', '1971-12-20', '', '', '', '', '8888887', 'ad', '13800138012', 'admin@qq.cn', 'www.javateam.cn', '', '0', '0', '0');
INSERT INTO `tbl_member` VALUES ('11', '0', 'zhangsan', 'zhangsan@qq.com', '', 'ba35dfb36295fd272739adb24d73323f', null, '/res/common/images/default-avatar.png', '2017-10-29 10:05:30', '192.168.56.1', '0', '2017-10-29 10:05:30', '192.168.56.1', '2017-10-29 10:05:30', '192.168.56.1', null, '0.00', '0', '0', '0', null, '', '', '', '', '', '', '', '', '', '', '2', '0', '0');
INSERT INTO `tbl_member` VALUES ('12', '0', 'liuerge', 'lisi@qq.com', '', 'e10adc3949ba59abbe56e057f20f883e', null, '/res/common/images/default-avatar.png', '2017-10-29 10:06:18', '192.168.56.1', '0', '2017-10-29 10:06:18', '192.168.56.1', '2017-10-29 10:06:18', '192.168.56.1', null, '0.00', '0', '0', '0', null, '', '', '', '', '', '', '', '', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for tbl_member_fans
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member_fans`;
CREATE TABLE `tbl_member_fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `follow_who` int(11) DEFAULT '0',
  `who_follow` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_follow_who_who_follow` (`follow_who`,`who_follow`),
  KEY `fk_member_fans_who_follow` (`who_follow`),
  CONSTRAINT `fk_member_fans_follow_who` FOREIGN KEY (`follow_who`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_member_fans_who_follow` FOREIGN KEY (`who_follow`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_member_fans
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_member_token
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member_token`;
CREATE TABLE `tbl_member_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT '0' COMMENT '会员ID',
  `token` varchar(32) DEFAULT '',
  `expire_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '状态，0是正常，1是失效',
  PRIMARY KEY (`id`),
  KEY `fk_member_token_member` (`member_id`),
  CONSTRAINT `fk_member_token_member` FOREIGN KEY (`member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_member_token
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_memgroup
-- ----------------------------
DROP TABLE IF EXISTS `tbl_memgroup`;
CREATE TABLE `tbl_memgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isadmin` int(1) DEFAULT '0' COMMENT '是否是管理组，0不是，1是',
  `name` varchar(50) DEFAULT '' COMMENT '分组名称',
  `fid` int(11) DEFAULT '0' COMMENT '上级分组ID，默认0，0是顶级分组',
  `rankid` int(11) DEFAULT '0' COMMENT '权限ID，0-99是会员权限，100以上是管理员权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_memgroup
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_message
-- ----------------------------
DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `from_member_id` int(11) DEFAULT '0',
  `to_member_id` int(11) DEFAULT '0',
  `content` text,
  `url` varchar(255) DEFAULT NULL,
  `isread` int(1) DEFAULT '0' COMMENT '是否已读，0未读，1已读',
  PRIMARY KEY (`id`),
  KEY `fk_message_from_member` (`from_member_id`),
  KEY `fk_message_to_member` (`to_member_id`),
  CONSTRAINT `fk_message_from_member` FOREIGN KEY (`from_member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_message_to_member` FOREIGN KEY (`to_member_id`) REFERENCES `tbl_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_message
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_picture
-- ----------------------------
DROP TABLE IF EXISTS `tbl_picture`;
CREATE TABLE `tbl_picture` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1是文章图片，2是群组帖子图片，3是微博图片',
  `foreign_id` int(11) DEFAULT NULL COMMENT '外键ID',
  `path` varchar(255) NOT NULL COMMENT '图片路径',
  `thumbnail_path` varchar(255) DEFAULT NULL COMMENT '缩小的图片路径',
  `md5` varchar(32) NOT NULL,
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_validate_code
-- ----------------------------
DROP TABLE IF EXISTS `tbl_validate_code`;
CREATE TABLE `tbl_validate_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `email` varchar(32) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  `type` int(1) DEFAULT '0' COMMENT '1是重置密码，2会员激活',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_validate_code
-- ----------------------------
INSERT INTO `tbl_validate_code` VALUES ('1', '2017-10-29 09:31:59', '747411801@qq.com', '3663f48cc98343fcbbe54a50de9cd3cd', '0', '1');

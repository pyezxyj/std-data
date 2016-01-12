

--
-- Table structure for table `tsys_dict`
--

DROP TABLE IF EXISTS `tsys_dict`;
CREATE TABLE `tsys_dict` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '编号 PK',
  `p_id` bigint(32) NOT NULL COMMENT '父编号',
  `dkey` varchar(32) NOT NULL COMMENT 'key',
  `dvalue` varchar(64) NOT NULL COMMENT 'value',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `create_datetime` datetime NOT NULL COMMENT '创建时间',
  `updater` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

--
-- Table structure for table `tpop_contract_template`
--
DROP TABLE IF EXISTS `tpop_contract_template`;
CREATE TABLE `tpop_contract_template` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '编号 PK',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `type` char(1) NOT NULL COMMENT '类别',
  `status` varchar(2) NOT NULL COMMENT '状态',
  `creator` varchar(32) NOT NULL COMMENT '创建者',
  `create_datetime` datetime NOT NULL COMMENT '创建时间',
  `updater` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同表';
/*!40101 SET character_set_client = @saved_cs_client */;


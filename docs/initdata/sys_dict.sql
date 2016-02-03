INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1001,'1',0,'角色等级','role_level','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1002,'1',1001,'role_level','1','admin',now(),'管理员级别');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1003,'1',1001,'role_level','2','admin',now(),'运营级别');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1004,'1',1001,'role_level','3','admin',now(),'财务级别');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1005,'1',0,'合同模板类型','contract_template_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1006,'1',1005,'contract_template_type','1','admin',now(),'三方合同');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1007,'1',1005,'contract_template_type','1001','admin',now(),'认购合同');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1008,'1',0,'合同模板状态','contract_template_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1009,'1',1008,'contract_template_status','1','admin',now(),'开启');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1010,'1',1008,'contract_template_status','0','admin',now(),'关闭');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1011,'1',0,'证件类型','id_kind','admin',now(),'证件类型');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1012,'1',1011,'id_kind','1','admin',now(),'身份证');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1013,'1',0,'登录状态','login_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1014,'1',1013,'login_status','0','admin',now(),'登录失败');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1015,'1',1013,'login_status','1','admin',now(),'登录成功');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1016,'1',1013,'login_status','2','admin',now(),'注册成功');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1017,'1',0,'锁定方向','lock_direction','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1018,'1',1017,'lock_direction','1','admin',now(),'用锁');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (1019,'1',1017,'lock_direction','2','admin',now(),'解锁');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2001,'1',0,'账户状态','account_status','admin',now(),'账户状态');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2002,'1',2001,'account_status','0','admin',now(),'正常');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2003,'1',2001,'account_status','1','admin',now(),'程序锁定');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2004,'1',2001,'account_status','2','admin',now(),'人工锁定');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2005,'1',0,'账户方向','account_direction','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2006,'1',2005,'account_direction','1','admin',now(),'加钱');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2007,'1',2005,'account_direction','0','admin',now(),'减钱');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2008,'1',0,'订单状态（充值取现）','order_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2009,'1',2008,'order_status','1','admin',now(),'待审批');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2010,'1',2008,'order_status','2','admin',now(),'审批不通过');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2011,'1',2008,'order_status','3','admin',now(),'审批通过-待支付');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2012,'1',2008,'order_status','4','admin',now(),'不用审批-待支付');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2013,'1',2008,'order_status','5','admin',now(),'支付失败-待对账');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2014,'1',2008,'order_status','6','admin',now(),'支付成功-待对账');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2015,'1',2008,'order_status','7','admin',now(),'已对账');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2016,'1',0,'红冲蓝补状态','rb_order_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2017,'1',2016,'rb_order_status','1','admin',now(),'待审批');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2018,'1',2016,'rb_order_status','2','admin',now(),'审批不通过');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2019,'1',2016,'rb_order_status','3','admin',now(),'审批通过');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2020,'1',0,'流水状态','jour_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2021,'1',2020,'jour_status','1','admin',now(),'待对账');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2022,'1',2020,'jour_status','2','admin',now(),'已对账待调帐');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2023,'1',2020,'jour_status','9','admin',now(),'已对账且账已平');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2024,'1',0,'业务类型','biz_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2025,'1',2024,'biz_type','11','admin',now(),'充值');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2026,'1',2024,'biz_type','-11','admin',now(),'取现');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2027,'1',2024,'biz_type','12','admin',now(),'转入');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2028,'1',2024,'biz_type','-12','admin',now(),'转出');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2029,'1',2024,'biz_type','13','admin',now(),'解冻');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2030,'1',2024,'biz_type','-13','admin',now(),'冻结');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2031,'1',2024,'biz_type','19','admin',now(),'蓝补');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2032,'1',2024,'biz_type','-19','admin',now(),'红冲');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2033,'1',0,'系统业务类型','sys_biz_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2034,'1',2033,'sys_biz_type','1','admin',now(),'做业务');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2035,'1',0,'渠道','channel','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2036,'1',2035,'channel','01','admin',now(),'线下');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2037,'1',0,'银行卡类型','bankcard_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2038,'1',2037,'bankcard_type','1','admin',now(),'对私');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (2039,'1',2037,'bankcard_type','2','admin',now(),'对公');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3001,'1',0,'客户状态','customer_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3002,'1',3001,'customer_status','0','admin',now(),'正常');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3003,'1',0,'操盘手等级','operator_level','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3004,'1',3003,'operator_level','0','admin',now(),'0级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3005,'1',3003,'operator_level','1','admin',now(),'1级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3006,'1',3003,'operator_level','2','admin',now(),'2级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3007,'1',3003,'operator_level','3','admin',now(),'3级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3008,'1',3003,'operator_level','4','admin',now(),'4级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3009,'1',3003,'operator_level','5','admin',now(),'5级');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3010,'1',0,'操盘手状态','operator_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3011,'1',3010,'operator_status','1','admin',now(),'启用');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3012,'1',0,'公司KYC状态','company_kyc_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3013,'1',3012,'company_kyc_status','1','admin',now(),'待KYC');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3014,'1',3012,'company_kyc_status','2','admin',now(),'KYC通过');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3015,'1',3012,'company_kyc_status','3','admin',now(),'KYC不通过');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3016,'1',0,'客户等级','customer_level','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3017,'1',3016,'customer_level','1','admin',now(),'一级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3018,'1',3016,'customer_level','2','admin',now(),'二级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3019,'1',3016,'customer_level','3','admin',now(),'三级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3020,'1',3016,'customer_level','4','admin',now(),'四级');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (3021,'1',3016,'customer_level','5','admin',now(),'五级');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4001,'1',0,'认购类型','invest_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4002,'1',4001,'invest_type','1','admin',now(),'真实认购');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4003,'1',4001,'invest_type','2','admin',now(),'意向说明');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4004,'1',0,'认购状态','invest_status ','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4005,'1',4004,'invest_status ','0','admin',now(),'认购申请中');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4006,'1',4004,'invest_status ','1','admin',now(),'已确认');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4007,'1',4004,'invest_status ','2','admin',now(),'已取消');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4008,'1',0,'服务类型','serve_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4009,'1',4008,'serve_type','A','admin',now(),'现金管理');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4010,'1',4008,'serve_type','B','admin',now(),'贸易重构');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4011,'1',4008,'serve_type','C','admin',now(),'财报优化');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4012,'1',4008,'serve_type','D','admin',now(),'市值管理');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4013,'1',4008,'serve_type','1','admin',now(),'等分模式');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4014,'1',4008,'serve_type','2','admin',now(),'优先劣后模式');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4015,'1',4008,'serve_type','a','admin',now(),'项目众筹');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4016,'1',4008,'serve_type','b','admin',now(),'金融众筹');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4017,'1',0,'报价模式','quote','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4018,'1',4017,'quote','A','admin',now(),'年化(自然日)');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4019,'1',4017,'quote','B','admin',now(),'年化(工作日)');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4020,'1',4017,'quote','C','admin',now(),'分成');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4021,'1',4017,'quote','D','admin',now(),'保底+分成');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4022,'1',0,'标的状态','project_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4023,'1',4022,'project_status','1','admin',now(),'待初审');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4024,'1',4022,'project_status','2','admin',now(),'初审通过，进入可募集状态');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4025,'1',4022,'project_status','3','admin',now(),'初审不通过，进入可重提状态');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4026,'1',4022,'project_status','4','admin',now(),'程序自动结束');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4027,'1',4022,'project_status','5','admin',now(),'人为强制结束');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4028,'1',0,'项目类型','project_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4029,'1',4028,'project_type','1','admin',now(),'额度标');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4030,'1',4028,'project_type','2','admin',now(),'期限标');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4031,'1',0,'项目状态','subject_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4032,'1',4031,'subject_status','1','admin',now(),'待开始');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4033,'1',4031,'subject_status','2','admin',now(),'已开始，进行中');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4034,'1',4031,'subject_status','3','admin',now(),'不开始，流项目');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4035,'1',4031,'subject_status','4','admin',now(),'结束');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4036,'1',0,'业务状态','business_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4037,'1',4036,'business_status','1','admin',now(),'待审核');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4038,'1',4036,'business_status','2','admin',now(),'审核通过');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4039,'1',4036,'business_status','3','admin',now(),'审核不通过');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4040,'1',0,'项目业务类型','business_table_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4041,'1',4040,'business_table_type','1','admin',now(),'收入');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4042,'1',4040,'business_table_type','2','admin',now(),'成本');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4043,'1',4040,'business_table_type','3','admin',now(),'利润');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4044,'1',0,'业务项目(收入)','business_table_income','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4045,'1',4044,'business_table_income','1','admin',now(),'进项交易金额');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4046,'1',4044,'business_table_income','2','admin',now(),'存款利率');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4047,'1',4044,'business_table_income','3','admin',now(),'存款利息');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4048,'1',4044,'business_table_income','4','admin',now(),'掉期点差');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4049,'1',4044,'business_table_income','5','admin',now(),'掉期收益');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4050,'1',4044,'business_table_income','6','admin',now(),'贴息收入');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4051,'1',4044,'business_table_income','7','admin',now(),'即期收益');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4052,'1',4044,'business_table_income','8','admin',now(),'远期收益');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4053,'1',4044,'business_table_income','9','admin',now(),'总收益');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4054,'1',0,'业务项目(成本)','business_table_cost','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4055,'1',4054,'business_table_cost','10','admin',now(),'出项交易金额');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4056,'1',4054,'business_table_cost','11','admin',now(),'贴现利率');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4057,'1',4054,'business_table_cost','12','admin',now(),'贴现利息');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4058,'1',4054,'business_table_cost','13','admin',now(),'LC开证手续费');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4059,'1',4054,'business_table_cost','14','admin',now(),'LC承兑费');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4060,'1',4054,'business_table_cost','15','admin',now(),'DP交单费');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4061,'1',4054,'business_table_cost','16','admin',now(),'手续费');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4062,'1',4054,'business_table_cost','17','admin',now(),'货损');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4063,'1',4054,'business_table_cost','18','admin',now(),'总成本');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4064,'1',0,'业务项目(利润)','business_table_profit','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4065,'1',4064,'business_table_profit','19','admin',now(),'毛利');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4066,'1',4064,'business_table_profit','20','admin',now(),'水利基金');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4067,'1',4064,'business_table_profit','21','admin',now(),'印花税');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4068,'1',4064,'business_table_profit','22','admin',now(),'增值税');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4069,'1',4064,'business_table_profit','23','admin',now(),'其他税负');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4070,'1',4064,'business_table_profit','24','admin',now(),'即期利润');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4071,'1',4064,'business_table_profit','25','admin',now(),'远期利润');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4072,'1',4064,'business_table_profit','27','admin',now(),'净利');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4073,'1',0,'业务是否可见','business_visual','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4074,'1',4073,'business_visual','1','admin',now(),'可见');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4075,'1',4073,'business_visual','0','admin',now(),'不可见');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4076,'1',0,'还款类型','repay_type','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4077,'1',4076,'repay_type','1','admin',now(),'流项目');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4078,'1',4076,'repay_type','2','admin',now(),'年化结束项目');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4079,'1',4076,'repay_type','3','admin',now(),'分成结束项目');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4080,'1',4076,'repay_type','4','admin',now(),'保底+分成结束项目');

INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4081,'1',0,'还款状态','repay_status','admin',now(),'');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4082,'1',4081,'repay_status','1','admin',now(),'待还');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4083,'1',4081,'repay_status','2','admin',now(),'线下已还');
INSERT INTO `tsys_dict` (`id`,`type`,`p_id`,`dkey`,`dvalue`,`creator`,`create_datetime`,`remark`) VALUES (4084,'1',4081,'repay_status','3','admin',now(),'线上已还');

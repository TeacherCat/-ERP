
/* 用户角色表 */
INSERT INTO role(role_name) VALUES('人事专员');
INSERT INTO role(role_name) VALUES('人事经理');
INSERT INTO role(role_name) VALUES('薪酬专员');
INSERT INTO role(role_name) VALUES('薪酬经理');
INSERT INTO role(role_name) VALUES('人力资源负责人');

/* 部门表 */
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('项目开发部','项目开发部...','0755-26666666');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('项目测试部','项目测试部...','0755-22566201');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('产品营销部','产品营销部...','0755-27720210');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('产品推广部','产品推广部...','0755-28200130');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('售后服务部','售后服务部...','0755-23001023');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('人力资源部','人力资源部...','0755-23361020');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('财务部','财务部...','0755-23361020');
INSERT INTO dept(dept_name,dept_desc,dept_phone) VALUES('总裁办','总裁办...','0755-28888888');

/* 职位表 */
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('java工程师',1,'java工程师......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('C#工程师',1,'C#工程师......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('PHP工程师',1,'PHP工程师......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('前端设计员',1,'前端设计员');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('UI设计员',1,'UI设计员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('项目经理',1,'项目经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('单元测试员',2,'单元测试员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('模块测试员',2,'模块测试员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('项目测试员',2,'项目测试员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('测试主管',2,'测试主管......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('产品专员',3,'产品专员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('营销专员',3,'营销专员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('产品主管',3,'产品主管......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('营销主管',3,'营销主管......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('国内推广员',4,'国内推广员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('国际推广员',4,'国际推广员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('国内推广经理',4,'国内推广经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('国际推广经理',4,'国际推广经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('华中售后员',5,'华中售后员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('华南售后员',5,'华南售后员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('华北售后员',5,'华北售后员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('售后经理',5,'售后经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('人事专员',6,'人事专员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('人事经理',6,'人事经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('薪酬专员',6,'薪酬专员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('薪酬经理',6,'薪酬经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('人力资源负责人',6,'人力资源负责人......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('财务专员',7,'财务专员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('财务经理',7,'财务经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('财务部负责人',7,'财务部负责人......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('总经理',8,'总经理......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('副总裁',8,'副总裁......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('总裁',8,'总裁......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('首席执行官',8,'首席执行官......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('首席财务官',8,'首席财务官......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('董事成员',8,'董事成员......');
INSERT INTO post(post_name,post_dept_id,post_desc) VALUES('董事长',8,'董事长......');

/* 用户表 */
INSERT INTO users VALUES('chenzhuo','陈卓','123456',1,'15845201254');
INSERT INTO users VALUES('liuting','刘婷','123456',1,'15812023230');
INSERT INTO users VALUES('liuhuan','刘欢','123456',1,'15920123022');
INSERT INTO users VALUES('limengting','李梦婷','123456',1,'15810002361');
INSERT INTO users VALUES('yangyang','杨阳','123456',1,'15862001023');
INSERT INTO users VALUES('zhaoya','赵雅','123456',2,'13602132025');
INSERT INTO users VALUES('xudan','徐丹','123456',3,'13612012013');
INSERT INTO users VALUES('wanmengli','万梦力','123456',3,'13420225563');
INSERT INTO users VALUES('zhouwenyu','周文宇','123456',3,'15620123022');
INSERT INTO users VALUES('zhaoyazhi','赵雅芝','123456',3,'15920887402');
INSERT INTO users VALUES('quxiaoxiao','曲潇潇','123456',3,'15822023675');
INSERT INTO users VALUES('zhoumeng','周萌','123456',4,'13888992021');
INSERT INTO users VALUES('admin','张三','123456',5,'13581310901');

/* 题库表 */
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('软件工程师初级测试题','java','A',1,'刘婷','2017-5-21','upload/topic/d6904506f58f4933929cbdc1598efe18.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('软件工程师C#初级测试题','C#','B',1,'刘婷','2017-5-21','upload/topic/169ae42ac6ac44f9a209cf925ea14e7f.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('软件工程师PHP初级测试题','PHP','A',1,'刘婷','2017-5-21','upload/topic/f2a3b62a11454d959e4359376be4f3b9.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('前端测试题','前端','C',1,'刘欢','2017-5-24','upload/topic/febf8708b8ae43719456040f7296f657.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('前端进阶测试题','前端','B',1,'刘欢','2017-5-24','upload/topic/b53e8ed0145845b29f52e7a27dfa9c8f.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('前端高阶测试题','前端','A',1,'刘欢','2017-5-24','upload/topic/bec65e16a71f4947a980e961751ec4dc.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('UI测试题','UI','C',1,'李梦婷','2017-5-24','upload/topic/b3fd6af87a344d42b5b7a01dd38f04a0.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('UI进阶测试题','UI','B',1,'李梦婷','2017-5-24','upload/topic/bd4b6550eaf0499990848ebac98d009e.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('UI高阶测试题','UI','A',1,'李梦婷','2017-5-24','upload/topic/7da186669eff4ce1a74e9f9d1e502392.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('白盒测试用例试题','测试','C',2,'杨阳','2017-5-24','upload/topic/9ecbf2e82e6244dfa94e1712b07e1c2e.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('白盒测试用例进阶试题','测试','B',2,'杨阳','2017-5-24','upload/topic/edea411a9508438eac7096fdaf4343f4.txt');
INSERT INTO topic(top_name,top_type,top_level,top_dept_id,top_person,top_time,top_accessory) VALUES('白盒测试用例高阶试题','测试','A',2,'杨阳','2017-5-24','upload/topic/fa8fa9c4ed2042949d1ef6368e9b5a93.txt');

/* 薪酬项目表 */
INSERT INTO project(proj_name,proj_desc) VALUES('基本工资','基本工资......');
INSERT INTO project(proj_name,proj_desc) VALUES('绩效奖金','绩效奖金......');
INSERT INTO project(proj_name,proj_desc) VALUES('交通补助','交通补助......');
INSERT INTO project(proj_name,proj_desc) VALUES('通讯补助','通讯补助......');
INSERT INTO project(proj_name,proj_desc) VALUES('餐补','餐补......');
INSERT INTO project(proj_name,proj_desc) VALUES('住房补助','住房补助......');
INSERT INTO project(proj_name,proj_desc) VALUES('出差补助','出差补助......');
INSERT INTO project(proj_name,proj_desc) VALUES('加班补助','加班补助......');



/* 档案表 */
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,1,'起草','皮皮纯','男','440296199902025131','15888991100','pipichun@qq.com','广西','龙华新区','群众','大专','广西信息学院','计算机','4500619750455511','789767867687','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,1,'起草','谭艳红','女','520123012452013205','13620003675','tanyanhong@qq.com','广西','龙华新区','群众','高中','广东师范大学','金融与贸易','5201252103652014','567676578678','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,1,'待审核','冯瑾娜','女','102302140210352016','18644003108','fengjinna@qq.com','山东','龙华新区','党员','本科','海南大学','营销与管理','2012301258741025','667867865475','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,1,'起草','全轩','男','520135874102521024','15966004423','quanxuan@qq.com','山东','龙华新区','群众','高中','武汉大学','金融与贸易','520125410254411','678785274650','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,1,'起草','周娟','女','452013652014520520','15515440510','zhoujuan@qq.com','湖北','罗湖区','党员','大专','辽宁大学','计算机','5201235874102563','678767867867','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,2,'待审核','赵想','男','103202365478521452','13400336052','zhaoxiang@qq.com','湖南','罗湖区','团员','本科','河北大学','金融与贸易','1025410235741025','204754354534','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,2,'起草','王一','男','102585264102565214','13310437691','wangyi@qq.com','江西','罗湖区','群众','大专','沈阳大学','计算机','34534575102541035','404645645644','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,2,'待审核','赵丽','女','520232325641258965','15934025201','zhaoli@qq.com','浙江','罗湖区','党员','本科','深圳大学','金融与贸易','3205456456445164','456456485684','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(1,3,'起草','陆安妮','女','102541256254120254','15510224301','luanni@qq.com','海南','南山区','群众','高中','湖南大学','金融与贸易','4534474347344837','454543442120','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,8,'起草','戴全','男','520136154243614957','13610104316','daiquan@qq.com','广东','南山区','群众','大专','长沙大学','营销与管理','3475607456078566','565648489484','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,8,'待审核','宋航','男','852632541258741256','13712104073','songhang@qq.com','四川','南山区','党员','高中','海南大学','计算机','4567460766464465','56456465464','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,8,'起草','李利雯','女','963258741254125632','15913461205','liliwen@qq.com','江苏','南山区','群众','大专','广西信息学院','国际物流','3453453842343857','6546456456444','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,9,'待审核','黄武','男','123214521478521236','15512004675','huangwu@qq.com','辽宁','宝安区','党员','高中','湖南大学','计算机','2453453453453434','15641564564','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,9,'起草','魏萌','女','212325698741250023','13510102203','weimeng@qq.com','山西','宝安区','群众','大专','广西信息学院','国际物流','3484534834638743','1458646456464','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(2,9,'待审核','周康','男','552023212458745236','15822041657','zhoukang@qq.com','福建','宝安区','党员','大专','武汉大学','国际物流','3487247373737367','6456456314364','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,11,'起草','李琦','男','522202123655995574','13425160616','liqi@qq.com','河南','宝安区','党员','大专','湖南大学','国际物流','6786420067570676','45645645645343','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,11,'起草','黄婷','女','110022554401010305','18633220512','huangting@qq.com','云南','龙岗区','群众','高中','武汉大学','营销与管理','7672073424576763','46453416464564','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,11,'待审核','李密','男','404050552211000253','13741255520','limi@qq.com','贵州','龙岗区','党员','高中','海南大学','计算机','537327537345207','45645345645364','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,11,'起草','黄思雅','女','110520258741587578','18620002366','huangsiya@qq.com','广东','龙岗区','群众','高中','广西信息学院','营销与管理','3734247300767600','464536456456446','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,12,'待审核','周建波','男','428353535434738741','18952011236','zhoujianbo@qq.com','广西','龙岗区','群众','本科','武汉大学','计算机','7486754270773766','4564563464564646','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,12,'待审核','刘尼娅','女','234537473753473437','13666663202','liuniya@qq.com','河北','龙岗区','团员','大专','广西信息学院','计算机','6877235753743737','123456465434164','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');
INSERT INTO archives(arc_dept_id,arc_post_id,arc_state,arc_name,arc_sex,arc_card,arc_telephone,arc_email,arc_place,arc_address,arc_politics,arc_education,arc_school,arc_specialty,arc_bank,arc_socila,arc_record,arc_remarks,arc_photo,arc_registrar,arc_time) VALUES(3,12,'起草','权泉','男','103021346154202589','15508080321','quanquan@qq.com','北京','龙岗区','群众','本科','辽宁大学','营销与管理','3763753273768767','46484634646464','专业写代码18年',NULL,'upload/photo/5a4e2eef581e4bfbb85b921ea3aa185b.jpg','陈卓','2017-5-21');



/* 培训表 */
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('java程序员上岗培训','王涛','上岗前的培训','2017-5-8','2017-5-9','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','刘婷','2017-5-6','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('C#程序员上岗培训','王涛','上岗前的培训','2017-5-9','2017-5-10','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','刘婷','2017-5-7','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('PHP程序员上岗培训','王涛','上岗前的培训','2017-5-10','2017-5-11','张三，李四，王五','upload/train/b195a28b602a459b9b19755ea99a432d.xlsx','陈卓','2017-5-8','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('单元测试上岗培训','周大宝','上岗前的培训','2017-5-11','2017-5-12','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','李梦婷','2017-5-9','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('模块测试上岗培训','周大宝','上岗前的培训','2017-5-12','2017-5-13','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','刘婷','2017-5-10','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('项目测试上岗培训','周大宝','上岗前的培训','2017-5-13','2017-5-14','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','李梦婷','2017-5-11','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('前端上岗培训','江易纲','上岗前的培训','2017-5-14','2017-5-15','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','陈卓','2017-5-12','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('UI上岗培训','江易纲','上岗前的培训','2017-5-15','2017-5-16','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','李梦婷','2017-5-13','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('产品推广员上岗培训','战天宁','上岗前的培训','2017-5-16','2017-5-17','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','陈卓','2017-5-14','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('产品营销员上岗培训','战天宁','上岗前的培训','2017-5-17','2017-5-18','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','刘婷','2017-5-15','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('国内推广大使上岗培训','蔡雅','上岗前的培训','2017-5-18','2017-5-19','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','李梦婷','2017-5-16','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('国际推广大使上岗培训','Tom','上岗前的培训','2017-5-19','2017-5-20','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','陈卓','2017-5-17','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('财会人员上岗培训','王敏','上岗前的培训','2017-5-20','2017-5-21','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','李梦婷','2017-5-18','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('人事人员上岗培训','易学习','上岗前的培训','2017-5-21','2017-5-22','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','陈卓','2017-5-19','起草');
INSERT INTO train(tra_name,tra_lecturer,tra_goal,tra_start_time,tra_end_time,tra_personnel,tra_data,tra_registrar,tra_time,tra_state) VALUES('薪酬专员岗前培训','赵六','上岗前的培训','2017-5-22','2017-5-23','张三，李四，王五','upload/train/2e6bedd6ef634c068aef31dfbd659776.xlsx','陈卓','2017-5-20','起草');


/* 职位发布表 */
INSERT  INTO `releases`(`rele_id`,`rele_dept_id`,`rele_post_id`,`rele_type`,`rele_count`,`rele_education`,`rele_limit`,`rele_desc`,`rele_requier`,`rele_registrar`,`rele_time`,`rele_end_time`) VALUES 
(1,1,1,'社会招聘',10,'大专',2,'','','刘欢','2017-06-29 04:28:20','2017-07-08 00:00:00'),
(2,1,2,'社会招聘',5,'本科',3,'','','刘欢','2017-06-29 04:28:39','2017-07-07 00:00:00'),
(3,1,3,'社会招聘',5,'本科',3,'','','刘欢','2017-06-29 04:28:56','2017-07-08 00:00:00'),
(4,1,4,'社会招聘',5,'大专',2,'','','刘欢','2017-06-29 04:29:13','2017-07-07 00:00:00'),
(5,1,4,'社会招聘',5,'大专',2,'','','刘欢','2017-06-29 04:29:32','2017-07-08 00:00:00'),
(6,1,5,'社会招聘',5,'大专',2,'','','刘欢','2017-06-29 04:29:56','2017-07-07 00:00:00'),
(7,1,6,'社会招聘',2,'本科',5,'','','刘欢','2017-06-29 04:30:32','2017-07-08 00:00:00'),
(8,2,7,'社会招聘',5,'本科',2,'','','刘欢','2017-06-29 04:30:48','2017-07-08 00:00:00'),
(9,2,8,'社会招聘',5,'本科',5,'','','刘欢','2017-06-29 04:31:37','2017-07-07 00:00:00'),
(10,3,13,'社会招聘',2,'初中及以下',5,'','','刘欢','2017-06-29 04:31:52','2017-07-07 00:00:00'),
(11,5,20,'社会招聘',5,'初中及以下',2,'','','刘欢','2017-06-29 04:32:11','2017-07-07 00:00:00'),
(12,5,21,'社会招聘',5,'本科',2,'','','刘欢','2017-06-29 04:32:26','2017-07-08 00:00:00'),
(13,4,15,'社会招聘',10,'大专',2,'','','刘欢','2017-06-29 04:32:43','2017-07-07 00:00:00'),
(14,4,17,'社会招聘',2,'初中及以下',5,'','','刘欢','2017-06-29 04:33:01','2017-07-07 00:00:00'),
(15,6,23,'社会招聘',2,'初中及以下',2,'','','刘欢','2017-06-29 04:33:15','2017-07-07 00:00:00'),
(16,7,28,'社会招聘',2,'初中及以下',5,'','','刘欢','2017-06-29 04:33:45','2017-07-06 00:00:00'),
(17,8,31,'社会招聘',1,'硕士',10,'','','刘欢','2017-06-29 04:34:13','2017-07-06 00:00:00'),
(18,7,29,'社会招聘',2,'初中及以下',8,'','','刘欢','2017-06-29 04:34:32','2017-07-07 00:00:00'),
(19,5,21,'社会招聘',20,'初中及以下',2,'','','刘欢','2017-06-29 04:34:52','2017-07-07 00:00:00'),
(20,5,19,'校园招聘',50,'初中及以下',1,'','','刘欢','2017-06-29 04:35:22','2017-07-08 00:00:00');


/* 简历表 */
INSERT  INTO `resumes`(`res_id`,`res_rele_id`,`res_name`,`res_sex`,`res_age`,`res_education`,`res_telephone`,`res_data`,`res_registrar`,`res_time`,`res_state`) VALUES 
(1,19,'阿加莎','女',24,'大专','15800454542','','刘欢','2017-06-29 04:37:58','起草'),
(2,4,'经历过','男',28,'本科','15678645454','','陈卓','2017-06-29 04:43:47','待面试'),
(3,7,'哈佛德芙','男',32,'本科','13645450445','','陈卓','2017-06-29 04:44:13','待面试'),
(4,6,'借古讽今','女',24,'大专','15890454540','','陈卓','2017-06-29 04:44:42','起草'),
(5,11,'表姐夫','男',28,'本科','13454564045','','陈卓','2017-06-29 04:45:14','待面试'),
(6,10,'红人馆','男',24,'高中','15915405454','','陈卓','2017-06-29 04:45:35','待面试'),
(7,12,'韩国人','女',29,'本科','13545645045','','陈卓','2017-06-29 04:46:03','起草'),
(8,17,'和歌山','男',33,'本科','13454101023','','陈卓','2017-06-29 04:46:40','待面试'),
(9,9,'反光板','男',25,'本科','','','陈卓','2017-06-29 04:47:31','起草'),
(10,6,'热负荷','女',28,'本科','15800000000','','陈卓','2017-06-29 04:48:09','待面试'),
(11,13,'麦克风','男',34,'高中','15804521048','','陈卓','2017-06-29 04:48:41','起草'),
(12,10,'吧风格','男',26,'大专','13544504454','','陈卓','2017-06-29 04:48:59','待面试'),
(13,15,'火热','女',27,'大专','15954504751','','陈卓','2017-06-29 04:49:25','起草'),
(14,8,'发表回复','男',26,'初中及以下','13545121012','','陈卓','2017-06-29 04:49:48','起草');



/* 薪酬标准表 */
INSERT  INTO `standard`(`stan_id`,`stan_name`,`stan_amount`,`stan_registrar`,`stan_time`,`stan_state`) VALUES 
(1,'java工程师工资标准',4450,'徐丹','2017-06-29 04:52:11','起草'),
(2,'c#工程师工资标准',4350,'徐丹','2017-06-29 04:53:14','审核中'),
(3,'PHP工程师工资标准',5350,'徐丹','2017-06-29 04:54:01','起草'),
(4,'产品推广专员工资标准',3350,'徐丹','2017-06-29 04:54:43','起草'),
(5,'售后服务专员工资标准',3550,'徐丹','2017-06-29 04:55:18','起草'),
(6,'总经理工资标准',7300,'徐丹','2017-06-29 04:55:59','起草'),
(7,'人事专员工资标准',3450,'徐丹','2017-06-29 04:56:29','审核中'),
(8,'初级软件工程师工资标准',2400,'徐丹','2017-06-29 04:57:57','起草'),
(9,'中级软件测试师工资标准',5800,'徐丹','2017-06-29 04:58:34','起草');

/* 薪酬标准详情 */
INSERT  INTO `standard_details`(`sd_id`,`sd_stan_id`,`sd_proj_id`,`sd_money`) VALUES 
(1,1,1,3000),
(2,1,2,300),
(3,1,3,200),
(4,1,4,100),
(5,1,5,500),
(6,1,6,150),
(7,1,7,200),
(8,1,8,0),
(9,2,1,2500),
(10,2,2,500),
(11,2,3,200),
(12,2,4,100),
(13,2,5,200),
(14,2,6,150),
(15,2,7,200),
(16,2,8,500),
(17,3,1,4200),
(18,3,2,500),
(19,3,3,200),
(20,3,4,100),
(21,3,5,200),
(22,3,6,150),
(23,3,7,0),
(24,3,8,0),
(25,4,1,1800),
(26,4,2,300),
(27,4,3,500),
(28,4,4,200),
(29,4,5,200),
(30,4,6,150),
(31,4,7,200),
(32,4,8,0),
(33,5,1,3000),
(34,5,2,0),
(35,5,3,200),
(36,5,4,0),
(37,5,5,200),
(38,5,6,150),
(39,5,7,0),
(40,5,8,0),
(41,6,1,6000),
(42,6,2,0),
(43,6,3,200),
(44,6,4,200),
(45,6,5,200),
(46,6,6,200),
(47,6,7,500),
(48,6,8,0),
(49,7,1,2300),
(50,7,2,200),
(51,7,3,200),
(52,7,4,200),
(53,7,5,150),
(54,7,6,200),
(55,7,7,200),
(56,7,8,0),
(57,8,1,2000),
(58,8,2,200),
(59,8,3,0),
(60,8,4,0),
(61,8,5,0),
(62,8,6,200),
(63,8,7,0),
(64,8,8,0),
(65,9,1,5000),
(66,9,2,200),
(67,9,3,200),
(68,9,4,0),
(69,9,5,200),
(70,9,6,200),
(71,9,7,0),
(72,9,8,0);


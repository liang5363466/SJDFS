prompt PL/SQL Developer import file
prompt Created on 2013年12月25日 by Administrator
set feedback off
set define off
prompt Disabling triggers for RCS_AUTHORS...
alter table RCS_AUTHORS disable all triggers;
prompt Disabling triggers for RCS_DEPTMENTS...
alter table RCS_DEPTMENTS disable all triggers;
prompt Disabling triggers for RCS_ROLERULES...
alter table RCS_ROLERULES disable all triggers;
prompt Disabling triggers for RCS_ROLES...
alter table RCS_ROLES disable all triggers;
prompt Disabling triggers for RCS_USERS...
alter table RCS_USERS disable all triggers;
prompt Loading RCS_AUTHORS...
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '表样管理', '/Table/UploaderTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '数据上报', '/Report/ReporterTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '数据审核', '/Audit/AuditTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '角色管理', '/Role/Roles');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '用户管理', '/User/Users');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '联系人管理', '/Contact/Main');
commit;
prompt 5 records loaded
prompt Loading RCS_DEPTMENTS...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (556, '开发办检疫科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (562, '惠山办事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (567, '企事业发展中心', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (569, '武进办', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (21, '常州局', 1, 0, 10);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (39, '卫监处', 20, 0, 6);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (85, '开发区办事处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (109, '服务中心', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (22, '办公室', 20, 0, 2);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (75, '动检处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (290, '财务科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (315, '财务科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (334, '监察科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (23, '保健中心', 20, 0, 25);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (77, '食检处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (67, '新区办事处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (209, '中检江苏公司', 20, 0, 27);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (369, '监察政工科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (478, '人事科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (485, '澄东办事处', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (165, '检务处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (297, '陶瓷实验室', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (476, '卫检', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (498, '机电科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (179, '局长室', 20, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (189, 'CQC', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (222, '人事政工科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (238, '靖江办', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (248, '动植检处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (267, '科技处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (277, '价值鉴定事务所', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (400, '中检公司', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (425, 'CQC镇江办事处', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (460, '鉴定科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (151, '人事科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (194, '认证监管科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (224, '化矿金/技术中心', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (273, '新区办事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (285, '认证监管处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (314, '人事科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (332, '工会', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (390, '财务处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (430, '财务科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (438, '鉴定科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (470, '财务科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (502, '保健中心', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (524, '口岸处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (546, '物业公司', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (223, '服务中心', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (555, '开发办检验科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (455, 'CQC办事处', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (526, '基建办', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (563, '滨湖办事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (69, '园区办事处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (40, '物管中心', 20, 0, 33);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (426, '保健中心', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (95, '动检处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (313, '检务科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (481, '检测中心', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (354, '食检科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (170, '办公室', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (229, '动植检科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (261, '办公室', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (393, '动植检处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (454, '人政科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (198, '认证监管综合科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (283, '中检公司', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (363, '检验监管科', 206, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (496, '检务科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (541, '港办检疫科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (707, 'CQC办事处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (709, '轻纺实验室', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (706, '金坛办', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (708, '质量研究中心', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (570, '港口办事处', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (571, '旅保中心', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (573, '监察室', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (574, '相城办事处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (576, '监察室', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (577, '车辆实验室', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (578, '保健中心', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (579, '监察室', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (581, '综合科', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (582, '检验科', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (584, '鉴定科', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (592, '开发区检验科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (588, '加工区', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (591, '开发区综合科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (593, '服务中心', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (594, '东方公司', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (596, '河西办', 20, 0, 34);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (598, '调研室', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (599, '服务中心', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (601, '句容报检点', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (602, '协会办事处', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (603, '维安公司', 20, 0, 29);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (604, '加工区办综合科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (605, '加工区办轻纺科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (606, '加工区办机电科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (421, '局领导', 10, 1, 0);
commit;
prompt 100 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (440, '开发办综合科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (451, '技服中心', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (463, '认证监管综合科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (146, '认证监管综合科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (188, '财务科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (201, '财务科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (221, '机电科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (539, '经济开发区办事处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (153, '办公室', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (226, '宿迁局', 1, 0, 22);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (296, '动植检科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (312, '机电化矿科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (410, '启东办办公室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (346, '化矿实验室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (330, '认证监管科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (336, '商检公司', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (171, '人政处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (294, '机电化矿科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (345, '港办业务科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (352, '轻纺科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (477, '财务科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (506, '办事处综合科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (549, '检验检定所', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (568, '光电中心', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (583, '检疫科', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (88, '机关服务中心', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (106, '钟山事务所', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (15, '盐城局', 1, 0, 14);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (31, '基建办', 20, 0, 19);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (43, '政工处', 20, 0, 16);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (84, '海港办事处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (68, '吴中办事处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (1, '江苏局', 0, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (36, '人事处', 20, 0, 13);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (365, '南京金检检验有限公司', 20, 0, 37);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (82, '政工处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (80, '人事处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (12, '无锡局', 1, 0, 4);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (265, '财务处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (309, '卫检科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (348, '轻纺实验室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (333, '政工处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (378, '机关服务中心', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (145, '局领导', 18, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (361, '商检公司', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (250, '机电处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (172, '财务处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (388, '保健中心', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (414, '局领导', 11, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (133, '机电科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (225, '办公室', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (446, '办公室', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (617, '如皋检验鉴定科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (628, '监察室', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (632, '综合技术服务中心实验室', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (643, '综合业务科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (658, '动植检科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (659, '港办查验科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (665, '测试局长室_南京', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (669, '测试部门_苏州', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (673, '测试部门_南通', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (676, '测试部门_镇江', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (679, '测试局长室_扬州', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (682, '测试局长室_常州', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (683, '测试局长室_徐州', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (685, '测试部门_淮安', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (686, '测试局长室_淮安', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (687, '测试局长室_盐城', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (688, '测试部门_盐城', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (691, '测试局长室_江阴', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (697, '测试部门_昆山', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (699, '测试局长室_吴江', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (701, '测试部门_宜兴', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (702, '测试局长室_宜兴', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (642, '综合业务科', 509, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (644, '木材实验室', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (656, '食品科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (619, '综合技术服务中心', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (622, '政研室', 20, 0, 3);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (629, '保税物流中心', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (630, '保健中心', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (633, '吉福公司', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (636, '东南办', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (654, '监察室', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (657, '港办鉴定科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (661, '高新办', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (620, '机场办事处', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (638, '邮检办', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (92, '法综处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (96, '植检处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (72, '认证监管处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (99, '机电处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (102, '人事处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (105, '王家湾', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (108, '江北办', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (2, '常熟局', 1, 0, 17);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (5, '昆山局', 1, 0, 19);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (608, '工会', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (379, '鉴定科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (150, '轻纺科', 19, 0, 1);
commit;
prompt 200 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (613, '加工区办检疫科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (611, '检科院', 20, 0, 30);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (492, '电池实验室', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (253, '港口处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (436, '机电科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (610, '出口加工区业务科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (522, '动植物检处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (32, '监审室', 20, 0, 18);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (376, '检务科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (362, ' 纪检监察室', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (453, '财务科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (17, '宜兴局', 1, 0, 21);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (8, '南通局', 1, 0, 5);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (367, '港口办事处', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (641, '木制品家具实验室', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (666, '测试部门_南京', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (671, '测试局长室_无锡', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (674, '测试局长室_南通', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (677, '测试部门_张家港', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (678, '测试局长室_张家港', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (689, '测试部门_泰州', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (694, '测试局长室_常熟', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (698, '测试局长室_昆山', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (700, '测试部门_吴江', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (703, '测试局长室_宿迁', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (615, '如皋检验检疫科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (616, '如皋办公室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (623, '香港公司', 20, 0, 39);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (639, '实验室', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (645, '食监处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (646, '信息安全认证中心', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (647, '综合科', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (624, '口岸办检验检疫科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (631, 'CQC办事处', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (648, '动植卫食科', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (651, '局领导', 226, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (662, '化矿精检测中心', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (667, '测试局长室_连云港', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (668, '测试部门_连云港', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (670, '测试局长室_苏州', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (672, '测试部门_无锡', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (675, '测试局长室_镇江', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (680, '测试部门_扬州', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (681, '测试部门_常州', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (684, '测试部门_徐州', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (690, '测试局长室_泰州', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (692, '测试部门_江阴', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (693, '测试部门_常熟', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (695, '测试局长室_太仓', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (696, '测试部门_太仓', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (704, '测试部门_宿迁', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (614, '如皋检务科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (626, '靖江办事处', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (635, '基建办', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (649, '机电轻纺科', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (650, '办公室', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (663, '动植食检测中心', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (711, '绩效办', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (713, '海安办事处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (715, '如皋局局长室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (509, '机关服务中心', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (356, '服务中心', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (358, '鉴定科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (359, '保健中心', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (364, '集装箱检验检疫科', 206, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (405, '能效实验室', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (386, '化工实验室', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (434, '轻工中心', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (439, '卫检科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (443, '综合技术中心', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (452, '综合科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (457, '中检公司', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (458, '意达中心', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (464, '动植检科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (465, '轻纺科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (467, '机电化矿科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (500, '轻纺科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (503, '认监科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (505, '办事处主任室', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (507, '检验检疫科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (508, '自行车检测中心', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (510, '办公室', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (512, '政工处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (515, '检务处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (517, '综合处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (521, 'CQC', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (530, '保健中心', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (531, '机电实验室', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (532, '熏蒸公司', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (533, '商检公司', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (540, '港办鉴定科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (545, '协会镇江办事处', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (550, '监察室', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (552, '监察室', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (554, '开发办综合科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (557, '监察室', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (558, '东吴报检', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (560, '培训室', 41, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (564, '局长室', 14, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (566, '省局机房', 41, 0, 1);
commit;
prompt 300 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (3, '淮安局', 1, 0, 12);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (7, '南京局', 1, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (10, '太仓局', 1, 0, 18);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (13, '吴江局', 1, 0, 20);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (24, '计财处', 20, 0, 14);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (27, '通关处', 20, 0, 5);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (30, '服务中心', 20, 0, 22);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (33, '检监处', 20, 0, 9);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (42, '巡视员', 20, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (70, '局领导', 6, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (73, '检务处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (76, '植检处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (79, '化矿处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (66, '苏州局', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (90, '办公室', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (93, '检务处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (97, '卫食处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (100, '机关党委', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (103, '港办', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (4, '江阴局', 1, 0, 16);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (6, '连云港局', 1, 0, 2);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (9, '苏州局', 1, 0, 3);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (16, '扬州局', 1, 0, 8);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (19, '镇江局', 1, 0, 6);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (20, '省局本部', 1, 0, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (25, '动植处', 20, 0, 7);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (28, '工会', 20, 0, 17);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (34, '科技处', 20, 0, 11);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (37, '认监处', 20, 0, 10);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (78, '机纺处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (81, '财务处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (87, '综合技术中心', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (89, '局长室', 7, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (292, '检务科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (299, '认证监管综合科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (303, '中健公司', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (304, '中国质量认证中心南京分中心', 20, 0, 31);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (311, '食检科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (319, '综合技术中心', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (427, '新区办事处', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (422, '局领导', 12, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (350, '植检科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (335, '除害中心', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (353, '卫检科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (11, '泰州局', 1, 0, 15);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (14, '徐州局', 1, 0, 11);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (18, '张家港局', 1, 0, 7);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (26, '动植食中心', 20, 0, 21);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (29, '工业品中心', 20, 0, 20);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (35, '老干部处', 20, 0, 15);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (38, '食监处', 20, 0, 8);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (41, '信息化处', 20, 0, 12);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (74, '卫检处', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (83, '监察室', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (86, '商检公司', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (91, '财务处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (71, '办公室', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (98, '轻纺处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (101, '监察室', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (104, '机办', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (107, '江宁办、南区', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (110, '电子电气实验室', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (113, '办公室', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (160, '法制处', 20, 0, 4);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (210, '评审中心', 20, 0, 38);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (227, '中健南京', 20, 0, 32);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (307, '动检科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (472, '检务科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (331, '机关服务中心', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (366, '丹阳办事处', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (374, '卫食科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (377, '综合技术中心', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (380, '检验检疫协会', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (401, '局长室', 9, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (402, '办公室', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (473, '动植检科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (475, '机化科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (479, '局领导', 15, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (480, '综合科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (486, '中检公司', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (484, '港办集装箱科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (488, '中检集团江苏公司江阴分公司', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (125, '局长室', 21, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (131, '检务科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (142, '局领导', 5, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (149, '办公室', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (152, '综合科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (167, '卫检处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (166, '动植检处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (169, '机电化矿处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (173, '综合处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (175, '服务中心', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (293, '卫生食品科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (343, '港办检疫科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (344, '港办鉴定科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (347, '农畜实验室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (351, '机化科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (360, '技术中心', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (474, '轻纺科', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (490, '工会', 16, 0, 1);
commit;
prompt 400 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (487, '局长室', 17, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (504, '口岸办', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (495, '财务科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (513, '监察室', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (168, '轻纺处', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (174, '技术中心', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (176, '认证办', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (180, '协会', 20, 0, 26);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (181, '认证监管处', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (183, '检务科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (185, '办公室', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (187, '服务中心', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (192, '动植卫食科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (206, '保税区办事处', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (218, '局长室', 2, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (203, '政工科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (246, '财务处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (231, '办公室', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (232, '人事政工科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (233, '财务科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (235, '综合科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (236, '港办', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (239, '实验室', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (240, 'CQC评审中心', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (241, '老干部', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (243, '办公室', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (245, '人政处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (249, '轻纺处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (251, '检务处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (254, '服务中心', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (257, '溧阳办', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (266, '党办', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (268, '机电处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (269, '轻纺处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (270, '检务处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (271, '法综处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (275, '机场办事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (281, '机关服务中心', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (368, '机电科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (375, '动植检科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (384, '纺织原料检验处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (389, '办公室', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (392, '卫检处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (396, '综合服务中心', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (399, '局长室', 3, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (407, '局领导', 8, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (408, '启东办综合科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (409, '启东办二科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (416, '副调室', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (423, '消杀公司', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (435, '轻纺科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (437, '动植检科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (441, '开发办检验科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (447, '港口办事处', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (448, '检务科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (449, '机电科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (450, '轻纺科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (456, '卫食科', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (461, '局领导', 4, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (462, '办公室', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (147, '局领导', 19, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (415, '港口办事处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (247, '卫检处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (186, '人事政工科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (204, '人事科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (184, '局长室', 13, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (190, '机电科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (191, '轻纺科', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (195, '商检公司', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (202, '检务科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (205, '财务科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (214, '卫食科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (216, '动植检科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (219, '轻纺科', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (230, '轻纺科', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (234, '卫检中心', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (237, '泰兴办', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (244, '综合处', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (252, '危包所', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (258, '商检公司', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (263, '办公室', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (264, '人事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (272, '机电检测中心', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (274, '加工区办事处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (276, '丝纺中心', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (278, '保健中心', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (279, '动植检处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (280, '卫食处', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (282, '基建办', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (308, '植检科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (288, '综合科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (291, '人事政工科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (295, '轻纺科', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (298, '通关点', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (306, '办公室', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (310, '轻纺科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (316, '加工区办事处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (357, '冶金办', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (318, '启东办事处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (349, '动检科', 18, 0, 1);
commit;
prompt 500 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (411, '启东办一科', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (338, 'CQC办事处', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (355, '认监科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (387, '检务处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (391, '人政处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (394, '机电处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (395, '轻纺处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (397, '综合处', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (398, '实验室', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (424, '中检公司', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (429, '办公室', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (431, '人事政工科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (432, '检务科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (433, '局领导', 16, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (442, '开发办检疫科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (444, '开发办港口科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (445, '认证监管科', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (466, '卫检科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (469, '综合技术服务中心', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (494, '人事科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (497, '卫检科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (499, 'CQC', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (501, '动检科', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (511, '人事处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (514, '财务处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (516, '协会办', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (519, '机电处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (520, '轻纺处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (523, '认证处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (528, '技术中心', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (536, '人政科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (537, '港办主任室', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (542, '港办综合科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (148, '财务科', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (208, '检务科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (144, '检务科', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (207, '综合科', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (213, '开发办', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (220, '中检公司', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (289, '质量研究中心', 20, 0, 35);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (518, '卫检处', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (527, '服务中心', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (534, '中威公司', 20, 0, 28);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (548, '大丰港办事处', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (553, '开发区办事处', 13, 0, 1);
commit;
prompt 545 records loaded
prompt Loading RCS_ROLERULES...
insert into RCS_ROLERULES (ID, ROLE_ID, USER_ID)
values (S_RCS_ROLERULES.Nextval, 2, 3);
insert into RCS_ROLERULES (ID, ROLE_ID, USER_ID)
values (S_RCS_ROLERULES.Nextval, 3, 2);
commit;
prompt 2 records loaded
prompt Loading RCS_ROLES...
insert into RCS_ROLES (ID, NAME, AUTHORS)
values (S_RCS_ROLES.Nextval, '上报人员', '2');
insert into RCS_ROLES (ID, NAME, AUTHORS)
values (S_RCS_ROLES.Nextval, '审核人员', '1,3,4,5');
commit;
prompt 2 records loaded
prompt Loading RCS_USERS...
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME,DEPT_ID , IS_ADMIN)
values (S_RCS_USERS.Nextval, 'lvjian', '吕健', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 7, 0);
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME, DEPT_ID, IS_ADMIN)
values (S_RCS_USERS.Nextval, 'wangting', '王婷', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 7, 0);
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME, DEPT_ID, IS_ADMIN)
values (S_RCS_USERS.Nextval, 'admin', '超级管理员', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 0, 1);
commit;
prompt 3 records loaded
prompt Enabling triggers for RCS_AUTHORS...
alter table RCS_AUTHORS enable all triggers;
prompt Enabling triggers for RCS_DEPTMENTS...
alter table RCS_DEPTMENTS enable all triggers;
prompt Enabling triggers for RCS_ROLERULES...
alter table RCS_ROLERULES enable all triggers;
prompt Enabling triggers for RCS_ROLES...
alter table RCS_ROLES enable all triggers;
prompt Enabling triggers for RCS_USERS...
alter table RCS_USERS enable all triggers;
set feedback on
set define on
prompt Done.

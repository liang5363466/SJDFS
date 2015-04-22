prompt PL/SQL Developer import file
prompt Created on 2014年2月10日 by Administrator
set feedback off
set define off
prompt Disabling triggers for F_MENU_TREE...
alter table F_MENU_TREE disable all triggers;
prompt Disabling triggers for F_POWER...
alter table F_POWER disable all triggers;
prompt Disabling triggers for F_ROLE...
alter table F_ROLE disable all triggers;
prompt Disabling triggers for F_ROLE_POWER...
alter table F_ROLE_POWER disable all triggers;
prompt Disabling triggers for F_USR_ROLE...
alter table F_USR_ROLE disable all triggers;
prompt Loading F_MENU_TREE...
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1258, 1259, 0, '自主查询', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1282, 1283, 962, '用户审计（僵尸用户）', null, 'mainFrame', 3, null, '/auditUser.action?method=queryAllByPage', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1284, 1285, 962, '用户登录异常', null, 'mainFrame', 3, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1300, 1301, 998, '全省不合格率变化大的产品', '全省不合格率变化大的产品', 'mainFrame', 3, null, '/bhFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (726, 727, 722, '逃避口岸核查工作撤消报检', '逃避口岸核查工作撤消报检', 'mainFrame', 2, null, '/cxbj.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (846, 847, 1200, '检验监管', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (856, 857, 0, '稽查审计预警', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (864, 865, 846, '市局排名', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28523', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (866, 867, 846, '历史趋势分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28518', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (870, 871, 846, '把关成效得分排名', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28499', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (878, 879, 848, '市局排名', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28526', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (884, 885, 850, '年度各分支局合格率分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28513', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (894, 895, 852, '集装箱把关成效情况统计分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28504', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (896, 897, 1020, '出入境业务总表A', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28495', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (898, 899, 1020, '出入境业务总表B', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28514', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (902, 903, 1020, '卫生检疫业务统计表B', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28491', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (906, 907, 1020, '动物及产品统计表', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28494', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (908, 909, 1020, '食品及化妆品统计表', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28493', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (910, 911, 1020, '植物及其产品统计表', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28505', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (916, 917, 858, '风险控制分类查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28500', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (922, 923, 858, '生产企业报检量剧减情况', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48654', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (928, 929, 858, '报检单位关联生产单位（批次）', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48655', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (944, 945, 938, '风险控制分类查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28500', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1016, 1017, 1012, '节假日查询', null, 'mainFrame', 3, null, '/holiday.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1028, 1029, 854, '驾驶舱', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1030, 1031, 854, '各分局出入境业务分析', null, 'mainFrame', 2, null, '/boe.action?method=queryFlash&key=eachBranchBusAnalysis', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1070, 1071, 1026, '全省各分支局出入境动物及其产品检验检疫情况统计表', '全省各分支局出入境动物及其产品检验检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48552', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1080, 1081, 1026, '全省各分支局卫生检疫情况统计表', '全省各分支局卫生检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48865', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1088, 1089, 858, '电子监管休眠信息查询', '电子监管休眠信息查询', 'mainFrame', 3, null, '/dzjgXmJg.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (722, 723, 0, '异常监察', '异常监察', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (854, 855, 0, '综合指标分析', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (750, 751, 746, '全省进口/出口前50强企业', '全省进口/出口前50强企业', 'mainFrame', 2, null, '/qypmDeclType.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (826, 827, 722, '提前报检业务处理的监察', '提前报检业务处理的监察', 'mainFrame', 2, null, '/supAdvInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (880, 881, 848, '历史趋势分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28484', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (886, 887, 850, '年度各月合格率分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28496', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (936, 937, 1020, '效果展示', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28501', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (938, 939, 856, '风险点查询', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (950, 951, 938, '风险控制分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=29716', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (958, 959, 956, '流程预警延期申请', null, 'mainFrame', 3, null, '/procWarm.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (964, 965, 962, '行为审计', null, 'mainFrame', 3, null, '/opearteAudit.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (966, 967, 1012, '数据审计规则', null, 'mainFrame', 3, null, '/auditRule.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (970, 971, 962, '审计数据查询（按货物）', null, 'mainFrame', 3, null, '/dataAuditByGoods.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (972, 973, 962, '审计数据查询（按企业）', null, 'mainFrame', 3, null, '/dataAuditByEnt.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (982, 983, 962, '通关单督查（有效期过期）', null, 'mainFrame', 3, null, '/releaseRecordByDate.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (986, 987, 856, '风险点', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (992, 993, 962, '不符合条件的入境验证报检单', null, 'mainFrame', 3, null, '/rjyz.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (996, 997, 962, '提前报检业务处理的监察', null, 'mainFrame', 3, null, '/supAdvInsp.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (998, 999, 854, '企业产品排名分析', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1000, 1001, 998, '企业排名', null, 'mainFrame', 3, null, '/qypm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1002, 1003, 998, '全省进口/出口前50强企业', null, 'mainFrame', 3, null, '/qypmDeclType.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1004, 1005, 998, '全省进口/出口前50大产品', null, 'mainFrame', 3, null, '/hwpmDeclType.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1008, 1009, 998, '全省不合格率前50大企业', null, 'mainFrame', 3, null, '/entInfoFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1012, 1013, 0, '系统设置', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 7);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (591, 592, 621, '业务审计', '业务审计', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (415, 416, 409, '年度综合分析', '年度综合分析', 'mainFrame', 3, null, '/boe.action?method=query&key=31931', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (393, 394, 389, '年度综合分析', '年度综合分析', 'mainFrame', 3, null, '/boe.action?method=query&key=31497', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (411, 412, 409, '海关各口岸进出口统计', '海关各口岸进出口统计', 'mainFrame', 3, null, '/boe.action?method=query&key=31894', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (423, 424, 361, '产品质量', '产品质量', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (475, 476, 463, '动物及产品统计表', '动物及产品统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=33869', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (505, 506, 361, '稽查统计', '稽查统计', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (343, 344, 341, '流程预警延期申请', '流程预警延期申请', 'mainFrame', 2, null, '/procWarm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (301, 302, 0, '系统设置', '系统设置', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (303, 304, 301, '参数设置', '参数设置', 'mainFrame', 2, null, '/procRule.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (305, 306, 301, '节假日查询', '节假日查询', 'mainFrame', 2, null, '/holiday.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (341, 342, 0, '流程预警', '流程预警', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (345, 346, 341, '流程预警查询', '流程预警查询', 'mainFrame', 2, null, '/procInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (361, 362, 0, '统计报表', '统计报表', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (429, 430, 423, '年度各类合格率分析', '年度各类合格率分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32124', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (0, 0, -1, '科学决策系统', '科学决策系统', 'mainUSERS', 0, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (585, 586, 505, '生产单位关联报检单位（批次）', '生产单位关联报检单位（批次）', 'mainFrame', 3, null, '/boe.action?method=query&key=38932', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (397, 398, 389, '历史趋势分析', '历史趋势分析', 'mainFrame', 3, null, '/boe.action?method=query&key=31678', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (409, 410, 361, '外贸发展', '外贸发展', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (463, 464, 361, 'CIQ数据统计', 'CIQ数据统计', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (467, 468, 463, '出入境业务总表B', '出入境业务总表B', 'mainFrame', 3, null, '/boe.action?method=query&key=33594', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (473, 474, 463, '出入境集装箱检疫情况统计表', '出入境集装箱检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=33853', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (499, 500, 489, '风险控制明细查询', '风险控制明细查询', 'mainFrame', 3, null, '/boe.action?method=query&key=34380', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (501, 502, 489, '风险控制分析2.1', '风险控制分析2.1', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (507, 508, 505, '报检单位关联生产单位（发货）', '报检单位关联生产单位（发货）', 'mainFrame', 3, null, '/boe.action?method=query&key=38910', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (509, 510, 505, '报检单位关联生产单位（批次）', '报检单位关联生产单位（批次）', 'mainFrame', 3, null, '/boe.action?method=query&key=38915', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (513, 514, 505, '生产企业报检量剧增情况', '生产企业报检量剧增情况', 'mainFrame', 3, null, '/boe.action?method=query&key=34018', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (421, 422, 409, '货物类占比分析', '货物类占比分析', 'mainFrame', 3, null, '/boe.action?method=query&key=31992', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (425, 426, 423, '年度各分支局合格率分析', '年度各分支局合格率分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32037', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (395, 396, 389, '市局排名', '市局排名', 'mainFrame', 3, null, '/boe.action?method=query&key=31599', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (435, 436, 431, '船舶病虫害把关成效情况统计分析', '船舶病虫害把关成效情况统计分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32184', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (437, 438, 431, '集装箱把关成效情况统计分析', '集装箱把关成效情况统计分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32204', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (471, 472, 463, '卫生检疫业务统计表B', '卫生检疫业务统计表B', 'mainFrame', 3, null, '/boe.action?method=query&key=33837', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (481, 482, 463, '签发证单统计表', '签发证单统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=33911', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (483, 484, 361, '综合信息查询', '综合信息查询', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (489, 490, 361, '风险点查询', '风险点查询', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (495, 496, 489, '风险控制分类查询', '风险控制分类查询', 'mainFrame', 3, null, '/boe.action?method=query&key=34357', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (497, 498, 489, '风险控制汇总查询', '风险控制汇总查询', 'mainFrame', 3, null, '/boe.action?method=query&key=34371', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (465, 466, 463, '出入境业务总表A', '出入境业务总表A', 'mainFrame', 3, null, '/boe.action?method=query&key=33552', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (389, 390, 361, '检验监管', '检验监管', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (413, 414, 409, '海关(目源地)进出口商品总值', '海关(目源地)进出口商品总值', 'mainFrame', 3, null, '/boe.action?method=query&key=31918', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (433, 434, 431, '船舶媒介生物把关成效情况统计分析', '船舶媒介生物把关成效情况统计分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32158', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (485, 486, 483, '出入境批次综合分析', '出入境批次综合分析', 'mainFrame', 3, null, '/boe.action?method=query&key=33927', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (487, 488, 483, '效果展示', '效果展示', 'mainFrame', 3, null, '/boe.action?method=query&key=33950', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (491, 492, 489, '商检业务分析.xlf', '商检业务分析.xlf', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (493, 494, 489, '风险控制分析.xlf', '风险控制分析.xlf', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (503, 504, 489, '风险控制分析2.2', '风险控制分析2.2', 'mainFrame', 3, null, null, 'Y', null);
commit;
prompt 100 records committed...
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (511, 512, 505, '生产企业报检量剧减情况', '生产企业报检量剧减情况', 'mainFrame', 3, null, '/boe.action?method=query&key=34000', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (417, 418, 409, '市局排名', '市局排名', 'mainFrame', 3, null, '/boe.action?method=query&key=31946', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (405, 406, 389, '把关成效一类二类指标排名', '把关成效一类二类指标排名', 'mainFrame', 3, null, '/boe.action?method=query&key=31721', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (407, 408, 389, '把关成效得分排名', '把关成效得分排名', 'mainFrame', 3, null, '/boe.action?method=query&key=31873', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (419, 420, 409, '历史趋势分析', '历史趋势分析', 'mainFrame', 3, null, '/boe.action?method=query&key=31974', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (427, 428, 423, '年度各月合格率分析', '年度各月合格率分析', 'mainFrame', 3, null, '/boe.action?method=query&key=32090', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (431, 432, 361, '疫情安全', '疫情安全', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (469, 470, 463, '卫生检疫业务统计表A', '卫生检疫业务统计表A', 'mainFrame', 3, null, '/boe.action?method=query&key=33798', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (477, 478, 463, '食品及化妆品统计表', '食品及化妆品统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=33884', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (479, 480, 463, '植物及其产品统计表', '植物及其产品统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=33896', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (551, 552, 545, '风险控制汇总查询', '风险控制汇总查询', 'mainFrame', 2, null, '/boe.action?method=query&key=28498', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (607, 608, 545, '生产单位关联报检单位（批次）', '生产单位关联报检单位（批次）', 'mainFrame', 2, null, '/boe.action?method=query&key=28502', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (543, 544, 301, '贸易圈查询', '贸易圈查询', 'mainFrame', 2, null, '/trade.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (559, 560, 545, '生产企业报检量剧减情况', '生产企业报检量剧减情况', 'mainFrame', 2, null, '/boe.action?method=query&key=28517', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (583, 584, 505, '生产单位关联报检单位（发货）', '生产单位关联报检单位（发货）', 'mainFrame', 3, null, '/boe.action?method=query&key=38923', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (601, 602, 545, '报检单位关联生产单位（发货）', '报检单位关联生产单位（发货）', 'mainFrame', 2, null, '/boe.action?method=query&key=28519', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (547, 548, 545, '核查货证撤单', '核查货证撤单', 'mainFrame', 2, null, '/goodsDecls.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (621, 622, 0, '综合审计', '综合审计', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (603, 604, 545, '报检单位关联生产单位（批次）', '报检单位关联生产单位（批次）', 'mainFrame', 2, null, '/boe.action?method=query&key=28482', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (549, 550, 545, '风险控制分类查询', '风险控制分类查询', 'mainFrame', 2, null, '/boe.action?method=query&key=28500', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (553, 554, 545, '风险控制明细查询', '风险控制明细查询', 'mainFrame', 2, null, '/boe.action?method=query&key=28506', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (561, 562, 545, '生产企业报检量剧增情况', '生产企业报检量剧增情况', 'mainFrame', 2, null, '/boe.action?method=query&key=28524', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (605, 606, 545, '生产单位关联报检单位（发货）', '生产单位关联报检单位（发货）', 'mainFrame', 2, null, '/boe.action?method=query&key=28487', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (624, 625, 589, '审计数据查询（按企业）', '审计数据查询（按企业）', 'mainFrame', 3, null, '/dataAuditByEnt.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (545, 546, 0, '稽查管理', '稽查管理', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (597, 598, 591, 'CIQ对应HS编码查询', 'CIQ对应HS编码查询', 'mainFrame', 3, null, '/ciqhs.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (589, 590, 621, '数据审计', '数据审计', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (626, 627, 591, '直通放行查询', '直通放行查询', 'mainFrame', 3, null, '/directReleaseRecord.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (644, 645, 621, '检验员管理', '检验员管理', 'mainFrame', 2, null, '/declperson.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (716, 717, 581, '企业行为审计', '企业行为审计', 'mainFrame', 3, null, '/opearteAudit.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (581, 582, 621, '行为审计', '行为审计', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (595, 596, 589, '数据审计规则', '数据审计规则', 'mainFrame', 3, null, '/dataAuditRule.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (599, 600, 589, '审计数据查询（按报检员）', '审计数据查询（按报检员）', 'mainFrame', 3, null, '/dataAuditByPerson.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (622, 623, 589, '审计数据查询（按货物）', '审计数据查询（按货物）', 'mainFrame', 3, null, '/dataAuditByGoods.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (646, 647, 621, '信息督查', '信息督查', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (712, 713, 646, '通关单督查（已过期）', '通关单督查（已过期）', 'mainFrame', 3, null, '/releaseRecordByDate.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (708, 709, 646, '通关单督查（输往国不一致）', '通关单督查（输往国不一致）', 'mainFrame', 3, null, '/releaseRecordByCountry.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (710, 711, 646, '通关单督查（HS编码不一致）', '通关单督查（HS编码不一致）', 'mainFrame', 3, null, '/releaseRecordByHs.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (746, 747, 0, '排名统计', '排名统计', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (748, 749, 746, '企业排名', '企业排名', 'mainFrame', 2, null, '/qypm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (752, 753, 746, '全省进口/出口前50大产品', '全省进口/出口前50大产品', 'mainFrame', 2, null, '/hwpmDeclType.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (768, 769, 361, 'test', null, 'mainFrame', 2, null, '/boe.action?method=query&key=17559', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (786, 787, 746, '全省不合格率前50大产品', '全省不合格率前50大产品', 'mainFrame', 2, null, '/hscodeFailure.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (788, 789, 746, '全省不合格率前50大企业', '全省不合格率前50大企业', 'mainFrame', 2, null, '/entInfoFailure.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (852, 853, 1200, '疫情安全', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 6);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (862, 863, 846, '年度综合分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28486', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (868, 869, 846, '把关成效一类二类指标排名', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28515', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (872, 873, 848, '海关各口岸进出口统计', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28485', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (874, 875, 848, '海关(目源地)进出口商品总值', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28490', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (876, 877, 848, '年度综合分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28521', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (888, 889, 850, '年度各类合格率分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28525', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (892, 893, 852, '船舶病虫害把关成效情况统计分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28507', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (904, 905, 1020, '出入境集装箱检疫情况统计表', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28483', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (912, 913, 1020, '签发证单统计表', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28492', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (914, 915, 858, '核查货证撤单', null, 'mainFrame', 3, null, '/goodsDecls.action?method=queryAllByPage', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (918, 919, 858, '风险控制汇总查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28498', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (920, 921, 858, '风险控制明细查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28506', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (924, 925, 858, '生产企业报检量剧增情况', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48657', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (980, 981, 962, '通关单督查（HS编码不一致）', null, 'mainFrame', 3, null, '/releaseRecordByHs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (960, 961, 956, '流程预警查询', null, 'mainFrame', 3, null, '/procInsp.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (974, 975, 962, 'CIQ对应HS编码查询', null, 'mainFrame', 3, null, '/ciqhs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1014, 1015, 1012, '参数设置', null, 'mainFrame', 3, null, '/procRule.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1018, 1019, 1012, '贸易圈查询', null, 'mainFrame', 3, null, '/trade.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1020, 1021, 860, 'CIQ统计', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1038, 1039, 962, '受理报检人员和施检人员或计费人员和收费人员为同一人', '受理报检人员和施检人员或计费人员和收费人员为同一人', 'mainFrame', 3, null, '/userBs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1034, 1035, 962, '电子转单出口货物更改报检类别', '电子转单出口货物更改报检类别', 'mainFrame', 3, null, '/declTypeCodehchz.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1036, 1037, 962, '未按规定派单给施检部门，直接派单给检务科', '入境法检货物未按规定派单给施检部门，直接派单给检务科，可能导致货物未经检验检疫直接放行', 'mainFrame', 3, null, '/goodsJw.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1042, 1043, 962, '不符合报检条件而受理报检', '缺少有效的注册证、审批单等各类许可、检验检疫和其他必须提交的文件资料，不符合报检条件而受理报检', 'mainFrame', 3, null, '/declLimit.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1046, 1047, 850, '产品质量分析', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=productQualityAnalysis', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1068, 1069, 1026, '出入境检验检疫业务概况表', '出入境检验检疫业务概况表', 'mainFrame', 3, null, '/boe.action?method=queryTitle&key=7928', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1072, 1073, 1026, '全省各分支局出入境工业品检验检疫情况统计表', '全省各分支局出入境工业品检验检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48844', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1074, 1075, 1026, '全省各分支局出入境货物检验检疫业务情况统计表', '全省各分支局出入境货物检验检疫业务情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48854', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1076, 1077, 1026, '全省各分支局出入境食品及化妆品检验检疫情况统计表', '全省各分支局出入境食品及化妆品检验检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48859', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1078, 1079, 1026, '全省各分支局出入境植物及其产品检验检疫情况统计表', '全省各分支局出入境植物及其产品检验检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=48862', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (724, 725, 722, '代理报检公司的监察', '代理报检公司的监察', 'mainFrame', 2, null, '/entregcode.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (742, 743, 722, '不符合条件的入境验证报检单', '不符合条件的入境验证报检单', 'mainFrame', 2, null, '/rjyz.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (850, 851, 1200, '产品质量', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 5);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (806, 807, 722, '入境内部转单落实检验情况的监察', '入境内部转单落实检验情况的监察', 'mainFrame', 2, null, '/supOverdueUnInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (848, 849, 1200, '外贸发展', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 7);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (858, 859, 856, '外部稽查', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (860, 861, 0, '统计月报汇总', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 5);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (882, 883, 848, '货物类占比分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28520', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (890, 891, 852, '船舶媒介生物把关成效情况统计', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28488', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (900, 901, 1020, '卫生检疫业务统计表A', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28481', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (926, 927, 858, '报检单位关联生产单位（发货）', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48656', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (930, 931, 858, '同一生产单位多发货人', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48659', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (932, 933, 858, '生产单位关联报检单位（批次）', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48660', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (934, 935, 1200, '出入境批次综合分析', null, 'mainFrame', 2, null, '/boe.action?method=query&key=28489', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1138, 1139, 854, '绩效分析', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (946, 947, 938, '风险控制汇总查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28498', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (948, 949, 938, '风险控制明细查询', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28506', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (956, 957, 856, '流程预警', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (962, 963, 856, '内部督查', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (968, 969, 962, '审计数据查询（按报检员）', null, 'mainFrame', 3, null, '/dataAuditByPerson.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (976, 977, 962, '直通放行查询', null, 'mainFrame', 3, null, '/directReleaseRecord.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (978, 979, 962, '通关单督查（输往国不一致）', null, 'mainFrame', 3, null, '/releaseRecordByCountry.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (984, 985, 962, '检验员管理', null, 'mainFrame', 3, null, '/declperson.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (988, 989, 858, '非代理报检公司的监察', null, 'mainFrame', 3, null, '/entregcode.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (990, 991, 858, '逃避口岸核查工作撤销报检', null, 'mainFrame', 3, null, '/cxbj.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (994, 995, 962, '入境内部转单落实检验情况的监察', null, 'mainFrame', 3, null, '/supOverdueUnInsp.action?method=queryAllByPage', 'N', null);
commit;
prompt 200 records committed...
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1006, 1007, 998, '全省不合格率前50大产品', null, 'mainFrame', 3, null, '/hscodeFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1010, 1011, 938, '超流程预警', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=overProcAdv', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1032, 1033, 962, '超流程预警', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=overProcAdv', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1026, 1027, 860, '统计月报', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1140, 1141, 1138, '班子成绩分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58192', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1150, 1151, 1138, '干部成绩分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58207', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1144, 1145, 1138, '测评分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58195', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1148, 1149, 1138, '单位指标分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58203', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1322, 1323, 1202, '数据审核', null, 'mainFrame', 2, null, '/Audit/AuditTables', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1202, 1203, 0, '数据上报管理', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 6);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1204, 1205, 856, '风险点分析', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1178, 1179, 1026, '全省各分支局集装箱检疫情况统计表', '全省各分支局集装箱检疫情况统计表', 'mainFrame', 3, null, '/boe.action?method=query&key=59452', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1198, 1199, 1200, '产品质量分析', null, 'mainFrame', 2, null, '/boe.action?method=queryFlash&key=productQualityAnalysis', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1324, 1325, 1202, '联系人管理', null, 'mainFrame', 2, null, '/Contact/Main', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1286, 1287, 860, '统计关联分析', null, 'mainFrame', 2, null, '/boe.action?method=queryTitle&key=74730', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1302, 1303, 962, '相同的用户,不同的IP登录查询', '相同的用户,不同的IP登录查询', 'mainFrame', 3, null, '/userRelogin.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1304, 1305, 962, '相同的IP,不同的用户登录查询', '相同的IP,不同的用户登录查询', 'mainFrame', 3, null, '/userReloginbt.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1146, 1147, 1138, '单位成绩分析', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58199', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1318, 1319, 1202, '表样管理', '表样管理', 'mainFrame', 2, null, '/Table/UploaderTables', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1200, 1201, 0, '宏观质量监管', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1220, 1221, 1200, '进出口检验检疫综合分析', null, 'mainFrame', 2, null, '/boe.action?method=queryTitle&key=59039', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1238, 1239, 1028, '进出口检验检疫业务分析', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=impExpBusAnalysis', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1320, 1321, 1202, '数据上报', null, 'mainFrame', 2, null, '/Report/ReporterTables', 'N', null);
commit;
prompt 223 records loaded
prompt Loading F_POWER...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (727, '逃避口岸核查工作撤消报检权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (847, '检验监管权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (857, '业务督查权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (865, '市局排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (867, '历史趋势分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (871, '把关成效得分排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (879, '市局排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (885, '年度各分支局合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (895, '集装箱把关成效情况统计分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (897, '出入境业务总表A权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (899, '出入境业务总表B权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (903, '卫生检疫业务统计表B权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (907, '动物及产品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (909, '食品及化妆品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (911, '植物及其产品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (917, '风险控制分类查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (923, '生产企业报检量剧减情况权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (929, '报检单位关联生产单位（批次）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (945, '风险控制分类查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1017, '节假日查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1029, '综合仪表盘权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1031, '各分局出入境业务分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1071, '全省各分支局出入境动物及其产品检验检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1081, '全省各分支局卫生检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1089, '电子监管休眠信息查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1113, '报检单位与生产单位权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1259, '自主查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1131, '进出口检验检疫综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1283, '用户审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1285, '用户登录异常权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1301, '全省不合格率变化大的产品权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (723, '异常监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (855, '数据统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (751, '全省进口/出口前50强企业权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (827, '提前报检业务处理的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (881, '历史趋势分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (887, '年度各月合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (937, '效果展示权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (939, '风险点查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1141, '班子成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (951, '风险控制分析2.1权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1203, '数据上报权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (959, '流程预警延期申请权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (965, '行为审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (967, '数据审计规则权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (971, '审计数据查询（按货物）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (973, '审计数据查询（按企业）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (983, '通关单督查（有效期过期）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (987, '异常督查权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (993, '不符合条件的入境验证报检单权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (997, '提前报检业务处理的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (999, '排名统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1001, '企业排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1003, '全省进口/出口前50强企业权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1005, '全省进口/出口前50大产品权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1009, '全省不合格率前50大企业权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1013, '系统设置权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1153, '进出口检验检疫综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1109, '流程预警权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1325, '联系人管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1129, '干部成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1323, '数据审核权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (592, '业务审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (416, '年度综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (394, '年度综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (412, '海关各口岸进出口统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (424, '产品质量权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (476, '动物及产品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (506, '稽查统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (344, '流程预警延期申请权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (302, '系统设置权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (304, '参数设置权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (306, '节假日查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (326, '部门管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (330, '角色管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (342, '流程预警权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (346, '流程预警查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (362, ' BOE通信权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (150, '3权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1139, '绩效分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (328, '用户管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (2, '二级目录', 3);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (82, 'wer权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (4, '二级目录1', 5);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (102, '11权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (264, '3权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (262, '2权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (324, '机构管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (586, '生产单位关联报检单位（批次）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (398, '历史趋势分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (410, '外贸发展权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (430, '年度各类合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (464, 'CIQ数据统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (468, '出入境业务总表B权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (474, '出入境集装箱检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (500, '风险控制明细查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (502, '风险控制分析2.1权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (508, '报检单位关联生产单位数量排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (510, '生产单位关联报检单位数量排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (514, '生产企业报检量剧增情况权限', 1);
commit;
prompt 100 records committed...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (422, '货物类占比分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (426, '年度各分支局合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (396, '市局排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (436, '船舶病虫害把关成效情况统计分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (438, '集装箱把关成效情况统计分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (472, '卫生检疫业务统计表B权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (482, '签发证单统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (484, '综合信息查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (490, '风险点查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (496, '风险控制分类查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (498, '风险控制汇总查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (466, '出入境业务总表A权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (390, '检验监管权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (414, '海关(目源地)进出口商品总值权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (434, '船舶媒介生物把关成效情况统计分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (486, '出入境批次综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (488, '效果展示权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (492, '商检业务分析.xlf权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (494, '风险控制分析.xlf权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (504, '风险控制分析2.2权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (512, '生产企业报检量剧减情况权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (418, '市局排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (406, '把关成效一类二类指标排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (408, '把关成效得分排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (420, '历史趋势分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (428, '年度各月合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (432, '疫情安全权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (470, '卫生检疫业务统计表A权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (478, '食品及化妆品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (480, '植物及其产品统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (552, '风险控制汇总查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (608, '生产单位关联报检单位（批次）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (544, '贸易圈查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (560, '生产企业报检量剧减情况权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (584, '生产单位关联报检单位（发货）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (602, '报检单位关联生产单位（发货）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (542, '贸易圈管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (548, '核查货证撤单权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (604, '报检单位关联生产单位（批次）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (622, '综合审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (550, '风险控制分类查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (554, '风险控制明细查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (562, '生产企业报检量剧增情况权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (606, '生产单位关联报检单位（发货）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (546, '稽查管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (598, 'CIQ对应HS编码查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (627, '直通放行查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (625, '审计数据查询（按企业）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (590, '数据审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (645, '检验员管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (717, '企业行为审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (582, '用户审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (596, '数据审计规则权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (600, '审计数据查询（按报检员）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (623, '审计数据查询（按货物）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (647, '信息督查权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (713, '通关单督查（已过期）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (709, '通关单督查（输往国不一致）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (711, '通关单督查（HS编码不一致）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (787, '全省不合格率前50大产品权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (853, '疫情安全权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (863, '年度综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (869, '把关成效一类二类指标排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (877, '年度综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (889, '年度各类合格率分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (915, '核查货证撤单权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (919, '风险控制汇总查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (925, '生产企业报检量剧增情况权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (981, '通关单督查（HS编码不一致）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (961, '流程预警查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (975, 'CIQ对应HS编码查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1015, '参数设置权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1019, '贸易圈查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1035, '电子转单出口货物更改报检类别权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1037, '入境法检货物未按规定派单给施检部门，直接派单给检务科，可能导致货物未经检验检疫直接放行权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1039, '报检受检人员和施检人员是同一人权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1047, '产品质量分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1079, '全省各分支局出入境植物及其产品检验检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1125, '单位成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1111, '生产企业报检量权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1121, '班子成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1157, '生产企业报检量权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1149, '单位指标分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1155, '报检单位与生产单位权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1179, '全省各分支局集装箱检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1199, '产品质量分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1287, '统计关联分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (747, '排名统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (749, '企业排名权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (753, '全省进口/出口前50大产品权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (769, 'test权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (789, '全省不合格率前50大企业权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (873, '海关各口岸进出口统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (875, '海关(目源地)进出口商品总值权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (893, '船舶病虫害把关成效情况统计分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (905, '出入境集装箱检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (913, '签发证单统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (921, '风险控制明细查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1021, 'CIQ统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1069, '出入境检验检疫业务概况表权限', 1);
commit;
prompt 200 records committed...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1043, '缺少有效的注册证、审批单等各类许可、检验检疫和其他必须提交的文件资料，不符合报检条件而受理报检权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1067, '电子监管休眠信息权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1073, '全省各分支局出入境工业品检验检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1075, '全省各分支局出入境货物检验检疫业务情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1077, '全省各分支局出入境食品及化妆品检验检疫情况统计表权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1145, '测评分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1151, '干部成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1205, '风险点分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1303, '相同的用户,不同的IP登录查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1305, '相同的IP,不同的用户登录查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (725, '代理报检公司的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (743, '不符合条件的入境验证报检单权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (851, '产品质量权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (807, '入境内部转单落实检验情况的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (849, '外贸发展权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (859, '信息稽查权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (861, '科学预测权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (883, '货物类占比分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (891, '船舶媒介生物把关成效情况统计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (901, '卫生检疫业务统计表A权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (927, '报检单位关联生产单位（发货）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (931, '生产单位关联报检单位（发货）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (933, '生产单位关联报检单位（批次）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (935, '出入境批次综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (0, '科学决策系统权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (947, '风险控制汇总查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (949, '风险控制明细查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (957, '流程管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (963, '综合审计权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (969, '审计数据查询（按报检员）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (977, '直通放行查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (979, '通关单督查（输往国不一致）权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (985, '检验员管理权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (989, '代理报检公司的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (991, '逃避口岸核查工作撤销报检权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (995, '入境内部转单落实检验情况的监察权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1007, '全省不合格率前50大产品权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1011, '超流程预警权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1127, '单位指标分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1027, '通关处月报权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1033, '超流程预警权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1119, '绩效分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1123, '测评分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1321, '数据上报权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1147, '单位成绩分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1159, '风险分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1201, '统计查询权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1239, '进出口检验检疫业务分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1221, '进出口检验检疫综合分析权限', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1319, '表样管理权限', 1);
commit;
prompt 250 records loaded
prompt Loading F_ROLE...
insert into F_ROLE (ROLE_ID, ROLE_NAME, ROLE_ORDER)
values (0, '管理员角色', 11);
insert into F_ROLE (ROLE_ID, ROLE_NAME, ROLE_ORDER)
values (1, '测试角色', 23);
commit;
prompt 2 records loaded
prompt Loading F_ROLE_POWER...
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (0, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1201, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1021, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (897, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (899, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (901, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (903, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (905, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (907, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (909, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (911, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (913, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (937, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1027, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1069, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1071, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1073, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1075, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1077, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1079, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1081, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1179, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (855, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (847, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (863, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (865, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (867, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (869, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (871, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (849, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (873, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (875, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (877, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (879, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (881, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (883, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (851, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (885, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (887, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (889, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1047, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (853, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (891, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (893, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (895, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (999, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1001, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1003, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1005, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1007, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1009, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1029, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1031, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1033, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1199, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1205, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1139, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1141, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1145, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1147, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1149, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1151, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (935, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1153, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (857, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (859, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (915, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (917, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (919, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (921, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (923, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (925, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (927, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (929, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (931, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (933, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1089, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (939, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (945, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (947, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (949, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (951, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1011, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (957, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (959, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (961, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (963, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (965, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (969, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (971, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (973, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (975, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (977, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (985, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (987, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (979, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (981, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (983, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (989, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (991, 0);
commit;
prompt 100 records committed...
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (993, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (995, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (997, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1035, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1037, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1039, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1043, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (861, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1203, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1013, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (967, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1015, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1017, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1019, 0);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (0, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1201, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (935, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1221, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1199, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (847, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (863, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (865, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (867, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (869, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (871, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (851, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (885, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (887, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (889, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (853, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (891, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (893, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (895, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (849, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (877, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (879, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (881, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (883, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (855, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1031, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (999, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1003, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1005, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1007, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1009, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1301, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1139, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1141, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1145, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1147, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1149, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1151, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1029, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1239, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (857, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1205, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (859, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (915, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (931, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (917, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (919, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (921, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (923, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (925, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (927, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (929, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (933, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (989, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (991, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1089, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (963, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1033, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1285, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1283, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (965, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (969, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (971, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (973, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (975, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (977, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (979, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (981, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (983, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (985, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (993, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (995, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (997, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1035, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1037, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1039, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1043, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1303, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1305, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1259, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (861, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1287, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1021, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (897, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (899, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (901, 1);
commit;
prompt 200 records committed...
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (903, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (905, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (907, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (909, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (911, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (913, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1027, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1069, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1071, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1073, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1075, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1077, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1079, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1081, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1179, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1203, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1319, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1321, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1323, 1);
insert into F_ROLE_POWER (POWER_ID, ROLE_ID)
values (1325, 1);
commit;
prompt 220 records loaded
prompt Loading F_USR_ROLE...
insert into F_USR_ROLE (USR_ID, ROLE_ID, ORG_ID)
values ('8008', 1, '320810');
insert into F_USR_ROLE (USR_ID, ROLE_ID, ORG_ID)
values ('0313X', 0, '320810');
insert into F_USR_ROLE (USR_ID, ROLE_ID, ORG_ID)
values ('SXN', 1, '320500');
insert into F_USR_ROLE (USR_ID, ROLE_ID, ORG_ID)
values ('wangdq', 1, '320100');
insert into F_USR_ROLE (USR_ID, ROLE_ID, ORG_ID)
values ('lvjian', 1, '320100');
commit;
prompt 5 records loaded
prompt Enabling triggers for F_MENU_TREE...
alter table F_MENU_TREE enable all triggers;
prompt Enabling triggers for F_POWER...
alter table F_POWER enable all triggers;
prompt Enabling triggers for F_ROLE...
alter table F_ROLE enable all triggers;
prompt Enabling triggers for F_ROLE_POWER...
alter table F_ROLE_POWER enable all triggers;
prompt Enabling triggers for F_USR_ROLE...
alter table F_USR_ROLE enable all triggers;
set feedback on
set define on
prompt Done.

prompt PL/SQL Developer import file
prompt Created on 2014��2��10�� by Administrator
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
values (1258, 1259, 0, '������ѯ', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1282, 1283, 962, '�û���ƣ���ʬ�û���', null, 'mainFrame', 3, null, '/auditUser.action?method=queryAllByPage', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1284, 1285, 962, '�û���¼�쳣', null, 'mainFrame', 3, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1300, 1301, 998, 'ȫʡ���ϸ��ʱ仯��Ĳ�Ʒ', 'ȫʡ���ϸ��ʱ仯��Ĳ�Ʒ', 'mainFrame', 3, null, '/bhFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (726, 727, 722, '�ӱܿڰ��˲鹤����������', '�ӱܿڰ��˲鹤����������', 'mainFrame', 2, null, '/cxbj.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (846, 847, 1200, '������', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (856, 857, 0, '�������Ԥ��', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (864, 865, 846, '�о�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28523', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (866, 867, 846, '��ʷ���Ʒ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28518', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (870, 871, 846, '�ѹس�Ч�÷�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28499', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (878, 879, 848, '�о�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28526', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (884, 885, 850, '��ȸ���֧�ֺϸ��ʷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28513', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (894, 895, 852, '��װ��ѹس�Ч���ͳ�Ʒ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28504', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (896, 897, 1020, '���뾳ҵ���ܱ�A', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28495', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (898, 899, 1020, '���뾳ҵ���ܱ�B', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28514', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (902, 903, 1020, '��������ҵ��ͳ�Ʊ�B', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28491', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (906, 907, 1020, '���Ｐ��Ʒͳ�Ʊ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28494', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (908, 909, 1020, 'ʳƷ����ױƷͳ�Ʊ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28493', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (910, 911, 1020, 'ֲ�Ｐ���Ʒͳ�Ʊ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28505', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (916, 917, 858, '���տ��Ʒ����ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28500', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (922, 923, 858, '������ҵ������������', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48654', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (928, 929, 858, '���쵥λ����������λ�����Σ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48655', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (944, 945, 938, '���տ��Ʒ����ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28500', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1016, 1017, 1012, '�ڼ��ղ�ѯ', null, 'mainFrame', 3, null, '/holiday.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1028, 1029, 854, '��ʻ��', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1030, 1031, 854, '���־ֳ��뾳ҵ�����', null, 'mainFrame', 2, null, '/boe.action?method=queryFlash&key=eachBranchBusAnalysis', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1070, 1071, 1026, 'ȫʡ����֧�ֳ��뾳���Ｐ���Ʒ����������ͳ�Ʊ�', 'ȫʡ����֧�ֳ��뾳���Ｐ���Ʒ����������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48552', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1080, 1081, 1026, 'ȫʡ����֧�������������ͳ�Ʊ�', 'ȫʡ����֧�������������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48865', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1088, 1089, 858, '���Ӽ��������Ϣ��ѯ', '���Ӽ��������Ϣ��ѯ', 'mainFrame', 3, null, '/dzjgXmJg.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (722, 723, 0, '�쳣���', '�쳣���', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (854, 855, 0, '�ۺ�ָ�����', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (750, 751, 746, 'ȫʡ����/����ǰ50ǿ��ҵ', 'ȫʡ����/����ǰ50ǿ��ҵ', 'mainFrame', 2, null, '/qypmDeclType.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (826, 827, 722, '��ǰ����ҵ����ļ��', '��ǰ����ҵ����ļ��', 'mainFrame', 2, null, '/supAdvInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (880, 881, 848, '��ʷ���Ʒ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28484', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (886, 887, 850, '��ȸ��ºϸ��ʷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28496', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (936, 937, 1020, 'Ч��չʾ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28501', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (938, 939, 856, '���յ��ѯ', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (950, 951, 938, '���տ��Ʒ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=29716', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (958, 959, 956, '����Ԥ����������', null, 'mainFrame', 3, null, '/procWarm.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (964, 965, 962, '��Ϊ���', null, 'mainFrame', 3, null, '/opearteAudit.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (966, 967, 1012, '������ƹ���', null, 'mainFrame', 3, null, '/auditRule.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (970, 971, 962, '������ݲ�ѯ�������', null, 'mainFrame', 3, null, '/dataAuditByGoods.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (972, 973, 962, '������ݲ�ѯ������ҵ��', null, 'mainFrame', 3, null, '/dataAuditByEnt.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (982, 983, 962, 'ͨ�ص����飨��Ч�ڹ��ڣ�', null, 'mainFrame', 3, null, '/releaseRecordByDate.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (986, 987, 856, '���յ�', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (992, 993, 962, '�������������뾳��֤���쵥', null, 'mainFrame', 3, null, '/rjyz.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (996, 997, 962, '��ǰ����ҵ����ļ��', null, 'mainFrame', 3, null, '/supAdvInsp.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (998, 999, 854, '��ҵ��Ʒ��������', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1000, 1001, 998, '��ҵ����', null, 'mainFrame', 3, null, '/qypm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1002, 1003, 998, 'ȫʡ����/����ǰ50ǿ��ҵ', null, 'mainFrame', 3, null, '/qypmDeclType.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1004, 1005, 998, 'ȫʡ����/����ǰ50���Ʒ', null, 'mainFrame', 3, null, '/hwpmDeclType.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1008, 1009, 998, 'ȫʡ���ϸ���ǰ50����ҵ', null, 'mainFrame', 3, null, '/entInfoFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1012, 1013, 0, 'ϵͳ����', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 7);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (591, 592, 621, 'ҵ�����', 'ҵ�����', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (415, 416, 409, '����ۺϷ���', '����ۺϷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=31931', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (393, 394, 389, '����ۺϷ���', '����ۺϷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=31497', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (411, 412, 409, '���ظ��ڰ�������ͳ��', '���ظ��ڰ�������ͳ��', 'mainFrame', 3, null, '/boe.action?method=query&key=31894', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (423, 424, 361, '��Ʒ����', '��Ʒ����', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (475, 476, 463, '���Ｐ��Ʒͳ�Ʊ�', '���Ｐ��Ʒͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=33869', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (505, 506, 361, '����ͳ��', '����ͳ��', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (343, 344, 341, '����Ԥ����������', '����Ԥ����������', 'mainFrame', 2, null, '/procWarm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (301, 302, 0, 'ϵͳ����', 'ϵͳ����', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (303, 304, 301, '��������', '��������', 'mainFrame', 2, null, '/procRule.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (305, 306, 301, '�ڼ��ղ�ѯ', '�ڼ��ղ�ѯ', 'mainFrame', 2, null, '/holiday.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (341, 342, 0, '����Ԥ��', '����Ԥ��', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (345, 346, 341, '����Ԥ����ѯ', '����Ԥ����ѯ', 'mainFrame', 2, null, '/procInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (361, 362, 0, 'ͳ�Ʊ���', 'ͳ�Ʊ���', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (429, 430, 423, '��ȸ���ϸ��ʷ���', '��ȸ���ϸ��ʷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32124', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (0, 0, -1, '��ѧ����ϵͳ', '��ѧ����ϵͳ', 'mainUSERS', 0, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (585, 586, 505, '������λ�������쵥λ�����Σ�', '������λ�������쵥λ�����Σ�', 'mainFrame', 3, null, '/boe.action?method=query&key=38932', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (397, 398, 389, '��ʷ���Ʒ���', '��ʷ���Ʒ���', 'mainFrame', 3, null, '/boe.action?method=query&key=31678', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (409, 410, 361, '��ó��չ', '��ó��չ', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (463, 464, 361, 'CIQ����ͳ��', 'CIQ����ͳ��', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (467, 468, 463, '���뾳ҵ���ܱ�B', '���뾳ҵ���ܱ�B', 'mainFrame', 3, null, '/boe.action?method=query&key=33594', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (473, 474, 463, '���뾳��װ��������ͳ�Ʊ�', '���뾳��װ��������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=33853', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (499, 500, 489, '���տ�����ϸ��ѯ', '���տ�����ϸ��ѯ', 'mainFrame', 3, null, '/boe.action?method=query&key=34380', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (501, 502, 489, '���տ��Ʒ���2.1', '���տ��Ʒ���2.1', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (507, 508, 505, '���쵥λ����������λ��������', '���쵥λ����������λ��������', 'mainFrame', 3, null, '/boe.action?method=query&key=38910', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (509, 510, 505, '���쵥λ����������λ�����Σ�', '���쵥λ����������λ�����Σ�', 'mainFrame', 3, null, '/boe.action?method=query&key=38915', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (513, 514, 505, '������ҵ�������������', '������ҵ�������������', 'mainFrame', 3, null, '/boe.action?method=query&key=34018', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (421, 422, 409, '������ռ�ȷ���', '������ռ�ȷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=31992', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (425, 426, 423, '��ȸ���֧�ֺϸ��ʷ���', '��ȸ���֧�ֺϸ��ʷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32037', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (395, 396, 389, '�о�����', '�о�����', 'mainFrame', 3, null, '/boe.action?method=query&key=31599', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (435, 436, 431, '�������溦�ѹس�Ч���ͳ�Ʒ���', '�������溦�ѹس�Ч���ͳ�Ʒ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32184', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (437, 438, 431, '��װ��ѹس�Ч���ͳ�Ʒ���', '��װ��ѹس�Ч���ͳ�Ʒ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32204', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (471, 472, 463, '��������ҵ��ͳ�Ʊ�B', '��������ҵ��ͳ�Ʊ�B', 'mainFrame', 3, null, '/boe.action?method=query&key=33837', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (481, 482, 463, 'ǩ��֤��ͳ�Ʊ�', 'ǩ��֤��ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=33911', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (483, 484, 361, '�ۺ���Ϣ��ѯ', '�ۺ���Ϣ��ѯ', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (489, 490, 361, '���յ��ѯ', '���յ��ѯ', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (495, 496, 489, '���տ��Ʒ����ѯ', '���տ��Ʒ����ѯ', 'mainFrame', 3, null, '/boe.action?method=query&key=34357', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (497, 498, 489, '���տ��ƻ��ܲ�ѯ', '���տ��ƻ��ܲ�ѯ', 'mainFrame', 3, null, '/boe.action?method=query&key=34371', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (465, 466, 463, '���뾳ҵ���ܱ�A', '���뾳ҵ���ܱ�A', 'mainFrame', 3, null, '/boe.action?method=query&key=33552', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (389, 390, 361, '������', '������', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (413, 414, 409, '����(ĿԴ��)��������Ʒ��ֵ', '����(ĿԴ��)��������Ʒ��ֵ', 'mainFrame', 3, null, '/boe.action?method=query&key=31918', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (433, 434, 431, '����ý������ѹس�Ч���ͳ�Ʒ���', '����ý������ѹس�Ч���ͳ�Ʒ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32158', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (485, 486, 483, '���뾳�����ۺϷ���', '���뾳�����ۺϷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=33927', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (487, 488, 483, 'Ч��չʾ', 'Ч��չʾ', 'mainFrame', 3, null, '/boe.action?method=query&key=33950', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (491, 492, 489, '�̼�ҵ�����.xlf', '�̼�ҵ�����.xlf', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (493, 494, 489, '���տ��Ʒ���.xlf', '���տ��Ʒ���.xlf', 'mainFrame', 3, null, null, 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (503, 504, 489, '���տ��Ʒ���2.2', '���տ��Ʒ���2.2', 'mainFrame', 3, null, null, 'Y', null);
commit;
prompt 100 records committed...
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (511, 512, 505, '������ҵ������������', '������ҵ������������', 'mainFrame', 3, null, '/boe.action?method=query&key=34000', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (417, 418, 409, '�о�����', '�о�����', 'mainFrame', 3, null, '/boe.action?method=query&key=31946', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (405, 406, 389, '�ѹس�Чһ�����ָ������', '�ѹس�Чһ�����ָ������', 'mainFrame', 3, null, '/boe.action?method=query&key=31721', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (407, 408, 389, '�ѹس�Ч�÷�����', '�ѹس�Ч�÷�����', 'mainFrame', 3, null, '/boe.action?method=query&key=31873', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (419, 420, 409, '��ʷ���Ʒ���', '��ʷ���Ʒ���', 'mainFrame', 3, null, '/boe.action?method=query&key=31974', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (427, 428, 423, '��ȸ��ºϸ��ʷ���', '��ȸ��ºϸ��ʷ���', 'mainFrame', 3, null, '/boe.action?method=query&key=32090', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (431, 432, 361, '���鰲ȫ', '���鰲ȫ', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (469, 470, 463, '��������ҵ��ͳ�Ʊ�A', '��������ҵ��ͳ�Ʊ�A', 'mainFrame', 3, null, '/boe.action?method=query&key=33798', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (477, 478, 463, 'ʳƷ����ױƷͳ�Ʊ�', 'ʳƷ����ױƷͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=33884', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (479, 480, 463, 'ֲ�Ｐ���Ʒͳ�Ʊ�', 'ֲ�Ｐ���Ʒͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=33896', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (551, 552, 545, '���տ��ƻ��ܲ�ѯ', '���տ��ƻ��ܲ�ѯ', 'mainFrame', 2, null, '/boe.action?method=query&key=28498', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (607, 608, 545, '������λ�������쵥λ�����Σ�', '������λ�������쵥λ�����Σ�', 'mainFrame', 2, null, '/boe.action?method=query&key=28502', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (543, 544, 301, 'ó��Ȧ��ѯ', 'ó��Ȧ��ѯ', 'mainFrame', 2, null, '/trade.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (559, 560, 545, '������ҵ������������', '������ҵ������������', 'mainFrame', 2, null, '/boe.action?method=query&key=28517', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (583, 584, 505, '������λ�������쵥λ��������', '������λ�������쵥λ��������', 'mainFrame', 3, null, '/boe.action?method=query&key=38923', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (601, 602, 545, '���쵥λ����������λ��������', '���쵥λ����������λ��������', 'mainFrame', 2, null, '/boe.action?method=query&key=28519', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (547, 548, 545, '�˲��֤����', '�˲��֤����', 'mainFrame', 2, null, '/goodsDecls.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (621, 622, 0, '�ۺ����', '�ۺ����', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (603, 604, 545, '���쵥λ����������λ�����Σ�', '���쵥λ����������λ�����Σ�', 'mainFrame', 2, null, '/boe.action?method=query&key=28482', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (549, 550, 545, '���տ��Ʒ����ѯ', '���տ��Ʒ����ѯ', 'mainFrame', 2, null, '/boe.action?method=query&key=28500', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (553, 554, 545, '���տ�����ϸ��ѯ', '���տ�����ϸ��ѯ', 'mainFrame', 2, null, '/boe.action?method=query&key=28506', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (561, 562, 545, '������ҵ�������������', '������ҵ�������������', 'mainFrame', 2, null, '/boe.action?method=query&key=28524', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (605, 606, 545, '������λ�������쵥λ��������', '������λ�������쵥λ��������', 'mainFrame', 2, null, '/boe.action?method=query&key=28487', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (624, 625, 589, '������ݲ�ѯ������ҵ��', '������ݲ�ѯ������ҵ��', 'mainFrame', 3, null, '/dataAuditByEnt.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (545, 546, 0, '�������', '�������', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (597, 598, 591, 'CIQ��ӦHS�����ѯ', 'CIQ��ӦHS�����ѯ', 'mainFrame', 3, null, '/ciqhs.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (589, 590, 621, '�������', '�������', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (626, 627, 591, 'ֱͨ���в�ѯ', 'ֱͨ���в�ѯ', 'mainFrame', 3, null, '/directReleaseRecord.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (644, 645, 621, '����Ա����', '����Ա����', 'mainFrame', 2, null, '/declperson.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (716, 717, 581, '��ҵ��Ϊ���', '��ҵ��Ϊ���', 'mainFrame', 3, null, '/opearteAudit.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (581, 582, 621, '��Ϊ���', '��Ϊ���', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (595, 596, 589, '������ƹ���', '������ƹ���', 'mainFrame', 3, null, '/dataAuditRule.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (599, 600, 589, '������ݲ�ѯ��������Ա��', '������ݲ�ѯ��������Ա��', 'mainFrame', 3, null, '/dataAuditByPerson.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (622, 623, 589, '������ݲ�ѯ�������', '������ݲ�ѯ�������', 'mainFrame', 3, null, '/dataAuditByGoods.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (646, 647, 621, '��Ϣ����', '��Ϣ����', 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', 4);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (712, 713, 646, 'ͨ�ص����飨�ѹ��ڣ�', 'ͨ�ص����飨�ѹ��ڣ�', 'mainFrame', 3, null, '/releaseRecordByDate.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (708, 709, 646, 'ͨ�ص����飨��������һ�£�', 'ͨ�ص����飨��������һ�£�', 'mainFrame', 3, null, '/releaseRecordByCountry.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (710, 711, 646, 'ͨ�ص����飨HS���벻һ�£�', 'ͨ�ص����飨HS���벻һ�£�', 'mainFrame', 3, null, '/releaseRecordByHs.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (746, 747, 0, '����ͳ��', '����ͳ��', 'mainFrame', 1, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (748, 749, 746, '��ҵ����', '��ҵ����', 'mainFrame', 2, null, '/qypm.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (752, 753, 746, 'ȫʡ����/����ǰ50���Ʒ', 'ȫʡ����/����ǰ50���Ʒ', 'mainFrame', 2, null, '/hwpmDeclType.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (768, 769, 361, 'test', null, 'mainFrame', 2, null, '/boe.action?method=query&key=17559', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (786, 787, 746, 'ȫʡ���ϸ���ǰ50���Ʒ', 'ȫʡ���ϸ���ǰ50���Ʒ', 'mainFrame', 2, null, '/hscodeFailure.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (788, 789, 746, 'ȫʡ���ϸ���ǰ50����ҵ', 'ȫʡ���ϸ���ǰ50����ҵ', 'mainFrame', 2, null, '/entInfoFailure.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (852, 853, 1200, '���鰲ȫ', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 6);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (862, 863, 846, '����ۺϷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28486', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (868, 869, 846, '�ѹس�Чһ�����ָ������', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28515', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (872, 873, 848, '���ظ��ڰ�������ͳ��', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28485', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (874, 875, 848, '����(ĿԴ��)��������Ʒ��ֵ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28490', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (876, 877, 848, '����ۺϷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28521', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (888, 889, 850, '��ȸ���ϸ��ʷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28525', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (892, 893, 852, '�������溦�ѹس�Ч���ͳ�Ʒ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28507', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (904, 905, 1020, '���뾳��װ��������ͳ�Ʊ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28483', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (912, 913, 1020, 'ǩ��֤��ͳ�Ʊ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28492', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (914, 915, 858, '�˲��֤����', null, 'mainFrame', 3, null, '/goodsDecls.action?method=queryAllByPage', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (918, 919, 858, '���տ��ƻ��ܲ�ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28498', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (920, 921, 858, '���տ�����ϸ��ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28506', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (924, 925, 858, '������ҵ�������������', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48657', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (980, 981, 962, 'ͨ�ص����飨HS���벻һ�£�', null, 'mainFrame', 3, null, '/releaseRecordByHs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (960, 961, 956, '����Ԥ����ѯ', null, 'mainFrame', 3, null, '/procInsp.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (974, 975, 962, 'CIQ��ӦHS�����ѯ', null, 'mainFrame', 3, null, '/ciqhs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1014, 1015, 1012, '��������', null, 'mainFrame', 3, null, '/procRule.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1018, 1019, 1012, 'ó��Ȧ��ѯ', null, 'mainFrame', 3, null, '/trade.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1020, 1021, 860, 'CIQͳ��', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1038, 1039, 962, '��������Ա��ʩ����Ա��Ʒ���Ա���շ���ԱΪͬһ��', '��������Ա��ʩ����Ա��Ʒ���Ա���շ���ԱΪͬһ��', 'mainFrame', 3, null, '/userBs.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1034, 1035, 962, '����ת�����ڻ�����ı������', '����ת�����ڻ�����ı������', 'mainFrame', 3, null, '/declTypeCodehchz.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1036, 1037, 962, 'δ���涨�ɵ���ʩ�첿�ţ�ֱ���ɵ��������', '�뾳�������δ���涨�ɵ���ʩ�첿�ţ�ֱ���ɵ�������ƣ����ܵ��»���δ���������ֱ�ӷ���', 'mainFrame', 3, null, '/goodsJw.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1042, 1043, 962, '�����ϱ���������������', 'ȱ����Ч��ע��֤���������ȸ�����ɡ�������ߺ����������ύ���ļ����ϣ������ϱ���������������', 'mainFrame', 3, null, '/declLimit.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1046, 1047, 850, '��Ʒ��������', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=productQualityAnalysis', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1068, 1069, 1026, '���뾳�������ҵ��ſ���', '���뾳�������ҵ��ſ���', 'mainFrame', 3, null, '/boe.action?method=queryTitle&key=7928', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1072, 1073, 1026, 'ȫʡ����֧�ֳ��뾳��ҵƷ����������ͳ�Ʊ�', 'ȫʡ����֧�ֳ��뾳��ҵƷ����������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48844', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1074, 1075, 1026, 'ȫʡ����֧�ֳ��뾳����������ҵ�����ͳ�Ʊ�', 'ȫʡ����֧�ֳ��뾳����������ҵ�����ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48854', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1076, 1077, 1026, 'ȫʡ����֧�ֳ��뾳ʳƷ����ױƷ����������ͳ�Ʊ�', 'ȫʡ����֧�ֳ��뾳ʳƷ����ױƷ����������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48859', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1078, 1079, 1026, 'ȫʡ����֧�ֳ��뾳ֲ�Ｐ���Ʒ����������ͳ�Ʊ�', 'ȫʡ����֧�ֳ��뾳ֲ�Ｐ���Ʒ����������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=48862', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (724, 725, 722, '�����칫˾�ļ��', '�����칫˾�ļ��', 'mainFrame', 2, null, '/entregcode.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (742, 743, 722, '�������������뾳��֤���쵥', '�������������뾳��֤���쵥', 'mainFrame', 2, null, '/rjyz.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (850, 851, 1200, '��Ʒ����', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 5);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (806, 807, 722, '�뾳�ڲ�ת����ʵ��������ļ��', '�뾳�ڲ�ת����ʵ��������ļ��', 'mainFrame', 2, null, '/supOverdueUnInsp.action?method=queryAllByPage', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (848, 849, 1200, '��ó��չ', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 7);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (858, 859, 856, '�ⲿ����', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (860, 861, 0, 'ͳ���±�����', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 5);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (882, 883, 848, '������ռ�ȷ���', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28520', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (890, 891, 852, '����ý������ѹس�Ч���ͳ��', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28488', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (900, 901, 1020, '��������ҵ��ͳ�Ʊ�A', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28481', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (926, 927, 858, '���쵥λ����������λ��������', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48656', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (930, 931, 858, 'ͬһ������λ�෢����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48659', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (932, 933, 858, '������λ�������쵥λ�����Σ�', null, 'mainFrame', 3, null, '/boe.action?method=query&key=48660', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (934, 935, 1200, '���뾳�����ۺϷ���', null, 'mainFrame', 2, null, '/boe.action?method=query&key=28489', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1138, 1139, 854, '��Ч����', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (946, 947, 938, '���տ��ƻ��ܲ�ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28498', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (948, 949, 938, '���տ�����ϸ��ѯ', null, 'mainFrame', 3, null, '/boe.action?method=query&key=28506', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (956, 957, 856, '����Ԥ��', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (962, 963, 856, '�ڲ�����', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (968, 969, 962, '������ݲ�ѯ��������Ա��', null, 'mainFrame', 3, null, '/dataAuditByPerson.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (976, 977, 962, 'ֱͨ���в�ѯ', null, 'mainFrame', 3, null, '/directReleaseRecord.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (978, 979, 962, 'ͨ�ص����飨��������һ�£�', null, 'mainFrame', 3, null, '/releaseRecordByCountry.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (984, 985, 962, '����Ա����', null, 'mainFrame', 3, null, '/declperson.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (988, 989, 858, '�Ǵ����칫˾�ļ��', null, 'mainFrame', 3, null, '/entregcode.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (990, 991, 858, '�ӱܿڰ��˲鹤����������', null, 'mainFrame', 3, null, '/cxbj.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (994, 995, 962, '�뾳�ڲ�ת����ʵ��������ļ��', null, 'mainFrame', 3, null, '/supOverdueUnInsp.action?method=queryAllByPage', 'N', null);
commit;
prompt 200 records committed...
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1006, 1007, 998, 'ȫʡ���ϸ���ǰ50���Ʒ', null, 'mainFrame', 3, null, '/hscodeFailure.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1010, 1011, 938, '������Ԥ��', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=overProcAdv', 'Y', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1032, 1033, 962, '������Ԥ��', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=overProcAdv', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1026, 1027, 860, 'ͳ���±�', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1140, 1141, 1138, '���ӳɼ�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58192', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1150, 1151, 1138, '�ɲ��ɼ�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58207', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1144, 1145, 1138, '��������', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58195', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1148, 1149, 1138, '��λָ�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58203', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1322, 1323, 1202, '�������', null, 'mainFrame', 2, null, '/Audit/AuditTables', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1202, 1203, 0, '�����ϱ�����', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 6);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1204, 1205, 856, '���յ����', null, 'mainFrame', 2, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1178, 1179, 1026, 'ȫʡ����֧�ּ�װ��������ͳ�Ʊ�', 'ȫʡ����֧�ּ�װ��������ͳ�Ʊ�', 'mainFrame', 3, null, '/boe.action?method=query&key=59452', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1198, 1199, 1200, '��Ʒ��������', null, 'mainFrame', 2, null, '/boe.action?method=queryFlash&key=productQualityAnalysis', 'N', 3);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1324, 1325, 1202, '��ϵ�˹���', null, 'mainFrame', 2, null, '/Contact/Main', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1286, 1287, 860, 'ͳ�ƹ�������', null, 'mainFrame', 2, null, '/boe.action?method=queryTitle&key=74730', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1302, 1303, 962, '��ͬ���û�,��ͬ��IP��¼��ѯ', '��ͬ���û�,��ͬ��IP��¼��ѯ', 'mainFrame', 3, null, '/userRelogin.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1304, 1305, 962, '��ͬ��IP,��ͬ���û���¼��ѯ', '��ͬ��IP,��ͬ���û���¼��ѯ', 'mainFrame', 3, null, '/userReloginbt.action?method=queryAllByPage', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1146, 1147, 1138, '��λ�ɼ�����', null, 'mainFrame', 3, null, '/boe.action?method=query&key=58199', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1318, 1319, 1202, '��������', '��������', 'mainFrame', 2, null, '/Table/UploaderTables', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1200, 1201, 0, '����������', null, 'mainFrame', 1, null, '/user.action?method=toBody', 'N', 1);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1220, 1221, 1200, '�����ڼ�������ۺϷ���', null, 'mainFrame', 2, null, '/boe.action?method=queryTitle&key=59039', 'N', 2);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1238, 1239, 1028, '�����ڼ������ҵ�����', null, 'mainFrame', 3, null, '/boe.action?method=queryFlash&key=impExpBusAnalysis', 'N', null);
insert into F_MENU_TREE (ID, POWER_ID, P_ID, NAME, PROMPT, TYPE, LAYER, STYLE, URL, IS_DEL, ORDER_ID)
values (1320, 1321, 1202, '�����ϱ�', null, 'mainFrame', 2, null, '/Report/ReporterTables', 'N', null);
commit;
prompt 223 records loaded
prompt Loading F_POWER...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (727, '�ӱܿڰ��˲鹤����������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (847, '������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (857, 'ҵ�񶽲�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (865, '�о�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (867, '��ʷ���Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (871, '�ѹس�Ч�÷�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (879, '�о�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (885, '��ȸ���֧�ֺϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (895, '��װ��ѹس�Ч���ͳ�Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (897, '���뾳ҵ���ܱ�AȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (899, '���뾳ҵ���ܱ�BȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (903, '��������ҵ��ͳ�Ʊ�BȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (907, '���Ｐ��Ʒͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (909, 'ʳƷ����ױƷͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (911, 'ֲ�Ｐ���Ʒͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (917, '���տ��Ʒ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (923, '������ҵ������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (929, '���쵥λ����������λ�����Σ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (945, '���տ��Ʒ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1017, '�ڼ��ղ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1029, '�ۺ��Ǳ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1031, '���־ֳ��뾳ҵ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1071, 'ȫʡ����֧�ֳ��뾳���Ｐ���Ʒ����������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1081, 'ȫʡ����֧�������������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1089, '���Ӽ��������Ϣ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1113, '���쵥λ��������λȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1259, '������ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1131, '�����ڼ�������ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1283, '�û����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1285, '�û���¼�쳣Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1301, 'ȫʡ���ϸ��ʱ仯��Ĳ�ƷȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (723, '�쳣���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (855, '����ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (751, 'ȫʡ����/����ǰ50ǿ��ҵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (827, '��ǰ����ҵ����ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (881, '��ʷ���Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (887, '��ȸ��ºϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (937, 'Ч��չʾȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (939, '���յ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1141, '���ӳɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (951, '���տ��Ʒ���2.1Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1203, '�����ϱ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (959, '����Ԥ����������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (965, '��Ϊ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (967, '������ƹ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (971, '������ݲ�ѯ�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (973, '������ݲ�ѯ������ҵ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (983, 'ͨ�ص����飨��Ч�ڹ��ڣ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (987, '�쳣����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (993, '�������������뾳��֤���쵥Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (997, '��ǰ����ҵ����ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (999, '����ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1001, '��ҵ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1003, 'ȫʡ����/����ǰ50ǿ��ҵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1005, 'ȫʡ����/����ǰ50���ƷȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1009, 'ȫʡ���ϸ���ǰ50����ҵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1013, 'ϵͳ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1153, '�����ڼ�������ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1109, '����Ԥ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1325, '��ϵ�˹���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1129, '�ɲ��ɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1323, '�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (592, 'ҵ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (416, '����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (394, '����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (412, '���ظ��ڰ�������ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (424, '��Ʒ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (476, '���Ｐ��Ʒͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (506, '����ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (344, '����Ԥ����������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (302, 'ϵͳ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (304, '��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (306, '�ڼ��ղ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (326, '���Ź���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (330, '��ɫ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (342, '����Ԥ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (346, '����Ԥ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (362, ' BOEͨ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (150, '3Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1139, '��Ч����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (328, '�û�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (2, '����Ŀ¼', 3);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (82, 'werȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (4, '����Ŀ¼1', 5);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (102, '11Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (264, '3Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (262, '2Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (324, '��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (586, '������λ�������쵥λ�����Σ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (398, '��ʷ���Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (410, '��ó��չȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (430, '��ȸ���ϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (464, 'CIQ����ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (468, '���뾳ҵ���ܱ�BȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (474, '���뾳��װ��������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (500, '���տ�����ϸ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (502, '���տ��Ʒ���2.1Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (508, '���쵥λ����������λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (510, '������λ�������쵥λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (514, '������ҵ�������������Ȩ��', 1);
commit;
prompt 100 records committed...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (422, '������ռ�ȷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (426, '��ȸ���֧�ֺϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (396, '�о�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (436, '�������溦�ѹس�Ч���ͳ�Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (438, '��װ��ѹس�Ч���ͳ�Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (472, '��������ҵ��ͳ�Ʊ�BȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (482, 'ǩ��֤��ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (484, '�ۺ���Ϣ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (490, '���յ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (496, '���տ��Ʒ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (498, '���տ��ƻ��ܲ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (466, '���뾳ҵ���ܱ�AȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (390, '������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (414, '����(ĿԴ��)��������Ʒ��ֵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (434, '����ý������ѹس�Ч���ͳ�Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (486, '���뾳�����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (488, 'Ч��չʾȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (492, '�̼�ҵ�����.xlfȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (494, '���տ��Ʒ���.xlfȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (504, '���տ��Ʒ���2.2Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (512, '������ҵ������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (418, '�о�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (406, '�ѹس�Чһ�����ָ������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (408, '�ѹس�Ч�÷�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (420, '��ʷ���Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (428, '��ȸ��ºϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (432, '���鰲ȫȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (470, '��������ҵ��ͳ�Ʊ�AȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (478, 'ʳƷ����ױƷͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (480, 'ֲ�Ｐ���Ʒͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (552, '���տ��ƻ��ܲ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (608, '������λ�������쵥λ�����Σ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (544, 'ó��Ȧ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (560, '������ҵ������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (584, '������λ�������쵥λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (602, '���쵥λ����������λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (542, 'ó��Ȧ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (548, '�˲��֤����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (604, '���쵥λ����������λ�����Σ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (622, '�ۺ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (550, '���տ��Ʒ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (554, '���տ�����ϸ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (562, '������ҵ�������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (606, '������λ�������쵥λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (546, '�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (598, 'CIQ��ӦHS�����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (627, 'ֱͨ���в�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (625, '������ݲ�ѯ������ҵ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (590, '�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (645, '����Ա����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (717, '��ҵ��Ϊ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (582, '�û����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (596, '������ƹ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (600, '������ݲ�ѯ��������Ա��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (623, '������ݲ�ѯ�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (647, '��Ϣ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (713, 'ͨ�ص����飨�ѹ��ڣ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (709, 'ͨ�ص����飨��������һ�£�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (711, 'ͨ�ص����飨HS���벻һ�£�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (787, 'ȫʡ���ϸ���ǰ50���ƷȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (853, '���鰲ȫȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (863, '����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (869, '�ѹس�Чһ�����ָ������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (877, '����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (889, '��ȸ���ϸ��ʷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (915, '�˲��֤����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (919, '���տ��ƻ��ܲ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (925, '������ҵ�������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (981, 'ͨ�ص����飨HS���벻һ�£�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (961, '����Ԥ����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (975, 'CIQ��ӦHS�����ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1015, '��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1019, 'ó��Ȧ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1035, '����ת�����ڻ�����ı������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1037, '�뾳�������δ���涨�ɵ���ʩ�첿�ţ�ֱ���ɵ�������ƣ����ܵ��»���δ���������ֱ�ӷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1039, '�����ܼ���Ա��ʩ����Ա��ͬһ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1047, '��Ʒ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1079, 'ȫʡ����֧�ֳ��뾳ֲ�Ｐ���Ʒ����������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1125, '��λ�ɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1111, '������ҵ������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1121, '���ӳɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1157, '������ҵ������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1149, '��λָ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1155, '���쵥λ��������λȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1179, 'ȫʡ����֧�ּ�װ��������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1199, '��Ʒ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1287, 'ͳ�ƹ�������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (747, '����ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (749, '��ҵ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (753, 'ȫʡ����/����ǰ50���ƷȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (769, 'testȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (789, 'ȫʡ���ϸ���ǰ50����ҵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (873, '���ظ��ڰ�������ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (875, '����(ĿԴ��)��������Ʒ��ֵȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (893, '�������溦�ѹس�Ч���ͳ�Ʒ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (905, '���뾳��װ��������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (913, 'ǩ��֤��ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (921, '���տ�����ϸ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1021, 'CIQͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1069, '���뾳�������ҵ��ſ���Ȩ��', 1);
commit;
prompt 200 records committed...
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1043, 'ȱ����Ч��ע��֤���������ȸ�����ɡ�������ߺ����������ύ���ļ����ϣ������ϱ���������������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1067, '���Ӽ��������ϢȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1073, 'ȫʡ����֧�ֳ��뾳��ҵƷ����������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1075, 'ȫʡ����֧�ֳ��뾳����������ҵ�����ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1077, 'ȫʡ����֧�ֳ��뾳ʳƷ����ױƷ����������ͳ�Ʊ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1145, '��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1151, '�ɲ��ɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1205, '���յ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1303, '��ͬ���û�,��ͬ��IP��¼��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1305, '��ͬ��IP,��ͬ���û���¼��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (725, '�����칫˾�ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (743, '�������������뾳��֤���쵥Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (851, '��Ʒ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (807, '�뾳�ڲ�ת����ʵ��������ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (849, '��ó��չȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (859, '��Ϣ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (861, '��ѧԤ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (883, '������ռ�ȷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (891, '����ý������ѹس�Ч���ͳ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (901, '��������ҵ��ͳ�Ʊ�AȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (927, '���쵥λ����������λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (931, '������λ�������쵥λ��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (933, '������λ�������쵥λ�����Σ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (935, '���뾳�����ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (0, '��ѧ����ϵͳȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (947, '���տ��ƻ��ܲ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (949, '���տ�����ϸ��ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (957, '���̹���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (963, '�ۺ����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (969, '������ݲ�ѯ��������Ա��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (977, 'ֱͨ���в�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (979, 'ͨ�ص����飨��������һ�£�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (985, '����Ա����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (989, '�����칫˾�ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (991, '�ӱܿڰ��˲鹤����������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (995, '�뾳�ڲ�ת����ʵ��������ļ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1007, 'ȫʡ���ϸ���ǰ50���ƷȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1011, '������Ԥ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1127, '��λָ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1027, 'ͨ�ش��±�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1033, '������Ԥ��Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1119, '��Ч����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1123, '��������Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1321, '�����ϱ�Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1147, '��λ�ɼ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1159, '���շ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1201, 'ͳ�Ʋ�ѯȨ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1239, '�����ڼ������ҵ�����Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1221, '�����ڼ�������ۺϷ���Ȩ��', 1);
insert into F_POWER (POWER_ID, POWER_NAME, POWER_ORDER)
values (1319, '��������Ȩ��', 1);
commit;
prompt 250 records loaded
prompt Loading F_ROLE...
insert into F_ROLE (ROLE_ID, ROLE_NAME, ROLE_ORDER)
values (0, '����Ա��ɫ', 11);
insert into F_ROLE (ROLE_ID, ROLE_NAME, ROLE_ORDER)
values (1, '���Խ�ɫ', 23);
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

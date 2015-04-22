prompt PL/SQL Developer import file
prompt Created on 2013��12��25�� by Administrator
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
values (S_RCS_AUTHORS.Nextval, '��������', '/Table/UploaderTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '�����ϱ�', '/Report/ReporterTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '�������', '/Audit/AuditTables');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '��ɫ����', '/Role/Roles');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '�û�����', '/User/Users');
insert into RCS_AUTHORS (ID, NAME, URL)
values (S_RCS_AUTHORS.Nextval, '��ϵ�˹���', '/Contact/Main');
commit;
prompt 5 records loaded
prompt Loading RCS_DEPTMENTS...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (556, '��������߿�', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (562, '��ɽ���´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (567, '����ҵ��չ����', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (569, '�����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (21, '���ݾ�', 1, 0, 10);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (39, '���ദ', 20, 0, 6);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (85, '���������´�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (109, '��������', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (22, '�칫��', 20, 0, 2);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (75, '���촦', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (290, '�����', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (315, '�����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (334, '����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (23, '��������', 20, 0, 25);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (77, 'ʳ�촦', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (67, '�������´�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (209, '�м콭�չ�˾', 20, 0, 27);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (369, '���������', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (478, '���¿�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (485, '�ζ����´�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (165, '����', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (297, '�մ�ʵ����', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (476, '����', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (498, '�����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (179, '�ֳ���', 20, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (189, 'CQC', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (222, '����������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (238, '������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (248, '��ֲ�촦', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (267, '�Ƽ���', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (277, '��ֵ����������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (400, '�м칫˾', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (425, 'CQC�򽭰��´�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (460, '������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (151, '���¿�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (194, '��֤��ܿ�', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (224, '�����/��������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (273, '�������´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (285, '��֤��ܴ�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (314, '���¿�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (332, '����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (390, '����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (430, '�����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (438, '������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (470, '�����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (502, '��������', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (524, '�ڰ���', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (546, '��ҵ��˾', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (223, '��������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (555, '����������', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (455, 'CQC���´�', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (526, '������', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (563, '�������´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (69, '԰�����´�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (40, '�������', 20, 0, 33);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (426, '��������', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (95, '���촦', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (313, '�����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (481, '�������', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (354, 'ʳ���', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (170, '�칫��', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (229, '��ֲ���', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (261, '�칫��', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (393, '��ֲ�촦', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (454, '������', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (198, '��֤����ۺϿ�', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (283, '�м칫˾', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (363, '�����ܿ�', 206, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (496, '�����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (541, '�۰���߿�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (707, 'CQC���´�', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (709, '���ʵ����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (706, '��̳��', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (708, '�����о�����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (570, '�ۿڰ��´�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (571, '�ñ�����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (573, '�����', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (574, '��ǰ��´�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (576, '�����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (577, '����ʵ����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (578, '��������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (579, '�����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (581, '�ۺϿ�', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (582, '�����', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (584, '������', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (592, '�����������', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (588, '�ӹ���', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (591, '�������ۺϿ�', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (593, '��������', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (594, '������˾', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (596, '������', 20, 0, 34);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (598, '������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (599, '��������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (601, '���ݱ����', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (602, 'Э����´�', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (603, 'ά����˾', 20, 0, 29);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (604, '�ӹ������ۺϿ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (605, '�ӹ�������Ŀ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (606, '�ӹ���������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (421, '���쵼', 10, 1, 0);
commit;
prompt 100 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (440, '�������ۺϿ�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (451, '��������', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (463, '��֤����ۺϿ�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (146, '��֤����ۺϿ�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (188, '�����', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (201, '�����', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (221, '�����', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (539, '���ÿ��������´�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (153, '�칫��', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (226, '��Ǩ��', 1, 0, 22);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (296, '��ֲ���', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (312, '���绯���', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (410, '������칫��', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (346, '����ʵ����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (330, '��֤��ܿ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (336, '�̼칫˾', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (171, '������', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (294, '���绯���', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (345, '�۰�ҵ���', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (352, '��Ŀ�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (477, '�����', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (506, '���´��ۺϿ�', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (549, '����춨��', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (568, '�������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (583, '���߿�', 357, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (88, '���ط�������', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (106, '��ɽ������', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (15, '�γǾ�', 1, 0, 14);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (31, '������', 20, 0, 19);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (43, '������', 20, 0, 16);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (84, '���۰��´�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (68, '���а��´�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (1, '���վ�', 0, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (36, '���´�', 20, 0, 13);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (365, '�Ͼ����������޹�˾', 20, 0, 37);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (82, '������', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (80, '���´�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (12, '������', 1, 0, 4);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (265, '����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (309, '�����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (348, '���ʵ����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (333, '������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (378, '���ط�������', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (145, '���쵼', 18, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (361, '�̼칫˾', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (250, '���紦', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (172, '����', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (388, '��������', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (414, '���쵼', 11, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (133, '�����', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (225, '�칫��', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (446, '�칫��', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (617, '��޼��������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (628, '�����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (632, '�ۺϼ�����������ʵ����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (643, '�ۺ�ҵ���', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (658, '��ֲ���', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (659, '�۰�����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (665, '���Ծֳ���_�Ͼ�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (669, '���Բ���_����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (673, '���Բ���_��ͨ', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (676, '���Բ���_��', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (679, '���Ծֳ���_����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (682, '���Ծֳ���_����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (683, '���Ծֳ���_����', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (685, '���Բ���_����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (686, '���Ծֳ���_����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (687, '���Ծֳ���_�γ�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (688, '���Բ���_�γ�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (691, '���Ծֳ���_����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (697, '���Բ���_��ɽ', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (699, '���Ծֳ���_�⽭', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (701, '���Բ���_����', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (702, '���Ծֳ���_����', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (642, '�ۺ�ҵ���', 509, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (644, 'ľ��ʵ����', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (656, 'ʳƷ��', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (619, '�ۺϼ�����������', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (622, '������', 20, 0, 3);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (629, '��˰��������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (630, '��������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (633, '������˾', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (636, '���ϰ�', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (654, '�����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (657, '�۰������', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (661, '���°�', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (620, '�������´�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (638, '�ʼ��', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (92, '���۴�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (96, 'ֲ�촦', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (72, '��֤��ܴ�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (99, '���紦', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (102, '���´�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (105, '������', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (108, '������', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (2, '�����', 1, 0, 17);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (5, '��ɽ��', 1, 0, 19);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (608, '����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (379, '������', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (150, '��Ŀ�', 19, 0, 1);
commit;
prompt 200 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (613, '�ӹ�������߿�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (611, '���Ժ', 20, 0, 30);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (492, '���ʵ����', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (253, '�ۿڴ�', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (436, '�����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (610, '���ڼӹ���ҵ���', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (522, '��ֲ��촦', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (32, '������', 20, 0, 18);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (376, '�����', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (362, ' �ͼ�����', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (453, '�����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (17, '���˾�', 1, 0, 21);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (8, '��ͨ��', 1, 0, 5);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (367, '�ۿڰ��´�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (641, 'ľ��Ʒ�Ҿ�ʵ����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (666, '���Բ���_�Ͼ�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (671, '���Ծֳ���_����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (674, '���Ծֳ���_��ͨ', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (677, '���Բ���_�żҸ�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (678, '���Ծֳ���_�żҸ�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (689, '���Բ���_̩��', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (694, '���Ծֳ���_����', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (698, '���Ծֳ���_��ɽ', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (700, '���Բ���_�⽭', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (703, '���Ծֳ���_��Ǩ', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (615, '��޼�����߿�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (616, '��ް칫��', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (623, '��۹�˾', 20, 0, 39);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (639, 'ʵ����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (645, 'ʳ�ദ', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (646, '��Ϣ��ȫ��֤����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (647, '�ۺϿ�', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (624, '�ڰ��������߿�', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (631, 'CQC���´�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (648, '��ֲ��ʳ��', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (651, '���쵼', 226, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (662, '���󾫼������', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (667, '���Ծֳ���_���Ƹ�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (668, '���Բ���_���Ƹ�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (670, '���Ծֳ���_����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (672, '���Բ���_����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (675, '���Ծֳ���_��', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (680, '���Բ���_����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (681, '���Բ���_����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (684, '���Բ���_����', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (690, '���Ծֳ���_̩��', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (692, '���Բ���_����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (693, '���Բ���_����', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (695, '���Ծֳ���_̫��', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (696, '���Բ���_̫��', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (704, '���Բ���_��Ǩ', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (614, '��޼����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (626, '�������´�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (635, '������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (649, '������Ŀ�', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (650, '�칫��', 226, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (663, '��ֲʳ�������', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (711, '��Ч��', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (713, '�������´�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (715, '��޾־ֳ���', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (509, '���ط�������', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (356, '��������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (358, '������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (359, '��������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (364, '��װ�������߿�', 206, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (405, '��Чʵ����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (386, '����ʵ����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (434, '�Ṥ����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (439, '�����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (443, '�ۺϼ�������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (452, '�ۺϿ�', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (457, '�м칫˾', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (458, '�������', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (464, '��ֲ���', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (465, '��Ŀ�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (467, '���绯���', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (500, '��Ŀ�', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (503, '�ϼ��', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (505, '���´�������', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (507, '������߿�', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (508, '���г��������', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (510, '�칫��', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (512, '������', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (515, '����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (517, '�ۺϴ�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (521, 'CQC', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (530, '��������', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (531, '����ʵ����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (532, 'Ѭ����˾', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (533, '�̼칫˾', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (540, '�۰������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (545, 'Э���򽭰��´�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (550, '�����', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (552, '�����', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (554, '�������ۺϿ�', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (557, '�����', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (558, '���ⱨ��', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (560, '��ѵ��', 41, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (564, '�ֳ���', 14, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (566, 'ʡ�ֻ���', 41, 0, 1);
commit;
prompt 300 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (3, '������', 1, 0, 12);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (7, '�Ͼ���', 1, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (10, '̫�־�', 1, 0, 18);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (13, '�⽭��', 1, 0, 20);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (24, '�Ʋƴ�', 20, 0, 14);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (27, 'ͨ�ش�', 20, 0, 5);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (30, '��������', 20, 0, 22);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (33, '��ദ', 20, 0, 9);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (42, 'Ѳ��Ա', 20, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (70, '���쵼', 6, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (73, '����', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (76, 'ֲ�촦', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (79, '����', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (66, '���ݾ�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (90, '�칫��', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (93, '����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (97, '��ʳ��', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (100, '���ص�ί', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (103, '�۰�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (4, '������', 1, 0, 16);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (6, '���Ƹ۾�', 1, 0, 2);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (9, '���ݾ�', 1, 0, 3);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (16, '���ݾ�', 1, 0, 8);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (19, '�򽭾�', 1, 0, 6);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (20, 'ʡ�ֱ���', 1, 0, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (25, '��ֲ��', 20, 0, 7);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (28, '����', 20, 0, 17);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (34, '�Ƽ���', 20, 0, 11);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (37, '�ϼദ', 20, 0, 10);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (78, '���Ĵ�', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (81, '����', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (87, '�ۺϼ�������', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (89, '�ֳ���', 7, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (292, '�����', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (299, '��֤����ۺϿ�', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (303, '�н���˾', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (304, '�й�������֤�����Ͼ�������', 20, 0, 31);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (311, 'ʳ���', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (319, '�ۺϼ�������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (427, '�������´�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (422, '���쵼', 12, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (350, 'ֲ���', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (335, '��������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (353, '�����', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (11, '̩�ݾ�', 1, 0, 15);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (14, '���ݾ�', 1, 0, 11);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (18, '�żҸ۾�', 1, 0, 7);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (26, '��ֲʳ����', 20, 0, 21);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (29, '��ҵƷ����', 20, 0, 20);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (35, '�ϸɲ���', 20, 0, 15);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (38, 'ʳ�ദ', 20, 0, 8);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (41, '��Ϣ����', 20, 0, 12);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (74, '���촦', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (83, '�����', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (86, '�̼칫˾', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (91, '����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (71, '�칫��', 6, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (98, '��Ĵ�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (101, '�����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (104, '����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (107, '�����졢����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (110, '���ӵ���ʵ����', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (113, '�칫��', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (160, '���ƴ�', 20, 0, 4);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (210, '��������', 20, 0, 38);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (227, '�н��Ͼ�', 20, 0, 32);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (307, '�����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (472, '�����', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (331, '���ط�������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (366, '�������´�', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (374, '��ʳ��', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (377, '�ۺϼ�������', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (380, '�������Э��', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (401, '�ֳ���', 9, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (402, '�칫��', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (473, '��ֲ���', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (475, '������', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (479, '���쵼', 15, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (480, '�ۺϿ�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (486, '�м칫˾', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (484, '�۰켯װ���', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (488, '�м켯�Ž��չ�˾�����ֹ�˾', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (125, '�ֳ���', 21, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (131, '�����', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (142, '���쵼', 5, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (149, '�칫��', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (152, '�ۺϿ�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (167, '���촦', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (166, '��ֲ�촦', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (169, '���绯��', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (173, '�ۺϴ�', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (175, '��������', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (293, '����ʳƷ��', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (343, '�۰���߿�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (344, '�۰������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (347, 'ũ��ʵ����', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (351, '������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (360, '��������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (474, '��Ŀ�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (490, '����', 16, 0, 1);
commit;
prompt 400 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (487, '�ֳ���', 17, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (504, '�ڰ���', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (495, '�����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (513, '�����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (168, '��Ĵ�', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (174, '��������', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (176, '��֤��', 14, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (180, 'Э��', 20, 0, 26);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (181, '��֤��ܴ�', 7, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (183, '�����', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (185, '�칫��', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (187, '��������', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (192, '��ֲ��ʳ��', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (206, '��˰�����´�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (218, '�ֳ���', 2, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (203, '������', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (246, '����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (231, '�칫��', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (232, '����������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (233, '�����', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (235, '�ۺϿ�', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (236, '�۰�', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (239, 'ʵ����', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (240, 'CQC��������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (241, '�ϸɲ�', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (243, '�칫��', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (245, '������', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (249, '��Ĵ�', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (251, '����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (254, '��������', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (257, '������', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (266, '����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (268, '���紦', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (269, '��Ĵ�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (270, '����', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (271, '���۴�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (275, '�������´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (281, '���ط�������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (368, '�����', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (375, '��ֲ���', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (384, '��֯ԭ�ϼ��鴦', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (389, '�칫��', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (392, '���촦', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (396, '�ۺϷ�������', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (399, '�ֳ���', 3, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (407, '���쵼', 8, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (408, '�������ۺϿ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (409, '���������', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (416, '������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (423, '��ɱ��˾', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (435, '��Ŀ�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (437, '��ֲ���', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (441, '����������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (447, '�ۿڰ��´�', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (448, '�����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (449, '�����', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (450, '��Ŀ�', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (456, '��ʳ��', 10, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (461, '���쵼', 4, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (462, '�칫��', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (147, '���쵼', 19, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (415, '�ۿڰ��´�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (247, '���촦', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (186, '����������', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (204, '���¿�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (184, '�ֳ���', 13, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (190, '�����', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (191, '��Ŀ�', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (195, '�̼칫˾', 13, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (202, '�����', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (205, '�����', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (214, '��ʳ��', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (216, '��ֲ���', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (219, '��Ŀ�', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (230, '��Ŀ�', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (234, '��������', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (237, '̩�˰�', 11, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (244, '�ۺϴ�', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (252, 'Σ����', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (258, '�̼칫˾', 21, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (263, '�칫��', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (264, '���´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (272, '����������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (274, '�ӹ������´�', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (276, '˿������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (278, '��������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (279, '��ֲ�촦', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (280, '��ʳ��', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (282, '������', 12, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (308, 'ֲ���', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (288, '�ۺϿ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (291, '����������', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (295, '��Ŀ�', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (298, 'ͨ�ص�', 17, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (306, '�칫��', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (310, '��Ŀ�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (316, '�ӹ������´�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (357, 'ұ���', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (318, '�������´�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (349, '�����', 18, 0, 1);
commit;
prompt 500 records committed...
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (411, '������һ��', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (338, 'CQC���´�', 8, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (355, '�ϼ��', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (387, '����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (391, '������', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (394, '���紦', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (395, '��Ĵ�', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (397, '�ۺϴ�', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (398, 'ʵ����', 3, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (424, '�м칫˾', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (429, '�칫��', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (431, '����������', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (432, '�����', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (433, '���쵼', 16, 1, 0);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (442, '��������߿�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (444, '������ۿڿ�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (445, '��֤��ܿ�', 16, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (466, '�����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (469, '�ۺϼ�����������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (494, '���¿�', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (497, '�����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (499, 'CQC', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (501, '�����', 5, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (511, '���´�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (514, '����', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (516, 'Э���', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (519, '���紦', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (520, '��Ĵ�', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (523, '��֤��', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (528, '��������', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (536, '������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (537, '�۰�������', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (542, '�۰��ۺϿ�', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (148, '�����', 19, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (208, '�����', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (144, '�����', 4, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (207, '�ۺϿ�', 18, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (213, '������', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (220, '�м칫˾', 2, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (289, '�����о�����', 20, 0, 35);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (518, '���촦', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (527, '��������', 9, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (534, '������˾', 20, 0, 28);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (548, '���۰��´�', 15, 0, 1);
insert into RCS_DEPTMENTS (ID, NAME, PID, ISLEADER, SORT)
values (553, '���������´�', 13, 0, 1);
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
values (S_RCS_ROLES.Nextval, '�ϱ���Ա', '2');
insert into RCS_ROLES (ID, NAME, AUTHORS)
values (S_RCS_ROLES.Nextval, '�����Ա', '1,3,4,5');
commit;
prompt 2 records loaded
prompt Loading RCS_USERS...
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME,DEPT_ID , IS_ADMIN)
values (S_RCS_USERS.Nextval, 'lvjian', '����', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 7, 0);
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME, DEPT_ID, IS_ADMIN)
values (S_RCS_USERS.Nextval, 'wangting', '����', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 7, 0);
insert into RCS_USERS (ID, LOGIN_NAME, SHOW_NAME, PWD, CREATE_TIME, DEPT_ID, IS_ADMIN)
values (S_RCS_USERS.Nextval, 'admin', '��������Ա', '1', to_date('24-12-2013', 'dd-mm-yyyy'), 0, 1);
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

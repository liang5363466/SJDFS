-----------------------------------------------------
-- Export file for user JYJYDW                     --
-- Created by Administrator on 2014/2/10, 14:39:00 --
-----------------------------------------------------

spool 商检数据中心Create.log

prompt
prompt Creating table SA_T_ORG_INFO
prompt ============================
prompt
create table JYJYDW.SA_T_ORG_INFO
(
  ORG_CODE      VARCHAR2(8) not null,
  ORG_CNAME     VARCHAR2(50),
  ORG_ENAME     VARCHAR2(50),
  ADDRESS       VARCHAR2(100),
  POST_CODE     VARCHAR2(10),
  FAX           VARCHAR2(20),
  EMAIL         VARCHAR2(20),
  CONTACTOR     VARCHAR2(20),
  OPERATOR_CODE VARCHAR2(20),
  OPERATE_DATE  DATE,
  ORG_SCOPE     VARCHAR2(1),
  ORG_LNAME     VARCHAR2(100),
  DECL_DEPT     VARCHAR2(4)
)
tablespace JYJYDW
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JYJYDW.SA_T_ORG_INFO
  add primary key (ORG_CODE)
  using index 
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index JYJYDW.IDX_ORG_CNAME on JYJYDW.SA_T_ORG_INFO (ORG_CNAME)
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SA_XA_DEPT
prompt =========================
prompt
create table JYJYDW.SA_XA_DEPT
(
  ORGID         VARCHAR2(8) not null,
  DEPTID        VARCHAR2(4) not null,
  DEPTNAME      VARCHAR2(20),
  DEPTORD       BINARY_DOUBLE,
  REMARK        VARCHAR2(50),
  DEPTENAME     VARCHAR2(20),
  ADDRESS       VARCHAR2(100),
  POST_CODE     VARCHAR2(10),
  FAX           VARCHAR2(20),
  EMAIL         VARCHAR2(50),
  CONTACTOR     VARCHAR2(20),
  OPERATOR_CODE VARCHAR2(6),
  OPERATE_DATE  DATE,
  DEPT_TYPE     VARCHAR2(10)
)
tablespace JYJYDW
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JYJYDW.SA_XA_DEPT
  add primary key (ORGID, DEPTID)
  using index 
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index JYJYDW.IDX_DEPTNAME on JYJYDW.SA_XA_DEPT (DEPTNAME)
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table SA_XA_USER
prompt =========================
prompt
create table JYJYDW.SA_XA_USER
(
  USERID     VARCHAR2(10) not null,
  EMP_ID     VARCHAR2(20),
  ORGID      VARCHAR2(8) not null,
  DEPTID     VARCHAR2(4),
  USERNAME   VARCHAR2(20),
  PASSWD     VARCHAR2(10),
  INPOST     VARCHAR2(2),
  EMAIL      VARCHAR2(50),
  REMARK     VARCHAR2(50),
  DUTY       VARCHAR2(20),
  TITLE_POST VARCHAR2(20),
  TELE       VARCHAR2(20),
  OPER_ID    VARCHAR2(10),
  OPER_DATE  DATE,
  GRPID      VARCHAR2(10),
  RECE_CODE  VARCHAR2(8)
)
tablespace JYJYDW
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table JYJYDW.SA_XA_USER
  add constraint PK_XA_USER primary key (ORGID, USERID)
  using index 
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index JYJYDW.IDX_XA_USER_USERNAME on JYJYDW.SA_XA_USER (USERNAME)
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index JYJYDW.SYS_SA_XA_USER on JYJYDW.SA_XA_USER (DEPTID)
  tablespace JYJYDW
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


spool off

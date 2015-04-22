-----------------------------------------------------
-- Export file for user YZDFS                      --
-- Created by Administrator on 2013/12/7, 14:54:50 --
-----------------------------------------------------

spool database.log

prompt
prompt Creating table RCS_DATAAUDITS
prompt =============================
prompt
create table SJDFS.RCS_DATAAUDITS
(
  ID			NUMBER(19) not null,
  TABLE_ID		NUMBER(19),
  NAME			VARCHAR2(1000),
  EXPORT_FILE   VARCHAR2(200),
  STATUS		NUMBER(10),
  ROW_COUNT		NUMBER(10),
  REPORTER		VARCHAR2(50),
  AUDITOR		VARCHAR2(50),
  CREATE_TIME	DATE,
  REPORT_TIME	DATE,
  AUDIT_TIME	DATE,
  OPINION		VARCHAR2(2000)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SJDFS.RCS_DATAAUDITS
  add constraint RCS_DATAAUDITS_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table RCS_FIELDEXPANDS
prompt ===============================
prompt
create table SJDFS.RCS_FIELDEXPANDS
(
  ID         NUMBER(19) not null,
  DATA_PKEY  NUMBER(19),
  TABLE_NAME VARCHAR2(200),
  CODE       VARCHAR2(100),
  VALUE      VARCHAR2(100)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SJDFS.RCS_FIELDEXPANDS
  add constraint RCS_FIELDEXPANDS_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table RCS_FILLRULES
prompt ============================
prompt
create table SJDFS.RCS_FILLRULES
(
  ID       NUMBER(19),
  TABLE_ID NUMBER(19),
  REPORTER VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table RCS_TABLEHEADS
prompt =============================
prompt
create table SJDFS.RCS_TABLEHEADS
(
  ID       NUMBER(19) not null,
  TABLE_ID NUMBER(19),
  NAME     VARCHAR2(1000),
  CODE     VARCHAR2(1000),
  TYPE     NUMBER(10),
  POINTX   NUMBER(10),
  POINTY   NUMBER(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SJDFS.RCS_TABLEHEADS
  add constraint RCS_TABLEHEADS_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table RCS_TABLES
prompt =========================
prompt
create table SJDFS.RCS_TABLES
(
  ID              NUMBER(19) not null,
  NAME            VARCHAR2(200),
  EXPORT_FILE     VARCHAR2(200),
  FILL_FILE       VARCHAR2(200),
  DATA_TABLE      VARCHAR2(100),
  DATA_STARTX     NUMBER(10),
  DATA_STARTY     NUMBER(10),
  UPLOADER        VARCHAR2(50),
  CREATE_TIME     DATE,
  DESCRIPT        CLOB,
  IS_PUBLISHED    NUMBER(10),
  IS_ALLOW_REPORT NUMBER(10),
  IS_INCYCLE      NUMBER(10),
  TYPE            NUMBER(10)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table SJDFS.RCS_TABLES
  add constraint RCS_TABLES_PK primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table RCS_CONTACTS
prompt =========================
prompt
create table SJDFS.RCS_CONTACTS
(
  USER_ID    VARCHAR2(50) not null,
  CONTACT_ID VARCHAR2(50) not null,
  CREATE_TIME DATE not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating sequence S_RCS_DATAAUDITS
prompt ==================================
prompt
create sequence SJDFS.S_RCS_DATAAUDITS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_RCS_FIELDEXPANDS
prompt ====================================
prompt
create sequence SJDFS.S_RCS_FIELDEXPANDS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_RCS_FILLRULES
prompt =================================
prompt
create sequence SJDFS.S_RCS_FILLRULES
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;



prompt
prompt Creating sequence S_RCS_TABLEHEADS
prompt ==================================
prompt
create sequence SJDFS.S_RCS_TABLEHEADS
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence S_RCS_TABLES
prompt ==============================
prompt
create sequence SJDFS.S_RCS_TABLES
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;
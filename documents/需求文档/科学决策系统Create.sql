-----------------------------------------------------
-- Export file for user JSDM                       --
-- Created by Administrator on 2014/2/10, 15:47:52 --
-----------------------------------------------------

spool 商检科学决策系统Create.log

prompt
prompt Creating table F_MENU_TREE
prompt ==========================
prompt
create table JSDM.F_MENU_TREE
(
  ID       INTEGER not null,
  POWER_ID INTEGER,
  P_ID     INTEGER,
  NAME     VARCHAR2(100),
  PROMPT   VARCHAR2(100),
  TYPE     VARCHAR2(10),
  LAYER    INTEGER,
  STYLE    VARCHAR2(20),
  URL      VARCHAR2(200),
  IS_DEL   CHAR(1),
  ORDER_ID INTEGER
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
alter table JSDM.F_MENU_TREE
  add constraint PK_MENU_TREE primary key (ID)
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

prompt
prompt Creating table F_POWER
prompt ======================
prompt
create table JSDM.F_POWER
(
  POWER_ID    INTEGER not null,
  POWER_NAME  VARCHAR2(400),
  POWER_ORDER INTEGER
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
alter table JSDM.F_POWER
  add constraint PK_POWER primary key (POWER_ID)
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

prompt
prompt Creating table F_ROLE
prompt =====================
prompt
create table JSDM.F_ROLE
(
  ROLE_ID    INTEGER not null,
  ROLE_NAME  VARCHAR2(40),
  ROLE_ORDER INTEGER
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
alter table JSDM.F_ROLE
  add constraint PK_ROLE primary key (ROLE_ID)
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

prompt
prompt Creating table F_ROLE_POWER
prompt ===========================
prompt
create table JSDM.F_ROLE_POWER
(
  POWER_ID INTEGER,
  ROLE_ID  INTEGER
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

prompt
prompt Creating table F_USR_ROLE
prompt =========================
prompt
create table JSDM.F_USR_ROLE
(
  USR_ID  VARCHAR2(10),
  ROLE_ID INTEGER,
  ORG_ID  VARCHAR2(8)
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


spool off

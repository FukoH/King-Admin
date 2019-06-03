/*
 * create tables for KING_ADMIN_DB
 * 2019/4/28 10:36:14
 */

set feedback off
set define off

-- ==================== ��ʼ sys_user
prompt creating table: sys_user...

create table sys_user
(
  id                            varchar2(64)          not null,
  sys_code                      varchar2(64),
  sys_name                      varchar2(256),
  req_cate                      varchar2(64),
  req_type                      varchar2(64),
  req_code                      varchar2(64),
  req_name                      varchar2(256),
  created_by                    varchar2(64),
  created_dept                  varchar2(64),
  created_date                  date,
  modified_by                   varchar2(64),
  modified_dept                 varchar2(64),
  modified_date                 date
);

comment on table sys_user is 'ϵͳ�û���';

comment on column sys_user.id                             is '���';
comment on column sys_user.sys_code                       is 'ϵͳ���';
comment on column sys_user.sys_name                       is 'ϵͳ����';
comment on column sys_user.req_cate                       is '������ࡣ������/��׼����';
comment on column sys_user.req_type                       is '�������͡���������/ϵͳ����/����';
comment on column sys_user.req_code                       is '������';
comment on column sys_user.req_name                       is '��������';
comment on column sys_user.created_by                     is '������';
comment on column sys_user.created_dept                   is '��������';
comment on column sys_user.created_date                   is '��������';
comment on column sys_user.modified_by                    is '�޸���';
comment on column sys_user.modified_dept                  is '�޸Ĳ���';
comment on column sys_user.modified_date                  is '�޸�����';

prompt creating indexes for table: sys_user...
alter table sys_user add constraint sys_user_pk primary key (id);

--==================== ���� sys_user


-- ==================== ��ʼ sys_role
prompt creating table: sys_role...

create table sys_role
(
  id                            varchar2(64)          not null,
  sys_code                      varchar2(64),
  sys_name                      varchar2(256),
  req_cate                      varchar2(64),
  req_type                      varchar2(64),
  req_code                      varchar2(64),
  req_name                      varchar2(256),
  apply_user_id                 varchar2(64),
  apply_user_name               varchar2(128),
  apply_contact                 varchar2(32),
  ent_id                        varchar2(64),
  created_by                    varchar2(64),
  created_dept                  varchar2(64),
  created_date                  date,
  modified_by                   varchar2(64),
  modified_dept                 varchar2(64),
  modified_date                 date
);

comment on table sys_role is '��ɫ��';

comment on column sys_role.id                             is '���';
comment on column sys_role.sys_code                       is 'ϵͳ���';
comment on column sys_role.sys_name                       is 'ϵͳ����';
comment on column sys_role.req_cate                       is '������ࡣ������/��׼����';
comment on column sys_role.req_type                       is '�������͡���������/ϵͳ����/����';
comment on column sys_role.req_code                       is '������';
comment on column sys_role.req_name                       is '��������';
comment on column sys_role.apply_user_id                  is '����˱��';
comment on column sys_role.apply_user_name                is '���������';
comment on column sys_role.apply_contact                  is '��ϵ�绰';
comment on column sys_role.ent_id                         is 'ʵ����';
comment on column sys_role.created_by                     is '������';
comment on column sys_role.created_dept                   is '��������';
comment on column sys_role.created_date                   is '��������';
comment on column sys_role.modified_by                    is '�޸���';
comment on column sys_role.modified_dept                  is '�޸Ĳ���';
comment on column sys_role.modified_date                  is '�޸�����';

prompt creating indexes for table: sys_role...
alter table sys_role add constraint sys_role_pk primary key (id);

--==================== ���� sys_role


/********************************
--��Ҫ��ʱ������drop���Ա���������create���
drop table sys_user;
drop table sys_role;

********************************/

prompt Done.

set feedback on
set define on

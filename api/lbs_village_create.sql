-- Create table
create table LBS_VILLAGE
(
  village_id     RAW(16) default sys_guid() not null,
  village_code   NVARCHAR2(200),
  village_name   NVARCHAR2(200),
  village_address NVARCHAR2(2000),
  village_region NVARCHAR2(200),
  village_type   NVARCHAR2(200),
  village_x      NUMBER,
  village_y      NUMBER,
  village_lng    NUMBER,
  village_lat    NUMBER,
  village_bounds NVARCHAR2(2000),
  memo           NVARCHAR2(800),
  households     NUMBER,
  is_valid       NUMBER(1) default 1,
  area_id        RAW(16),
  create_date    DATE default sysdate
)
tablespace JJLBSDB
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
-- Add comments to the table 
comment on table LBS_VILLAGE
  is 'С��/Ժ/����Ϣ��';
-- Add comments to the columns 
comment on column LBS_VILLAGE.village_id
  is '����';
comment on column LBS_VILLAGE.village_code
  is 'С�����';
comment on column LBS_VILLAGE.village_name
  is '����';
comment on column LBS_VILLAGE.village_address
  is '��ϸ��ַ';
comment on column LBS_VILLAGE.village_region
  is '���ڵ���';
comment on column LBS_VILLAGE.village_type
  is '����';
comment on column LBS_VILLAGE.village_bounds
  is 'С���߽�';
comment on column LBS_VILLAGE.memo
  is '��ע';
comment on column LBS_VILLAGE.households
  is '�滮����';
comment on column LBS_VILLAGE.is_valid
  is '��ʶ��С���Ƿ���Ч 1-��Ч��0-��Ч';
comment on column LBS_VILLAGE.area_id
  is 'Ƭ��ID';
comment on column LBS_VILLAGE.create_date
  is '��������';

-- Create/Recreate primary, unique and foreign key constraints 
alter table LBS_VILLAGE
  add constraint PK_LBS_VILLAGE primary key (VILLAGE_ID)
  using index 
  tablespace JJLBSDB
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
alter index PK_LBS_VILLAGE nologging;

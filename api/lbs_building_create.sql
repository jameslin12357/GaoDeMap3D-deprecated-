-- Create table
create table LBS_BUILDING
(
  building_id      RAW(16) default sys_guid() not null,
  building_code    NVARCHAR2(200),
  building_name    NVARCHAR2(200),
  building_address NVARCHAR2(2000),
  building_region  NVARCHAR2(200),
  building_type    NVARCHAR2(200),
  building_x       NUMBER,
  building_y       NUMBER,
  building_lng     NUMBER,
  building_lat     NUMBER,
  building_bounds  NVARCHAR2(2000),
  memo            NVARCHAR2(800),
  households      NUMBER,
  is_valid        NUMBER(1) default 1,
  area_id         RAW(16),
  create_date     DATE default sysdate
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
comment on table LBS_BUILDING
  is 'С��/Ժ/����Ϣ��';
-- Add comments to the columns 
comment on column LBS_BUILDING.building_id
  is '����';
comment on column LBS_BUILDING.building_code
  is 'С�����';
comment on column LBS_BUILDING.building_name
  is '����';
comment on column LBS_BUILDING.building_address
  is '��ϸ��ַ';
comment on column LBS_BUILDING.building_region
  is '���ڵ���';
comment on column LBS_BUILDING.building_type
  is '����';
comment on column LBS_BUILDING.building_bounds
  is 'С���߽�';
comment on column LBS_BUILDING.memo
  is '��ע';
comment on column LBS_BUILDING.households
  is '�滮����';
comment on column LBS_BUILDING.is_valid
  is '��ʶ��С���Ƿ���Ч 1-��Ч��0-��Ч';
comment on column LBS_BUILDING.area_id
  is 'Ƭ��ID';
comment on column LBS_BUILDING.create_date
  is '��������';

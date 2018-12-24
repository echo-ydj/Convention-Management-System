create table user_1(
name varchar(10),
pwd varchar(11),
isadmin bit, /*�Ƿ�Ϊ����Ա*/
issqr bit  default(1),	/*�Ƿ�Ϊ������*/
isfbr bit,	/*�Ƿ�Ϊ������*/
isspr bit, /*�Ƿ�Ϊ������*/
isqcr bit, /*�Ƿ�Ϊ�����*/
unique(name)
)
insert into user_1 values ('admin','admin',1,1,1,1,1);
update user_1 set issqr=0,isfbr=0,isspr=0,isqcr=0 where name='admin' 
insert into user_1 values ('sqr','sqr',0,1,0,0,0);
insert into user_1 values ('fbr','fbr',0,0,1,0,0);
insert into user_1 values ('spr','spr',0,0,0,1,0);
insert into user_1 values ('qcr','qcr',0,0,0,0,1);
insert into user_1 values ('��Ա','����',0,0,0,0,1);
/*�������ͱ�*/
create table hy_type(

hyxz varchar(20) primary key,
bz varchar(50)

)
insert into hy_type values('��������','��ע')
insert into hy_type values('��ȫ','��ע')
insert into hy_type values('����','��ע')
insert into hy_type values('����','��ע')
insert into hy_type values('����','��ע')






/*��������*/
create table hy_set(
hys_name varchar(20) primary key,
rn_person int ,
hyzy varchar(20),
hys_use bit  default(0), /*������ʹ�����*/
explain varchar(20)

)

insert into hy_set values('��������',10,'������Դ',0,'��ʱ����')
insert into hy_set values('A1-001',30,'������Դ',0,'��ʱ����')
insert into hy_set values('A1-002',20,'������Դ',1,'��ʱ����')
insert into hy_set values('A1-003',10,'������Դ',1,'��ʱ����')



/*��������(������)  �������(�����)*/
create table hy_apply(
hyxz varchar(20),/*�������͵�����*/
hyyt varchar(20),
ys  varchar(10),
fjsc varbinary(max),
zcr varchar(10),
jly varchar(10),
cjry varchar(50),
hydd varchar(20),
hys_name varchar(20),/*��������������*/
hy_start date,

hy_over date,
hy_nr varchar(20),
spr varchar(20),
flag bit, /*��־λ �ж��Ƿ�ͬ������*/
xgyj varchar(20),/*�����ж�flagΪtrueʱ���������������*/
primary key(hyxz,hyyt,hys_name),
foreign key(hyxz)references hy_type(hyxz)
 on delete cascade


 on update cascade,
foreign key(hys_name)references hy_set(hys_name)
 on delete cascade
 on update cascade,


)
/*�Ȳ���hy_type ��hyxz �� hy_set ��hys_name Ȼ����ܲ���*/
insert into hy_apply values('��������','��������','Ԥ��',NULL,'������',
'��¼��','�μ���Ա','����ص�','��������',
'2017-01-05','2017-01-08','��������','������',1,'�޸����')


/*�����Ҫ*/
create table hy_jy(
hymc varchar(20),/*��������������*/
jy_nr varchar(30),
fjsc varbinary(max),
jly varchar(10),/*�������������*/
gly varchar(10),
primary key(hymc),


)
insert into hy_jy values ('������','��Ҫ����',null,'��¼Ա','admin')
insert into hy_jy values ('����-01','��Ҫ����',null,'����','admin')
insert into hy_jy values ('����-02','��Ҫ����',null,'����','admin')
insert into hy_jy values ('����-03','��Ҫ����',null,'����','����Ա')


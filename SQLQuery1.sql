create table user_1(
name varchar(10),
pwd varchar(11),
isadmin bit, /*是否为管理员*/
issqr bit  default(1),	/*是否为申请人*/
isfbr bit,	/*是否为发布人*/
isspr bit, /*是否为审批人*/
isqcr bit, /*是否为起草人*/
unique(name)
)
insert into user_1 values ('admin','admin',1,1,1,1,1);
update user_1 set issqr=0,isfbr=0,isspr=0,isqcr=0 where name='admin' 
insert into user_1 values ('sqr','sqr',0,1,0,0,0);
insert into user_1 values ('fbr','fbr',0,0,1,0,0);
insert into user_1 values ('spr','spr',0,0,0,1,0);
insert into user_1 values ('qcr','qcr',0,0,0,0,1);
insert into user_1 values ('人员','密码',0,0,0,0,1);
insert into user_1 values ('人员01','密码',0,0,0,0,1);
insert into user_1 values ('人员02','密码',0,0,0,0,1);
insert into user_1 values ('人员03','密码',0,0,0,0,1);

/*会议类型表*/
create table hy_type(

hyxz varchar(20) primary key,
bz varchar(50)

)
insert into hy_type values('会议性质','备注')
insert into hy_type values('安全','备注')
insert into hy_type values('融资','备注')
insert into hy_type values('风险','备注')
insert into hy_type values('经济','备注')






/*会议设置*/
create table hy_set(
hys_name varchar(20) primary key,
rn_person int ,
hyzy varchar(20),
hys_use bit  default(0), /*会议室使用情况*/
explain varchar(20)

)

insert into hy_set values('会议室名',10,'会议资源',0,'临时讨论')
insert into hy_set values('A1-001',30,'会议资源',0,'临时讨论')
insert into hy_set values('A1-002',20,'会议资源',1,'临时讨论')
insert into hy_set values('A1-003',10,'会议资源',1,'临时讨论')













/*会议申请(申请人)  会议审核(审核人)*/
create table hy_apply(
hyxz varchar(20),/*会议类型的外码*/
hyyt varchar(20),
ys  varchar(10),
fjsc varchar(20),
zcr varchar(10),
jly varchar(10),
cjry varchar(50),
hydd varchar(20),
hys_name varchar(20),/*会议是名称外码*/
hy_start date,

hy_over date,
hy_nr varchar(20),
spr varchar(20),
flag bit, /*标志位 判断是否同意申请*/
xgyj varchar(20),/*可先判断flag为true时再往里面添加数据*/


)
/*先插入hy_type 的hyxz 和 hy_set 的hys_name 然后才能操作*/
insert into hy_apply values('会议性质','会议议题','预算',NULL,'主持人',
'记录人','参加人员','会议地点','会议室名',
'2017-01-05','2017-01-08','会议内容','审批人',1,'修改意见')



insert into hy_apply values('发展','会议议题','预算',NULL,'主持人',
'记录人','参加人员','会议地点',' A1-110 ',
'2018-06-05','2018-06-08','会议内容','审批人',1,'修改意见')
insert into hy_apply values('发展','会议议题','预算',NULL,'主持人',
'记录人','参加人员','会议地点',' A1-111 ',
'2018-01-05','2018-01-08','会议内容','审批人',1,'修改意见')
insert into hy_apply values('安全','会议议题','预算',NULL,'主持人',
'记录人','参加人员','会议地点',' A1-112 ',
'2017-09-05','2017-09-08','会议内容','审批人',1,'修改意见')
insert into hy_apply values('安全','会议议题','预算',NULL,'主持人',
'记录人','参加人员','会议地点',' A2-111 ',
'2017-03-05','2017-03-08','会议内容','审批人',1,'修改意见')




/*会议纪要*/
create table hy_jy(
hymc varchar(20),/*会议是名称外码*/
jy_nr varchar(30),
fjsc varchar(20),
jly varchar(10),/*会议申请的外码*/
gly varchar(10),



)
insert into hy_jy values ('会议名','纪要内容',null,'记录员','admin')
insert into hy_jy values ('会议-01','纪要内容',null,'张三','admin')
insert into hy_jy values ('会议-02','纪要内容',null,'李四','admin')
insert into hy_jy values ('会议-03','纪要内容',null,'王五','管理员')


insert into hy_jy values('发展','会议资源',null,'王五','管理员')
insert into hy_jy values('安全','会议资源',null,'王五','管理员')


select * from user_1 where name='admin' 
and pwd ='admin' 


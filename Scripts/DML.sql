SELECT * FROM academy where ADMST_ZONE_NM = '달성군';
where ADMST_ZONE_NM = '남구';

SELECT * FROM notice;

insert into academy (aca_nm, aca_asnum, atpt_ofcdc_sc_code, atpt_ofcdc_sc_nm) values ('asdf', '1234125', 't10', 'asdfasdf');
insert into notice(not_title,not_content,reg_date,writer) values('DB test','DB test 중 입니다.',now(),'김인환');

delete from academy;
alter table academy auto_increment=1;

select * from academy WHERE aca_asnum = '3000019645';

alter user root@localhost identified with mysql_native_password by 'root';

select * from lecture;
delete from lecture;
alter table lecture auto_increment=1;
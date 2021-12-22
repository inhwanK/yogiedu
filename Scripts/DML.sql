SELECT * FROM academy where ADMST_ZONE_NM = '동구' and ACA_NM LIKE '%영어%';
where ADMST_ZONE_NM = '남구';

SELECT * FROM notice;

insert into academy (aca_nm, aca_asnum, atpt_ofcdc_sc_code, atpt_ofcdc_sc_nm) values ('asdf', '1234125', 't10', 'asdfasdf');
insert into notice(not_title,not_content,reg_date,writer) values('DB test','DB test 중 입니다.',now(),'김인환');

delete from academy;
alter table academy auto_increment=1;

select * from academy WHERE aca_asnum = '3000019645';

alter user root@localhost identified with mysql_native_password by 'root';

select * from lecture;
insert into lecture(aca_idx, LECTURE_NAME,TEACHER_NAME,LECTURE_TIME_NUM) values(1,'A반','김인환','4, 11');

delete from lecture_time;


alter table lecture_time auto_increment=1;


select * 
  from academy 
order by aca_idx desc;


select * from user;
select * from timetable;

delete from user;

delete from lecture where LECTURE_IDX =2;
show tables;

select * from notice;

delete from notice;
alter table notice auto_increment=1;


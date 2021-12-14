SELECT * FROM academy;

SELECT * FROM notice;

insert into academy (aca_nm, aca_asnum, atpt_ofcdc_sc_code, atpt_ofcdc_sc_nm) values ('asdf', '1234125', 't10', 'asdfasdf');
insert into notice(not_title,not_content,reg_date,writer) values('DB test','DB test 중 입니다.',now(),'김인환');

delete from notice;
select * from academy WHERE aca_asnum = '3000019645';

alter user root@localhost identified with mysql_native_password by 'root';

select * from lecture;

SELECT * FROM academy;

SELECT * FROM notice;

insert into notice values(1,'DB test','DB test 중 입니다.',now(),'김인환');

alter user root@localhost identified with mysql_native_password by 'root';
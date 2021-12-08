
# driver properties -> allowPublicKeyRetrieval=true 설정 추가 
create user 'user_yogiedu'@'localhost' identified by 'rootroot';

drop user 'user_yogiedu'@'localhost';

grant all 
   on yogiedu.* 
   to 'user_yogiedu'@'localhost';

GRANT File 
   ON *.* 
   TO 'user_yogiedu'@'localhost';
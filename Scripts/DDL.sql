-- yogiedu
DROP SCHEMA IF EXISTS `yogiedu`;

-- yogiedu
CREATE SCHEMA `yogiedu`;

-- 공지사항
DROP TABLE IF EXISTS `yogiedu`.`notice` RESTRICT;

-- 학원
DROP TABLE IF EXISTS `yogiedu`.`academy` RESTRICT;

-- 수업
DROP TABLE IF EXISTS `yogiedu`.`class` RESTRICT;

-- 수업시간
DROP TABLE IF EXISTS `yogiedu`.`class_time` RESTRICT;

-- 회원
DROP TABLE IF EXISTS `yogiedu`.`member` RESTRICT;

-- 예약시간표
DROP TABLE IF EXISTS `yogiedu`.`TABLE` RESTRICT;

-- 수강생
DROP TABLE IF EXISTS `yogiedu`.`TABLE2` RESTRICT;

-- 공지사항
CREATE TABLE `yogiedu`.`notice` (
	`not_idx`     INT          NOT NULL COMMENT '공지번호', -- 공지번호
	`not_title`   VARCHAR(40)  NOT NULL COMMENT '공지제목', -- 공지제목
	`not_content` VARCHAR(300) NULL     COMMENT '글내용', -- 글내용
	`reg_date`    DATETIME     NULL     COMMENT '작성일', -- 작성일
	`writer`      VARCHAR(20)  NULL     COMMENT '작성자' -- 작성자
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE `yogiedu`.`notice`
	ADD CONSTRAINT `PK_notice` -- 공지사항 기본키
		PRIMARY KEY (
			`not_idx` -- 공지번호
		);

-- 학원
CREATE TABLE `yogiedu`.`academy` (
	`academy_idx`            INT         NOT NULL COMMENT '학원번호', -- 학원번호
	`academy_name`           VARCHAR(20) NOT NULL COMMENT '학원명', -- 학원명
	`academy_open_date`      DATE        NULL     COMMENT '개설일자', -- 개설일자
	`academy_reg_date`       DATE        NULL     COMMENT '등록일자', -- 등록일자
	`academy_field_name`     VARCHAR(20) NULL     COMMENT '분야명', -- 분야명
	`academy_class_name`     VARCHAR(20) NULL     COMMENT '주요교과', -- 주요교과
	`academy_street_code`    INT         NULL     COMMENT '도로명우편번호', -- 도로명우편번호
	`academy_address`        VARCHAR(50) NULL     COMMENT '도로명주소', -- 도로명주소
	`academy_address_detail` VARCHAR(20) NULL     COMMENT '도로명상세주소' -- 도로명상세주소
)
COMMENT '학원';

-- 학원
ALTER TABLE `yogiedu`.`academy`
	ADD CONSTRAINT `PK_academy` -- 학원 기본키
		PRIMARY KEY (
			`academy_idx` -- 학원번호
		);

-- 수업
CREATE TABLE `yogiedu`.`class` (
	`class_idx`    INT         NOT NULL COMMENT '수업번호', -- 수업번호
	`academy_idx`  INT         NOT NULL COMMENT '학원번호', -- 학원번호
	`class_name`   VARCHAR(20) NULL     COMMENT '수업명', -- 수업명
	`teacher_name` VARCHAR(10) NULL     COMMENT '강사명' -- 강사명
)
COMMENT '수업';

-- 수업
ALTER TABLE `yogiedu`.`class`
	ADD CONSTRAINT `PK_class` -- 수업 기본키
		PRIMARY KEY (
			`class_idx` -- 수업번호
		);

-- 수업시간
CREATE TABLE `yogiedu`.`class_time` (
	`class_time_idx`   INT       NOT NULL COMMENT '수업시간번호', -- 수업시간번호
	`class_idx`        INT       NOT NULL COMMENT '수업번호', -- 수업번호
	`class_dayofweek`  CHAR(3)   NULL     COMMENT '수업요일', -- 수업요일
	`class_start_time` TIMESTAMP NULL     COMMENT '수업시작시간', -- 수업시작시간
	`class_end_time`   TIMESTAMP NULL     COMMENT '수업종료시간' -- 수업종료시간
)
COMMENT '수업시간';

-- 수업시간
ALTER TABLE `yogiedu`.`class_time`
	ADD CONSTRAINT `PK_class_time` -- 수업시간 기본키
		PRIMARY KEY (
			`class_time_idx` -- 수업시간번호
		);

-- 회원
CREATE TABLE `yogiedu`.`member` (
	`member_idx`         INT         NOT NULL COMMENT '회원번호', -- 회원번호
	`member_id`          VARCHAR(30) NOT NULL COMMENT '아이디', -- 아이디
	`member_password`    VARCHAR(30) NOT NULL COMMENT '비밀번호', -- 비밀번호
	`member_name`        VARCHAR(10) NOT NULL COMMENT '이름', -- 이름
	`member_dateofbirth` INT(8)      NOT NULL COMMENT '생년월일', -- 생년월일
	`member_email`       VARCHAR(30) NULL     COMMENT '이메일' -- 이메일
)
COMMENT '회원';

-- 회원
ALTER TABLE `yogiedu`.`member`
	ADD CONSTRAINT `PK_member` -- 회원 기본키
		PRIMARY KEY (
			`member_idx` -- 회원번호
		);

-- 예약시간표
CREATE TABLE `yogiedu`.`TABLE` (
	`timetable_idx` INT     NOT NULL COMMENT '예약시간표번호', -- 예약시간표번호
	`student_idx`   INT     NULL     COMMENT '수강생번호', -- 수강생번호
	`class_idx`     INT     NULL     COMMENT '수업번호', -- 수업번호
	`mem_time_idx`  INT     NULL     COMMENT '수강생시간표번호', -- 수강생시간표번호
	`approval`      BOOLEAN NOT NULL COMMENT '승인여부' -- 승인여부
)
COMMENT '예약시간표';

-- 예약시간표
ALTER TABLE `yogiedu`.`TABLE`
	ADD CONSTRAINT `PK_TABLE` -- 예약시간표 기본키
		PRIMARY KEY (
			`timetable_idx` -- 예약시간표번호
		);

-- 수강생
CREATE TABLE `yogiedu`.`TABLE2` (
	`student_idx`         INT         NOT NULL COMMENT '수강생번호', -- 수강생번호
	`member_idx`          INT         NULL     COMMENT '회원번호', -- 회원번호
	`student_name`        VARCHAR(11) NULL     COMMENT '수강생명', -- 수강생명
	`student_dateofbirth` DATE        NULL     COMMENT '생년월일', -- 생년월일
	`student_school`      VARCHAR(10) NULL     COMMENT '학교', -- 학교
	`student_grade`       INT         NULL     COMMENT '학년' -- 학년
)
COMMENT '수강생';

-- 수강생
ALTER TABLE `yogiedu`.`TABLE2`
	ADD CONSTRAINT `PK_TABLE2` -- 수강생 기본키
		PRIMARY KEY (
			`student_idx` -- 수강생번호
		);

-- 수업
ALTER TABLE `yogiedu`.`class`
	ADD CONSTRAINT `FK_academy_TO_class` -- 학원 -> 수업
		FOREIGN KEY (
			`academy_idx` -- 학원번호
		)
		REFERENCES `yogiedu`.`academy` ( -- 학원
			`academy_idx` -- 학원번호
		);

-- 수업시간
ALTER TABLE `yogiedu`.`class_time`
	ADD CONSTRAINT `FK_class_TO_class_time` -- 수업 -> 수업시간
		FOREIGN KEY (
			`class_idx` -- 수업번호
		)
		REFERENCES `yogiedu`.`class` ( -- 수업
			`class_idx` -- 수업번호
		);

-- 예약시간표
ALTER TABLE `yogiedu`.`TABLE`
	ADD CONSTRAINT `FK_class_TO_TABLE` -- 수업 -> 예약시간표
		FOREIGN KEY (
			`class_idx` -- 수업번호
		)
		REFERENCES `yogiedu`.`class` ( -- 수업
			`class_idx` -- 수업번호
		);

-- 예약시간표
ALTER TABLE `yogiedu`.`TABLE`
	ADD CONSTRAINT `FK_TABLE2_TO_TABLE` -- 수강생 -> 예약시간표
		FOREIGN KEY (
			`student_idx` -- 수강생번호
		)
		REFERENCES `yogiedu`.`TABLE2` ( -- 수강생
			`student_idx` -- 수강생번호
		);

-- 수강생
ALTER TABLE `yogiedu`.`TABLE2`
	ADD CONSTRAINT `FK_member_TO_TABLE2` -- 회원 -> 수강생
		FOREIGN KEY (
			`member_idx` -- 회원번호
		)
		REFERENCES `yogiedu`.`member` ( -- 회원
			`member_idx` -- 회원번호
		);
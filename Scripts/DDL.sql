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
DROP TABLE IF EXISTS `yogiedu`.`class_timetable` RESTRICT;

-- 수강생
DROP TABLE IF EXISTS `yogiedu`.`student` RESTRICT;

-- yogiedu
DROP SCHEMA IF EXISTS `yogiedu`;

-- yogiedu
CREATE SCHEMA `yogiedu`;

-- 공지사항
CREATE TABLE `yogiedu`.`notice` (
	`not_idx`     INT(11)      NOT NULL COMMENT '공지번호', -- 공지번호
	`not_title`   VARCHAR(50)  NOT NULL COMMENT '공지제목', -- 공지제목
	`not_content` VARCHAR(300) NOT NULL COMMENT '글내용', -- 글내용
	`reg_date`    DATETIME     NOT NULL COMMENT '작성일', -- 작성일
	`writer`      VARCHAR(20)  NOT NULL COMMENT '작성자' -- 작성자
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE `yogiedu`.`notice`
	ADD CONSTRAINT `PK_notice` -- 공지사항 기본키
		PRIMARY KEY (
			`not_idx` -- 공지번호
		);

ALTER TABLE `yogiedu`.`notice`
	MODIFY COLUMN `not_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '공지번호';

-- 학원
CREATE TABLE `yogiedu`.`academy` (
	`ACA_ASNUM`          INT(11)     NOT NULL COMMENT '학원번호', -- 학원번호
	`ACA_NM`             VARCHAR(20) NOT NULL COMMENT '학원명', -- 학원명
	`ATPT_OFCDC_SC_CODE` VARCHAR(5)  NOT NULL COMMENT '시도교육청코드', -- 시도교육청코드
	`ATPT_OFCDC_SC_NM`   VARCHAR(20) NOT NULL COMMENT '시도교육청명', -- 시도교육청명
	`ADMST_ZONE_NM`      VARCHAR(20) NOT NULL COMMENT '행정구역명', -- 행정구역명
	`ESTBL_YMD`          CHAR(8)     NULL     COMMENT '개설일자', -- 개설일자
	`REG_YMD`            CHAR(8)     NULL     COMMENT '등록일자', -- 등록일자
	`REALM_SC_NM`        VARCHAR(10) NULL     COMMENT '분야명', -- 분야명
	`LE_OFD_NM`          VARCHAR(10) NULL     COMMENT '교습계열명', -- 교습계열명
	`LE_CRSE_LIST_NM`    VARCHAR(10) NULL     COMMENT '교습과정목록명', -- 교습과정목록명
	`LE_CRSE_NM`         VARCHAR(10) NULL     COMMENT '교습과정명', -- 교습과정명
	`FA_RDNZC`           int(5)      NULL     COMMENT '도로명우편번호', -- 도로명우편번호
	`FA_RDNMA`           VARCHAR(60) NULL     COMMENT '도로명주소', -- 도로명주소
	`FA_RDNDA`           VARCHAR(30) NULL     COMMENT '도로명상세주소' -- 도로명상세주소
)
COMMENT '학원';

-- 학원
ALTER TABLE `yogiedu`.`academy`
	ADD CONSTRAINT `PK_academy` -- 학원 기본키
		PRIMARY KEY (
			`ACA_ASNUM` -- 학원번호
		);

ALTER TABLE `yogiedu`.`academy`
	MODIFY COLUMN `ACA_ASNUM` INT(11) NOT NULL AUTO_INCREMENT COMMENT '학원번호';

-- 수업
CREATE TABLE `yogiedu`.`class` (
	`class_idx`    INT(11)     NOT NULL COMMENT '수업번호', -- 수업번호
	`ACA_ASNUM`    INT(11)     NOT NULL COMMENT '학원번호', -- 학원번호
	`class_name`   VARCHAR(20) NOT NULL COMMENT '수업명', -- 수업명
	`teacher_name` CHAR(6)     NULL     COMMENT '강사명' -- 강사명
)
COMMENT '수업';

-- 수업
ALTER TABLE `yogiedu`.`class`
	ADD CONSTRAINT `PK_class` -- 수업 기본키
		PRIMARY KEY (
			`class_idx` -- 수업번호
		);

ALTER TABLE `yogiedu`.`class`
	MODIFY COLUMN `class_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수업번호';

-- 수업시간
CREATE TABLE `yogiedu`.`class_time` (
	`class_time_idx`   INT(11)   NOT NULL COMMENT '수업시간번호', -- 수업시간번호
	`class_idx`        INT(11)   NOT NULL COMMENT '수업번호', -- 수업번호
	`class_week`       CHAR(3)   NULL     COMMENT '수업요일', -- 수업요일
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

ALTER TABLE `yogiedu`.`class_time`
	MODIFY COLUMN `class_time_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수업시간번호';

-- 회원
CREATE TABLE `yogiedu`.`member` (
	`member_idx`      INT(11)      NOT NULL COMMENT '회원번호', -- 회원번호
	`member_id`       VARCHAR(64)  NOT NULL COMMENT '아이디', -- 아이디
	`member_password` VARCHAR(255) NOT NULL COMMENT '비밀번호', -- 비밀번호
	`member_name`     CHAR(6)      NOT NULL COMMENT '이름', -- 이름
	`member_birth`    CHAR(6)      NOT NULL COMMENT '생년월일', -- 생년월일
	`member_email`    VARCHAR(64)  NOT NULL COMMENT '이메일' -- 이메일
)
COMMENT '회원';

-- 회원
ALTER TABLE `yogiedu`.`member`
	ADD CONSTRAINT `PK_member` -- 회원 기본키
		PRIMARY KEY (
			`member_idx` -- 회원번호
		);

ALTER TABLE `yogiedu`.`member`
	MODIFY COLUMN `member_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 예약시간표
CREATE TABLE `yogiedu`.`class_timetable` (
	`timetable_idx` INT(11) NOT NULL COMMENT '예약시간표번호', -- 예약시간표번호
	`student_idx`   INT(11) NOT NULL COMMENT '수강생번호', -- 수강생번호
	`class_idx`     INT(11) NOT NULL COMMENT '수업번호', -- 수업번호
	`mem_time_idx`  INT     NULL     COMMENT '수강생시간표번호', -- 수강생시간표번호
	`approval`      BOOLEAN NOT NULL COMMENT '승인여부' -- 승인여부
)
COMMENT '예약시간표';

-- 예약시간표
ALTER TABLE `yogiedu`.`class_timetable`
	ADD CONSTRAINT `PK_class_timetable` -- 예약시간표 기본키
		PRIMARY KEY (
			`timetable_idx` -- 예약시간표번호
		);

ALTER TABLE `yogiedu`.`class_timetable`
	MODIFY COLUMN `timetable_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '예약시간표번호';

-- 수강생
CREATE TABLE `yogiedu`.`student` (
	`student_idx`    INT(11)     NOT NULL COMMENT '수강생번호', -- 수강생번호
	`member_idx`     INT(11)     NOT NULL COMMENT '회원번호', -- 회원번호
	`student_name`   CHAR(6)     NOT NULL COMMENT '수강생명', -- 수강생명
	`student_birth`  CHAR(6)     NOT NULL COMMENT '생년월일', -- 생년월일
	`student_school` VARCHAR(11) NOT NULL COMMENT '학교', -- 학교
	`student_grade`  INT(2)      NOT NULL COMMENT '학년' -- 학년
)
COMMENT '수강생';

-- 수강생
ALTER TABLE `yogiedu`.`student`
	ADD CONSTRAINT `PK_student` -- 수강생 기본키
		PRIMARY KEY (
			`student_idx` -- 수강생번호
		);

ALTER TABLE `yogiedu`.`student`
	MODIFY COLUMN `student_idx` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수강생번호';

-- 수업
ALTER TABLE `yogiedu`.`class`
	ADD CONSTRAINT `FK_academy_TO_class` -- 학원 -> 수업
		FOREIGN KEY (
			`ACA_ASNUM` -- 학원번호
		)
		REFERENCES `yogiedu`.`academy` ( -- 학원
			`ACA_ASNUM` -- 학원번호
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
ALTER TABLE `yogiedu`.`class_timetable`
	ADD CONSTRAINT `FK_class_TO_class_timetable` -- 수업 -> 예약시간표
		FOREIGN KEY (
			`class_idx` -- 수업번호
		)
		REFERENCES `yogiedu`.`class` ( -- 수업
			`class_idx` -- 수업번호
		);

-- 예약시간표
ALTER TABLE `yogiedu`.`class_timetable`
	ADD CONSTRAINT `FK_student_TO_class_timetable` -- 수강생 -> 예약시간표
		FOREIGN KEY (
			`student_idx` -- 수강생번호
		)
		REFERENCES `yogiedu`.`student` ( -- 수강생
			`student_idx` -- 수강생번호
		);

-- 수강생
ALTER TABLE `yogiedu`.`student`
	ADD CONSTRAINT `FK_member_TO_student` -- 회원 -> 수강생
		FOREIGN KEY (
			`member_idx` -- 회원번호
		)
		REFERENCES `yogiedu`.`member` ( -- 회원
			`member_idx` -- 회원번호
		);
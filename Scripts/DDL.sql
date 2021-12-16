-- yogiedu
DROP SCHEMA IF EXISTS `yogiedu`;

-- yogiedu
CREATE SCHEMA `yogiedu`;


-- 공지사항
DROP TABLE IF EXISTS `yogiedu`.`notice` RESTRICT;

-- 학원
DROP TABLE IF EXISTS `yogiedu`.`academy` RESTRICT;

-- 수업
DROP TABLE IF EXISTS `yogiedu`.`lecture` RESTRICT;

-- 수업시간
DROP TABLE IF EXISTS `yogiedu`.`lecture_time` RESTRICT;

-- 회원
DROP TABLE IF EXISTS `yogiedu`.`member` RESTRICT;

-- 예약시간표
DROP TABLE IF EXISTS `yogiedu`.`class_timetable` RESTRICT;

-- 수강생
DROP TABLE IF EXISTS `yogiedu`.`student` RESTRICT;

-- 공지사항
CREATE TABLE `yogiedu`.`notice` (
	`NOT_IDX`     INT(11)      NOT NULL COMMENT '공지번호', -- 공지번호
	`NOT_TITLE`   VARCHAR(50)  NULL     COMMENT '공지제목', -- 공지제목
	`NOT_CONTENT` VARCHAR(300) NULL     COMMENT '글내용', -- 글내용
	`REG_DATE`    DATETIME     NULL     COMMENT '작성일', -- 작성일
	`WRITER`      VARCHAR(20)  NULL     COMMENT '작성자' -- 작성자
)
COMMENT '공지사항';

-- 공지사항
ALTER TABLE `yogiedu`.`notice`
	ADD CONSTRAINT `PK_notice` -- 공지사항 기본키
		PRIMARY KEY (
			`NOT_IDX` -- 공지번호
		);

ALTER TABLE `yogiedu`.`notice`
	MODIFY COLUMN `NOT_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '공지번호';

-- 학원
CREATE TABLE `yogiedu`.`academy` (
	`ACA_IDX`            INT(20)      NOT NULL COMMENT '학원번호', -- 학원번호
	`ACA_ASNUM`          VARCHAR(30)  NOT NULL COMMENT '학원지정번호', -- 학원지정번호
	`ACA_NM`             VARCHAR(100) NOT NULL COMMENT '학원명', -- 학원명
	`ATPT_OFCDC_SC_CODE` VARCHAR(10)  NULL     COMMENT '시도교육청코드', -- 시도교육청코드
	`ATPT_OFCDC_SC_NM`   VARCHAR(20)  NULL     COMMENT '시도교육청명', -- 시도교육청명
	`ADMST_ZONE_NM`      VARCHAR(20)  NULL     COMMENT '행정구역명', -- 행정구역명
	`ESTBL_YMD`          CHAR(8)      NULL     COMMENT '개설일자', -- 개설일자
	`REG_YMD`            CHAR(8)      NULL     COMMENT '등록일자', -- 등록일자
	`REALM_SC_NM`        VARCHAR(10)  NULL     COMMENT '분야명', -- 분야명
	`LE_CRSE_NM`         VARCHAR(80)  NULL     COMMENT '교습과정명', -- 교습과정명
	`FA_RDNZC`           VARCHAR(20)  NULL     COMMENT '도로명우편번호', -- 도로명우편번호
	`FA_RDNMA`           VARCHAR(60)  NULL     COMMENT '도로명주소', -- 도로명주소
	`FA_RDNDA`           VARCHAR(60)  NULL     COMMENT '도로명상세주소' -- 도로명상세주소
)
COMMENT '학원';

-- 학원
ALTER TABLE `yogiedu`.`academy`
	ADD CONSTRAINT `PK_academy` -- 학원 기본키
		PRIMARY KEY (
			`ACA_IDX` -- 학원번호
		);

ALTER TABLE `yogiedu`.`academy`
	MODIFY COLUMN `ACA_IDX` INT(20) NOT NULL AUTO_INCREMENT COMMENT '학원번호';

-- 수업
CREATE TABLE `yogiedu`.`lecture` (
	`LECTURE_IDX`      INT(11)      NOT NULL COMMENT '수업번호', -- 수업번호
	`ACA_IDX`          INT(20)      NULL     COMMENT '학원번호', -- 학원번호
	`LECTURE_NAME`     VARCHAR(30)  NULL     COMMENT '수업명', -- 수업명
	`TEACHER_NAME`     CHAR(6)      NULL     COMMENT '강사명', -- 강사명
	`LECTURE_TIME_NUM` VARCHAR(110) NULL     COMMENT '수업시간' -- 수업시간
)
COMMENT '수업';

-- 수업
ALTER TABLE `yogiedu`.`lecture`
	ADD CONSTRAINT `PK_lecture` -- 수업 기본키
		PRIMARY KEY (
			`LECTURE_IDX` -- 수업번호
		);

ALTER TABLE `yogiedu`.`lecture`
	MODIFY COLUMN `LECTURE_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수업번호';

-- 수업시간
CREATE TABLE `yogiedu`.`lecture_time` (
	`LECTURE_TIME_IDX`   INT(11) NOT NULL COMMENT '수업시간번호', -- 수업시간번호
	`LECTURE_WEEK`       CHAR(3) NULL     COMMENT '수업요일', -- 수업요일
	`LECTURE_START_TIME` INT(2)  NULL     COMMENT '수업시작시간', -- 수업시작시간
	`LECTURE_END_TIME`   INT(2)  NULL     COMMENT '수업종료시간' -- 수업종료시간
)
COMMENT '수업시간';

-- 수업시간
ALTER TABLE `yogiedu`.`lecture_time`
	ADD CONSTRAINT `PK_lecture_time` -- 수업시간 기본키
		PRIMARY KEY (
			`LECTURE_TIME_IDX` -- 수업시간번호
		);

ALTER TABLE `yogiedu`.`lecture_time`
	MODIFY COLUMN `LECTURE_TIME_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수업시간번호';

-- 회원
CREATE TABLE `yogiedu`.`member` (
	`MEMBER_IDX`      INT(11)      NOT NULL COMMENT '회원번호', -- 회원번호
	`MEMBER_ID`       VARCHAR(64)  NOT NULL COMMENT '아이디', -- 아이디
	`MEMBER_PASSWORD` VARCHAR(255) NOT NULL COMMENT '비밀번호', -- 비밀번호
	`MEMBER_NAME`     CHAR(6)      NOT NULL COMMENT '이름', -- 이름
	`MEMBER_BIRTH`    CHAR(6)      NOT NULL COMMENT '생년월일', -- 생년월일
	`MEMBER_EMAIL`    VARCHAR(64)  NOT NULL COMMENT '이메일' -- 이메일
)
COMMENT '회원';

-- 회원
ALTER TABLE `yogiedu`.`member`
	ADD CONSTRAINT `PK_member` -- 회원 기본키
		PRIMARY KEY (
			`MEMBER_IDX` -- 회원번호
		);

ALTER TABLE `yogiedu`.`member`
	MODIFY COLUMN `MEMBER_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 예약시간표
CREATE TABLE `yogiedu`.`class_timetable` (
	`TIMETABLE_IDX` INT(11) NOT NULL COMMENT '예약시간표번호', -- 예약시간표번호
	`STUDENT_IDX`   INT(11) NOT NULL COMMENT '수강생번호', -- 수강생번호
	`LECTURE_IDX`   INT(11) NOT NULL COMMENT '수업번호', -- 수업번호
	`MEM_TIME_IDX`  INT     NULL     COMMENT '수강생시간표번호', -- 수강생시간표번호
	`APPROVAL`      BOOLEAN NOT NULL DEFAULT false COMMENT '승인여부' -- 승인여부
)
COMMENT '예약시간표';

-- 예약시간표
ALTER TABLE `yogiedu`.`class_timetable`
	ADD CONSTRAINT `PK_class_timetable` -- 예약시간표 기본키
		PRIMARY KEY (
			`TIMETABLE_IDX` -- 예약시간표번호
		);

ALTER TABLE `yogiedu`.`class_timetable`
	MODIFY COLUMN `TIMETABLE_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '예약시간표번호';

-- 수강생
CREATE TABLE `yogiedu`.`student` (
	`STUDENT_IDX`    INT(11)     NOT NULL COMMENT '수강생번호', -- 수강생번호
	`MEMBER_IDX`     INT(11)     NOT NULL COMMENT '회원번호', -- 회원번호
	`STUDENT_NAME`   CHAR(6)     NOT NULL COMMENT '수강생명', -- 수강생명
	`STUDENT_BIRTH`  CHAR(6)     NOT NULL COMMENT '생년월일', -- 생년월일
	`STUDENT_SCHOOL` VARCHAR(11) NOT NULL COMMENT '학교', -- 학교
	`STUDENT_GRADE`  INT(2)      NOT NULL COMMENT '학년' -- 학년
)
COMMENT '수강생';

-- 수강생
ALTER TABLE `yogiedu`.`student`
	ADD CONSTRAINT `PK_student` -- 수강생 기본키
		PRIMARY KEY (
			`STUDENT_IDX` -- 수강생번호
		);

ALTER TABLE `yogiedu`.`student`
	MODIFY COLUMN `STUDENT_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '수강생번호';

-- 수업
ALTER TABLE `yogiedu`.`lecture`
	ADD CONSTRAINT `FK_academy_TO_lecture` -- 학원 -> 수업
		FOREIGN KEY (
			`ACA_IDX` -- 학원번호
		)
		REFERENCES `yogiedu`.`academy` ( -- 학원
			`ACA_IDX` -- 학원번호
		);

-- 예약시간표
ALTER TABLE `yogiedu`.`class_timetable`
	ADD CONSTRAINT `FK_student_TO_class_timetable` -- 수강생 -> 예약시간표
		FOREIGN KEY (
			`STUDENT_IDX` -- 수강생번호
		)
		REFERENCES `yogiedu`.`student` ( -- 수강생
			`STUDENT_IDX` -- 수강생번호
		);

-- 수강생
ALTER TABLE `yogiedu`.`student`
	ADD CONSTRAINT `FK_member_TO_student` -- 회원 -> 수강생
		FOREIGN KEY (
			`MEMBER_IDX` -- 회원번호
		)
		REFERENCES `yogiedu`.`member` ( -- 회원
			`MEMBER_IDX` -- 회원번호
		);
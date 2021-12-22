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

-- 회원
DROP TABLE IF EXISTS `yogiedu`.`user` RESTRICT;

-- 수강시간표
DROP TABLE IF EXISTS `yogiedu`.`timetable` RESTRICT;

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
	`FA_RDNDA`           VARCHAR(60)  NULL     COMMENT '도로명상세주소', -- 도로명상세주소
	`ACA_INTRO`          VARCHAR(300) NULL     COMMENT '학원소개', -- 학원소개
	`ACA_GRADE`          VARCHAR(20)  NULL     COMMENT '대상구분' -- 대상구분
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
	`SUBJECT_NAME`     VARCHAR(50)  NULL     COMMENT '과목명', -- 과목명
	`TEACHER_NAME`     CHAR(6)      NULL     COMMENT '강사명', -- 강사명
	`LECTURE_TIME_STR` VARCHAR(110) NULL     COMMENT '수업시간', -- 수업시간
	`LECTURE_GRADE`    VARCHAR(20)  NULL     COMMENT '대상구분' -- 대상구분
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

-- 회원
CREATE TABLE `yogiedu`.`user` (
	`USER_IDX`   INT(11)     NOT NULL COMMENT '회원번호', -- 회원번호
	`USER_EMAIL` VARCHAR(50) NULL     COMMENT '이메일', -- 이메일
	`USER_NAME`  VARCHAR(10) NULL     COMMENT '회원이름', -- 회원이름
	`USER_BIRTH` CHAR(6)     NULL     COMMENT '생년월일', -- 생년월일
	`USER_DIV`   VARCHAR(20) NULL     COMMENT '회원구분', -- 회원구분
	`USER_EDU`   VARCHAR(10) NULL     COMMENT '학교구분', -- 학교구분
	`USER_GRADE` INT(2)      NULL     COMMENT '학년', -- 학년
	`USER_ROLE`  VARCHAR(30) NULL     COMMENT '권한', -- 권한
	`ACA_IDX`    INT(20)     NULL     COMMENT '학원번호' -- 학원번호
)
COMMENT '회원';

-- 회원
ALTER TABLE `yogiedu`.`user`
	ADD CONSTRAINT `PK_user` -- 회원 기본키
		PRIMARY KEY (
			`USER_IDX` -- 회원번호
		);

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX `UIX_user`
	ON `yogiedu`.`user` ( -- 회원
		`USER_EMAIL` ASC -- 이메일
	);

ALTER TABLE `yogiedu`.`user`
	MODIFY COLUMN `USER_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 수강시간표
CREATE TABLE `yogiedu`.`timetable` (
	`TIMETABLE_IDX` INT(11) NOT NULL COMMENT '시간표번호', -- 시간표번호
	`USER_IDX`      INT(11) NOT NULL COMMENT '회원번호', -- 회원번호
	`LECTURE_IDX`   INT(11) NOT NULL COMMENT '수업번호' -- 수업번호
)
COMMENT '수강시간표';

-- 수강시간표
ALTER TABLE `yogiedu`.`timetable`
	ADD CONSTRAINT `PK_timetable` -- 수강시간표 기본키
		PRIMARY KEY (
			`TIMETABLE_IDX` -- 시간표번호
		);

ALTER TABLE `yogiedu`.`timetable`
	MODIFY COLUMN `TIMETABLE_IDX` INT(11) NOT NULL AUTO_INCREMENT COMMENT '시간표번호';

-- 수업
ALTER TABLE `yogiedu`.`lecture`
	ADD CONSTRAINT `FK_academy_TO_lecture` -- 학원 -> 수업
		FOREIGN KEY (
			`ACA_IDX` -- 학원번호
		)
		REFERENCES `yogiedu`.`academy` ( -- 학원
			`ACA_IDX` -- 학원번호
		);

-- 수강시간표
ALTER TABLE `yogiedu`.`timetable`
	ADD CONSTRAINT `FK_lecture_TO_timetable` -- 수업 -> 수강시간표
		FOREIGN KEY (
			`LECTURE_IDX` -- 수업번호
		)
		REFERENCES `yogiedu`.`lecture` ( -- 수업
			`LECTURE_IDX` -- 수업번호
		);

-- 수강시간표
ALTER TABLE `yogiedu`.`timetable`
	ADD CONSTRAINT `FK_user_TO_timetable` -- 회원 -> 수강시간표
		FOREIGN KEY (
			`USER_IDX` -- 회원번호
		)
		REFERENCES `yogiedu`.`user` ( -- 회원
			`USER_IDX` -- 회원번호
		);
CREATE TABLE `tbl_individual_member` (
  `individual_member_number` int NOT NULL AUTO_INCREMENT COMMENT '개인 회원 번호',
  `individual_member_name` varchar(50) NOT NULL COMMENT '개인 회원 이름',
  `nickname` varchar(50) NOT NULL COMMENT '닉네임',
  `individual_member_phone_number` varchar(100) NOT NULL COMMENT '개인 회원 전화번호',
  `individual_member_id` varchar(50) NOT NULL COMMENT '개인 회원 아이디',
  `individual_member_password` varchar(50) NOT NULL COMMENT '개인 회원 비밀번호',
  `individual_member_email` varchar(100) NOT NULL COMMENT '개인 회원 이메일',
  `individual_member_address` varchar(100) NOT NULL COMMENT '개인 회원 주소',
  `individual_member_detailed_address` varchar(100) NOT NULL COMMENT '개인 회원 상세 주소',
  `individual_member_profile_image` varchar(1000) DEFAULT NULL COMMENT '개인 회원 프로필 이미지',
  `number_of_donations` int DEFAULT 0 COMMENT '기부 횟수',
  `individual_member_join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '개인 회원 가입일',
  `individual_member_recent_logins` datetime DEFAULT NULL COMMENT '개인 회원 최근 로그인',
  `zip_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`individual_member_number`),
  UNIQUE KEY `UQ_tbl_individual_member_1` (`nickname`,`individual_member_phone_number`,`individual_member_id`,`individual_member_email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='개인회원';
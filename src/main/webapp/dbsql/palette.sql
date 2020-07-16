/* 상품 */
CREATE TABLE products (
	pd_no NUMBER NOT NULL, /* 상품번호 */
	pd_name VARCHAR2(200), /* 상품이름 */
	pd_price NUMBER, /* 상품가격 */
	pd_desc CLOB, /* 상품설명 */
	big_cg_code NUMBER, /* 대분류번호 */
	small_cg_code NUMBER, /* 소분류번호 */
	pd_tag CLOB, /* 태그 */
	pd_img VARCHAR2(200), /* 이미지 */
	pd_brand VARCHAR2(200), /* 브랜드 */
	condition_no NUMBER, /* 제품상태 */
	pd_regdate DATE /* 등록일자 */
);

/* FAQ */
CREATE TABLE FAQ (
	faq_no NUMBER NOT NULL, /* FAQ번호 */
	faq_title VARCHAR2(200), /* 제목 */
	faq_content CLOB, /* 내용 */
	faq_category_no NUMBER /* FAQ 카테고리 번호 */
);

/* 관리자 */
CREATE TABLE admin (
	admin_no NUMBER NOT NULL, /* 관리자번호 */
	admin_name VARCHAR2(200), /* 관리자이름 */
	admin_pwd VARCHAR2(200), /* 관리자비밀번호 */
	admin_grade NUMBER /* 관리자등급 */
);

/* 대분류 */
CREATE TABLE big_category (
	big_cg_code NUMBER NOT NULL, /* 대분류 번호 */
	big_cg_name VARCHAR2(200), /* 대분류 이름 */
	big_cg_sort_no NUMBER /* 정렬번호 */
);

/* 소분류 */
CREATE TABLE small_category (
	small_cg_code NUMBER NOT NULL, /* 소분류 번호 */
	big_cg_code NUMBER NOT NULL, /* 대분류 번호 */
	small_cg_name VARCHAR2(200), /* 소분류 이름 */
	small_cg_sort_no NUMBER /* 정렬번호 */
);

/* 관심상품 */
CREATE TABLE likes (
	likes_no NUMBER NOT NULL, /* 장바구니 번호 */
	pd_no NUMBER, /* 상품번호 */
	mem_no NUMBER, /* 회원번호 */
	regdate DATE /* 등록일 */
);

/* 거래 */
CREATE TABLE deal (
	deal_no NUMBER NOT NULL, /* 거래번호 */
	pd_no NUMBER NOT NULL, /* 상품번호 */
	payment_no NUMBER NOT NULL, /* 결제 번호 */
	buy_mem_no NUMBER NOT NULL, /* 구매 회원 번호 */
	sell_mem_no NUMBER NOT NULL, /* 판매 회원 번호 */
	is_check VARCHAR2(200) NOT NULL, /* 검수여부 */
	receiver VARCHAR2(100) NOT NULL, /* 수취인 */
	deal_zipcode VARCHAR2(200) NOT NULL, /* 우편번호 */
	deal_address1 VARCHAR2(200) NOT NULL, /* 배송주소1 */
	deal_address2 VARCHAR2(200) NOT NULL, /* 배송주소2 */
	deal_hp1 NUMBER NOT NULL, /* 연락처1 */
	deal_hp2 NUMBER NOT NULL, /* 연락처2 */
	deal_hp3 NUMBER NOT NULL, /* 연락처3 */
	deal_request VARCHAR2(300), /* 배송시 요청사항 */
	deal_status NUMBER, /* 주문상태 */
	regdate DATE /* 주문일자 */
);

/* 공지사항 */
CREATE TABLE notice (
	notice_no NUMBER NOT NULL, /* 번호 */
	notice_title VARCHAR2(200) NOT NULL, /* 제목 */
	admin_no NUMBER NOT NULL, /* 관리자번호 */
	notice_content CLOB NOT NULL, /* 내용 */
	notice_fileName VARCHAR2(200), /* 업로드파일 */
	notice_regdate DATE /* 등록일 */
);

/* 채팅 */
CREATE TABLE chatting (
	chat_no NUMBER NOT NULL, /* 번호 */
	mem_no1 NUMBER NOT NULL, /* 회원번호1 */
	chat_content CLOB NOT NULL, /* 내용 */
	regdate DATE, /* 등록일 */
	mem_no2 NUMBER NOT NULL /* 회원번호2 */
);

/* QnA */
CREATE TABLE qna (
	qna_no NUMBER NOT NULL, /* 번호 */
	qna_title VARCHAR2(200), /* 제목 */
	mem_no NUMBER, /* 회원번호 */
	qna_category_no NUMBER, /* 카테고리번호 */
	qna_content CLOB, /* 내용 */
	qna_qdate DATE, /* 등록일 */
	qna_adate DATE, /* 답변일 */
	qna_hits NUMBER, /* 조회수 */
	qna_private VARCHAR2(200), /* 비밀글여부 */
	admin_no NUMBER, /* 관리자번호 */
	qna_answer VARCHAR2(200) /* 관리자답변 */
);

/* 회원 */
CREATE TABLE member (
	mem_no NUMBER NOT NULL, /* 회원번호 */
	mem_userid VARCHAR2(200) NOT NULL, /* 아이디 */
	mem_pwd VARCHAR2(200) NOT NULL, /* 비밀번호 */
	mem_name VARCHAR2(200) NOT NULL, /* 이름 */
	mem_gender VARCHAR2(200), /* 성별 */
	mem_hp1 VARCHAR2(10), /* 핸드폰1 */
	mem_hp2 VARCHAR2(10), /* 핸드폰2 */
	mem_hp3 VARCHAR2(10), /* 핸드폰3 */
	mem_email1 VARCHAR2(100), /* 이메일1 */
	mem_email2 VARCHAR2(100), /* 이메일2 */
	mem_zipcode VARCHAR2(100), /* 우편번호 */
	mem_address1 VARCHAR2(200), /* 주소1 */
	mem_address2 VARCHAR2(200), /* 주소2 */
	member_rank_no NUMBER, /* 회원등급번호 */
	mem_regdate DATE, /* 가입일 */
	mem_state NUMBER, /* 회원상태 */
	mem_cause VARCHAR2(300), /* 정지, 탈퇴사유 */
	kakao_id VARCHAR2(200), /* 카카오톡아이디 */
	mem_age VARCHAR2(100), /* 연령대 */
	mem_brand VARCHAR2(100), /* 선호브랜드 */
	mem_skintype VARCHAR2(100), /* 피부타입 */
	mem_tone VARCHAR2(100) /* 피부톤 */
);

/* 리뷰 */
CREATE TABLE review (
	review_no NUMBER, /* 리뷰번호 */
	deal_no NUMBER, /* 구매번호 */
	review_score NUMBER, /* 판매자평점 */
	review_content CLOB /* 리뷰내용 */
);

/* FAQ카테고리 */
CREATE TABLE FAQCategory (
	faq_category_no NUMBER NOT NULL, /* FAQ 카테고리 번호 */
	faq_category VARCHAR2(200) /* FAQ 카테고리명 */
);

/* 태그 */
CREATE TABLE tag (
	tag_no NUMBER NOT NULL, /* 태그번호 */
	tag_name VARCHAR2(200), /* 태그명 */
	tag_count NUMBER, /* 사용횟수 */
	tag_add VARCHAR2(200) /* 추가여부 */
);

/* QnA카테고리 */
CREATE TABLE qna_category (
	qna_category_no NUMBER NOT NULL, /* QnA 카테고리 번호 */
	qna_category VARCHAR2(200) /* QnA 카테고리명 */
);

/* 제품상태 */
CREATE TABLE condition (
	condition_no NUMBER NOT NULL, /* 제품상태 번호 */
	condition VARCHAR2(200) /* 제품상태 */
);

/* 계좌정보 */
CREATE TABLE account (
	account_no NUMBER NOT NULL, /* 계좌정보 번호 */
	mem_no NUMBER NOT NULL, /* 회원번호 */
	account_bank VARCHAR2(200) NOT NULL, /* 은행 */
	account VARCHAR2(200) NOT NULL /* 계좌번호 */
);

/* 결제수단 */
CREATE TABLE pay_by (
	pay_by_no NUMBER NOT NULL, /* 결제 수단 번호 */
	pay_by_name VARCHAR2(200) NOT NULL /* 결제 수단 이름 */
);

/* 결제 */
CREATE TABLE payment (
	payment_no NUMBER NOT NULL, /* 결제 번호 */
	pay_by_no NUMBER NOT NULL, /* 결제 수단 번호 */
	mem_no NUMBER NOT NULL, /* 회원번호 */
	payment_price NUMBER NOT NULL, /* 상품금액 */
	delivery NUMBER, /* 배송비 */
	regdate DATE /* 결제일 */
);

/* 회원등급 */
CREATE TABLE rank (
	member_rank_no NUMBER NOT NULL, /* 회원등급 번호 */
	member_rank VARCHAR2(200) NOT NULL /* 회원등급 이름 */
);
/* ��ǰ */
CREATE TABLE products (
	pd_no NUMBER NOT NULL, /* ��ǰ��ȣ */
	pd_name VARCHAR2(200), /* ��ǰ�̸� */
	pd_price NUMBER, /* ��ǰ���� */
	pd_desc CLOB, /* ��ǰ���� */
	big_cg_code NUMBER, /* ��з���ȣ */
	small_cg_code NUMBER, /* �Һз���ȣ */
	pd_tag CLOB, /* �±� */
	pd_img VARCHAR2(200), /* �̹��� */
	pd_brand VARCHAR2(200), /* �귣�� */
	condition_no NUMBER, /* ��ǰ���� */
	pd_regdate DATE /* ������� */
);

/* FAQ */
CREATE TABLE FAQ (
	faq_no NUMBER NOT NULL, /* FAQ��ȣ */
	faq_title VARCHAR2(200), /* ���� */
	faq_content CLOB, /* ���� */
	faq_category_no NUMBER /* FAQ ī�װ� ��ȣ */
);

/* ������ */
CREATE TABLE admin (
	admin_no NUMBER NOT NULL, /* �����ڹ�ȣ */
	admin_name VARCHAR2(200), /* �������̸� */
	admin_pwd VARCHAR2(200), /* �����ں�й�ȣ */
	admin_grade NUMBER /* �����ڵ�� */
);

/* ��з� */
CREATE TABLE big_category (
	big_cg_code NUMBER NOT NULL, /* ��з� ��ȣ */
	big_cg_name VARCHAR2(200), /* ��з� �̸� */
	big_cg_sort_no NUMBER /* ���Ĺ�ȣ */
);

/* �Һз� */
CREATE TABLE small_category (
	small_cg_code NUMBER NOT NULL, /* �Һз� ��ȣ */
	big_cg_code NUMBER NOT NULL, /* ��з� ��ȣ */
	small_cg_name VARCHAR2(200), /* �Һз� �̸� */
	small_cg_sort_no NUMBER /* ���Ĺ�ȣ */
);

/* ���ɻ�ǰ */
CREATE TABLE likes (
	likes_no NUMBER NOT NULL, /* ��ٱ��� ��ȣ */
	pd_no NUMBER, /* ��ǰ��ȣ */
	mem_no NUMBER, /* ȸ����ȣ */
	regdate DATE /* ����� */
);

/* �ŷ� */
CREATE TABLE deal (
	deal_no NUMBER NOT NULL, /* �ŷ���ȣ */
	pd_no NUMBER NOT NULL, /* ��ǰ��ȣ */
	payment_no NUMBER NOT NULL, /* ���� ��ȣ */
	buy_mem_no NUMBER NOT NULL, /* ���� ȸ�� ��ȣ */
	sell_mem_no NUMBER NOT NULL, /* �Ǹ� ȸ�� ��ȣ */
	is_check VARCHAR2(200) NOT NULL, /* �˼����� */
	receiver VARCHAR2(100) NOT NULL, /* ������ */
	deal_zipcode VARCHAR2(200) NOT NULL, /* �����ȣ */
	deal_address1 VARCHAR2(200) NOT NULL, /* ����ּ�1 */
	deal_address2 VARCHAR2(200) NOT NULL, /* ����ּ�2 */
	deal_hp1 NUMBER NOT NULL, /* ����ó1 */
	deal_hp2 NUMBER NOT NULL, /* ����ó2 */
	deal_hp3 NUMBER NOT NULL, /* ����ó3 */
	deal_request VARCHAR2(300), /* ��۽� ��û���� */
	deal_status NUMBER, /* �ֹ����� */
	regdate DATE /* �ֹ����� */
);

/* �������� */
CREATE TABLE notice (
	notice_no NUMBER NOT NULL, /* ��ȣ */
	notice_title VARCHAR2(200) NOT NULL, /* ���� */
	admin_no NUMBER NOT NULL, /* �����ڹ�ȣ */
	notice_content CLOB NOT NULL, /* ���� */
	notice_fileName VARCHAR2(200), /* ���ε����� */
	notice_regdate DATE /* ����� */
);

/* ä�� */
CREATE TABLE chatting (
	chat_no NUMBER NOT NULL, /* ��ȣ */
	mem_no1 NUMBER NOT NULL, /* ȸ����ȣ1 */
	chat_content CLOB NOT NULL, /* ���� */
	regdate DATE, /* ����� */
	mem_no2 NUMBER NOT NULL /* ȸ����ȣ2 */
);

/* QnA */
CREATE TABLE qna (
	qna_no NUMBER NOT NULL, /* ��ȣ */
	qna_title VARCHAR2(200), /* ���� */
	mem_no NUMBER, /* ȸ����ȣ */
	qna_category_no NUMBER, /* ī�װ���ȣ */
	qna_content CLOB, /* ���� */
	qna_qdate DATE, /* ����� */
	qna_adate DATE, /* �亯�� */
	qna_hits NUMBER, /* ��ȸ�� */
	qna_private VARCHAR2(200), /* ��бۿ��� */
	admin_no NUMBER, /* �����ڹ�ȣ */
	qna_answer VARCHAR2(200) /* �����ڴ亯 */
);

/* ȸ�� */
CREATE TABLE member (
	mem_no NUMBER NOT NULL, /* ȸ����ȣ */
	mem_userid VARCHAR2(200) NOT NULL, /* ���̵� */
	mem_pwd VARCHAR2(200) NOT NULL, /* ��й�ȣ */
	mem_name VARCHAR2(200) NOT NULL, /* �̸� */
	mem_gender VARCHAR2(200), /* ���� */
	mem_hp1 VARCHAR2(10), /* �ڵ���1 */
	mem_hp2 VARCHAR2(10), /* �ڵ���2 */
	mem_hp3 VARCHAR2(10), /* �ڵ���3 */
	mem_email1 VARCHAR2(100), /* �̸���1 */
	mem_email2 VARCHAR2(100), /* �̸���2 */
	mem_zipcode VARCHAR2(100), /* �����ȣ */
	mem_address1 VARCHAR2(200), /* �ּ�1 */
	mem_address2 VARCHAR2(200), /* �ּ�2 */
	member_rank_no NUMBER, /* ȸ����޹�ȣ */
	mem_regdate DATE, /* ������ */
	mem_state NUMBER, /* ȸ������ */
	mem_cause VARCHAR2(300), /* ����, Ż����� */
	kakao_id VARCHAR2(200), /* īī������̵� */
	mem_age VARCHAR2(100), /* ���ɴ� */
	mem_brand VARCHAR2(100), /* ��ȣ�귣�� */
	mem_skintype VARCHAR2(100), /* �Ǻ�Ÿ�� */
	mem_tone VARCHAR2(100) /* �Ǻ��� */
);

/* ���� */
CREATE TABLE review (
	review_no NUMBER, /* �����ȣ */
	deal_no NUMBER, /* ���Ź�ȣ */
	review_score NUMBER, /* �Ǹ������� */
	review_content CLOB /* ���䳻�� */
);

/* FAQī�װ� */
CREATE TABLE FAQCategory (
	faq_category_no NUMBER NOT NULL, /* FAQ ī�װ� ��ȣ */
	faq_category VARCHAR2(200) /* FAQ ī�װ��� */
);

/* �±� */
CREATE TABLE tag (
	tag_no NUMBER NOT NULL, /* �±׹�ȣ */
	tag_name VARCHAR2(200), /* �±׸� */
	tag_count NUMBER, /* ���Ƚ�� */
	tag_add VARCHAR2(200) /* �߰����� */
);

/* QnAī�װ� */
CREATE TABLE qna_category (
	qna_category_no NUMBER NOT NULL, /* QnA ī�װ� ��ȣ */
	qna_category VARCHAR2(200) /* QnA ī�װ��� */
);

/* ��ǰ���� */
CREATE TABLE condition (
	condition_no NUMBER NOT NULL, /* ��ǰ���� ��ȣ */
	condition VARCHAR2(200) /* ��ǰ���� */
);

/* �������� */
CREATE TABLE account (
	account_no NUMBER NOT NULL, /* �������� ��ȣ */
	mem_no NUMBER NOT NULL, /* ȸ����ȣ */
	account_bank VARCHAR2(200) NOT NULL, /* ���� */
	account VARCHAR2(200) NOT NULL /* ���¹�ȣ */
);

/* �������� */
CREATE TABLE pay_by (
	pay_by_no NUMBER NOT NULL, /* ���� ���� ��ȣ */
	pay_by_name VARCHAR2(200) NOT NULL /* ���� ���� �̸� */
);

/* ���� */
CREATE TABLE payment (
	payment_no NUMBER NOT NULL, /* ���� ��ȣ */
	pay_by_no NUMBER NOT NULL, /* ���� ���� ��ȣ */
	mem_no NUMBER NOT NULL, /* ȸ����ȣ */
	payment_price NUMBER NOT NULL, /* ��ǰ�ݾ� */
	delivery NUMBER, /* ��ۺ� */
	regdate DATE /* ������ */
);

/* ȸ����� */
CREATE TABLE rank (
	member_rank_no NUMBER NOT NULL, /* ȸ����� ��ȣ */
	member_rank VARCHAR2(200) NOT NULL /* ȸ����� �̸� */
);
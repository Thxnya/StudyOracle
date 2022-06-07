-- hr (비활성화된 사용자)를 해제(사용할수 있도록)
ALTER USER hr ACCOUNT UNLOCK;

-- hr 비밀번호 설정
ALTER USER hr IDENTIFIED BY "hr1234";

-- hr의 DB권한 설정
GRANT CONNECT, RESOURCE, dba TO hr;
-- hr (��Ȱ��ȭ�� �����)�� ����(����Ҽ� �ֵ���)
ALTER USER hr ACCOUNT UNLOCK;

-- hr ��й�ȣ ����
ALTER USER hr IDENTIFIED BY "hr1234";

-- hr�� DB���� ����
GRANT CONNECT, RESOURCE, dba TO hr;
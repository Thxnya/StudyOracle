-- ����ȯ �Լ�
SELECT CAST(AVG(price) AS NUMBER(10, 2)) AS "å�������" FROM bookstbl;

SELECT CAST(AVG(hisal) AS NUMBER(10, 2)) "�ְ�������" FROM salgrade;

-- DUAL(���� DB���̺� ������� ������)
SELECT CAST('1000' AS NUMBER(10)) FROM dual;
SELECT CAST(1000.08 AS CHAR(10)) FROM dual;

SELECT CAST('2022/04/28' AS DATE) FROM dual;

SELECT TO_CHAR(12345, '$999,999') FROM dual;
SELECT TO_CHAR(12345, '999,999') FROM dual;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') "�����Ͻ�" FROM dual;

-- ���ڿ� �Լ�
SELECT CHR(65), UNISTR('\D55C') FROM dual;

-- ���ڿ� ����
SELECT 'Hello, ' || 'World ' || '!' FROM dual;
SELECT CONCAT('Hello, ', 'World') FROM dual;

SELECT INSTR('�̰��� Oracle�̴�, �ݰ����ϴ�.', 'Oracle') FROM dual;

SELECT UPPER('abcde'), LOWER('ABCDE') FROM dual;

-- ���� �ڸ���
SELECT SUBSTR('���ѹα�����' ,5 ,2) FROM dual;

-- Ʈ��
SELECT LTRIM('  �ȳ��ϼ���'), RTRIM('�ȳ��ϼ���   '), TRIM('   �ȳ�  �ϼ���   ') FROM dual;

SELECT sysdate FROM dual;

SELECT LAST_DAY('2020-02-01') FROM dual;
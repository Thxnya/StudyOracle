-- ��ȸ ������(where)
SELECT names, levels, addr, mobile 
FROM membertbl
WHERE names = '�����';

-- idx�� 5���� 10���̸� ��ȸ, level�� A�� ����� ��ȸ
SELECT * FROM membertbl
WHERE (idx >= 5 AND idx <= 10)
 AND levels = 'A';
 
 -- between A and B
 -- idx�� 5���� 10������ ȸ�� ���ڵ带 ��ȸ
 SELECT * FROM membertbl
 WHERE idx BETWEEN 5 AND 10;
 
 -- or��
 SELECT * FROM membertbl
 WHERE levels = 'B' OR levels = 'D' OR levels = 'S';
 
 -- IN
 SELECT * FROM membertbl
 WHERE levels NOT IN ('B', 'D', 'S');
 
 -- LIKE ����˻�
 SELECT * FROM bookstbl
 WHERE names LIKE '_����__'; -- '������%', '������__', '_����%'
 
 -- LIKE ����˻�
 SELECT * FROM bookstbl
 WHERE description LIKE '%��ǰ%'
 AND division = 'B005';
 
 -- �������� ANY/ALL/SOME WHERE�� ��������
 SELECT * FROM bookstbl
 WHERE division IN (SELECT division FROM divtbl
 WHERE names = '�߸�');
 
-- �������� 2 �÷���� ��������
SELECT b.idx AS "��ȣ"
      , b.author AS "����"
      , b.division "�帣�ڵ�"
      , (SELECT d.names FROM divtbl d WHERE d.division = b.division) as "�帣"
      , b.names "å����"
      , b.price "����"

  FROM bookstbl b
 WHERE b.division = 'B005';
 
 -- �������� 3 FROM�� ��������
 SELECT bb.*
   FROM (SELECT b.author
               , b.division
               , b.names FROM bookstbl b) bb;
   
-- �������� ANY...
 SELECT * 
   FROM bookstbl
  WHERE division IN (SELECT division 
                        FROM divtbl
                       WHERE division LIKE 'B%');
                       
-- ���� ORDER BY (ASC[ending], DESC[ending])
SELECT idx
      , author
      , names
      , releasedate
      , price 
  FROM bookstbl
 ORDER BY price
         , idx DESC;
         
-- DISTINCT
SELECT DISTINCT price
  FROM bookstbl;
  
-- DISTINCT
SELECT * 
  FROM divtbl
 WHERE division NOT IN (SELECT DISTINCT division
                           FROM bookstbl);
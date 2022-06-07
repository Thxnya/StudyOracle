-- OUTER JOIN (�ܺ� ����)

SELECT m.idx AS "ȸ����ȣ", m.names AS "ȸ���̸�"
     , m.levels, m.mobile, m.email
     , r.idx
  FROM membertbl m
  LEFT OUTER JOIN rentaltbl r
    ON m.idx = r.memberidx
 WHERE r.idx IS NULL 
   AND m.levels <> 'S';
   
-- �뿩���̺� ���������ϸ� �뿩�ȵ� �����ʹ� �ϳ��� �����ϴ�
SELECT *
  FROM membertbl m
  RIGHT OUTER JOIN rentaltbl r
    ON m.idx = r.memberidx;
    
    
-- �뿩�� �ѹ��� ���� ���� å����Ʈ ��ȸ
SELECT b.idx AS "å��ȣ", b.names as "å����"
     , b.author, b.price
     , r.idx, r.rentaldate, r.returndate
  FROM bookstbl b
  LEFT OUTER JOIN rentaltbl r
    ON b.idx = r.bookidx
 WHERE r.idx IS NULL;
 
 
-- 
SELECT *
  FROM rentaltbl r
 RIGHT OUTER JOIN bookstbl b
    ON b.idx = r.bookidx
 RIGHT OUTER JOIN divtbl d
    ON b.division = d.division;
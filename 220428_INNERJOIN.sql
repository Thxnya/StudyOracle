-- 조인
-- 1. INNER JOIN

SELECT bt.idx, bt.author, dt.division, dt.names AS "책장르명"
     , bt.names, TO_CHAR(bt.releasedate, 'YYYY') || '년 ' || TO_CHAR(bt.releasedate, 'MM') || '월 ' || TO_CHAR(bt.releasedate, 'DD') || '일' AS "출판일"
     , bt.isbn, TO_CHAR(bt.price, '999,999') || '원' AS "정가"
  FROM bookstbl bt
 INNER JOIN divtbl dt
    ON bt.division = dt.division
 WHERE dt.division = 'B005';
 
-- IINER JOIN, 테이블 3개
SELECT r.idx, TO_CHAR(r.rentaldate, 'YYYY-MM-DD') AS "대여일"
     , TO_CHAR(r.returndate, 'YYYY-MM-DD') AS "반납일"
     , m.names AS "대여자"
     , b.names AS "빌린책"
  FROM membertbl m
 INNER JOIN rentaltbl r
    ON m.idx = r.memberidx
 INNER JOIN bookstbl b
    ON b.idx = r.bookidx
 WHERE r.returndate IS NOT null
 ORDER BY r.idx;
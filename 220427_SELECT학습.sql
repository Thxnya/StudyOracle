-- 조회 조건절(where)
SELECT names, levels, addr, mobile 
FROM membertbl
WHERE names = '성명건';

-- idx가 5에서 10사이를 조회, level이 A인 사람을 조회
SELECT * FROM membertbl
WHERE (idx >= 5 AND idx <= 10)
 AND levels = 'A';
 
 -- between A and B
 -- idx가 5에서 10사이인 회원 레코드를 조회
 SELECT * FROM membertbl
 WHERE idx BETWEEN 5 AND 10;
 
 -- or로
 SELECT * FROM membertbl
 WHERE levels = 'B' OR levels = 'D' OR levels = 'S';
 
 -- IN
 SELECT * FROM membertbl
 WHERE levels NOT IN ('B', 'D', 'S');
 
 -- LIKE 유사검색
 SELECT * FROM bookstbl
 WHERE names LIKE '_프터__'; -- '애프터%', '애프터__', '_프터%'
 
 -- LIKE 유사검색
 SELECT * FROM bookstbl
 WHERE description LIKE '%작품%'
 AND division = 'B005';
 
 -- 서브쿼리 ANY/ALL/SOME WHERE절 서브쿼리
 SELECT * FROM bookstbl
 WHERE division IN (SELECT division FROM divtbl
 WHERE names = '추리');
 
-- 서브쿼리 2 컬럼사용 서브쿼리
SELECT b.idx AS "번호"
      , b.author AS "저자"
      , b.division "장르코드"
      , (SELECT d.names FROM divtbl d WHERE d.division = b.division) as "장르"
      , b.names "책제목"
      , b.price "가격"

  FROM bookstbl b
 WHERE b.division = 'B005';
 
 -- 서브쿼리 3 FROM절 서브쿼리
 SELECT bb.*
   FROM (SELECT b.author
               , b.division
               , b.names FROM bookstbl b) bb;
   
-- 서브쿼리 ANY...
 SELECT * 
   FROM bookstbl
  WHERE division IN (SELECT division 
                        FROM divtbl
                       WHERE division LIKE 'B%');
                       
-- 정렬 ORDER BY (ASC[ending], DESC[ending])
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
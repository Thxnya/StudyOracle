SELECT idx, TO_CHAR(price) FROM bookstbl
 UNION
SELECT idx, names FROM membertbl;
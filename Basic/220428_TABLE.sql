-- 테이블 생성
CREATE TABLE userTBL
(
    userID CHAR(8) NOT NULL PRIMARY KEY,
    userNAME NVARCHAR2(10) NOT NULL,
    addr NVARCHAR2(50)
);



CREATE TABLE buyTBL
(
    idNum NUMBER(8) NOT NULL PRIMARY KEY,
    userID CHAR(8) NOT NULL,
    buyDate DATE,
    
    FOREIGN KEY(userID) REFERENCES userTBL(userID)
);


DROP TABLE buyTBL;
DROP TABLE userTBL;
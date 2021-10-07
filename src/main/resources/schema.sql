-- employee
CREATE TABLE EMP
(
    EMP_ID      VARCHAR(255)    NOT NULL,
    EMP_NM      VARCHAR(255)    NOT NULL,
    DISPATCH_ID VARCHAR(255)    NULL
);

ALTER TABLE EMP ADD CONSTRAINT PK_EMP PRIMARY KEY (EMP_ID);

CREATE SEQUENCE SEQ_EMP
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

-- dispatch
CREATE TABLE DISPATCH
(
    DISPATCH_ID     VARCHAR(255)    NOT NULL,
    DISPATCH_TITLE  VARCHAR(255)    NOT NULL,
    DISPATCH_STDT   TIMESTAMP(6)    NULL
);

ALTER TABLE DISPATCH ADD CONSTRAINT PK_DISPATCH PRIMARY KEY (DISPATCH_ID);

CREATE SEQUENCE SEQ_DISPATCH
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 99999999;

-- emp dispatch
CREATE TABLE EMP_DISPATCH
(
    DISPATCH_ID     VARCHAR(255)    NOT NULL,
    EMP_ID          VARCHAR(255)    NOT NULL,
    WORKSTATUS      VARCHAR(255)    NOT NULL
);

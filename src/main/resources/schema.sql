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

-- duty
CREATE TABLE DUTY
(
    DUTY_CD         VARCHAR(255)    NOT NULL,
    DUTY_NM         VARCHAR(255)    NOT NULL,
    DUTY_PARENT_CD  VARCHAR(255)    NULL
);

ALTER TABLE DUTY ADD CONSTRAINT PK_DUTY PRIMARY KEY (DUTY_CD);

CREATE SEQUENCE SEQ_DUTY
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
    DUTY_CD         VARCHAR(255)    NOT NULL
);

ALTER TABLE EMP_DISPATCH ADD CONSTRAINT PK_EMP_DISPATCH PRIMARY KEY (DISPATCH_ID, EMP_ID);


-- Foreign key
ALTER TABLE EMP ADD CONSTRAINT FK_EMP_1 FOREIGN KEY (DISPATCH_ID)
    REFERENCES DISPATCH(DISPATCH_ID) ON DELETE SET NULL;

ALTER TABLE EMP_DISPATCH ADD CONSTRAINT FK_EMP_DISPATCH_1 FOREIGN KEY (DISPATCH_ID)
    REFERENCES DISPATCH(DISPATCH_ID) ON DELETE CASCADE;

ALTER TABLE EMP_DISPATCH ADD CONSTRAINT FK_EMP_DISPATCH_2 FOREIGN KEY (EMP_ID)
    REFERENCES EMP(EMP_ID) ON DELETE CASCADE;

ALTER TABLE EMP_DISPATCH ADD CONSTRAINT FK_EMP_DISPATCH_3 FOREIGN KEY (DUTY_CD)
    REFERENCES DUTY(DUTY_CD) ON DELETE SET NULL;


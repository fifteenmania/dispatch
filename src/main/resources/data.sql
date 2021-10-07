INSERT INTO DISPATCH (DISPATCH_ID, DISPATCH_TITLE, DISPATCH_STDT) VALUES (LPAD(SEQ_DISPATCH.NEXTVAL, 8, '0'), '신규발령1', SYSTIMESTAMP);

INSERT INTO DUTY (DUTY_CD, DUTY_NM) VALUES (LPAD(SEQ_DUTY.NEXTVAL, 8, '0'), '팀원');
INSERT INTO DUTY (DUTY_CD, DUTY_NM) VALUES (LPAD(SEQ_DUTY.NEXTVAL, 8, '0'), '팀장');
INSERT INTO DUTY (DUTY_CD, DUTY_NM) VALUES (LPAD(SEQ_DUTY.NEXTVAL, 8, '0'), '실장');

UPDATE DUTY SET DUTY_PARENT_CD = '00000002' WHERE DUTY_CD = '00000001';
UPDATE DUTY SET DUTY_PARENT_CD = '00000003' WHERE DUTY_CD = '00000002';

INSERT INTO EMP (EMP_ID, EMP_NM, DISPATCH_ID) VALUES (LPAD(SEQ_EMP.NEXTVAL, 8, '0'), '홍길동', '00000001');
INSERT INTO EMP (EMP_ID, EMP_NM, DISPATCH_ID) VALUES (LPAD(SEQ_EMP.NEXTVAL, 8, '0'), '한석원', '00000001');

INSERT INTO EMP_DISPATCH (DISPATCH_ID, EMP_ID, DUTY_CD) VALUES ('00000001', '00000001', '00000001');
INSERT INTO EMP_DISPATCH (DISPATCH_ID, EMP_ID, DUTY_CD) VALUES ('00000001', '00000002', '00000002');

--------------------------------------------------------
--  File created - Thursday-September-20-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type ATE_TABLETYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ATE_TABLETYPE" as table of varchar2(30)


/

--------------------------------------------------------
--  DDL for Type MYTABLETYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "MYTABLETYPE" as
table of varchar2(4000)


/

--------------------------------------------------------
--  DDL for Sequence ATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATE_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 855194 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BLOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BLOG_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 29918 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ATE_ACTIVITY_LOG
--------------------------------------------------------

  CREATE TABLE "ATE_ACTIVITY_LOG" 
   (	"TIME_STAMP" DATE DEFAULT sysdate, 
	"COOKIE_ID" NUMBER, 
	"PAGE_ID" NUMBER, 
	"SESSION_ID" NUMBER, 
	"IP_ADDRESS" VARCHAR2(4000), 
	"USER_AGENT" VARCHAR2(4000), 
	"MONTH" NUMBER DEFAULT to_number(to_char(sysdate,'mm')), 
	"LAT" VARCHAR2(200), 
	"LONGT" VARCHAR2(200), 
	"CITY" VARCHAR2(200), 
	"REGION" VARCHAR2(200), 
	"COUNTRY" VARCHAR2(200), 
	"COUNTRY_CODE" VARCHAR2(200)
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."TIME_STAMP" IS 'Date the log was created';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."COOKIE_ID" IS 'Cookie ID for this page view, cookie_id is not null only for Admin appl';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."PAGE_ID" IS 'Identifies the page';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."SESSION_ID" IS 'Apex Session ID for this page view';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."IP_ADDRESS" IS 'IP Address for this page view';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."USER_AGENT" IS 'HTTP User Agent for this page view';
 
   COMMENT ON COLUMN "ATE_ACTIVITY_LOG"."MONTH" IS 'Month of the page view';
 
   COMMENT ON TABLE "ATE_ACTIVITY_LOG"  IS 'User activity log';
--------------------------------------------------------
--  DDL for Table ATE_ADMINISTRATORS
--------------------------------------------------------

  CREATE TABLE "ATE_ADMINISTRATORS" 
   (	"ID" NUMBER, 
	"USERID" VARCHAR2(100), 
	"CREATED_ON" DATE
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_ADMINISTRATORS"."ID" IS 'Primary key that identifies the administrator';
 
   COMMENT ON COLUMN "ATE_ADMINISTRATORS"."USERID" IS 'Login user ID of the administrator';
 
   COMMENT ON COLUMN "ATE_ADMINISTRATORS"."CREATED_ON" IS 'Date the administrator was added';
 
   COMMENT ON TABLE "ATE_ADMINISTRATORS"  IS 'List of application administrators';
--------------------------------------------------------
--  DDL for Table ATE_ARTICLES_HIT20
--------------------------------------------------------

  CREATE TABLE "ATE_ARTICLES_HIT20" 
   (	"ARTICLE_ID" NUMBER, 
	"SUBJECT" VARCHAR2(255), 
	"HIT_RATIO" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table ATE_ARTICLES_TOP20
--------------------------------------------------------

  CREATE TABLE "ATE_ARTICLES_TOP20" 
   (	"ARTICLE_ID" NUMBER, 
	"SUBJECT" VARCHAR2(255), 
	"THECOUNT" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table ATE_ARTICLE_LOG$
--------------------------------------------------------

  CREATE TABLE "ATE_ARTICLE_LOG$" 
   (	"ID" NUMBER, 
	"LOG_TYPE" VARCHAR2(255), 
	"ARTICLE_ID" NUMBER, 
	"SEARCH_CRITERIA" VARCHAR2(1000), 
	"EMAIL" VARCHAR2(255), 
	"ACCESS_DATE" DATE, 
	"REMOTE_ADDR" VARCHAR2(255), 
	"HTTP_USER_AGENT" VARCHAR2(255), 
	"HTTP_REFERER" VARCHAR2(255), 
	"HOST_NAME" VARCHAR2(255), 
	"SESSION_ID" NUMBER, 
	"LOCATION" VARCHAR2(2000)
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."ID" IS 'Primary key that identifies the log';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."LOG_TYPE" IS 'Type of log';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."ARTICLE_ID" IS 'Foreign key of the submitted ARTCILEs';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."SEARCH_CRITERIA" IS 'If it was search log, entered criteria user used to search the ARTCILE';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."EMAIL" IS 'Email address of the user';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."ACCESS_DATE" IS 'Date the ARTCILE was accessed';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."REMOTE_ADDR" IS 'IP address of the user';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."HTTP_USER_AGENT" IS 'Type of web browser or user agent that is being used to access the ARTCILE';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."HTTP_REFERER" IS 'URL of the referring page as a string, if there is a referring page';
 
   COMMENT ON COLUMN "ATE_ARTICLE_LOG$"."HOST_NAME" IS 'Name of the host the ARTCILE was accessed from';
 
   COMMENT ON TABLE "ATE_ARTICLE_LOG$"  IS 'ARTCILE search and access logs';
--------------------------------------------------------
--  DDL for Table ATE_BAD_EMAILS
--------------------------------------------------------

  CREATE TABLE "ATE_BAD_EMAILS" 
   (	"EMAIL" VARCHAR2(255)
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_BAD_EMAILS"."EMAIL" IS 'Bad email address';
 
   COMMENT ON TABLE "ATE_BAD_EMAILS"  IS 'List of bad emails submitted with questions';
--------------------------------------------------------
--  DDL for Table ATE_DUAL100
--------------------------------------------------------

  CREATE TABLE "ATE_DUAL100" 
   (	"I" NUMBER
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_DUAL100"."I" IS 'Numbers 1 through 100';
 
   COMMENT ON TABLE "ATE_DUAL100"  IS 'Populated with numbers 1 through 100';
--------------------------------------------------------
--  DDL for Table ATE_FILES
--------------------------------------------------------

  CREATE TABLE "ATE_FILES" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(90), 
	"FILENAME" VARCHAR2(400), 
	"MIME_TYPE" VARCHAR2(48), 
	"DOC_SIZE" NUMBER, 
	"DAD_CHARSET" VARCHAR2(128), 
	"CREATED_ON" DATE, 
	"UPDATED_ON" DATE, 
	"CONTENT_TYPE" VARCHAR2(128), 
	"BLOB_CONTENT" BLOB, 
	"DESCRIPTION" VARCHAR2(4000), 
	"CATEGORY" VARCHAR2(400), 
	"PUBLISH" VARCHAR2(1), 
	"EXTERNAL_LINK" VARCHAR2(2000)
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON COLUMN "ATE_FILES"."ID" IS 'Primary key that identifies the file';
 
   COMMENT ON COLUMN "ATE_FILES"."NAME" IS 'Name of the file stored in a database BLOB';
 
   COMMENT ON COLUMN "ATE_FILES"."FILENAME" IS 'Name of the file stored in a database BLOB';
 
   COMMENT ON COLUMN "ATE_FILES"."MIME_TYPE" IS 'Mime type of the file used when fetching the file over the web';
 
   COMMENT ON COLUMN "ATE_FILES"."DOC_SIZE" IS 'Size of the file';
 
   COMMENT ON COLUMN "ATE_FILES"."DAD_CHARSET" IS 'PL/SQL DAD character set';
 
   COMMENT ON COLUMN "ATE_FILES"."CREATED_ON" IS 'Identifies the date the file was loaded into the database BLOB';
 
   COMMENT ON COLUMN "ATE_FILES"."UPDATED_ON" IS 'Identifies the date the file was updated';
 
   COMMENT ON COLUMN "ATE_FILES"."CONTENT_TYPE" IS 'Content type of the file';
 
   COMMENT ON COLUMN "ATE_FILES"."BLOB_CONTENT" IS 'The file';
 
   COMMENT ON COLUMN "ATE_FILES"."DESCRIPTION" IS 'Description of the file';
 
   COMMENT ON TABLE "ATE_FILES"  IS 'Available files associated with the application';
--------------------------------------------------------
--  DDL for Table BLOG_ARTICLE_RATE
--------------------------------------------------------

  CREATE TABLE "BLOG_ARTICLE_RATE" 
   (	"ARTICLE_ID" NUMBER, 
	"RATE" NUMBER, 
	"CLICKS" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BLOG_CATEGORIES
--------------------------------------------------------

  CREATE TABLE "BLOG_CATEGORIES" 
   (	"ID" NUMBER, 
	"CATEGORY_NAME" VARCHAR2(30), 
	"CATEGORY_PARENT_ID" NUMBER, 
	"ACTIVE" VARCHAR2(1), 
	"PAGE_ID" NUMBER, 
	"HTTP_LINK" VARCHAR2(100), 
	"SORT_ORDER" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BLOG_DATES
--------------------------------------------------------

  CREATE TABLE "BLOG_DATES" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(20), 
	"PARENT_ID" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BLOG_MESSAGES
--------------------------------------------------------

  CREATE TABLE "BLOG_MESSAGES" 
   (	"ID" NUMBER, 
	"MSG_ID" NUMBER, 
	"MSG_TYPE" VARCHAR2(30), 
	"MSG_SUBJECT" VARCHAR2(3000), 
	"MSG_TEXT" CLOB, 
	"CATEGORY_ID" NUMBER, 
	"EXPIRE_DATE" DATE, 
	"VIEWED" NUMBER, 
	"RSS_DESCRIPTION" VARCHAR2(200), 
	"FOLLOWUP_NOTIFY" VARCHAR2(1), 
	"SESSION_ID" NUMBER, 
	"CREATED_ON" DATE, 
	"MODIFIED_ON" DATE, 
	"CREATED_BY_ID" NUMBER, 
	"MODIFIED_BY_ID" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BLOG_MESSAGES_PREVIEW
--------------------------------------------------------

  CREATE TABLE "BLOG_MESSAGES_PREVIEW" 
   (	"ID" NUMBER, 
	"MSG_ID" NUMBER, 
	"MSG_TYPE" VARCHAR2(30), 
	"MSG_SUBJECT" VARCHAR2(3000), 
	"MSG_TEXT" CLOB, 
	"CATEGORY_ID" NUMBER, 
	"EXPIRE_DATE" DATE, 
	"VIEWED" NUMBER, 
	"RSS_DESCRIPTION" VARCHAR2(200), 
	"FOLLOWUP_NOTIFY" VARCHAR2(1), 
	"SESSION_ID" NUMBER, 
	"CREATED_ON" DATE, 
	"MODIFIED_ON" DATE, 
	"CREATED_BY_ID" NUMBER, 
	"MODIFIED_BY_ID" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table BLOG_REG_USERS
--------------------------------------------------------

  CREATE TABLE "BLOG_REG_USERS" 
   (	"HTTP_USER_AGENT" VARCHAR2(255), 
	"HTTP_REFERER" VARCHAR2(255), 
	"HOST_NAME" VARCHAR2(1), 
	"RESERVED" VARCHAR2(1), 
	"REMOTE_ADDR" VARCHAR2(30), 
	"ID" NUMBER, 
	"EMAIL" VARCHAR2(255), 
	"FNAME" VARCHAR2(30), 
	"LNAME" VARCHAR2(30), 
	"LOCATION" VARCHAR2(30), 
	"TITLE" VARCHAR2(30), 
	"ORG" VARCHAR2(30), 
	"YEARS_EXP" VARCHAR2(10), 
	"CREATED_ON" DATE, 
	"CREATED_BY" VARCHAR2(30), 
	"MODIFIED_ON" DATE, 
	"MODIFIED_BY" VARCHAR2(30), 
	"PASSWORD" VARCHAR2(2000), 
	"NICK" VARCHAR2(4000)
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table ERROR_LOG
--------------------------------------------------------

  CREATE TABLE "ERROR_LOG" 
   (	"ID" NUMBER, 
	"SESSION_ID" NUMBER, 
	"APPLICATION_ID" NUMBER, 
	"PAGE_ID" NUMBER, 
	"APP_USER" VARCHAR2(255), 
	"ERR_MESSAGE" VARCHAR2(4000), 
	"DEFINED_MESSAGE" VARCHAR2(4000), 
	"ERR_DATE" DATE, 
	"LOG_SEQ_ID" NUMBER
   ) ENABLE ROW MOVEMENT ;
--------------------------------------------------------
--  DDL for Table MLOG$_BLOG_MESSAGES
--------------------------------------------------------

  CREATE TABLE "MLOG$_BLOG_MESSAGES" 
   (	"ID" NUMBER, 
	"SNAPTIME$$" DATE, 
	"DMLTYPE$$" VARCHAR2(1), 
	"OLD_NEW$$" VARCHAR2(1), 
	"CHANGE_VECTOR$$" RAW(255)
   ) ENABLE ROW MOVEMENT ;
 

   COMMENT ON TABLE "MLOG$_BLOG_MESSAGES"  IS 'snapshot log for master table BLOG.BLOG_MESSAGES';
--------------------------------------------------------
--  DDL for Table RUPD$_BLOG_MESSAGES
--------------------------------------------------------

  CREATE GLOBAL TEMPORARY TABLE "RUPD$_BLOG_MESSAGES" 
   (	"ID" NUMBER, 
	"DMLTYPE$$" VARCHAR2(1), 
	"SNAPID" NUMBER(*,0), 
	"CHANGE_VECTOR$$" RAW(255)
   ) ON COMMIT PRESERVE ROWS ;
 

   COMMENT ON TABLE "RUPD$_BLOG_MESSAGES"  IS 'temporary updatable snapshot log';
--------------------------------------------------------
--  DDL for Index ASK_FILES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ASK_FILES_PK" ON "ATE_FILES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index ATE_ACTIVITY_LOG_INDEX1
--------------------------------------------------------

  CREATE INDEX "ATE_ACTIVITY_LOG_INDEX1" ON "ATE_ACTIVITY_LOG" ("SESSION_ID") 
  ;
--------------------------------------------------------
--  DDL for Index ATE_ARTCILE_LOG_IDX
--------------------------------------------------------

  CREATE INDEX "ATE_ARTCILE_LOG_IDX" ON "ATE_ARTICLE_LOG$" ("LOG_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index ATE_ARTICLES_TOP20_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATE_ARTICLES_TOP20_PK" ON "ATE_ARTICLES_TOP20" ("ARTICLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_ARTICLE_RATE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_ARTICLE_RATE_PK" ON "BLOG_ARTICLE_RATE" ("ARTICLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_CATEGORIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_CATEGORIES_PK" ON "BLOG_CATEGORIES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_DATES_INDEX1
--------------------------------------------------------

  CREATE INDEX "BLOG_DATES_INDEX1" ON "BLOG_DATES" ("PARENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_DATES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_DATES_PK" ON "BLOG_DATES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_MESSAGES_INDEX1
--------------------------------------------------------

  CREATE INDEX "BLOG_MESSAGES_INDEX1" ON "BLOG_MESSAGES" ("CATEGORY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_MESSAGES_INDEX2
--------------------------------------------------------

  CREATE INDEX "BLOG_MESSAGES_INDEX2" ON "BLOG_MESSAGES" ("MSG_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_MESSAGES_INDEX3
--------------------------------------------------------

  CREATE INDEX "BLOG_MESSAGES_INDEX3" ON "BLOG_MESSAGES" ("CREATED_BY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_MESSAGES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_MESSAGES_PK" ON "BLOG_MESSAGES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_REG_USERS_INDEX1
--------------------------------------------------------

  CREATE INDEX "BLOG_REG_USERS_INDEX1" ON "BLOG_REG_USERS" ("NICK") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_REG_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_REG_USERS_PK" ON "BLOG_REG_USERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index BLOG_REG_USERS_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "BLOG_REG_USERS_UK1" ON "BLOG_REG_USERS" ("EMAIL") 
  ;
--------------------------------------------------------
--  DDL for Index ERROR_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ERROR_LOG_PK" ON "ERROR_LOG" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ATE_ACTIVITY_LOG_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATE_ACTIVITY_LOG_TRG" 
before insert or update on "ATE_ACTIVITY_LOG"    for each row 
begin     
:new.country := upper(:new.country);

end;
/
ALTER TRIGGER "ATE_ACTIVITY_LOG_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ATE_BIU_ADMINISTRATORS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATE_BIU_ADMINISTRATORS" 
before insert or update on
ate_administrators for each row
begin
    if inserting then
        :new.created_on := sysdate;
        if :new.id is null then
            :new.id := ate_id.next_val;
        end if;
    end if;
    :new.userid := upper(:new.userid);    
end;
/
ALTER TRIGGER "ATE_BIU_ADMINISTRATORS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ATE_BIU_ATE_FILES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ATE_BIU_ATE_FILES" 
    before insert or update on ate_files
    for each row
begin
    if inserting then        
        :new.created_on := sysdate;    
        :new.category := :new.filename;
    elsif updating then       
        :new.updated_on := sysdate;        
    end if;
    --
    if :new.id is null then
        :new.id := ate_id.next_val;
    end if;    
end;
/
ALTER TRIGGER "ATE_BIU_ATE_FILES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ATE_BI_ARTICLE_LOG
--------------------------------------------------------
-- Unable to Render DDL with DBMS_METADATA using internal generator.
CREATE
TRIGGER BLOG.ATE_BI_ARTICLE_LOG
BEFORE INSERT ON ATE_ARTICLE_LOG$
FOR EACH ROW 
BEGIN IF :new.id IS NULL THEN :new.id := ate_id.next_val;
END IF;
:new.access_date := sysdate;
END;

/

--------------------------------------------------------
--  DDL for Trigger BAD_EMAIL_CHECK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BAD_EMAIL_CHECK" 
before insert on
blog_messages
for each row
begin
for x in ( select * from ate_bad_emails where upper(email) in
(select email from blog_reg_users
where id = upper(:new.created_by_id) ))
loop
   raise_application_error( -20001,
           'Invalid EMAIL, you have used this one and it bounced back to me.  You cannot use "' ||
            x.email ||
            '" anymore on this site' );
end loop;
end;
/
ALTER TRIGGER "BAD_EMAIL_CHECK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BLOG_CATEGORIES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BLOG_CATEGORIES_TRG" 
  before insert or update on "BLOG_CATEGORIES"              
  for each row 
begin  
    if inserting then
      if :new.id is null then
        :new.id := blog_id.next_val;
      end if;
      -- :new.created_on := sysdate;      
     end if;
     -- :new.modified_on := sysdate;  
end;
/
ALTER TRIGGER "BLOG_CATEGORIES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BLOG_MESSAGES_PREVIEW_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BLOG_MESSAGES_PREVIEW_TRG" 
  before insert or update on BLOG_MESSAGES_PREVIEW             
  for each row 
begin  
    if inserting then
      :new.created_on := sysdate;      
     end if;
     :new.modified_on := sysdate;  
end;
/
ALTER TRIGGER "BLOG_MESSAGES_PREVIEW_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BLOG_MESSAGES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BLOG_MESSAGES_TRG" 
  before insert or update on "BLOG_MESSAGES"              
  for each row 
begin  
    if inserting then
      if :new.id is null then
        :new.id := blog_id.next_val;
      end if;
      :new.created_on := sysdate;      
     end if;
     :new.modified_on := sysdate;  
end;
/
ALTER TRIGGER "BLOG_MESSAGES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BLOG_REG_USERS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BLOG_REG_USERS_TRG" 
  before insert or update on "BLOG_REG_USERS"              
  for each row 
begin  
      if inserting then
      if :new.id is null then
        :new.id := blog_id.next_val;
      end if;
      :new.created_on := sysdate;      
     end if;
    :new.modified_on := sysdate;  
end;
/
ALTER TRIGGER "BLOG_REG_USERS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ERROR_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ERROR_LOG" before
  insert on "ERROR_LOG" for each row begin if inserting then
  if :new.id is null then
  SELECT blog_id.next_val
  INTO :NEW.ID
  from dual;
  end if;
  if :new.log_seq_id is null then
    SELECT BLOG_SEQ.NEXTVAL INTO :NEW.LOG_SEQ_ID FROM DUAL;
  END IF;
  :NEW."SESSION_ID"     := v('SESSION');
  :NEW."APPLICATION_ID" := v('APP_ID');
  :NEW."PAGE_ID"        := v('APP_PAGE_ID');
  :NEW."APP_USER"       := v('APP_USER');
  :NEW."ERR_DATE"       := sysdate;
END IF;
end;
/
ALTER TRIGGER "ERROR_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Materialized View ATE_STATS_SUMMARY
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "ATE_STATS_SUMMARY"
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH COMPLETE ON DEMAND START WITH sysdate+0 NEXT (sysdate+1/24)
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  DISABLE QUERY REWRITE
  AS SELECT 'New Articles' what,
    MIN(COUNT(      *)) min_cnt,
    MAX(COUNT(      *)) max_cnt,
    ROUND(AVG(COUNT(*)),0) avg_cnt,
    sum(count(      *)) sum_cnt
  from blog_messages
  where msg_type = 'STANDARD' and created_on >= sysdate-28
  GROUP BY TRUNC(created_on)
  union all
  SELECT 'Comments' what,
    MIN(COUNT(      *)),
    MAX(COUNT(      *)),
    ROUND(AVG(COUNT(*)),0),
    sum(count(      *))
  from blog_messages
  WHERE msg_type = 'COMMENT' and created_on >= sysdate-28
  GROUP BY TRUNC(created_on)
  union all
  SELECT 'Files' what,
    MIN(COUNT(      *)),
    MAX(COUNT(      *)),
    ROUND(AVG(COUNT(*)),0),
    sum(count(      *))
  from ate_files
  where created_on       >= sysdate-28
  GROUP BY TRUNC(created_on);
--------------------------------------------------------
--  DDL for Materialized View BLOG_MSG
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "BLOG_MSG"
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("MSG_TEXT") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH COMPLETE ON COMMIT
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  DISABLE QUERY REWRITE
  AS SELECT a."ID",
    a."MSG_ID",
    a."MSG_TYPE",
    a."MSG_SUBJECT",
    a."MSG_TEXT",
    a."CATEGORY_ID",
    a."EXPIRE_DATE",
    a."VIEWED",
    a."RSS_DESCRIPTION",
    a."FOLLOWUP_NOTIFY",
    a."SESSION_ID",
    a."CREATED_ON",
    a."MODIFIED_ON",
    a."CREATED_BY_ID",
    a."MODIFIED_BY_ID" ,
    b.nick
  FROM blog_messages a,
    blog_reg_users b
  WHERE a.created_by_id = b.id
;
--------------------------------------------------------
--  DDL for View ATE_ARTICLE_ACCESS_LOG
--------------------------------------------------------

  CREATE OR REPLACE VIEW "ATE_ARTICLE_ACCESS_LOG" ("ID", "ARTICLE_ID", "EMAIL", "REMOTE_ADDR", "HTTP_USER_AGENT", "HTTP_REFERER", "HOST_NAME", "ACCESS_DATE", "SESSION_ID", "LOCATION") AS 
  SELECT id,
    ARTICLE_id,
    email,
    remote_addr,
    http_user_agent,
    http_referer,
    host_name,
    access_date,
    session_id,
    location
  FROM ate_article_log$
  WHERE log_type = 'ACCESS';
--------------------------------------------------------
--  DDL for View ATE_ARTICLE_SEARCH_LOG
--------------------------------------------------------

  CREATE OR REPLACE VIEW "ATE_ARTICLE_SEARCH_LOG" ("ID", "SEARCH_CRITERIA", "EMAIL", "ACCESS_DATE", "REMOTE_ADDR", "HTTP_USER_AGENT", "HTTP_REFERER", "HOST_NAME", "SESSION_ID") AS 
  SELECT id,
    search_criteria,
    email,
    access_date,
    remote_addr,
    http_user_agent,
    http_referer,
    host_name,
    session_id
  FROM ate_ARTICLE_log$
  WHERE log_type = 'SEARCH';
--------------------------------------------------------
--  DDL for View ATE_CATEGORY_ACCESS_LOG
--------------------------------------------------------

  CREATE OR REPLACE VIEW "ATE_CATEGORY_ACCESS_LOG" ("ID", "CATEGORY_ID", "EMAIL", "ACCESS_DATE", "SESSION_ID") AS 
  SELECT id,
    ARTICLE_id category_id,
    email,
    access_date,
    session_id
  FROM ate_article_log$
  WHERE log_type = 'CATEGORY';
--------------------------------------------------------
--  DDL for View BLOG_USER_MESSAGES
--------------------------------------------------------

  CREATE OR REPLACE VIEW "BLOG_USER_MESSAGES" ("ID", "MSG_ID", "MSG_TYPE", "MSG_SUBJECT", "MSG_TEXT", "CATEGORY_ID", "EXPIRE_DATE", "VIEWED", "RSS_DESCRIPTION", "FOLLOWUP_NOTIFY", "SESSION_ID", "CREATED_ON", "MODIFIED_ON", "CREATED_BY_ID", "MODIFIED_BY_ID", "NICK") AS 
  select a."ID",a."MSG_ID",a."MSG_TYPE",a."MSG_SUBJECT",a."MSG_TEXT",a."CATEGORY_ID",a."EXPIRE_DATE",a."VIEWED",a."RSS_DESCRIPTION",a."FOLLOWUP_NOTIFY",a."SESSION_ID",a."CREATED_ON",a."MODIFIED_ON",a."CREATED_BY_ID",a."MODIFIED_BY_ID" , b.nick
from blog_messages a,
     blog_reg_users b
where a.created_by_id = b.id;
--------------------------------------------------------
--  DDL for View VW_BLOG_CALENDAR
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_BLOG_CALENDAR" ("ID", "NAME", "NAME_1", "MSG_SUBJECT", "PARENT_ID", "CREATED_ON") AS 
  SELECT id,
    name,
    name_1,
    msg_subject,
   parent_id,
   created_on
  FROM
(  SELECT b.id,
    d.name name,
    d1.name name_1,
    msg_subject,
    d.id parent_id,
    b.created_on
  FROM blog_messages b,
    blog_dates d,
    blog_dates d1
  WHERE msg_type                                      = 'STANDARD'
  AND to_number(TO_CHAR(TRUNC(created_on,'MM'),'MM')) = d.name
  AND TO_CHAR(TRUNC(created_on,'YYYY'),'YYYY')        = d1.name
  AND d1.id                                           = d.parent_id
  UNION
  SELECT d.id,
    d.name,
    TO_CHAR(TRUNC(created_on,'YYYY'),'YYYY') name_1,
    NULL msg_subject,
    NULL parent_id,
    NULL created_on
  FROM blog_messages b,
    blog_dates d
  WHERE msg_type                                = 'STANDARD'
  AND (TO_CHAR(TRUNC(created_on,'YYYY'),'YYYY') = d.name )
  UNION
  SELECT d.id,
    d.name,
    TO_CHAR(TRUNC(created_on,'YYYY'),'YYYY') name_1,
    NULL msg_subject,
    d1.id parent_id,
    NULL created_on
  FROM blog_messages b,
    blog_dates d,
    blog_dates d1
  WHERE msg_type                                      = 'STANDARD'
  AND to_number(TO_CHAR(TRUNC(created_on,'MM'),'MM')) = d.name
  and to_char(trunc(created_on,'YYYY'),'YYYY')        = d1.name
  and d1.id                                           = d.parent_id
  ) order by created_on desc;
--------------------------------------------------------
--  DDL for View VW_LASTDAY_DISTINCT_VISITORS
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_LASTDAY_DISTINCT_VISITORS" ("VISIT_TIME", "IP_ADDRESS", "LAT", "LONGT", "CITY", "REGION", "COUNTRY", "COUNTRY_CODE") AS 
  SELECT to_char(min(TIME_STAMP),'DD-MON-YYYY HH24:MI:SS') visit_time,
IP_ADDRESS,
  LAT,
  LONGT,
  CITY,
  REGION,
  COUNTRY,
  COUNTRY_CODE
FROM ATE_ACTIVITY_LOG 
where trunc(TIME_STAMP)   >= trunc(sysdate)- 1
group by IP_ADDRESS,
  LAT,
  LONGT,
  CITY,
  REGION,
  COUNTRY,
  COUNTRY_CODE
order by min(TIME_STAMP) desc;
--------------------------------------------------------
--  DDL for Function BLOG_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BLOG_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from blog_reg_users where upper(email) = upper(p_username);
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, sysdate + 1 into l_stored_password, l_expires_on
   from blog_reg_users where upper(email) = upper(p_username);

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := blog_custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  return false;
end if;
end;

/

--------------------------------------------------------
--  DDL for Function BLOG_CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BLOG_CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := 'EVQELZY27PVLWPHMRN8B0CRRMAXBR8';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;

/

--------------------------------------------------------
--  DDL for Function CHECK_EMAIL
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CHECK_EMAIL" (l_email IN VARCHAR2)
  RETURN boolean IS
  l_dot_pos    NUMBER;
  l_at_pos     NUMBER;
  l_str_length NUMBER;
BEGIN
  IF l_email is NULL THEN
     return false;
  END IF;
  l_dot_pos    := instr(l_email
                       ,'.');
  l_at_pos     := instr(l_email
                       ,'@');
  l_str_length := length(l_email);
  IF ((l_dot_pos = 0) OR (l_at_pos = 0) OR (l_dot_pos = l_at_pos + 1) OR
     (l_at_pos = 1) OR (l_at_pos = l_str_length) OR
     (l_dot_pos = l_str_length))
  THEN
    RETURN false;
  END IF;
  IF instr(substr(l_email
                 ,l_at_pos)
          ,'.') = 0
  THEN
    RETURN false;
  END IF;
  
  return true;
END check_email;

/

--------------------------------------------------------
--  DDL for Function GET_CLIENT_IP
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "GET_CLIENT_IP" 
    RETURN VARCHAR2
  IS
  BEGIN
    RETURN owa_util.get_cgi_env('HTTP_X_ORACLE_CACHE_USER');
  END;

/

--------------------------------------------------------
--  DDL for Package ATE_API
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ATE_API" 
AS
  g_id                 NUMBER                := NULL;
  g_updating_status_ts BOOLEAN               := FALSE;
  g_max_message_length NUMBER                := 20000;
  g_real_update        BOOLEAN               := TRUE;
  g_ask_cookiename     CONSTANT VARCHAR2(30) := 'dbswh_blog';
  g_ask_cookie_vals apex_application_global.vc_arr2;

FUNCTION get_blog_url RETURN VARCHAR2;
     
FUNCTION is_administrator(
    p_userid IN VARCHAR2 )
  RETURN BOOLEAN;
FUNCTION format_message(
    p_string IN VARCHAR2,
    p_len    IN NUMBER DEFAULT 80)
  RETURN VARCHAR2;
FUNCTION format_message_into_clob(
    p_string IN CLOB,
    p_len    IN NUMBER DEFAULT 80)
  RETURN CLOB;
PROCEDURE format_message(
    p_string IN VARCHAR2,
    p_len    IN NUMBER DEFAULT 80);
FUNCTION validate_message(
    p_string IN VARCHAR2)
  RETURN BOOLEAN;
  --
FUNCTION age(
    p_date IN DATE)
  RETURN VARCHAR2;
FUNCTION parse_search_string(
    p_search_str IN VARCHAR2 )
  RETURN VARCHAR2;
FUNCTION fetch_activity_cookie_val(
    p_val_name IN VARCHAR2 )
  RETURN VARCHAR2;
FUNCTION fetch_otncookie_val(
    p_val_name IN VARCHAR2 )
  RETURN VARCHAR2;
FUNCTION fetch_askcookie_val(
    p_val_name IN VARCHAR2 )
  RETURN VARCHAR2;
PROCEDURE write_askcookie(
    p_email     IN VARCHAR2 DEFAULT NULL,
    p_fname     IN VARCHAR2 DEFAULT NULL,
    p_lname     IN VARCHAR2 DEFAULT NULL,
    p_location  IN VARCHAR2 DEFAULT NULL,
    p_nickname  IN VARCHAR2 DEFAULT NULL,
    p_job_title IN VARCHAR2 DEFAULT NULL,
    p_org       IN VARCHAR2 DEFAULT NULL,
    p_years     IN VARCHAR2 DEFAULT NULL );
PROCEDURE read_otncookie;
PROCEDURE read_askcookie;
PROCEDURE refresh_top_articles;
PROCEDURE write_access_log(
    p_article_id IN VARCHAR2,
    p_email      IN VARCHAR2 );
PROCEDURE write_search_log(
    p_criteria IN VARCHAR2,
    p_email    IN VARCHAR2 );
PROCEDURE update_administrators(
    p_administrator_list IN VARCHAR2 );
PROCEDURE notify(
    p_article_id IN NUMBER,
    p_user_id    in number,
    p_from       in varchar2,
    p_app_id     in NUMBER);
PROCEDURE save_comment_followup(
    p_article_id NUMBER,
    p_comment    VARCHAR2);
PROCEDURE read_activity_cookie;
PROCEDURE write_activity_cookie(
    p_cookie_id IN VARCHAR2 DEFAULT NULL );
PROCEDURE write_activity_log(
    p_cookie_id  IN VARCHAR2,
    p_page_id    IN VARCHAR2,
    p_session_id IN VARCHAR2 );
PROCEDURE add_bad_email(
    p_email IN VARCHAR2 );
PROCEDURE remove_bad_email(
    p_email IN VARCHAR2 );
PROCEDURE update_article(
    p_article_id      IN NUMBER,
    p_subject         IN VARCHAR2 DEFAULT NULL,
    p_rss_description IN VARCHAR2 DEFAULT NULL,
    p_article         IN VARCHAR2 DEFAULT NULL,
    p_cat_id          IN NUMBER,
    p_user_id         IN NUMBER);
PROCEDURE save_article(
    p_subject         IN VARCHAR2 DEFAULT NULL,
    p_rss_description IN VARCHAR2 DEFAULT NULL,
    p_article         IN VARCHAR2 DEFAULT NULL,
    p_from_submitter  IN NUMBER DEFAULT NULL,
    p_cat_id          IN NUMBER);
PROCEDURE update_article_preview(
    p_article_id      IN NUMBER,
    p_subject         IN VARCHAR2 DEFAULT NULL,
    p_rss_description IN VARCHAR2 DEFAULT NULL,
    p_article         IN VARCHAR2 DEFAULT NULL,
    p_cat_id          IN NUMBER,
    p_user_id         IN NUMBER);
PROCEDURE save_article_preview(
    p_id OUT VARCHAR2,
    p_subject         IN VARCHAR2 DEFAULT NULL,
    p_rss_description IN VARCHAR2 DEFAULT NULL,
    p_article         IN VARCHAR2 DEFAULT NULL,
    p_from_submitter  IN NUMBER DEFAULT NULL,
    p_cat_id          IN NUMBER);
FUNCTION format_error(
    l_error VARCHAR2,
    l_value NUMBER)
  RETURN VARCHAR2;
FUNCTION validate_fk(
    p_table    VARCHAR2,
    p_pk_value NUMBER)
  RETURN VARCHAR2;
FUNCTION "VALIDATE_UK"(
    p_table    VARCHAR2,
    p_pk_value NUMBER)
  RETURN VARCHAR2;
FUNCTION format_message(
    p_string IN CLOB,
    p_len    IN NUMBER DEFAULT 80 )
  RETURN VARCHAR2;
FUNCTION format_comment(
    p_string IN VARCHAR2,
    p_len    IN NUMBER DEFAULT 80 )
  RETURN VARCHAR2;
FUNCTION format_article(
    p_string IN VARCHAR2,
    p_len    IN NUMBER DEFAULT 80 )
  RETURN VARCHAR2;
FUNCTION format_followup(
    p_string IN VARCHAR2,
    p_len    IN NUMBER DEFAULT 80 )
  RETURN VARCHAR2;
PROCEDURE write_cat_access_log(
    p_cat_id IN VARCHAR2,
    p_email  IN VARCHAR2 );
END ATE_API;

/

--------------------------------------------------------
--  DDL for Package ATE_ID
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ATE_ID" 
as
   function curr_val return number;
   pragma restrict_references( curr_val, wnds, rnds, wnps );
   --
   function next_val return number;
end ate_id;

/

--------------------------------------------------------
--  DDL for Package ATE_RANDOM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ATE_RANDOM" is
  function rand return number;
  pragma restrict_references( rand, WNDS  );
  
end ate_random;

/

--------------------------------------------------------
--  DDL for Package BLOG_GUI
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "BLOG_GUI" 
AS
  procedure print_article(p_number number, p_search varchar2 default null, p_date_month date default null, 
          p_cat_id varchar2 default null,p_article_id varchar2 default null, p_print_comment boolean default true, 
          p_page number default null, p_search_opt varchar2 default null);
  procedure print_article_preview(p_number number, p_search varchar2 default null, p_date_month date default null, 
          p_cat_id varchar2 default null,p_article_id varchar2 default null, p_print_comment boolean default true, 
          p_page number default null);
PROCEDURE print_categories(
    P_NUMBER NUMBER);
PROCEDURE print_welcome;
PROCEDURE print_last_articles(
    p_number NUMBER);
 procedure print_pagination(p_page_count number default 0, p_current_page number default null);
PROCEDURE print_super ;
PROCEDURE print_resource ;
PROCEDURE print_favorite ;
PROCEDURE print_popular_articles(
    p_number NUMBER);
PROCEDURE print_archives;
procedure print_clob( p_clob in clob );
 procedure print_most_hit_articles(p_number number);
END BLOG_GUI;

/

--------------------------------------------------------
--  DDL for Package BLOG_ID
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "BLOG_ID" 
as
   function curr_val return number;
   pragma restrict_references( curr_val, wnds, rnds, wnps );
   --
   function next_val return number;
end blog_id;

/

--------------------------------------------------------
--  DDL for Package Body ATE_API
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ATE_API" 
as
    g_NEWNEVERREAD          constant number := 0;
    g_READNOTANSWERED       constant number := 1;
    g_READAWAITINGINFO      constant number := 2;
    g_READMOREINFOSUPPLIED  constant number := 3;
    g_ANSWEREDDONOTPUBLISH  constant number := 4;
    g_ANSWEREDPUBLISH       constant number := 5;
    g_DEFERREDANSWERLATER   constant number := 6;
    g_ask_cookie                owa_cookie.cookie;
    g_ask_cookieversion         constant varchar2(10) := '1';
    g_ask_cookie_expires        constant date := to_date('01012020','MMDDYYYY');
    g_otn_cookie                owa_cookie.cookie;
    g_otn_cookie_vals           apex_application_global.vc_arr2;
    
    g_act_cookiename            constant varchar2(30) := 'activity_dbswh_blog';
    g_act_cookieversion         constant varchar2(10) := '1';
    g_act_cookie                owa_cookie.cookie;
    g_act_cookie_expires        constant date := to_date('01012020','MMDDYYYY');
    g_act_cookie_vals           apex_application_global.vc_arr2;
      
    --
    --
    --
  FUNCTION get_blog_url
  RETURN VARCHAR2
  AS
  BEGIN
    RETURN OWA_UTIL.get_cgi_env ('REQUEST_PROTOCOL') || '://'
        || OWA_UTIL.get_cgi_env ('HTTP_HOST')
        || OWA_UTIL.get_cgi_env ('SCRIPT_NAME') 
  ;  
  END;
 
    function is_administrator( p_userid in varchar2 ) return boolean
    is
        l_result boolean := FALSE;
    begin
        for c1 in (select null from ate_administrators a
                    where a.userid = upper(p_userid) )
        loop   
            l_result := TRUE;
            exit;
        end loop;
        --
        return l_result;
    end is_administrator;
    --
    --
    --
    function list_to_tbl( p_list in apex_application_global.vc_arr2 )
        return ate_tabletype
    is
        l_returntbl ate_tabletype := ate_tabletype();
    begin
        l_returntbl.extend(p_list.count);
        for i in 1..p_list.count loop
            l_returntbl( i ) := p_list(i);
        end loop;
        --
        return l_returntbl;
    end list_to_tbl;
    --
    --
    --
    function fetch_activity_cookie_val( p_val_name in varchar2 ) return varchar2
    is
        l_return_value varchar2(1000);
        l_val_name     varchar2(100) := upper(p_val_name);
    begin
        --
        -- Note that the cookie must have been read in the
        -- same database session before this function is called
        --
        if g_act_cookie_vals.count > 0 then
            --
            -- The first element in the table is the cookie version
            --
            if g_act_cookie_vals(1) = '1' then
                if l_val_name = 'COOKIE_ID' then
                    l_return_value := g_act_cookie_vals(2);
                end if;
            end if;
        else
            l_return_value := NULL;
        end if;
        --
        return l_return_value;
    end fetch_activity_cookie_val;
    --
    --
    --
    function fetch_otncookie_val( p_val_name in varchar2 ) return varchar2
    is
        l_return_value varchar2(1000);
        l_val_name     varchar2(100) := upper(p_val_name);
    begin
        if g_otn_cookie_vals.count > 0 then
            if l_val_name = 'VERSION' then
                l_return_value := g_otn_cookie_vals(1);
            elsif l_val_name = 'GUID' then
                l_return_value := g_otn_cookie_vals(2);
            elsif l_val_name = 'FNAME' then
                l_return_value := wwv_flow_utilities.url_decode2(g_otn_cookie_vals(3));
            elsif l_val_name = 'LNAME' then
                l_return_value := wwv_flow_utilities.url_decode2(g_otn_cookie_vals(4));
            elsif l_val_name = 'USERNAME' then
                l_return_value := wwv_flow_utilities.url_decode2(g_otn_cookie_vals(5));
            elsif l_val_name = 'COUNTRY' then
                l_return_value := g_otn_cookie_vals(6);
            elsif l_val_name = 'LANGUAGE' then
                l_return_value := g_otn_cookie_vals(7);
            elsif l_val_name = 'INTEREST1' then
                l_return_value := g_otn_cookie_vals(8);
            elsif l_val_name = 'INTEREST2' then
                l_return_value := g_otn_cookie_vals(9);
            elsif l_val_name = 'INTEREST3' then
                l_return_value := g_otn_cookie_vals(10);
            elsif l_val_name = 'INTEREST4' then
                l_return_value := g_otn_cookie_vals(11);
            elsif l_val_name = 'ASCII' then
                l_return_value := g_otn_cookie_vals(12);
            end if;
        else
            l_return_value := NULL;
        end if;
        --
        return l_return_value;
    end fetch_otncookie_val;
    --
    --
    --
    function fetch_askcookie_val( p_val_name in varchar2 ) return varchar2
    is
        l_return_value varchar2(1000);
        l_val_name     varchar2(100) := upper(p_val_name);
    begin
        --
        -- Note that the cookie must have been read in the
        -- same database session before this function is called
        --
        if g_ask_cookie_vals.count > 0 then
            --
            -- The first element in the table is the cookie version
            --
            if g_ask_cookie_vals(1) = '1' then
                if l_val_name = 'EMAIL' then
                    l_return_value := g_ask_cookie_vals(2);
                elsif l_val_name = 'FNAME' then
                    l_return_value := g_ask_cookie_vals(3);
                elsif l_val_name = 'LNAME' then
                    l_return_value := g_ask_cookie_vals(4);
                elsif l_val_name = 'LOCATION' then
                    l_return_value := g_ask_cookie_vals(5);
                elsif l_val_name = 'NICKNAME' then
                    l_return_value := g_ask_cookie_vals(6);                    
                elsif l_val_name = 'JOB_TITLE' then
                    l_return_value := g_ask_cookie_vals(7);
                elsif l_val_name = 'ORG' then
                    l_return_value := g_ask_cookie_vals(8);
                elsif l_val_name = 'YEARS' then
                    l_return_value := g_ask_cookie_vals(9);
                elsif l_val_name = 'HASH' then   
                    l_return_value := g_ask_cookie_vals(10);                
                end if;
            end if;
        else
            l_return_value := NULL;
        end if;
        --
        return l_return_value;
    exception when others then
    return null;
    end fetch_askcookie_val;
    --
    --
    function force_wrap(p_string in varchar2, p_len in number default 80 ) return varchar2
    as
        l_string varchar2(32767);
        l_result varchar2(32767);
        l_piece  varchar2(32767);
        n        number;
        l_ws     varchar2(25) default ' ' || chr(9);
        l_sep    varchar2(5) default '';
    begin
        l_string := p_string || chr(10);
        -- Escape message
        -- Cut line short if > p_len characters
        -- Truncate message if > 31000 characters
        <<outer_loop>>
        for i in 1 .. 1000 loop
            exit when l_string is NULL;
            n := instr( l_string, chr(10) );
            l_piece := substr( l_string, 1, n-1 );
            l_string := substr( l_string, n+1 );
            for j in 1 .. 1000 loop
                exit when l_piece is NULL;
                n := length(l_piece);
                if ( n > p_len ) then
                    -- locate first ' ' or chr(9)
                    n := instr( substr( translate(l_piece,l_ws,rpad(' ',length(l_ws))), 1, p_len ), ' ', -1 );
                    -- if no whitespace, cut line at p_len characters
                    if ( nvl(n,0) = 0 ) then
                        n := p_len;
                    end if;
                end if;
                l_result := l_result || l_sep || substr( l_piece, 1, n );
                l_sep := chr(10);
                l_piece := substr( l_piece, n+1 );
            end loop;
        end loop outer_loop;
        return l_result;
    end force_wrap;
 
 
    function format_message( p_string in varchar2, p_len in number default 80 ) return varchar2
    as
        l_string      long default replace( p_string || chr(32) || chr(10), chr(9), '    ' );
        l_result      long default NULL;
        l_piece       long;
        l_ws          varchar2(25) default ' ' || chr(9);
        l_sep         varchar2(5) default NULL;
        l_endofUrl    varchar2(255) default chr(10) || chr(13) || chr(9) || ' )<>';
        n             number;
        m             number;
        l_urls        owa.vc_arr;
        l_code        owa.vc_arr;
        type vc_tab   is table of varchar2(30);
        l_tags        vc_tab;
        l_truncated   boolean := false;
    begin
        l_truncated := length(l_string) >= g_max_message_length;
        wwv_flow.debug('starting message length: '||length(l_string));
        -- list of tags to preserve
        l_tags := vc_tab('<b>','</b>',
                         '<i>','</i>',
                         '<u>','</u>',
                         '<ul>','</ul>',
                         '<ol>','</ol>',
                         '<li>','</li>');
 
        -- find and escape everything inside <code> tags
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), '<code>');
            m := instr( lower(l_string), '</code>', n );
            if n > 0 and m = 0 and l_truncated then 
                m := length(l_string);
                l_string := l_string||'</code>';
            end if;    
            exit when n = 0 or m = 0;
            l_code(i) := substr( l_string, n + length('<code>'), (m - n) - length('<code>'));
            l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + length('</code>'));
        end loop;
 
        -- find and replace URLs with real links (and save
        -- in array until everything else is escaped)
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), 'http://' );
            if n = 0 then   n := instr( lower(l_string), 'https://' );  end if;
            if n = 0 then   n := instr( lower(l_string), 'ftp://'   );  end if;
            exit when n = 0;
 
            for j in 0 .. 255 loop
                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then
                    l_urls(i) := rtrim( force_wrap(substr( l_string, n, j ), p_len), '.'||chr(32)||chr(10) );
                    l_urls(i) := '<a href="' || l_urls(i) || '">' || l_urls(i) || '</a>';
                    l_string := substr( l_string, 1, n-1 ) || '@@'||i|| '@@' || substr( l_string, n+j );
                    exit;
                end if;
            end loop;
        end loop;
        
        l_result := replace(replace( htf.escape_sc(l_string), chr(10), '<br />'),'   ','&nbsp; ');
        
        -- add tags back in
        for i in 1 .. l_tags.count loop
            l_result := replace( l_result, htf.escape_sc(lower(l_tags(i))),l_tags(i));
            l_result := replace( l_result, htf.escape_sc(upper(l_tags(i))),l_tags(i));
        end loop;
        
        -- add URLs back into message
        for i in 1 .. l_urls.count loop
            l_result := replace( l_result, '@@'||i||'@@', '<pre>'||l_urls(i)||'</pre>' );
        end loop;
        
        -- add <code> sections back in
        for i in 1 .. l_code.count loop
            if length(ltrim(l_code(i),chr(10)||' ')) > 0 then
                l_result := replace( l_result, '@$'||i||'$@', '<pre>'||substr(htf.escape_sc(force_wrap(l_code(i),p_len)),1,(case when length(l_result) > 31000 then 0 else 31000 - length(l_result) end))||'</pre>');
            else
                l_result := replace( l_result, '@$'||i||'$@','');
            end if;
        end loop;
        
        -- AskTom customizations.
        l_result := replace(replace(
                      replace(l_result,
                    '#B', '<b>' ),'#b', '</b>' ),
                    'http://osi.oracle.com', 'http://asktom.oracle.com' );
        
        wwv_flow.debug('ending message length: '||length(l_result));
        return l_result;
    end format_message;
    --
    --
    
     function format_message( p_string in clob, p_len in number default 80 ) return varchar2
    as
        l_string      long default replace( DBMS_LOB.SUBSTR(p_string,32676,1) || chr(32) || chr(10), chr(9), '    ' );
        l_result      long default NULL;
        l_piece       long;
        l_ws          varchar2(25) default ' ' || chr(9);
        l_sep         varchar2(5) default NULL;
        l_endofUrl    varchar2(255) default chr(10) || chr(13) || chr(9) || ' )<>';
        n             number;
        m             number;
        l_urls        owa.vc_arr;
        l_code        owa.vc_arr;
        type vc_tab   is table of varchar2(30);
        l_tags        vc_tab;
        l_truncated   boolean := false;
    begin
        l_string    := replace(l_string,'<br>',' ');
        l_string    := replace(l_string,'<br/>',' ');
        l_string    := replace(l_string,'<br />',' ');
        l_truncated := dbms_lob.getlength(l_string) >= g_max_message_length;
        wwv_flow.debug('starting message length: '||length(l_string));
        -- list of tags to preserve
        l_tags := vc_tab('<b>','</b>',
                         '<i>','</i>',
                         '<u>','</u>',
                         '<ul>','</ul>',
                         '<ol>','</ol>',
                         '<li>','</li>','<p>','</p>','<h2>','</h2>','&nbsp;','&rarr;');
 
        -- find and escape everything inside <code> tags
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), '<code>');
            m := instr( lower(l_string), '</code>', n );
            if n > 0 and m = 0 and l_truncated then 
                m := length(l_string);
                l_string := l_string||'</code>';
            end if;    
            exit when n = 0 or m = 0;
            l_code(i) := substr( l_string, n + length('<code>'), (m - n) - length('<code>'));
            l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + length('</code>'));
        end loop;
 
        -- find and replace URLs with real links (and save
        -- in array until everything else is escaped)
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), 'http://' );
            if n = 0 then   n := instr( lower(l_string), 'https://' );  end if;
            if n = 0 then   n := instr( lower(l_string), 'ftp://'   );  end if;
            exit when n = 0;
 
            for j in 0 .. 255 loop
                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then
                    l_urls(i) := rtrim( force_wrap(substr( l_string, n, j ), p_len), '.'||chr(32)||chr(10) );
                    l_urls(i) := '<a href="' || l_urls(i) || '">' || l_urls(i) || '</a>';
                    l_string := substr( l_string, 1, n-1 ) || '@@'||i|| '@@' || substr( l_string, n+j );
                    exit;
                end if;
            end loop;
        end loop;
        
        l_result := replace(htf.escape_sc(l_string),'   ','&nbsp; ');
        
        -- add tags back in
        for i in 1 .. l_tags.count loop
            l_result := replace( l_result, htf.escape_sc(lower(l_tags(i))),l_tags(i));
            l_result := replace( l_result, htf.escape_sc(upper(l_tags(i))),l_tags(i));
        end loop;
        
        -- add URLs back into message
        for i in 1 .. l_urls.count loop
            l_result := replace( l_result, '@@'||i||'@@', '<pre>'||l_urls(i)||'</pre>' );
        end loop;
        
        -- add <code> sections back in
        for i in 1 .. l_code.count loop
            if length(ltrim(l_code(i),chr(10)||' ')) > 0 then
                l_result := replace( l_result, '@$'||i||'$@', '<pre>'||substr(htf.escape_sc(force_wrap(l_code(i),p_len)),1,(case when length(l_result) > 31000 then 0 else 31000 - length(l_result) end))||'</pre>');
            else
                l_result := replace( l_result, '@$'||i||'$@','');
            end if;
        end loop;
        
        wwv_flow.debug('ending message length: '||length(l_result));
        return l_result;
    end format_message;   
    
    function format_message_into_clob( p_string in clob, p_len in number default 80 ) return clob
    is
        l_clob clob;
        l_varchar varchar2(32767);
    begin
        htp.p('got here');
        l_varchar := format_message(p_string, p_len);
        htp.p('got here 1');
        dbms_lob.createtemporary(l_clob, false);
        htp.p('got here 2');
        dbms_lob.writeappend(l_clob, length(l_varchar), l_varchar);
        htp.p('got here 3');
        return l_clob;
    end format_message_into_clob;
    
    procedure format_message( p_string in varchar2, p_len in number default 80 )
    as
    begin
        htp.prn( format_message( p_string, p_len ) );
    end format_message;
    --
    --
        function validate_message( p_string in varchar2) return boolean
        as
            l_string            long default lower(replace( p_string || chr(32) || chr(10), chr(9), '    ' ));
            l_open_b_idx        number;
            l_close_b_idx       number;
            l_open_i_idx        number;
            l_close_i_idx       number;
            l_open_u_idx        number;
            l_close_u_idx       number;
            l_open_ol_idx       number;
            l_close_ol_idx      number;
            l_open_ul_idx       number;
            l_close_ul_idx      number;
            l_open_li_idx       number;
            l_close_li_idx      number;
            l_open_old_b_idx    number;
            l_close_old_b_idx   number;
    
            l_index number;
            l_lowest_index number;
            
            l_b_count      number := 0;
            l_i_count      number := 0;
            l_u_count      number := 0;
            l_ol_count     number := 0;
            l_ul_count     number := 0;
            l_li_count     number := 0;
            l_old_b_count  number := 0;
            
            n number;
            m number;
            type vc_tab   is table of varchar2(30);
            l_tags        vc_tab;
    
        begin
     
            -- find and escape everything inside <code> tags
            for i in 1 .. 1000 loop
                n := instr( lower(l_string), '<code>');
                m := instr( lower(l_string), '</code>', n );
                exit when n = 0 and m = 0;
                if n = 0 or m = 0 then 
                    return false;
                end if;
                l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + 7);
            end loop;
      
            l_index := 1;
      
            for i in 1 .. 1000 loop
                l_open_b_idx        :=instr(l_string,'<b>'  ,l_index);
                l_close_b_idx       :=instr(l_string,'</b>' ,l_index);
                l_open_i_idx        :=instr(l_string,'<i>'  ,l_index);
                l_close_i_idx       :=instr(l_string,'</i>' ,l_index);
                l_open_u_idx        :=instr(l_string,'<u>'  ,l_index);
                l_close_u_idx       :=instr(l_string,'</u>' ,l_index);
                l_open_ol_idx       :=instr(l_string,'<ol>' ,l_index);
                l_close_ol_idx      :=instr(l_string,'</ol>',l_index);
                l_open_ul_idx       :=instr(l_string,'<ul>' ,l_index);
                l_close_ul_idx      :=instr(l_string,'</ul>',l_index);
                l_open_li_idx       :=instr(l_string,'<li>' ,l_index);
                l_close_li_idx      :=instr(l_string,'</li>',l_index);
                l_open_old_b_idx    :=instr(l_string,'#B'   ,l_index);
                l_close_old_b_idx   :=instr(l_string,'#b'   ,l_index);
                            
                l_lowest_index := 100000;
                
                if l_open_b_idx      > 0 and l_open_b_idx      < l_lowest_index then l_lowest_index :=  l_open_b_idx     ; end if;
                if l_close_b_idx     > 0 and l_close_b_idx     < l_lowest_index then l_lowest_index :=  l_close_b_idx    ; end if;        
                if l_open_i_idx      > 0 and l_open_i_idx      < l_lowest_index then l_lowest_index :=  l_open_i_idx     ; end if;        
                if l_close_i_idx     > 0 and l_close_i_idx     < l_lowest_index then l_lowest_index :=  l_close_i_idx    ; end if;
                if l_open_u_idx      > 0 and l_open_u_idx      < l_lowest_index then l_lowest_index :=  l_open_u_idx     ; end if;
                if l_close_u_idx     > 0 and l_close_u_idx     < l_lowest_index then l_lowest_index :=  l_close_u_idx    ; end if;
                if l_open_ol_idx     > 0 and l_open_ol_idx     < l_lowest_index then l_lowest_index :=  l_open_ol_idx    ; end if;
                if l_close_ol_idx    > 0 and l_close_ol_idx    < l_lowest_index then l_lowest_index :=  l_close_ol_idx   ; end if;
                if l_open_ul_idx     > 0 and l_open_ul_idx     < l_lowest_index then l_lowest_index :=  l_open_ul_idx    ; end if;
                if l_close_ul_idx    > 0 and l_close_ul_idx    < l_lowest_index then l_lowest_index :=  l_close_ul_idx   ; end if;
                if l_open_li_idx     > 0 and l_open_li_idx     < l_lowest_index then l_lowest_index :=  l_open_li_idx    ; end if;
                if l_close_li_idx    > 0 and l_close_li_idx    < l_lowest_index then l_lowest_index :=  l_close_li_idx   ; end if;
                if l_open_old_b_idx  > 0 and l_open_old_b_idx  < l_lowest_index then l_lowest_index :=  l_open_old_b_idx ; end if;
                if l_close_old_b_idx > 0 and l_close_old_b_idx < l_lowest_index then l_lowest_index :=  l_close_old_b_idx; end if;
    
                if l_lowest_index = 100000 then exit; end if;
    
                if l_lowest_index = l_open_b_idx      then l_b_count     := l_b_count     + 1; end if;
                if l_lowest_index = l_close_b_idx     then l_b_count     := l_b_count     - 1; end if;
                if l_lowest_index = l_open_i_idx      then l_i_count     := l_i_count     + 1; end if;
                if l_lowest_index = l_close_i_idx     then l_i_count     := l_i_count     - 1; end if;
                if l_lowest_index = l_open_u_idx      then l_u_count     := l_u_count     + 1; end if;
                if l_lowest_index = l_close_u_idx     then l_u_count     := l_u_count     - 1; end if;
                if l_lowest_index = l_open_ol_idx     then l_ol_count    := l_ol_count    + 1; end if;
                if l_lowest_index = l_close_ol_idx    then l_ol_count    := l_ol_count    - 1; end if;
                if l_lowest_index = l_open_ul_idx     then l_ul_count    := l_ul_count    + 1; end if;
                if l_lowest_index = l_close_ul_idx    then l_ul_count    := l_ul_count    - 1; end if;
                if l_lowest_index = l_open_li_idx     then l_li_count    := l_li_count    + 1; end if;
                if l_lowest_index = l_close_li_idx    then l_li_count    := l_li_count    - 1; end if;
                if l_lowest_index = l_open_old_b_idx  then l_old_b_count := l_old_b_count + 1; end if;
                if l_lowest_index = l_close_old_b_idx then l_old_b_count := l_old_b_count - 1; end if;
                
                if l_b_count     < 0 then l_b_count     := 0; end if;        
                if l_i_count     < 0 then l_i_count     := 0; end if;
                if l_u_count     < 0 then l_u_count     := 0; end if;
                if l_ol_count    < 0 then l_ol_count    := 0; end if;
                if l_ul_count    < 0 then l_ul_count    := 0; end if;
                if l_li_count    < 0 then l_li_count    := 0; end if;
                if l_old_b_count < 0 then l_old_b_count := 0; end if;
    
                l_index := l_lowest_index + 1;
            end loop;
            
            if l_b_count     > 0 or
               l_i_count     > 0 or
               l_u_count     > 0 or
               l_ol_count    > 0 or
               l_ul_count    > 0 or
               l_li_count    > 0 or
               l_old_b_count > 0 then
                return false;
            else
                return true;
            end if;
        end validate_message;   
    --
    --
    --
    procedure read_otncookie
    is
    begin
        g_otn_cookie := owa_cookie.get('ORA_UCM_INFO');
        if g_otn_cookie.num_vals > 0 then
            g_otn_cookie_vals := apex_util.string_to_table( g_otn_cookie.vals(1), '~' );
        end if;
    end read_otncookie;
    --
    --
    procedure read_askcookie
    is
    begin
        g_ask_cookie := owa_cookie.get( g_ask_cookiename );
        if g_ask_cookie.num_vals > 0 then
            g_ask_cookie_vals := apex_util.string_to_table( utl_url.unescape(g_ask_cookie.vals(1)), '|' );
        end if;
    end read_askcookie;
    --
    --
    procedure write_askcookie(
        p_email      in varchar2 default null,
        p_fname      in varchar2 default null,
        p_lname      in varchar2 default null,
        p_location   in varchar2 default null,
        p_nickname   in varchar2 default null,
        p_job_title  in varchar2 default null,
        p_org        in varchar2 default null,
        p_years      in varchar2 default null )
    is
    begin
        owa_util.mime_header('text/html', FALSE);
        owa_cookie.send(
            name   => g_ask_cookiename,
            value  => g_ask_cookieversion || '|' ||
                      p_email || '|' ||
                      p_fname || '|' ||
                      p_lname || '|' ||
                      p_location || '|' ||
                      p_nickname || '|' ||                      
                      p_job_title || '|' ||
                      p_org || '|' ||
                      p_years || '|' || BLOG_CUSTOM_HASH(upper(p_email),g_ask_cookiename),
            expires => g_ask_cookie_expires,
            path    => '/',
            secure  => '' );
    end write_askcookie;
    --
    --
    function age (p_date in date)
    return varchar2
    as
    begin
    return case when sysdate-p_date < 1/24
           then round(24*60*(sysdate-p_date)) || ' minutes old'
           when sysdate-p_date < 1
           then round(24*(sysdate-p_date)) || ' hours old'
           when sysdate-p_date < 14
           then trunc(sysdate-p_date) || ' days old'
           when sysdate-p_date < 60
           then trunc((sysdate-p_date)/7) || ' weeks old'
           when sysdate-p_date < 365
           then round(months_between(sysdate,p_date)) || ' months old'
           else round(months_between(sysdate,p_date)/12,1) || ' years old'
           end;
    end age;
    --
    --
    function parse_search_string( p_search_str in varchar2 ) return varchar2
    is
        l_temp_value   varchar2(32767);
        l_temp_value2  varchar2(32767);
        l_return_value varchar2(32767) := NULL;
        l_start_token  number := 1;
        l_in_token     boolean := FALSE;
        l_num_tokens   number := 0;
        l_quotes       number;
        l_phrases      dbms_sql.varchar2s;
        n              number;
    begin
        if nvl(length(p_search_str),0) = 0 then
            return NULL;
        end if;
    
        l_quotes := length(p_search_str) - length(replace(p_search_str,'"', ''));
        if ( l_quotes > 0 and mod(l_quotes,2) = 0 )
        then
            l_temp_value2 := lower(p_search_str);
            for i in 1 .. l_quotes/2
            loop
                n := instr( l_temp_value2, '"' );
                l_temp_value := l_temp_value || substr(    l_temp_value2, 1, n-1 );
                l_temp_value2 := substr( l_temp_value2, n+1 );
                n := instr( l_temp_value2, '"' );
                l_phrases(i) := substr( l_temp_value2, 1, n-1 );
                l_temp_value2 := substr( l_temp_value2, n+1 );
            end loop;
            l_temp_value := l_temp_value || l_temp_value2;
        else
            l_temp_value := lower(p_search_str);
        end if;
    
        --
        l_temp_value := trim(replace( l_temp_value, '{', ' '));
        l_temp_value := trim(replace( l_temp_value, '}', ' '));
        l_temp_value := trim(replace( l_temp_value, ':', ' '));
        l_temp_value := trim(replace( l_temp_value, ';', ' '));
        l_temp_value := trim(replace( l_temp_value, '"', ' '));
        l_temp_value := trim(replace( l_temp_value, ':'',', ' '));
        l_temp_value := trim(replace( l_temp_value, '(', ' '));
        l_temp_value := trim(replace( l_temp_value, ')', ' '));
        l_temp_value := trim(replace( l_temp_value, '!', ' '));
        l_temp_value := trim(replace( l_temp_value, '&', ' '));
        l_temp_value := trim(replace( l_temp_value, '+', ' '));
        l_temp_value := trim(replace( l_temp_value, '\', ' '));
        l_temp_value := trim(replace( l_temp_value, '-', ' '));
        l_temp_value := trim(replace( l_temp_value, ',', ' '));
        l_temp_value := trim(replace( l_temp_value, ' and ', ' ' ));
        l_temp_value := trim(replace( l_temp_value, ' or ', ' ' ));
        --
        if length(l_temp_value) > 0 then
            l_in_token := TRUE;
        end if;
        --
        for i in 1..nvl(length(l_temp_value),0) loop
            if substr(l_temp_value,i,1) = ' ' then
                if l_in_token = TRUE then
                       l_return_value := l_return_value || '{' ||
                    substr(l_temp_value,l_start_token, i-l_start_token) || '}' || ' and ';
                    l_in_token := FALSE;
                    l_num_tokens := l_num_tokens + 1;
                end if;
            elsif l_in_token = FALSE then
                l_in_token := TRUE;
                l_start_token := i;
            end if;
            exit when l_num_tokens > 30;
        end loop;
        if l_in_token = TRUE then
            l_return_value := l_return_value || '{' || substr(l_temp_value,l_start_token) || '} and ';
        end if;
    
        for i in 1 .. nvl(l_phrases.count,0)
        loop
            if ( l_phrases(i) is not null )
            then
                l_return_value := l_return_value || ' {' || l_phrases(i) || '} and ';
            end if;
        end loop;
        return trim( substr( l_return_value, 1, length(l_return_value)-4 ) );
    end parse_search_string;
    --
    
    procedure refresh_top_articles
    is
    begin
        delete from ate_articles_top20;
        --
        insert into ate_articles_top20( article_id, subject, thecount )
        select y.* from
            (select q.id, q.msg_subject, x.thecount
                from blog_messages q,
                    (select article_id, count(*) thecount
                       from ate_article_access_log
                      group by article_id) x
            where q.id = x.article_id
              and q.msg_type = 'STANDARD'
            order by x.thecount desc) y
         where rownum <= 20;      
          delete from ate_articles_hit20;
        --
        insert into ate_articles_hit20( article_id, subject, hit_ratio )
        select y.* from
            (select q.id, q.msg_subject, x.hit_ratio
                from blog_messages q,
                    (select article_id, count(*)/(24*60*60*(sysdate - min(access_date))) hit_ratio
                       from ate_article_access_log
                      group by article_id) x
            where q.id = x.article_id
              and q.msg_type = 'STANDARD'
            order by x.hit_ratio desc) y
         where rownum <= 20;  
    end refresh_top_articles;
    --
    --
    --
    procedure write_access_log( p_article_id in varchar2, p_email in varchar2 )
    is
    begin
     if get_client_ip not like '192.168%' then
        insert into ate_article_log$ ( article_id, log_type, email , session_id, remote_addr)
        values( p_article_id, 'ACCESS', p_email , v('SESSION'), get_client_ip);      
     end if;
    end write_access_log;
    --
    --
    --
    procedure write_cat_access_log( p_cat_id in varchar2, p_email in varchar2 )
    is
    begin
     if get_client_ip not like '192.168%' then
        insert into ate_article_log$ ( article_id, log_type, email ,session_id, remote_addr)
        values( p_cat_id, 'CATEGORY', p_email , v('SESSION'), get_client_ip);   
     end if;
    end write_cat_access_log;
    
    procedure write_search_log( p_criteria in varchar2, p_email in varchar2 )
    is
        l_remote_addr     varchar2(255) := get_client_ip;
        l_http_user_agent varchar2(255) default owa_util.get_cgi_env( 'HTTP_USER_AGENT' );
        l_http_referer    varchar2(255) default owa_util.get_cgi_env( 'HTTP_REFERER' );
    begin
     if get_client_ip not like '192.168%' then
        insert into ate_article_log$( log_type, search_criteria, email, remote_addr, http_user_agent, http_referer , session_id)
        values( 'SEARCH',substr(p_criteria,1,1000), p_email, l_remote_addr, l_http_user_agent, l_http_referer , v('SESSION'));     
     end if;
    end write_search_log;
   
    --
    --
    --
    procedure update_administrators( p_administrator_list in varchar2 )
    is
        l_admintbl   ate_tabletype := ate_tabletype();
        l_admin_list apex_application_global.vc_arr2;
    begin
        l_admin_list := apex_util.string_to_table( p_administrator_list );
        l_admintbl := list_to_tbl( l_admin_list );
        --
        -- First, delete any of those that are not in our list
        --
        delete from ate_administrators t1
         where t1.userid in
               (select t2.userid
                  from ate_administrators t2
                minus
               (select column_value from the (select cast (l_admintbl as ate_tabletype ) from dual)));
        --
        -- Now do the reverse, add any of those that are not in the table
        --
        for c1 in (select column_value from the (select cast (l_admintbl as ate_tabletype) from dual)
                    minus
                   select userid from ate_administrators) loop
            insert into ate_administrators( userid )
              values( c1.column_value );
        end loop;        
    end update_administrators;
    --
    --
    --
 
    --
    --
 
    procedure notify(
        p_article_id  in number,
        p_user_id   in number,
        p_from      in varchar2,
        p_app_id    in number)
    is
l_body varchar2(32000);
l_subj varchar2(2000);
l_expert varchar2(100);
l_website varchar2(100);
l_alias  varchar2(100);
begin
 
 
for i in (select 
  substitution_value v
from apex_application_substitutions
where substitution_string = 'EXPERT_NAME'
and application_id = p_app_id) loop
l_expert := i.v;
end loop;
 
for i in (select 
  alias v
from apex_applications
where application_id = p_app_id) loop
l_alias := i.v;
end loop;
 
for i in (select 
  substitution_value v
from apex_application_substitutions
where substitution_string = 'WEBSITE'
and application_id = p_app_id) loop
l_website := i.v;
end loop;
 
for i in (
select msg_subject
from blog_messages m
where id = p_article_id
) loop
 
l_body := 'Hi,
 
You have chosen to receive follow up if new comment is posted to '||l_expert||' blog article you commented.
To follow up the article and its new comment(s), please go to http://'||l_website||'/f?p='||l_alias||':READ:0::::ARTICLE:'||p_article_id||'
 
Best regards,
 
'||l_expert||' Blog Team';
 
 
l_subj := 'Follow up on '||l_expert||' Blog article, new comments on article: '|| i.msg_subject;
 
end loop;
 
for i in (
select distinct u.email
from blog_messages m, blog_reg_users u
where m.msg_id = p_article_id
and m.created_by_id = u.id
and u.id != p_user_id
and  m.followup_notify = 'Y') loop
 
"SEND_MAIL" ( p_to => i.email,
                         p_from          => p_from,
                         p_body          => l_body,
                         p_subj          => l_subj);
 
end loop;
 
for i in (SELECT 
  email
from blog_reg_users u
where upper(email) in (select upper(userid) from ate_administrators) and u.id != p_user_id and upper(email) not in (
select u.email
from blog_messages m, blog_reg_users u
where m.id = p_article_id
and m.created_by_id = u.id
)
) loop
"SEND_MAIL" ( p_to => i.email,
                         p_from          => p_from,
                         p_body          => l_body,
                         p_subj          => 'For Blog Administrators Team, '||l_subj);
end loop;
                        
for i in (
select distinct u.email, m.msg_subject
from blog_messages m, blog_reg_users u
where m.id = p_article_id
and m.created_by_id = u.id
and u.id != p_user_id) loop
 
l_body := 'Hi,
 
New comment is received on Your article, please go to http://'||l_website||'/f?p='||l_alias||':READ:0::::ARTICLE:'||p_article_id||'
to check.
 
Best regards,
 
'||l_expert||' Blog Team';
 
 
l_subj := 'New comments on Your article: '|| i.msg_subject;
 
 
"SEND_MAIL" ( p_to => i.email,
                         p_from          => p_from,
                         p_body          => l_body,
                         p_subj          => l_subj);
 
end loop;                        
                         
end;
    
    procedure update_article(
        p_article_id      in number,
        p_subject          in varchar2 default null,
        p_rss_description  in varchar2 default null,
        p_article         in varchar2 default null,
        p_cat_id in number,
        p_user_id in number)
    is
     
        
    begin
        --
UPDATE BLOG_MESSAGES
set 
msg_subject     = p_subject
, msg_text        = p_article
, category_id     = p_cat_id
, RSS_DESCRIPTION = p_rss_description
, modified_by_id  = p_user_id
where id            = p_article_id;  
commit;
    end update_article;    
    procedure save_article(
        p_subject          in varchar2 default null,
        p_rss_description  in varchar2 default null,
        p_article         in varchar2 default null,
        p_from_submitter in number default null,
        p_cat_id in number)
    is
        l_article        clob;
        
    begin
        --
        INSERT
INTO BLOG_MESSAGES
  (
    ID,
    MSG_ID,
    MSG_TYPE,
    MSG_SUBJECT,
    MSG_TEXT,
    CATEGORY_ID,
    EXPIRE_DATE,
    VIEWED,
    RSS_DESCRIPTION,
    followup_notify,
    session_id,
    CREATED_ON,
    MODIFIED_ON,
    CREATED_BY_ID,
    MODIFIED_BY_ID
  )
  values (
    null,
    null,
    'STANDARD',
    p_subject,
   empty_clob(),
    p_cat_id,
    null,
    null,
    p_rss_description,
    null,
    v('SESSION'),
    null,
    null,
    p_from_submitter,
    p_from_submitter
  )
        returning msg_text into l_article;
        --
        if p_article is not null then
            dbms_lob.write( l_article, length(p_article), 1, p_article );
        end if;      
    end save_article;
 
    procedure update_article_preview(
        p_article_id      in number,
        p_subject          in varchar2 default null,
        p_rss_description  in varchar2 default null,
        p_article         in varchar2 default null,
        p_cat_id in number,
        p_user_id in number)
    is
     
        
    begin
        --
UPDATE BLOG_MESSAGES_PREVIEW
set 
msg_subject     = p_subject
, msg_text        = p_article
, category_id     = p_cat_id
, RSS_DESCRIPTION = p_rss_description
, modified_by_id  = p_user_id
where id            = p_article_id;  
commit;
    end update_article_preview;    
    procedure save_article_preview(p_id out varchar2,
        p_subject          in varchar2 default null,
        p_rss_description  in varchar2 default null,
        p_article         in varchar2 default null,
        p_from_submitter in number default null,
        p_cat_id in number)
    is
        l_article        clob;
        
    begin
        --
        p_id := blog_id.next_val;
        INSERT
INTO BLOG_MESSAGES_PREVIEW
  (
    ID,
    MSG_ID,
    MSG_TYPE,
    MSG_SUBJECT,
    MSG_TEXT,
    CATEGORY_ID,
    EXPIRE_DATE,
    VIEWED,
    RSS_DESCRIPTION,
    followup_notify,
    session_id,
    CREATED_ON,
    MODIFIED_ON,
    CREATED_BY_ID,
    MODIFIED_BY_ID
  )
  values (
    p_id,
    null,
    'STANDARD',
    p_subject,
   empty_clob(),
    p_cat_id,
    null,
    null,
    p_rss_description,
    null,
    v('SESSION'),
    null,
    null,
    p_from_submitter,
    p_from_submitter
  )
        returning msg_text into l_article;
        --
        if p_article is not null then
            dbms_lob.write( l_article, length(p_article), 1, p_article );
        end if;      
    end save_article_preview;   
    --
    --
    --
 
procedure save_comment_followup(  
        p_article_id   number,        
        p_comment    varchar2) is
begin
 
INSERT
INTO BLOG_MESSAGES
  (
    ID,
    MSG_ID,
    MSG_TYPE,
    MSG_SUBJECT,
    MSG_TEXT, created_by_id
  )
  VALUES
  (
    null,
    p_article_id,
    'COMMENT',
    null,
    format_followup( p_comment, length(p_comment) ), v('USER_ID'));
 
 
end;
    
    procedure read_activity_cookie
    is
    begin
        g_act_cookie := owa_cookie.get( g_act_cookiename );
        if g_act_cookie.num_vals > 0 then
            g_act_cookie_vals := apex_util.string_to_table( g_act_cookie.vals(1), '|' );
        end if;
    end read_activity_cookie;
    
    
    procedure write_activity_cookie(
        p_cookie_id  in varchar2 default null )
    is
        l_cookie_id number;
    begin
        if p_cookie_id is null then
            return;
        else
            begin
                l_cookie_id := to_number(p_cookie_id);
            exception
                when others then
                    null;
            end;
        end if;
        --
        owa_cookie.send(
            name    => g_act_cookiename,
            value   => g_act_cookieversion || '|' ||
                       to_char(l_cookie_id),
            expires => g_act_cookie_expires,
            path    => '/',
            secure  => '' );
    end write_activity_cookie;
    
    procedure write_activity_log(
        p_cookie_id  in varchar2,
        p_page_id    in varchar2,
        p_session_id in varchar2 )
    is
        l_remote_addr     varchar2(4000) default owa_util.get_cgi_env('HTTP_X_ORACLE_CACHE_USER'); --owa_util.get_cgi_env( 'REMOTE_ADDR' );
        l_http_user_agent varchar2(4000) default owa_util.get_cgi_env( 'HTTP_USER_AGENT' );
    begin
        insert into ate_activity_log( cookie_id, page_id, session_id, ip_address, user_agent )
        values( p_cookie_id, p_page_id, p_session_id, l_remote_addr, l_http_user_agent );        
    end write_activity_log;
    
    procedure add_bad_email (
        p_email        in varchar2 )
    is
    begin
        insert into ate_bad_emails (email) values (lower(p_email));
    end add_bad_email;
    procedure remove_bad_email (
        p_email        in varchar2 )
    is
    begin
        delete from ate_bad_emails where email = lower(p_email);
    end remove_bad_email;    
    
    --
    --
    --
 
FUNCTION format_error(
    l_error VARCHAR2,
    l_value NUMBER)
  RETURN VARCHAR2
is
  l_table        VARCHAR2(32000);
  L_OUTPUT_ERROR VARCHAR2(32000);
  l              VARCHAR2(32000);
BEGIN
 
  IF INSTR(L_ERROR,V('OWNER'),1,2) = 0 THEN
     L_TABLE := NULL;
  ELSE
  L     := SUBSTR(L_ERROR,INSTR(L_ERROR,v('OWNER'),1,2));
 
  FOR i IN 1..length(l)
  LOOP
        
    if SUBSTR(L,I,1) = ' ' then
      L               := SUBSTR(L,1,i);
      exit;
    END IF;
  end LOOP;
  L_TABLE                      := TRIM(REPLACE(REPLACE(LTRIM(L,V('OWNER')),'.',''),'"',''));
  END IF;
  IF instr(l_error,'02292',1)   > 0 THEN
    l_output_error            := VALIDATE_FK (L_TABLE, L_VALUE);
  elsif instr(l_error,'00001',1) > 0 THEN
    l_output_error             := validate_uk (l_table, l_value);
  elsif instr(l_error,'01403',1) > 0 then
    L_OUTPUT_ERROR             := HTMLDB_LANG.MESSAGE('ERROR_NODATA', L_TABLE);
  ELSIF INSTR(L_ERROR,'01407',1) > 0 THEN
    L_OUTPUT_ERROR             := HTMLDB_LANG.MESSAGE('NULL_ERROR_UPDATE', L_TABLE);
  ELSIF INSTR(L_ERROR,'01400',1) > 0 THEN
    l_output_error             := htmldb_lang.message('NULL_ERROR_INSERT', l_table);
  else
    l_output_error := htmldb_lang.message('UNEXPECTED_ERROR');
  end if;
 
  RETURN l_output_error;
END;
FUNCTION VALIDATE_FK(
    p_table    VARCHAR2,
    p_pk_value NUMBER)
  RETURN VARCHAR2
AS
  l_count NUMBER;
  l_error VARCHAR2(32000);
BEGIN
  IF P_TABLE IS NULL THEN
        return '<br>' || HTMLDB_LANG.MESSAGE('FK_VIOLATION', 'some of the tables');
  END IF;
  IF p_pk_value IS NULL THEN
    FOR c       IN
    (SELECT      *
    FROM user_constraints
    where TABLE_NAME    = P_TABLE
    AND constraint_type in ( 'P', 'U')
    )
    LOOP
      FOR r IN
      (SELECT ucc.*
      FROM user_constraints uc,
        user_cons_columns ucc
      WHERE uc.r_constraint_name = c.constraint_name
      AND uc.constraint_name     = ucc.constraint_name
      AND uc.status              = 'ENABLED'
      AND uc.constraint_type     = 'R'
      AND uc.delete_rule         ='NO ACTION'
      )
      LOOP
        l_error := l_error || '<br>' || htmldb_lang.message('FK_VIOLATION', r.table_name);
      END LOOP;
    END LOOP;
  ELSE
    FOR c  IN
    (SELECT *
    FROM user_constraints
    where TABLE_NAME    = P_TABLE
    AND constraint_type in ( 'P', 'U')
    )
    LOOP
      FOR r IN
      (SELECT ucc.*
      FROM user_constraints uc,
        user_cons_columns ucc
      WHERE uc.r_constraint_name = c.constraint_name
      AND uc.constraint_name     = ucc.constraint_name
      AND uc.status              = 'ENABLED'
      AND uc.constraint_type     = 'R'
      AND uc.delete_rule         ='NO ACTION'
      )
      LOOP
        EXECUTE immediate 'select count(*) from ' || r.table_name || ' where ' || r.column_name || '=' || p_pk_value INTO l_count;
        IF l_count > 0 THEN
          l_error := l_error || '<br>' || htmldb_lang.message('FK_VIOLATION', r.table_name);
        END IF;
      END LOOP;
    END LOOP;
  END IF;
  RETURN ltrim(l_error, '<br>');
END VALIDATE_FK;
FUNCTION "VALIDATE_UK"(
    p_table    VARCHAR2,
    p_pk_value NUMBER)
  RETURN VARCHAR2
AS
  l_count NUMBER;
  l_error VARCHAR2(32000);
BEGIN
  IF p_pk_value IS NULL THEN
    l_error     := l_error || '<br>' || htmldb_lang.message('UK_VIOLATION', p_table);
  ELSE
    l_error := l_error || '<br>' || htmldb_lang.message('UK_VIOLATION_VAL', p_table, p_pk_value);
  END IF;
  RETURN ltrim(l_error, '<br>');
end validate_uk;
 
     function format_comment( p_string in varchar2, p_len in number default 80 ) return varchar2
    as
        l_string      long default replace( DBMS_LOB.SUBSTR(p_string,32676,1) || chr(32) || chr(10), chr(9), '    ' );
        l_result      long default NULL;
        l_piece       long;
        l_ws          varchar2(25) default ' ' || chr(9);
        l_sep         varchar2(5) default NULL;
        l_endofUrl    varchar2(255) default chr(10) || chr(13) || chr(9) || ' )<>';
        n             number;
        m             number;
        l_urls        owa.vc_arr;
        l_code        owa.vc_arr;
        type vc_tab   is table of varchar2(30);
        l_tags        vc_tab;
        l_truncated   boolean := false;
    begin
        l_string    := replace(l_string,'<br>',' ');
        l_string    := replace(l_string,'<br/>',' ');
        l_string    := replace(l_string,'<br />',' ');
        l_truncated := dbms_lob.getlength(l_string) >= g_max_message_length;
        wwv_flow.debug('starting message length: '||length(l_string));
        -- list of tags to preserve
        l_tags := vc_tab('<b>','</b>',
                         '<i>','</i>',
                         '<u>','</u>',
                         '<ul>','</ul>',
                         '<ol>','</ol>',
                         '<li>','</li>','<p>','</p>','<pre>','</pre>'  );
 
        -- find and escape everything inside <code> tags
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), '<code>');
            m := instr( lower(l_string), '</code>', n );
            if n > 0 and m = 0 and l_truncated then 
                m := length(l_string);
                l_string := l_string||'</code>';
            end if;    
            exit when n = 0 or m = 0;
            l_code(i) := substr( l_string, n + length('<code>'), (m - n) - length('<code>'));
            l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + length('</code>'));
        end loop;
 
        -- find and replace URLs with real links (and save
        -- in array until everything else is escaped)
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), 'http://' );
            if n = 0 then   n := instr( lower(l_string), 'https://' );  end if;
            if n = 0 then   n := instr( lower(l_string), 'ftp://'   );  end if;
            exit when n = 0;
 
            for j in 0 .. 255 loop
                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then
                    l_urls(i) := rtrim( force_wrap(substr( l_string, n, j ), p_len), '.'||chr(32)||chr(10) );
                    l_urls(i) := '<a href="' || l_urls(i) || '">' || l_urls(i) || '</a>';
                    l_string := substr( l_string, 1, n-1 ) || '@@'||i|| '@@' || substr( l_string, n+j );
                    exit;
                end if;
            end loop;
        end loop;
        
        l_result := replace(htf.escape_sc(l_string),'   ','&nbsp; ');
        
        -- add tags back in
        for i in 1 .. l_tags.count loop
            l_result := replace( l_result, htf.escape_sc(lower(l_tags(i))),l_tags(i));
            l_result := replace( l_result, htf.escape_sc(upper(l_tags(i))),l_tags(i));
        end loop;
        
        -- add URLs back into message
        for i in 1 .. l_urls.count loop
            l_result := replace( l_result, '@@'||i||'@@', '<pre>'||l_urls(i)||'</pre>' );
        end loop;
        
        -- add <code> sections back in
        for i in 1 .. l_code.count loop
            if length(ltrim(l_code(i),chr(10)||' ')) > 0 then
                l_result := replace( l_result, '@$'||i||'$@', '<code>'||substr(htf.escape_sc(force_wrap(l_code(i),p_len)),1,(case when length(l_result) > 31000 then 0 else 31000 - length(l_result) end))||'</code>');
            else
                l_result := replace( l_result, '@$'||i||'$@','');
            end if;
        end loop;
        
        wwv_flow.debug('ending message length: '||length(l_result));
        return l_result;
    end format_comment; 
     function format_followup( p_string in varchar2, p_len in number default 80 ) return varchar2
    as
        l_string      long default replace( DBMS_LOB.SUBSTR(p_string,32767,1) , chr(9), '    ' );
        l_result      long default NULL;
        l_piece       long;
        l_ws          varchar2(25) default ' ' || chr(9);
        l_sep         varchar2(5) default NULL;
        l_endofUrl    varchar2(255) default chr(10) || chr(13) || chr(9) || ' )<>';
        n             number;
        m             number;
        l_urls        owa.vc_arr;
        l_code        owa.vc_arr;
        type vc_tab   is table of varchar2(30);
        l_tags        vc_tab;
        l_truncated   boolean := false;
    begin
        l_string    := replace(l_string,'<br>',' ');
        l_string    := replace(l_string,'<br/>',' ');
        l_string    := replace(l_string,'<br />',' ');
        l_truncated := dbms_lob.getlength(l_string) >= g_max_message_length;
        wwv_flow.debug('starting message length: '||length(l_string));
 
        -- find and escape everything inside <code> tags
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), '<code>');
            m := instr( lower(l_string), '</code>', n );
            if n > 0 and m = 0 and l_truncated then 
                m := length(l_string);
                l_string := l_string||'</code>';
            end if;    
            exit when n = 0 or m = 0;
            l_code(i) := substr( l_string, n + length('<code>'), (m - n) - length('<code>'));
            l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + length('</code>'));
        end loop;
        l_result := l_string;
        -- add <code> sections back in
        for i in 1 .. l_code.count loop
            if length(ltrim(l_code(i),chr(10)||' ')) > 0 then
                l_result := replace( l_result, '@$'||i||'$@', '<code>'||substr(htf.escape_sc(force_wrap(l_code(i),p_len)),1,(case when length(l_result) > 31000 then 0 else 31000 - length(l_result) end))||'</code>');
            else
                l_result := replace( l_result, '@$'||i||'$@','');
            end if;
        end loop;
        
        wwv_flow.debug('ending message length: '||length(l_result));
        return l_result;
    end format_followup;     
     function format_article( p_string in varchar2, p_len in number default 80 ) return varchar2
    as
        l_string      long default replace( DBMS_LOB.SUBSTR(p_string,32767,1) , chr(9), '    ' );
        l_result      long default NULL;
        l_piece       long;
        l_ws          varchar2(25) default ' ' || chr(9);
        l_sep         varchar2(5) default NULL;
        l_endofUrl    varchar2(255) default chr(10) || chr(13) || chr(9) || ' )<>';
        n             number;
        m             number;
        l_urls        owa.vc_arr;
        l_code        owa.vc_arr;
        type vc_tab   is table of varchar2(30);
        l_tags        vc_tab;
        l_truncated   boolean := false;
    begin
        l_string    := replace(l_string,'<br>',' ');
        l_string    := replace(l_string,'<br/>',' ');
        l_string    := replace(l_string,'<br />',' ');
        l_truncated := dbms_lob.getlength(l_string) >= g_max_message_length;
        wwv_flow.debug('starting message length: '||length(l_string));
 
        -- find and escape everything inside <code> tags
        for i in 1 .. 1000 loop
            n := instr( lower(l_string), '<code>');
            m := instr( lower(l_string), '</code>', n );
            if n > 0 and m = 0 and l_truncated then 
                m := length(l_string);
                l_string := l_string||'</code>';
            end if;    
            exit when n = 0 or m = 0;
            l_code(i) := substr( l_string, n + length('<code>'), (m - n) - length('<code>'));
            l_string := substr( l_string, 1, n - 1) || '@$'||i||'$@' || substr(l_string, m + length('</code>'));
        end loop;
        l_result := l_string;
        -- add <code> sections back in
        for i in 1 .. l_code.count loop
            if length(ltrim(l_code(i),chr(10)||' ')) > 0 then
                l_result := replace( l_result, '@$'||i||'$@', '<pre class="brush:javascript">'||substr(htf.escape_sc(force_wrap(l_code(i),p_len)),1,(case when length(l_result) > 31000 then 0 else 31000 - length(l_result) end))||'</pre>');
            else
                l_result := replace( l_result, '@$'||i||'$@','');
            end if;
        end loop;
        
        wwv_flow.debug('ending message length: '||length(l_result));
        return l_result;
    end format_article; 
end ATE_API;

/

--------------------------------------------------------
--  DDL for Package Body ATE_ID
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ATE_ID" as
g_curr_val number default NULL;
function curr_val
return number 
is
    ate_not_yet_defined exception;
    pragma exception_init( ate_not_yet_defined, -8002 );
begin
    if ( g_curr_val is NULL ) then
        raise ate_not_yet_defined;
    end if;
    return g_curr_val;
end curr_val;
function next_val
return number 
is
begin
    select  to_number(
                 to_char(ate_seq.nextval) ||
                      lpad( substr( abs(ate_random.rand), 1, 5 ),5, '0' ) ||
                      ltrim(to_char(mod(abs(dbms_utility.get_time),1000000),'000000'))
                 )
    into    g_curr_val
    from   dual;
                      
    return g_curr_val;
end next_val;
end ate_id;

/

--------------------------------------------------------
--  DDL for Package Body ATE_RANDOM
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ATE_RANDOM" 
is
    multiplier constant number  := 22695477;
    increment  constant number  := 1;
    "2^32"     constant number  := 2 ** 32;
    "2^16"     constant number  := 2 ** 16;
    "0x7fff"   constant number  := 32767;
    Seed       number := 1; 
--
  function rand return number is
    s number;
  begin
    seed := mod( multiplier * seed + increment, "2^32" );
    begin
       return bitand( seed/"2^16", "0x7fff" ); 
    --mhichwa
    exception when others then
       select ate_seq.nextval into s from dual;
       return s||to_char(sysdate,'HH24MISS');
    end;
  end rand;
--
end ate_random;

/

--------------------------------------------------------
--  DDL for Package Body BLOG_GUI
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "BLOG_GUI" AS
 
  procedure PRINT_WELCOME as
  BEGIN
   
    for i in (select replace(msg_text,'#WORKSPACE#',apex_application.get_current_flow_sgid(v('APP_ID')))  
       msg_text 
       from BLOG_MESSAGES where MSG_TYPE = 'WELCOME' order by CREATED_ON desc) LOOP
       HTP.p(APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_TEXT));
    END LOOP;
  END print_welcome;
 
  procedure print_article(p_number number, p_search varchar2 default null, p_date_month date default null, 
          p_cat_id varchar2 default null, p_article_id varchar2 default null, p_print_comment boolean default true, 
          p_page number default null, p_search_opt varchar2 default null) as
  N NUMBER := 0;
  ii number := 0;
  l_edit VARCHAR2(2000);
  rabbits NUMBER := 0;
  l_comments NUMBER := 0;
  l_article_id number;
  v_sqlerrm varchar2(4000);
  l_rate    number;
  L_Line    Number;
  l_page    number;
  BEGIN
    L_Article_Id := P_Article_Id; 
    l_page := p_page; 
    L_Line := 1;
    
    for I in (select id, MSG_SUBJECT,  replace(msg_text,'#WORKSPACE#',apex_application.get_current_flow_sgid(v('APP_ID'))) MSG_TEXT, CREATED_ON, CREATED_BY_ID 
    from BLOG_MESSAGES b
    where msg_type = 'STANDARD'
    and 
    (  (
        (
         (instr(upper(msg_subject),upper(p_search)) > 0 or
         instr(upper(msg_text),upper(p_search)) > 0 or
         exists (select 1 from blog_reg_users c where instr(upper( fname||''||lname), upper(p_search)) > 0 and b.created_by_id = c.id)
         ) and p_search_opt = 'ALL' 
         )
    or (
         (instr(upper(msg_subject),upper(p_search)) > 0 
         ) and p_search_opt = 'TITLE' 
         )
    or (
         (
         instr(upper(msg_text),upper(p_search)) > 0 
         ) and p_search_opt = 'TEXT' 
         )
    or (
         (
         exists (select 1 from blog_reg_users c where instr(upper( fname||''||lname), upper(p_search)) > 0 and b.created_by_id = c.id)
         ) and p_search_opt = 'AUTHOR' 
         )
        )  or p_search is null or p_search_opt is null
      )
    and (id = l_article_id or l_article_id is null)
    and (category_id = p_cat_id or p_cat_id is null)
    And (Trunc(Expire_Date) > Trunc(Sysdate) Or Expire_Date Is Null)
    And (Exists (Select c001 From Apex_Collections Where Collection_Name = 'PAGINATION' And C001 = to_char(Id) And C002 = P_Page ) Or
        p_page is null)
    ORDER BY CREATED_ON DESC) LOOP
       N := N + 1;
       l_line := 2;
       If N > P_Number Then
          Exit;
       End If;
       --htp.p('<h2>'||apex_application.do_substitutions(i.msg_subject)||'</h2>');
       
       htp.p('<h2><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||i.id||'"><span style="font:bold 20px verdana,Arial,Sans-Serif;">'||i.msg_subject||'</span></a></h2>');
       for u in (select fname||'.'||lname, nick  u , id from blog_reg_users where id = i.created_by_id) loop
          HTP.p('<h3>Posted on '||to_char(i.created_on, 'Month DD, YYYY HH:MIPM')||' by <span style="color:#D0EB55">'||u.u||'</span></h3>');
       end loop;
      -- htp.p(apex_application.do_substitutions(i.msg_text));
       --HTP.P(I.MSG_TEXT);
       print_clob(i.msg_text);
       
       htp.p('<script>
             $(function(){
               $(''.auto-submit-star'||i.id||''').rating({
               callback: function(value, link){
               var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=RATE_MULTIPLE'',0);
               ajaxRequest.addParam(''x01'', value);
               ajaxRequest.addParam(''x02'', '||i.id||');
               var results = ajaxRequest.get();
               ajaxRequest = null;
               $(''.auto-submit-star'||i.id||''').rating(''disable'');
            }
         });
      });
      </script>');
       begin
          SELECT rate
          into   l_rate
          FROM   blog_article_rate
          WHERE  article_id  = i.id 
          ;
       
          exception when others then l_rate := null;
       end;


    htp.prn('<div class="Clear">');
    
    /*
    htp.prn('
      <div class="Clear">
      <a href="https://twitter.com/share" 
      class="twitter-share-button"
      data-url="' || blog_api.get_blog_url || 'f?p=' || v('APP_ALIAS') || ':READ:0::::ARTICLE:' || i.id || '"
      data-text="' || i.msg_subject || '"
      >Tweet</a>
    ');
    */
    
    IF p_article_id IS NOT NULL THEN
      htp.prn('<a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
      <script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
        <g:plusone annotation="inline"></g:plusone>
        <script type="text/javascript">
          (function() {
            var po = document.createElement("script"); po.type = "text/javascript"; po.async = true;
            po.src = "https://apis.google.com/js/plusone.js";
            var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(po, s);
          })();
        </script>
      ');
    END IF;

    htp.prn('<p>Please rate this article so that we can improve the content (red stars show the current rate):</p>');


       for v in (SELECT APEX_ITEM.RADIOGROUP (n,lvl,l_rate,null,'class="auto-submit-star'||i.id||'"') a
                 FROM   ( select level lvl from dual connect by level <= 5) r
                 ORDER  BY lvl) loop
          htp.p(v.a);
       end loop;
       htp.p('</div>');
       
       SELECT COUNT(*) INTO L_COMMENTS 
       FROM BLOG_MESSAGES 
       WHERE MSG_ID = I.ID
       and msg_type = 'COMMENT';
       if l_comments > 0 then
          rabbits := rabbits + 1;
          htp.p('<div class="date"><h3>
                <a href="javascript:animatedcollapse.toggle(''rabbit'||rabbits||''')">Comments ('||L_COMMENTS||')</a>
                </h3>
                </div>
                <div id="rabbit'||rabbits||'" style="background:#414141;padding:5px;">');
                
     elsif p_print_comment then
       htp.p('<div class="date">
                  <h3>
                <a href="f?p='||v('APP_ALIAS')||':WRITECOMMENT:0::::ARTICLE:'||i.id||'">Post first comment</a>
                </h3>
                </div>
                ');     
     end if;
     ii := 0;
      for j in (select  id, replace(replace(msg_text,'<code>','<pre class="brush:javascript">'),'</code>','</pre>') msg_text, 
                 created_on, created_by_id 
                from blog_messages 
                 where msg_id = i.id 
                 and msg_type = 'COMMENT' ORDER BY CREATED_ON) LOOP
       for u in (select fname||'.'||lname, nick  u , id from blog_reg_users where id = j.created_by_id) loop
          l_edit := null;
          for uu in (select c001 from apex_collections where collection_name = 'COMMENTS' and c001 = to_char(j.id)) loop
            l_edit :='&nbsp;&nbsp;<a href="f?p='||v('APP_ALIAS')||':EDIT:0::::COMMENT:'||j.id||'"><b>Edit</b></a>';
          end loop;
          htp.p('<p style="margin:5px;">Posted on '||to_char(j.created_on,'Month DD, YYYY HH:MIPM')||' by <span style="color:#D0EB55">'
              ||u.u||'</span>'||l_edit||'</p>');
         
       end loop;      
       htp.p(j.msg_text);
       ii := ii + 1;
       if ii != l_comments then
         htp.p('<hr>');
       end if;
      end loop;
      if l_comments > 0 and p_print_comment then
         htp.p('<div class="reply">
               <h3>
             <a href="f?p='||v('APP_ALIAS')||':WRITECOMMENT:0::::ARTICLE:'||i.id||'">Post comment</a>
             </h3>
             </div>');
       end if;
      if l_comments > 0 then
         htp.p('    </div>');
       end if;
    end LOOP;

    if rabbits > 0 then
        HTP.P('<script type="text/javascript">');
    for i in 1..rabbits loop
       htp.p('animatedcollapse.addDiv(''rabbit'||i||''', ''fade=0,hide=1'')');
    end loop;
   
    htp.p('
animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted
    //$: Access to jQuery
    //divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
    //state: "block" or "none", depending on state
};
 
animatedcollapse.init()

</script>');
---htp.p('<div style="display:none;"></div>');
end if;
  if n = 0 then
          htp.p('
                  <h3>
                Nothing found, please search again.
                </h3>
                ');
  end if;
  if p_article_id is not null then
    ate_api.write_access_log( p_article_id, v('P9_EMAIL'));
  end if;
  if p_cat_id is not null then
    ate_api.write_cat_access_log( p_cat_id, v('P9_EMAIL'));
  end if;
 exception when others then
     v_sqlerrm := sqlerrm;
     Insert Into Error_Log(Err_Message, Defined_Message,Id, Log_Seq_Id)
     VALUES (v_sqlerrm||' '||l_line||'page'||p_page, 'Error in blog_gui.print_article',null, null);
          htp.p('
                  <h3>
                Some error occured, please try again later.
                </h3>
                ');  
  END print_article;
 
procedure PRINT_CATEGORIES(P_NUMBER number) is
  N NUMBER := 0;
BEGIN
htp.p('        <ul>');
for i in (select id, category_name  from blog_categories b where exists 
            (select 1 from blog_messages where category_id = b.id) order by CATEGORY_NAME) LOOP
       N := N + 1;
       IF N > P_NUMBER THEN
          EXIT;
       end if;
    htp.p(
          '<li><a class="current" href="f?p='||v('APP_ALIAS')||':READCAT:0::::CATEGORY:'||i.id||'">'||i.category_name||'</a></li>');
END LOOP;
  htp.p('      </ul>');
  
end;
   procedure PRINT_last_ARTICLEs(P_NUMBER number) as
  N NUMBER := 0;
  l_comments NUMBER;
  begin
   htp.p('<ul>');
    for I in (select id, MSG_SUBJECT, MSG_TEXT, CREATED_ON, CREATED_BY_ID 
    from BLOG_MESSAGES 
    where MSG_TYPE = 'STANDARD'
    and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
    ORDER BY CREATED_ON DESC) LOOP
       N := N + 1;
       IF N > P_NUMBER THEN
          EXIT;
       end if;
       HTP.P('<li><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||i.id||'">'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_SUBJECT)||'</a></li>');
      END LOOP;
      
      htp.p('    </ul>');

  end print_last_articles;
  
   procedure print_popular_articles(p_number number) as
   
  N NUMBER := 0;
  l_comments NUMBER;
  begin
   htp.p('<ul>');
    for i in (select id, msg_subject, msg_text, created_on, created_by_id 
    from blog_messages m, ate_articles_top20 t
    where MSG_TYPE = 'STANDARD' and m.id = t.article_id
    and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
    ORDER BY thecount DESC) LOOP
       N := N + 1;
       IF N > P_NUMBER THEN
          EXIT;
       end if;
       HTP.P('<li><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||i.id||'">'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_SUBJECT)||'</a></li>');
      END LOOP;
      
      htp.p('    </ul>');

  end print_popular_articles;
   
    procedure print_most_hit_articles(p_number number) as
   
  N NUMBER := 0;
  l_comments NUMBER;
  begin
   htp.p('<ul>');
    for i in (select id, msg_subject, msg_text, created_on, created_by_id 
    from blog_messages m, ate_articles_hit20 t
    where MSG_TYPE = 'STANDARD' and m.id = t.article_id
    and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
    ORDER BY hit_ratio DESC) LOOP
       N := N + 1;
       IF N > P_NUMBER THEN
          EXIT;
       end if;
       HTP.P('<li><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||i.id||'">'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_SUBJECT)||'</a></li>');
      END LOOP;
      
      htp.p('    </ul>');

  end print_most_hit_articles;  
   
   procedure PRINT_super as
  N NUMBER := 0;
  l_comments NUMBER;
  begin


    for i in (select  id, msg_subject, replace(msg_text,'#WORKSPACE#',apex_application.get_current_flow_sgid(v('APP_ID'))) 
               msg_text, created_on, created_by_id
              FROM (
  select  id, msg_subject, msg_text, created_on, created_by_id
  from blog_messages
  where MSG_TYPE = 'SUPER' and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
  order by dbms_random.value
                   )
             Where Rownum = 1)  Loop
      Htp.P('<h3>'||Apex_Application.Do_Substitutions(I.Msg_Subject)||'</h3>');
       HTP.P('<p>'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_TEXT)||'</p>');
      END LOOP;

  end print_super;
   procedure PRINT_resource as
  N NUMBER := 0;
  l_comments NUMBER;
  begin

    for i in (select  id, msg_subject, replace(msg_text,'#WORKSPACE#',apex_application.get_current_flow_sgid(v('APP_ID'))) 
              msg_text, created_on, created_by_id
              FROM (
  select  id, msg_subject, msg_text, created_on, created_by_id
  from blog_messages
  where MSG_TYPE = 'RESOURCE' and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
  order by dbms_random.value
                   )
             WHERE rownum = 1)  loop
      htp.p('<h3>'||apex_application.do_substitutions(i.msg_subject)||'</h3>');
       HTP.P('<p>'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_TEXT)||'</p>');
      END LOOP;

  end print_resource;
   procedure PRINT_favorite as
  N NUMBER := 0;
  l_comments NUMBER;
  begin
 
    for I in (select  id, msg_subject, msg_text, created_on, created_by_id
              FROM (
  select  id, msg_subject, msg_text, created_on, created_by_id
  from blog_messages
  where MSG_TYPE = 'FAVORITE' and (trunc(expire_date) < trunc(sysdate) or expire_date is null)
  order by dbms_random.value
                   )
             WHERE rownum = 1)  loop
      htp.p('<h3>'||apex_application.do_substitutions(i.msg_subject)||'</h3>');
       HTP.P('<p>'||APEX_APPLICATION.DO_SUBSTITUTIONS(I.MSG_TEXT)||'</p>');
      END LOOP;

  end print_favorite;
  
  procedure print_archives is
  begin
  htp.p('<ul id="tree" class="jst">');
  for i in (select id, name from vw_blog_calendar where parent_id is null order by name desc) loop
     htp.p('<li id ="'||i.id||'" ><span class="folder"><a href="#">'||i.name||'</a></span><ul>');
     For J In (Select Id, (Select Month_Display From Wwv_Flow_Months_Month Where Month_Value = Name) Name, Name N 
               from vw_blog_calendar where parent_id = i.id order by to_number(n) desc) loop
        htp.p('<li id ="'||j.id||'"><span class="folder"><a href="#">'||j.name||'</a></span><ul>');
       for k in (select id, msg_subject 
               from vw_blog_calendar where parent_id = j.id order by created_on desc) loop
        htp.p('<li id ="'||k.id||'"><span class="file"><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||k.id||'">'||k.msg_subject||'</a></span></li>');
       end loop;
     htp.p('</ul>');
       htp.p('</li>');
     end loop;
    htp.p('</ul>');
     htp.p('</li>');
  end loop;
  htp.p('</ul>');
  end;
  
procedure print_clob( p_clob in clob )
  as
       l_offset number default 1;
 begin
    loop
      exit when l_offset > dbms_lob.getlength(p_clob);
       htp.prn( dbms_lob.substr( p_clob, 255, l_offset ) );
     l_offset := l_offset + 255;
    end loop;
 end;
 
 procedure print_pagination(p_page_count number default 0, p_current_page number default null) as
  N NUMBER := 0;
  v varchar2(100);
  v1 varchar2(100);
begin


if not apex_collection.collection_exists('PAGES') then
  APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B(
    p_collection_name => 'PAGES',
    p_query           => 'select * from (
    select distinct c002  from apex_collections where collection_name = ''PAGINATION'' order by to_number(c002)
    )' );
else
  APEX_COLLECTION.delete_COLLECTION(
    p_collection_name => 'PAGES');
  APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B(
    p_collection_name => 'PAGES',
    p_query           => 'select * from (
    select distinct c002  from apex_collections where collection_name = ''PAGINATION'' order by to_number(c002)
    )' );
end if;


if p_current_page = 1 then

for i in 1..p_page_count loop
if i = 1 or i = p_page_count or (i between p_current_page  and p_current_page + 3) then


    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'YES');

else
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'NO');

end if;
end loop;


elsif p_current_page = 2 then

for i in 1..p_page_count loop
if i = 1 or i = p_page_count or (i between p_current_page  and p_current_page + 2) then

    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'YES');
else
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'NO');
end if;
end loop;

elsif p_current_page = p_page_count then

for i in 1..p_page_count loop
if i = 1 or i = p_page_count or (i between p_current_page -3  and p_current_page ) then

    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'YES');
else
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'NO');
end if;
end loop;

else

for i in 1..p_page_count loop
if i = 1 or i = p_page_count or (i between p_current_page - 1  and p_current_page + 2) then

    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'YES');
else
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => i,
        p_attr_number => '2',
        p_attr_value => 'NO');
end if;
end loop;
end if;

for i in (select distinct 1  from apex_collections where collection_name = 'PAGES' and c001 <=p_current_page and c002 = 'NO') loop
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => 1,
        p_attr_number => '3',
        p_attr_value => 'YES');
end loop;

for i in (select distinct 1  from apex_collections where collection_name = 'PAGES' and c001 >=p_current_page and c002 = 'NO') loop
    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (
        p_collection_name => 'PAGES',
        p_seq => p_page_count,
        p_attr_number => '3',
        p_attr_value => 'YES');
end loop;

htp.p('<ul class="pagination">
');
for i in (select *  from apex_collections where collection_name = 'PAGES' order by to_number(c001))  loop

if
1 = i.c001 and nvl(i.c003,'NO') = 'YES' then
v := '<span style="display:inline;font-size:18px;color: rgb(208, 235, 85);">...</span>';
else
v := null;
end if;

if
p_page_count = i.c001 and nvl(i.c003,'NO') = 'YES' then
v1 := '<span style="display:inline;font-size:18px;color: rgb(208, 235, 85);">...</span>';
else
v1 := null;
end if;

if 
p_current_page = i.c001 then
htp.p( '<li>'||v1||'<a style="display:inline;" class="currentpage" href="#" >'||i.c001||'</a>'||v||'
</li>
');

elsif i.c002 = 'YES' and p_current_page != i.c001 then
htp.p( '<li>'||v1||'<a style="display: inline;" href="javascript:doSubmit(''PAGE'||i.c001||''');" >'||i.c001||'</a>'||v||'</li>');
else
htp.p( '<li style="display:none;"><a style="display:none;" href="#" >'||i.c001||'</a></li>');

end if;
end loop;
htp.p('
</ul>');
end;
 
   procedure print_article_preview(p_number number, p_search varchar2 default null, p_date_month date default null, 
          p_cat_id varchar2 default null, p_article_id varchar2 default null, p_print_comment boolean default true, 
          p_page number default null) as
  N NUMBER := 0;
  ii number := 0;
  l_edit VARCHAR2(2000);
  rabbits NUMBER := 0;
  l_comments NUMBER := 0;
  l_article_id number;
  v_sqlerrm varchar2(4000);
  l_rate    number;
  L_Line    Number;
  l_page    number;
  BEGIN
    L_Article_Id := P_Article_Id; 
    l_page := p_page; 
    L_Line := 1;
    
    for I in (select id, MSG_SUBJECT,  replace(msg_text,'#WORKSPACE#',apex_application.get_current_flow_sgid(v('APP_ID'))) MSG_TEXT, CREATED_ON, CREATED_BY_ID 
    from BLOG_MESSAGES_PREVIEW 
    where msg_type = 'STANDARD'
    and (instr(upper(msg_subject),upper(p_search)) > 0 or
         instr(upper(msg_text),upper(p_search)) > 0 or
         p_search is null
         )
    and (id = l_article_id or l_article_id is null)
    and (category_id = p_cat_id or p_cat_id is null)
    And (Trunc(Expire_Date) > Trunc(Sysdate) Or Expire_Date Is Null)
    And (Exists (Select c001 From Apex_Collections Where Collection_Name = 'PAGINATION' And C001 = to_char(Id) And C002 = P_Page ) Or
        p_page is null)
    ORDER BY CREATED_ON DESC) LOOP
       N := N + 1;
       l_line := 2;
       If N > P_Number Then
          Exit;
       End If;
       --htp.p('<h2>'||apex_application.do_substitutions(i.msg_subject)||'</h2>');
       
       htp.p('<h2><a href="f?p='||v('APP_ALIAS')||':READ:0::::ARTICLE:'||i.id||'"><span style="font:bold 20px verdana,Arial,Sans-Serif;">'||i.msg_subject||'</span></a></h2>');
       for u in (select fname||'.'||lname, nick  u , id from blog_reg_users where id = i.created_by_id) loop
          HTP.p('<h3>Posted on '||to_char(i.created_on, 'Month DD, YYYY HH:MIPM')||' by <span style="color:#D0EB55">'||u.u||'</span></h3>');
       end loop;
      -- htp.p(apex_application.do_substitutions(i.msg_text));
       --HTP.P(I.MSG_TEXT);
       print_clob(i.msg_text);
       
       htp.p('<script>
             $(function(){
               $(''.auto-submit-star'||i.id||''').rating({
               callback: function(value, link){
               var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=RATE_MULTIPLE'',0);
               ajaxRequest.addParam(''x01'', value);
               ajaxRequest.addParam(''x02'', '||i.id||');
               var results = ajaxRequest.get();
               ajaxRequest = null;
               $(''.auto-submit-star'||i.id||''').rating(''disable'');
            }
         });
      });
      </script>');
       begin
          SELECT rate
          into   l_rate
          FROM   blog_article_rate
          WHERE  article_id  = i.id 
          ;
       
          exception when others then l_rate := null;
       end;
       htp.p('<div class="Clear"><p>Please rate this article so that we can improve the content (red stars show the current rate):</p>');
       for v in (SELECT APEX_ITEM.RADIOGROUP (n,lvl,l_rate,null,'class="auto-submit-star'||i.id||'"') a
                 FROM   ( select level lvl from dual connect by level <= 5) r
                 ORDER  BY lvl) loop
          htp.p(v.a);
       end loop;
       htp.p('</div>');
       
       SELECT COUNT(*) INTO L_COMMENTS 
       FROM BLOG_MESSAGES_PREVIEW 
       WHERE MSG_ID = I.ID
       and msg_type = 'COMMENT';
       if l_comments > 0 then
          rabbits := rabbits + 1;
          htp.p('<div class="date">
                  <h3>
                <a href="javascript:animatedcollapse.toggle(''rabbit'||rabbits||''')">Comments ('||L_COMMENTS||')</a>
                </h3>
                </div>
                <div id="rabbit'||rabbits||'" style="background:#414141;padding:5px;">');
                
     elsif p_print_comment then
       htp.p('<div class="date">
                  <h3>
                <a href="f?p='||v('APP_ALIAS')||':WRITECOMMENT:0::::ARTICLE:'||i.id||'">Post first comment</a>
                </h3>
                </div>
                ');     
     end if;
     ii := 0;
      for j in (select  id, replace(replace(msg_text,'<code>','<pre class="brush:javascript">'),'</code>','</pre>') msg_text, 
                 created_on, created_by_id 
                from BLOG_MESSAGES_PREVIEW 
                 where msg_id = i.id 
                 and msg_type = 'COMMENT' ORDER BY CREATED_ON) LOOP
       for u in (select fname||'.'||lname, nick  u , id from blog_reg_users where id = j.created_by_id) loop
          l_edit := null;
          for uu in (select c001 from apex_collections where collection_name = 'COMMENTS' and c001 = to_char(j.id)) loop
            l_edit :='&nbsp;&nbsp;<a href="f?p='||v('APP_ALIAS')||':EDIT:0::::COMMENT:'||j.id||'"><b>Edit</b></a>';
          end loop;
          htp.p('<p style="margin:5px;">Posted on '||to_char(j.created_on,'Month DD, YYYY HH:MIPM')||' by <span style="color:#D0EB55">'
              ||u.u||'</span>'||l_edit||'</p>');
         
       end loop;      
       htp.p(j.msg_text);
       ii := ii + 1;
       if ii != l_comments then
         htp.p('<hr>');
       end if;
      end loop;
      if l_comments > 0 and p_print_comment then
         htp.p('<div class="reply">
               <h3>
             <a href="f?p='||v('APP_ALIAS')||':WRITECOMMENT:0::::ARTICLE:'||i.id||'">Post comment</a>
             </h3>
             </div>');
       end if;
      if l_comments > 0 then
         htp.p('    </div>');
       end if;
    end LOOP;

    if rabbits > 0 then
        HTP.P('<script type="text/javascript">');
    for i in 1..rabbits loop
       htp.p('animatedcollapse.addDiv(''rabbit'||i||''', ''fade=0,hide=1'')');
    end loop;
   
    htp.p('
animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted
    //$: Access to jQuery
    //divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID
    //state: "block" or "none", depending on state
};
 
animatedcollapse.init()

</script>');
---htp.p('<div style="display:none;"></div>');
end if;
  if n = 0 then
          htp.p('
                  <h3>
                Nothing found, please search again.
                </h3>
                ');
  end if;

 exception when others then
     v_sqlerrm := sqlerrm;
     Insert Into Error_Log(Err_Message, Defined_Message,Id, Log_Seq_Id)
     VALUES (v_sqlerrm||' '||l_line||'page'||p_page, 'Error in blog_gui.print_article',null, null);
          htp.p('
                  <h3>
                Some error occured, please try again later.
                </h3>
                ');  
  END print_article_preview;
 
 
 
END BLOG_GUI;

/

--------------------------------------------------------
--  DDL for Package Body BLOG_ID
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "BLOG_ID" as
g_curr_val number default NULL;
function curr_val
return number 
is
    ate_not_yet_defined exception;
    pragma exception_init( ate_not_yet_defined, -8002 );
begin
    if ( g_curr_val is NULL ) then
        raise ate_not_yet_defined;
    end if;
    return g_curr_val;
end curr_val;
function next_val
return number 
is
begin
    select  to_number(
                 to_char(blog_seq.nextval) ||
                      lpad( substr( abs(ate_random.rand), 1, 5 ),5, '0' ) ||
                      ltrim(to_char(mod(abs(dbms_utility.get_time),1000000),'000000'))
                 )
    into    g_curr_val
    from   dual;
                      
    return g_curr_val;
end next_val;
end blog_id;

/

--------------------------------------------------------
--  DDL for Procedure DOWNLOAD_FILE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DOWNLOAD_FILE" (p_file in number) 
as
    v_mime varchar2(48);
    v_length number;
    v_file_name varchar2(2000);
    Lob_loc BLOB;
BEGIN
    select mime_type, blob_content, FILENAME,dbms_lob.getlength(blob_content)
      into v_mime,lob_loc,v_file_name,v_length
      from ate_files
     where id = p_file;
     
    --
    -- set up HTTP header
    --
    -- use an NVL around the mime type and
    -- if it is a null set it to application/octect
    -- application/octect may launch a download window from windows
    owa_util.mime_header( nvl(v_mime,'application/octet'), FALSE );
    -- set the size so the browser knows how much to download
    htp.p('Content-length: ' || v_length);    
    if v_mime != 'text/html' then
        -- the filename will be used by the browser if the users does a save as
        htp.p('Content-Disposition: attachment; filename="' || v_file_name || '"');
    end if;
    -- close the headers
    owa_util.http_header_close;
    -- download the BLOB
    wpg_docload.download_file( Lob_loc );
end DOWNLOAD_FILE;

/

--------------------------------------------------------
--  DDL for Procedure GET_GEOCODE_HOSTIP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GET_GEOCODE_HOSTIP" 
is
  t_ apex_application_global.vc_arr2;
  l_lat   varchar2(200);
  l_longt VARCHAR2(200);
BEGIN
  FOR a IN
  (SELECT rowid,
    IP_ADDRESS,
    LAT,
    LONGT,
    CITY,
    REGION,
    COUNTRY,
    COUNTRY_CODE
  FROM ate_activity_log
  where ip_address is not null 
  and country_code is null
  and time_stamp > sysdate - 1.01
  )
  loop 
        l_lat   := null;
        l_longt := null;  
    BEGIN
      FOR i IN
      (SELECT EXTRACTVALUE(VALUE(t), '/*/name') city,
        EXTRACTVALUE(VALUE(t), '/*/countryName') country,
        EXTRACTVALUE(VALUE(t), '/*/ipLocation/pointProperty/Point/coordinates') geocode
      FROM
        (SELECT REPLACE(httpuritype ('http://api.hostip.info/?ip='
          ||a.ip_address ).getClob (),'gml:') mydata
        FROM dual
        ) c,
        table(xmlsequence(xmltype.createxml(c.mydata).extract('HostipLookupResultSet/featureMember/Hostip'))) t
      )
      loop
       begin
        t_    := apex_util.string_to_table(i.geocode,',');
        l_lat   := t_(2); 
        l_longt := t_(1); 
      exception when others then null;
       end;
        update ate_activity_log
        set lat    = l_lat , longt =  l_longt , city = i.city ,country = i.country
        where rowid = a.rowid;
       
      end loop;
    exception
    WHEN others THEN
      NULL;
    END;
  end loop;
  commit;
  

    FOR a IN
  (SELECT rowid, remote_addr ip_address
  FROM ate_article_log$
  where remote_addr is not null 
  and location is null
  and access_date > sysdate - 1.01
  )
  loop --dbms_output.put_line(a.ip_address);
        l_lat   := null;
        l_longt := null;  
    BEGIN
      FOR i IN
      (SELECT EXTRACTVALUE(VALUE(t), '/*/name') city,
        EXTRACTVALUE(VALUE(t), '/*/countryName') country,
        EXTRACTVALUE(VALUE(t), '/*/ipLocation/pointProperty/Point/coordinates') geocode
      FROM
        (SELECT REPLACE(httpuritype ('http://api.hostip.info/?ip='
          ||a.ip_address ).getClob (),'gml:') mydata
        FROM dual
        ) c,
        table(xmlsequence(xmltype.createxml(c.mydata).extract('HostipLookupResultSet/featureMember/Hostip'))) t
      )
      loop
       begin
        t_    := apex_util.string_to_table(i.geocode,',');
        l_lat   := t_(2); --dbms_output.put_line(l_lat);
        l_longt := t_(1); --dbms_output.put_line(l_longt);
      exception when others then null;
       end;
        update ate_article_log$
        set location    =  i.country -- currently only country
        where rowid = a.rowid;
       
      end loop;
    exception
    WHEN others THEN
      NULL;
    END;
  end loop;
  commit;
END;

/

--------------------------------------------------------
--  DDL for Procedure RSS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RSS" 
/*
grant execute on blog.rss to public;
create public synonym rss for BLOG.RSS;
*/
is
    -- customizable parameters
    l_title         varchar2(255) := 'DbSWH Goodies on Oracle Application Express and Oracle Database, Linux, jQuery and etc';
    l_link          varchar2(255) := 'http://dbswh.webhop.net/dbswh/f?p=BLOG:HOME:0';
    l_sublink       varchar2(255) := 'http://dbswh.webhop.net/dbswh/';
    l_description   varchar2(255) := 'This is a feed for DbSWH Blog most recent articles';
    l_language      varchar2(255) := 'en';
    -- end customizable parameters
    l_version       varchar2(10)  := '2.0';
    l_clob          clob;
    l_idx           pls_integer := 1;
    l_len           pls_integer := 255;
    l_defrows       pls_integer := 10;
    l_maxrows       pls_integer := 50;
    l_desclen       pls_integer := 250;
begin
    for i in (
      select xmlelement( "rss",
               -- Begin XML Header Block
               xmlattributes( l_version as "version"),
                 xmlelement( "channel",
                   xmlforest( l_title as "title",
                              l_link as "link",
                              l_description as "description",
                              l_language as "language"),
                 -- End XML Header Block
                 -- Begin List of Individual Articles or Items
                 xmlagg(
                     xmlelement( "item",
                       xmlelement("title", x.title),
                       xmlelement("link", x.link),
                       xmlelement("description", x.description),
                       xmlelement("author", x.nick),
                       xmlelement("pubDate", to_char(x.updated_on,'Dy, DD Mon RRRR hh24:mi:ss')),
                       xmlelement("guid", XMLATTRIBUTES('false' as "isPermaLink"),x.id||to_char(x.updated_on,'JHH24MISS'))
                     )
                   )
                   -- End List of Individual Articles or Items
                 )
             ) as result
        from (  -- Actual Database Query that populates the list of Items
                select id,msg_subject title,l_sublink||'f?p=BLOG:READ:0::::ARTICLE:'||id link,rss_description description,created_on updated_on,nick
                  from blog_msg b
                 where msg_type = 'STANDARD' 
                  and ( trunc(expire_date) > trunc(sysdate) or expire_date is null)
                order by created_on desc) x where rownum < (l_maxrows+1) )
    loop
        l_clob := xmltype.extract(i.result,'/').getclobval;
        exit;
    end loop; --i

    --- OUTPUT RESULTS
    owa_util.mime_header('application/xml', false);
    owa_util.http_header_close;
    for i in 1..ceil(dbms_lob.getlength(l_clob)/l_len) loop
        htp.prn(substr(l_clob,l_idx,l_len));
        l_idx := l_idx + l_len;
    end loop; --i
end rss;

/

--------------------------------------------------------
--  DDL for Procedure RSS_HOT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RSS_HOT" 
/*
grant execute on blog.rss to public;
create public synonym rss for BLOG.RSS;
*/
is
    -- customizable parameters
    l_title         varchar2(255) := 'DbSWH Goodies on Oracle Application Express and Oracle Database, Linux, jQuery and etc';
    l_link          varchar2(255) := 'http://dbswh.webhop.net/dbswh/f?p=BLOG:HOME:0';
    l_sublink       varchar2(255) := 'http://dbswh.webhop.net/dbswh/';
    l_description   varchar2(255) := 'This is a feed for DbSWH Blog hot articles (most comments)';
    l_language      varchar2(255) := 'en';
    -- end customizable parameters
    l_version       varchar2(10)  := '2.0';
    l_clob          clob;
    l_idx           pls_integer := 1;
    l_len           pls_integer := 255;
    l_defrows       pls_integer := 10;
    l_maxrows       pls_integer := 30;
    l_desclen       pls_integer := 250;
begin
    for i in (
      select xmlelement( "rss",
               -- Begin XML Header Block
               xmlattributes( l_version as "version"),
                 xmlelement( "channel",
                   xmlforest( l_title as "title",
                              l_link as "link",
                              l_description as "description",
                              l_language as "language"),
                 -- End XML Header Block
                 -- Begin List of Individual Articles or Items
                 xmlagg(
                     xmlelement( "item",
                       xmlelement("title", x.title),
                       xmlelement("link", x.link),
                       xmlelement("description", x.description),
                       xmlelement("author", x.nick),
                       xmlelement("pubDate", to_char(x.updated_on,'Dy, DD Mon RRRR hh24:mi:ss')),
                       xmlelement("guid", XMLATTRIBUTES('false' as "isPermaLink"),x.id||to_char(x.updated_on,'JHH24MISS'))
                     )
                   )
                   -- End List of Individual Articles or Items
                 )
             ) as result
        from (  -- Actual Database Query that populates the list of Items
                select b.id,b.msg_subject title, 'http://dbswh.webhop.net/dbswh/f?p=BLOG:READ:0::::ARTICLE:'||b.id link,
                 b.rss_description description, b.created_on updated_on, count(c.id) count_c, b.nick
                  from blog_msg b, blog_msg c
                 where b.msg_type = 'STANDARD' 
                 and c.msg_id = b.id
                  and (trunc(b.expire_date) > trunc(sysdate) or b.expire_date is null)
                 group by b.id, b.msg_subject, l_sublink||'f?p=BLOG:READ:0::::ARTICLE:'||b.id, b.rss_description, b.created_on, b.nick 
                 order by count(c.id) desc) x where rownum < (l_maxrows+1)  )
    loop
        l_clob := xmltype.extract(i.result,'/').getclobval;
        exit;
    end loop; --i

    --- OUTPUT RESULTS
    owa_util.mime_header('application/xml', false);
    owa_util.http_header_close;
    for i in 1..ceil(dbms_lob.getlength(l_clob)/l_len) loop
        htp.prn(substr(l_clob,l_idx,l_len));
        l_idx := l_idx + l_len;
    end loop; --i
end rss_hot;

/

--------------------------------------------------------
--  DDL for Procedure RSS_POPULAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RSS_POPULAR" 
/*
grant execute on blog.rss to public;
create public synonym rss for BLOG.RSS;
*/
is
    -- customizable parameters
    l_title         varchar2(255) := 'DbSWH Goodies on Oracle Application Express and Oracle Database, Linux, jQuery and etc';
    l_link          varchar2(255) := 'http://dbswh.webhop.net/dbswh/f?p=BLOG:HOME:0';
    l_sublink       varchar2(255) := 'http://dbswh.webhop.net/dbswh/';
    l_description   varchar2(255) := 'This is a feed for DbSWH Blog by popularity (number of clicks)';
    l_language      varchar2(255) := 'en';
    -- end customizable parameters
    l_version       varchar2(10)  := '2.0';
    l_clob          clob;
    l_idx           pls_integer := 1;
    l_len           pls_integer := 255;
    l_defrows       pls_integer := 10;
    l_maxrows       pls_integer := 20;
    l_desclen       pls_integer := 250;
begin
    for i in (
      select xmlelement( "rss",
               -- Begin XML Header Block
               xmlattributes( l_version as "version"),
                 xmlelement( "channel",
                   xmlforest( l_title as "title",
                              l_link as "link",
                              l_description as "description",
                              l_language as "language"),
                 -- End XML Header Block
                 -- Begin List of Individual Articles or Items
                 xmlagg(
                     xmlelement( "item",
                       xmlelement("title", x.title),
                       xmlelement("link", x.link),
                       xmlelement("description", x.description),
                       xmlelement("author", x.nick),
                       xmlelement("pubDate", to_char(x.updated_on,'Dy, DD Mon RRRR hh24:mi:ss')),
                       xmlelement("guid", XMLATTRIBUTES('false' as "isPermaLink"),x.id||to_char(x.updated_on,'JHH24MISS'))
                     )
                   )
                   -- End List of Individual Articles or Items
                 )
             ) as result
        from (  -- Actual Database Query that populates the list of Items
                select id,msg_subject title,l_sublink||'f?p=BLOG:READ:0::::ARTICLE:'||id link,rss_description description,created_on updated_on, nick
                  from blog_msg b, ate_articles_top20 a
                 where msg_type = 'STANDARD' and b.id = a.article_id (+) 
                  and (trunc(expire_date) > trunc(sysdate) or expire_date is null)
                 order by nvl(thecount,0) desc) x where rownum < (l_maxrows+1) )
    loop
        l_clob := xmltype.extract(i.result,'/').getclobval;
        exit;
    end loop; --i

    --- OUTPUT RESULTS
    owa_util.mime_header('application/xml', false);
    owa_util.http_header_close;
    for i in 1..ceil(dbms_lob.getlength(l_clob)/l_len) loop
        htp.prn(substr(l_clob,l_idx,l_len));
        l_idx := l_idx + l_len;
    end loop; --i
end rss_popular;

/

--------------------------------------------------------
--  DDL for Procedure RSS_RECENT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "RSS_RECENT" 
/*
grant execute on blog.rss to public;
create public synonym rss for BLOG.RSS;
*/
is
    -- customizable parameters
    l_title         varchar2(255) := 'DbSWH Goodies on Oracle Application Express and Oracle Database, Linux, jQuery and etc';
    l_link          varchar2(255) := 'http://dbswh.webhop.net/dbswh/f?p=BLOG:HOME:0';
    l_sublink       varchar2(255) := 'http://dbswh.webhop.net/dbswh/';
    l_description   varchar2(255) := 'This is a feed for DbSWH Blog most recent articles';
    l_language      varchar2(255) := 'en';
    -- end customizable parameters
    l_version       varchar2(10)  := '2.0';
    l_clob          clob;
    l_idx           pls_integer := 1;
    l_len           pls_integer := 255;
    l_defrows       pls_integer := 10;
    l_maxrows       pls_integer := 30;
    l_desclen       pls_integer := 250;
begin
    for i in (
      select xmlelement( "rss",
               -- Begin XML Header Block
               xmlattributes( l_version as "version"),
                 xmlelement( "channel",
                   xmlforest( l_title as "title",
                              l_link as "link",
                              l_description as "description",
                              l_language as "language"),
                 -- End XML Header Block
                 -- Begin List of Individual Articles or Items
                 xmlagg(
                     xmlelement( "item",
                       xmlelement("title", x.title),
                       xmlelement("link", x.link),
                       xmlelement("description", x.description),
                       xmlelement("author", x.nick),
                       xmlelement("pubDate", to_char(x.updated_on,'Dy, DD Mon RRRR hh24:mi:ss')),
                       xmlelement("guid", XMLATTRIBUTES('false' as "isPermaLink"),x.id||to_char(x.updated_on,'JHH24MISS'))
                     )
                   )
                   -- End List of Individual Articles or Items
                 )
             ) as result
        from (  -- Actual Database Query that populates the list of Items
                select id,msg_subject title,l_sublink||'f?p=BLOG:READ:0::::ARTICLE:'||id link,rss_description description,created_on updated_on,nick
                  from blog_msg b
                 where msg_type = 'STANDARD' 
                  and ( trunc(expire_date) > trunc(sysdate) or expire_date is null)
                order by created_on desc) x where rownum < (l_maxrows+1) )
    loop
        l_clob := xmltype.extract(i.result,'/').getclobval;
        exit;
    end loop; --i

    --- OUTPUT RESULTS
    owa_util.mime_header('application/xml', false);
    owa_util.http_header_close;
    for i in 1..ceil(dbms_lob.getlength(l_clob)/l_len) loop
        htp.prn(substr(l_clob,l_idx,l_len));
        l_idx := l_idx + l_len;
    end loop; --i
end rss_recent;

/

--------------------------------------------------------
--  DDL for Procedure SEND_MAIL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SEND_MAIL" ( p_to in varchar2,
                         p_from          in varchar2,
                         p_body          in varchar2,
                         p_body_html     in varchar2 default NULL,
                         p_subj          in varchar2 default NULL,
                         p_cc            in varchar2 default NULL,
                         p_bcc           in varchar2 default NULL)
AS


BEGIN

  APEX_MAIL.SEND( p_to            ,
                    p_from          ,
                    p_body          ,
                    p_body_html     ,
                    p_subj          ,
                    p_cc            ,
                    p_bcc           );

END SEND_MAIL;
 
/

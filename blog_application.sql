set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
 
--application/set_environment
prompt  APPLICATION 109 - DBSWH Blog
--
-- Application Export:
--   Application:     109
--   Name:            DBSWH Blog
--   Date and Time:   18:42 Thursday September 20, 2018
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.1.0.00.32
--   Instance ID:     63404924119295
 
-- Import:
--   Using application builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040100 or as the owner (parsing schema) of the application.
 
-- Application Statistics:
--   Pages:                   12
--     Items:                 64
--     Computations:           3
--     Validations:           17
--     Processes:             23
--     Regions:               56
--     Buttons:                6
--     Dynamic Actions:        0
--   Shared Components
--     Breadcrumbs:            1
--        Entries              1
--     Items:                 17
--     Computations:           2
--     Processes:             17
--     Parent Tabs:            0
--     Tab Sets:               1
--        Tabs:                1
--     NavBars:                3
--     Lists:                  1
--     Shortcuts:              2
--     Themes:                 1
--     Templates:
--        Page:               12
--        List:               17
--        Report:              7
--        Label:               9
--        Region:             26
--     Messages:               0
--     Build Options:          0
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040100 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,2804216279938690));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2011.02.12');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,109);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,109));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,109));
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,109),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,109),
  p_owner => nvl(wwv_flow_application_install.get_schema,'BLOG'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'DBSWH Blog'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'BLOG'),
  p_page_view_logging => 'YES',
  p_default_page_template=> 582564885251524262 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 582535276357876738 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 582537578408876740 + wwv_flow_api.g_id_offset,
  p_error_template=> 2954601722196224 + wwv_flow_api.g_id_offset,
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20180920184211',
  p_max_session_length_sec=> 28800,
  p_compatibility_mode=> '4.0',
  p_home_link=> 'f?p=BLOG:HOME:0',
  p_flow_language=> 'en-us',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_allow_feedback_yn=> 'N',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'/img/'),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 6349363935092784 + wwv_flow_api.g_id_offset,
  p_login_url=> '',
  p_logout_url=> 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:19',
  p_application_tab_set=> 0,
  p_logo_image => 'TEXT:&APPLICATION_NAME.',
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '.'||to_char(6349363935092784 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE',
  p_flow_unavailable_text=> 'http://dbswh.webhop.net/htmldb/f?p=BLOG:HOME:0',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'Y',
  p_browser_frame=>'A',
  p_vpd=> '',
  p_vpd_teardown_code=> '',
  p_csv_encoding=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_theme_id => 12,
  p_default_label_template => 582540768116876742 + wwv_flow_api.g_id_offset,
  p_default_report_template => 582540374952876742 + wwv_flow_api.g_id_offset,
  p_default_list_template => 582539578079876741 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 582541082065876742 + wwv_flow_api.g_id_offset,
  p_default_button_template => 582535586482876738 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 582536574263876739 + wwv_flow_api.g_id_offset,
  p_default_form_template => 582536687372876739 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 582538076148876740 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 582537578408876740 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>582537578408876740 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 582536179758876739 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 582537775373876740 + wwv_flow_api.g_id_offset,
  p_substitution_string_01 => 'APPLICATION_NAME',
  p_substitution_value_01  => 'DbSWH Goodies on Oracle Application Express, Oracle Database, jQuery, Linux and etc',
  p_substitution_string_02 => 'EXPERT_NAME',
  p_substitution_value_02  => 'DbSWH',
  p_substitution_string_03 => 'WEBSITE',
  p_substitution_value_03  => 'dbswh.webhop.net/dbswh',
  p_substitution_string_04 => 'APIKEY',
  p_substitution_value_04  => 'ABQIAAAA5QLLLLGCLHycNzPvJrNe2BQ8fGNW3Ai3vnX9nzoYclP5PQyLMxTpb4QB2hOBE7CpJdwx6Be5NaBOsQ',
  p_substitution_string_05 => 'BLOG_EMAIL',
  p_substitution_value_05  => 'blog@dbswh.com',
  p_last_updated_by => 'ADMIN',
  p_last_upd_yyyymmddhh24miss=> '20180920184211',
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 582635974962487592 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 10,
  p_icon_image => '#WORKSPACE_IMAGES#home.gif',
  p_icon_subtext=> '',
  p_icon_target=> 'f?p=&APP_ALIAS.:HOME:0',
  p_icon_image_alt=> '',
  p_icon_height=> null,
  p_icon_width=> null,
  p_icon_height2=> null,
  p_icon_width2=> null,
  p_nav_entry_is_feedback_yn => '',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
wwv_flow_api.create_icon_bar_item(
  p_id => 582636280634498706 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 10,
  p_icon_image => '#WORKSPACE_IMAGES#contact.gif',
  p_icon_subtext=> '',
  p_icon_target=> 'javascript:openForm(''&ADMIN_ID.'');',
  p_icon_image_alt=> '',
  p_icon_height=> null,
  p_icon_width=> null,
  p_icon_height2=> null,
  p_icon_width2=> null,
  p_nav_entry_is_feedback_yn => '',
  p_icon_bar_disp_cond=> '9',
  p_icon_bar_disp_cond_type=> '',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
wwv_flow_api.create_icon_bar_item(
  p_id => 582542367753876746 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 200,
  p_icon_image => '#IMAGE_PREFIX#lock_wait.gif',
  p_icon_subtext=> '&RETURN_USER.',
  p_icon_target=> '#',
  p_icon_image_alt=> '',
  p_icon_height=> 13,
  p_icon_width=> 11,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => '',
  p_icon_bar_disp_cond=> 'RETURN_USER',
  p_icon_bar_disp_cond_type=> 'ITEM_IS_NOT_NULL',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
--application/shared_components/logic/application_processes/email_from_contact_form
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'n number;'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
''||unistr('\000a')||
'for i in (select email'||unistr('\000a')||
'         from blog_reg_users where id = to_number(:CUSTOMER_NUM_TO)) loop'||unistr('\000a')||
'APEX_MAIL.SEND('||unistr('\000a')||
'    p_from => trim(:P0_EMAIL_FROM),'||unistr('\000a')||
'    p_to => i.email,'||unistr('\000a')||
'    p_body => :P0_BODY,'||unistr('\000a')||
'    p_subj => :P0_SUBJECT'||unistr('\000a')||
');'||unistr('\000a')||
''||unistr('\000a')||
'n := HTMLDB_PLSQL_JOB.submit_process'||unistr('\000a')||
'('||unistr('\000a')||
'p_sql => '''||unistr('\000a')||
'begin'||unistr('\000a')||
'HTMLDB_MAIL.PUSH_QUEUE(''''localhost'''', 25);'||unistr('\000a')||
'end;'','||unistr('\000a')||
'p_when => sysdate,'||unistr('\000a')||
'p_status => ''SUBMITTED'''||unistr('\000a')||
');';

p:=p||''||unistr('\000a')||
''||unistr('\000a')||
'commit;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
''||unistr('\000a')||
'END;';

wwv_flow_api.create_flow_process(
  p_id => 5501737298396951 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'email_from_contact_form',
  p_process_sql_clob=> p,
  p_process_error_message=> 'Can not send email.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> 'CONTACT',
  p_process_when_type=> 'REQUEST_EQUALS_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/calculate_returning_user_nick_and_email_from_cookie
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
'ate_api.read_askcookie;'||unistr('\000a')||
':p9_nickname := ate_api.fetch_askcookie_val(''NICKNAME'');'||unistr('\000a')||
':p9_email := ate_api.fetch_askcookie_val(''EMAIL'');'||unistr('\000a')||
'if :p9_nickname is not null then'||unistr('\000a')||
'for i in (select 1 from dual where exists (select 1 from blog_messages'||unistr('\000a')||
'                                           where  session_id = to_number(ate_api.fetch_askcookie_val(''HASH''))'||unistr('\000a')||
'                                           and ';

p:=p||'created_by_id in (select id from blog_reg_users where '||unistr('\000a')||
'                                                                                     nick = :p9_nickname)'||unistr('\000a')||
'                                          )'||unistr('\000a')||
'          ) loop'||unistr('\000a')||
':RETURN_USER := :p9_nickname;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_flow_process(
  p_id => 3062017479554637 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'calculate returning user nick and email from cookie',
  p_process_sql_clob=> p,
  p_process_error_message=> 'Can not find user.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> 'RETURN_USER',
  p_process_when_type=> 'ITEM_IS_NULL',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/redirect_to_0_session
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'if OWA_UTIL.get_cgi_env (''QUERY_STRING'') not like ''p=BLOG:%:0%'' then'||unistr('\000a')||
'owa_util.redirect_url(''f?p=&APP_ALIAS.:HOME:0'');'||unistr('\000a')||
''||unistr('\000a')||
'end if;';

wwv_flow_api.create_flow_process(
  p_id => 3231617289427977 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'redirect to 0 session',
  p_process_sql_clob=> p,
  p_process_error_message=> 'can not redirect',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/reset_p_current_page
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'if :reset_page is null then'||unistr('\000a')||
':P_CURRENT_PAGE := 1;'||unistr('\000a')||
'end if;';

wwv_flow_api.create_flow_process(
  p_id => 5262815472348189 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Reset P_CURRENT_PAGE',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/redirect_from_page_0
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'owa_util.redirect_url(''f?p=&APP_ALIAS.:HOME:0'');';

wwv_flow_api.create_flow_process(
  p_id => 5590655831408321 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'redirect from page 0',
  p_process_sql_clob=> p,
  p_process_error_message=> 'can not redirect from page 0.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '0',
  p_process_when_type=> 'CURRENT_PAGE_IN_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/clear_search
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||':p0_x1 := null;'||unistr('\000a')||
':p0_search_opt := null;';

wwv_flow_api.create_flow_process(
  p_id => 8455021181441793 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'clear search',
  p_process_sql_clob=> p,
  p_process_error_message=> 'Can not clear search.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '2',
  p_process_when_type=> 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/printitemhelp
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'for i in ('||unistr('\000a')||
'select ITEM_HELP_TEXT'||unistr('\000a')||
'from APEX_APPLICATION_PAGE_ITEMS'||unistr('\000a')||
'where  application_id = :app_id'||unistr('\000a')||
'and item_id = apex_application.g_x01 '||unistr('\000a')||
') loop'||unistr('\000a')||
'htp.p(i.ITEM_HELP_TEXT);'||unistr('\000a')||
'end loop;';

wwv_flow_api.create_flow_process(
  p_id => 2893904493682064 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'PRINTITEMHELP',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/logerror
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'DECLARE'||unistr('\000a')||
'n NUMBER;'||unistr('\000a')||
'BEGIN'||unistr('\000a')||
'SELECT blog_id.next_val'||unistr('\000a')||
'INTO n'||unistr('\000a')||
'FROM DUAL;'||unistr('\000a')||
''||unistr('\000a')||
'INSERT INTO error_log(err_message, defined_message,id, log_seq_id)'||unistr('\000a')||
'VALUES (APEX_APPLICATION.G_x01, APEX_APPLICATION.G_x02,n, null);'||unistr('\000a')||
'--htp.prn(''<b>''||LOG_ERROR_PKG.FORMAT_ERROR(APEX_APPLICATION.G_x01||''</b>'',NULL));'||unistr('\000a')||
'--htp.prn(''<br/><br/>''||htmldb_lang.message(''CONTACT_ADMIN'',n));'||unistr('\000a')||
'--htp.prn(sqlerrm);'||unistr('\000a')||
'--snapshot_session.take_snap(n);'||unistr('\000a')||
'';

p:=p||'htp.p(n);'||unistr('\000a')||
':ERROR := n;'||unistr('\000a')||
':ERRMSG := APEX_APPLICATION.G_x02;'||unistr('\000a')||
'END;';

wwv_flow_api.create_flow_process(
  p_id => 3048731980711627 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'LOGERROR',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/formaterror
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'owa_util.redirect_url(''f?p=BLOG:ERROR:0::::ERROR:''||APEX_APPLICATION.G_x01);';

wwv_flow_api.create_flow_process(
  p_id => 3050819587313724 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'FORMATERROR',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/hash
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'htp.p(BLOG_CUSTOM_HASH(upper(APEX_APPLICATION.G_x01),ate_api.g_ask_cookiename));';

wwv_flow_api.create_flow_process(
  p_id => 3051911724794002 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'HASH',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/p2_auto
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'	l_search varchar2(32676);'||unistr('\000a')||
'begin'||unistr('\000a')||
'	l_search := replace(wwv_flow.g_x01,'' '',''%'');'||unistr('\000a')||
'    '||unistr('\000a')||
'    for c1 in (select msg_subject'||unistr('\000a')||
'                 from blog_messages'||unistr('\000a')||
'                where msg_type = ''STANDARD'''||unistr('\000a')||
'                and (upper(msg_subject) like ''%''||upper(l_search)||''%'' or upper(msg_text) like ''%''||upper(l_search)||''%'') order by msg_subject)'||unistr('\000a')||
'    loop'||unistr('\000a')||
'        htp.p(c1.msg_subject);'||unistr('\000a')||
'    end lo';

p:=p||'op;'||unistr('\000a')||
'ate_api.write_search_log(''From Autocomplete: ''|| wwv_flow.g_x01, :p9_email );'||unistr('\000a')||
'end;';

wwv_flow_api.create_flow_process(
  p_id => 5376803957765012 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'P2_AUTO',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/checkcontact
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||':P0_EMAIL_FROM := substr(trim(:P0_EMAIL_FROM),1,100);'||unistr('\000a')||
':P0_SUBJECT := substr(trim(:P0_SUBJECT),1,100);'||unistr('\000a')||
':P0_BODY := substr(trim(:P0_BODY),1,32000);'||unistr('\000a')||
'if not check_email(:P0_EMAIL_FROM) then'||unistr('\000a')||
'htp.prn(''Email is of invalid format or empty.'');'||unistr('\000a')||
'end if;'||unistr('\000a')||
'if :P0_SUBJECT is null then'||unistr('\000a')||
'htp.p(''<br>'');'||unistr('\000a')||
'htp.prn(''Subject should be specified.'');'||unistr('\000a')||
'end if;'||unistr('\000a')||
'if :P0_BODY is null then'||unistr('\000a')||
'htp.p(''<br>'');'||unistr('\000a')||
'htp.prn(''Message body sho';

p:=p||'uld be specified.'');'||unistr('\000a')||
'end if;';

wwv_flow_api.create_flow_process(
  p_id => 5501326085384260 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'CHECKCONTACT',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/setcustomerto
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||':CUSTOMER_NUM_TO := apex_application.g_x01;'||unistr('\000a')||
'for i in (select nick from blog_reg_users where id = :CUSTOMER_NUM_TO ) loop'||unistr('\000a')||
'  :CUSTOMER_NICK := i.nick;'||unistr('\000a')||
'  htp.p(:CUSTOMER_NICK);'||unistr('\000a')||
'END LOOP;';

wwv_flow_api.create_flow_process(
  p_id => 5501537859387689 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'SETCUSTOMERTO',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/googleapi
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
':LAT := nvl(apex_application.g_x01,0);'||unistr('\000a')||
':LONG := apex_application.g_x02;'||unistr('\000a')||
':CITY := apex_application.g_x03;'||unistr('\000a')||
':REGION := apex_application.g_x04;'||unistr('\000a')||
':COUNTRY := apex_application.g_x05;'||unistr('\000a')||
':COUNTRY_CODE := apex_application.g_x06;'||unistr('\000a')||
':IP := get_client_ip;'||unistr('\000a')||
''||unistr('\000a')||
'IF nvl(:IP,''0'') not like ''192.168.%'' THEN'||unistr('\000a')||
''||unistr('\000a')||
'INSERT'||unistr('\000a')||
'INTO ATE_ACTIVITY_LOG'||unistr('\000a')||
'  ('||unistr('\000a')||
'    TIME_STAMP,'||unistr('\000a')||
'    COOKIE_ID,'||unistr('\000a')||
'    PAGE_ID,'||unistr('\000a')||
'    SESSION_ID,'||unistr('\000a')||
'    IP_ADDRESS,'||unistr('\000a')||
'  ';

p:=p||'  USER_AGENT,'||unistr('\000a')||
'    MONTH,'||unistr('\000a')||
'    LAT,'||unistr('\000a')||
'    LONGT,'||unistr('\000a')||
'    CITY,'||unistr('\000a')||
'    REGION,'||unistr('\000a')||
'    COUNTRY,'||unistr('\000a')||
'    COUNTRY_CODE'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    sysdate,'||unistr('\000a')||
'    null,'||unistr('\000a')||
'    :APP_PAGE_ID,'||unistr('\000a')||
'    :SESSION,'||unistr('\000a')||
'    :IP,'||unistr('\000a')||
'    owa_util.get_cgi_env( ''HTTP_USER_AGENT'' ),'||unistr('\000a')||
'    null,'||unistr('\000a')||
':LAT ,'||unistr('\000a')||
':LONG ,'||unistr('\000a')||
':CITY ,'||unistr('\000a')||
':REGION ,'||unistr('\000a')||
':COUNTRY ,'||unistr('\000a')||
':COUNTRY_CODE '||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'END IF;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_flow_process(
  p_id => 5619043039883625 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'GOOGLEAPI',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/rate
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
'if APEX_APPLICATION.G_x01 is not null then'||unistr('\000a')||
'insert into blog_article_rate (Article_id, rate, clicks)'||unistr('\000a')||
'values (v(''ARTICLE''),APEX_APPLICATION.G_x01,1);'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'exception '||unistr('\000a')||
'when DUP_VAL_ON_INDEX then'||unistr('\000a')||
''||unistr('\000a')||
'update blog_article_rate'||unistr('\000a')||
'set rate = ceil((rate * clicks + APEX_APPLICATION.G_x01)/(clicks + 1))'||unistr('\000a')||
', clicks = clicks + 1'||unistr('\000a')||
'where article_id = :ARTICLE;'||unistr('\000a')||
''||unistr('\000a')||
'when others then null;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_flow_process(
  p_id => 7478920074006606 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'RATE',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/rate_multiple
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
'if APEX_APPLICATION.G_x01 is not null then'||unistr('\000a')||
'insert into blog_article_rate (Article_id, rate, clicks)'||unistr('\000a')||
'values (APEX_APPLICATION.G_x02,APEX_APPLICATION.G_x01,1);'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'exception '||unistr('\000a')||
'when DUP_VAL_ON_INDEX then'||unistr('\000a')||
''||unistr('\000a')||
'update blog_article_rate'||unistr('\000a')||
'set rate = ceil((rate * clicks + APEX_APPLICATION.G_x01)/(clicks + 1))'||unistr('\000a')||
', clicks = clicks + 1'||unistr('\000a')||
'where article_id = APEX_APPLICATION.G_x02;'||unistr('\000a')||
''||unistr('\000a')||
'when others then null;'||unistr('\000a')||
''||unistr('\000a')||
'e';

p:=p||'nd;';

wwv_flow_api.create_flow_process(
  p_id => 11881525060970024 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'RATE_MULTIPLE',
  p_process_sql_clob=> p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> '',
  p_process_when_type=> '',
  p_process_comment=> '');
end;
 
null;
 
end;
/

--application/shared_components/logic/application_processes/search
 
begin
 
declare
    p varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
p:=p||'owa_util.redirect_url(''f?p=&APP_ALIAS.:SEARCH:0'');';

wwv_flow_api.create_flow_process(
  p_id => 21541419697469762 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_process_sequence=> 1,
  p_process_point => 'ON_DEMAND',
  p_process_type=> 'PLSQL',
  p_process_name=> 'SEARCH',
  p_process_sql_clob=> p,
  p_process_error_message=> 'Can not search.',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=> 'GO,P0_X1',
  p_process_when_type=> 'REQUEST_IN_CONDITION',
  p_process_comment=> '');
end;
 
null;
 
end;
/

prompt  ...application items
--
--application/shared_components/logic/application_items/admin_id
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5502337560416009 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'ADMIN_ID',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/city
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5620035252919176 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'CITY',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/country
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5620443909921718 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'COUNTRY',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/country_code
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5620648411922970 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'COUNTRY_CODE',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'N',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/customer_nick
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5524857606305695 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'CUSTOMER_NICK',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/customer_num_to
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5502132365414440 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'CUSTOMER_NUM_TO',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/errmsg
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 6954511234239889 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'ERRMSG',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/fsp_after_login_url
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 582544292643877088 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/ip
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5621334980174600 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'IP',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/lat
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5619254467886875 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'LAT',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/long
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5619831096917966 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'LONG',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/p_current_page
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5260707526147171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'P_CURRENT_PAGE',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/p_page_count
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5260500600145143 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'P_PAGE_COUNT',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/region
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 5620239407920426 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'REGION',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/reset_page
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 7550600316713877 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'RESET_PAGE',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/return_user
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 3072716422471120 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'RETURN_USER',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'I',
  p_item_comment=> '');
 
null;
 
end;
/

--application/shared_components/logic/application_items/v_session
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 590590573720790508 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'V_SESSION',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> 'N',
  p_item_comment=> 'session');
 
null;
 
end;
/

prompt  ...application level computations
--
 
begin
 
--application/shared_components/logic/application_computations/admin_id
wwv_flow_api.create_flow_computation (
  p_id => 5502543578427181 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_computation_sequence => 10,
  p_computation_item => 'ADMIN_ID',
  p_computation_point    => 'BEFORE_HEADER',
  p_computation_type => 'QUERY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation => 'select id from blog_reg_users where lower(email) = lower(:BLOG_EMAIL)',
  p_compute_when=> 'ADMIN_ID',
  p_compute_when_type=> 'ITEM_IS_NULL',
  p_computation_error_message=>'',
  p_computation_comment=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
--application/shared_components/logic/application_computations/v_session
wwv_flow_api.create_flow_computation (
  p_id => 590591465109816349 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_computation_sequence => 10,
  p_computation_item => 'V_SESSION',
  p_computation_point    => 'BEFORE_HEADER',
  p_computation_type => 'FUNCTION_BODY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation => 'IF :APP_USER IS NOT NULL AND :APP_USER != ''nobody'' THEN'||unistr('\000a')||
'   return :SESSION;'||unistr('\000a')||
'ELSE'||unistr('\000a')||
'   return 0;'||unistr('\000a')||
'END IF;',
  p_compute_when=> '',
  p_compute_when_type=> '',
  p_computation_error_message=>'',
  p_computation_comment=> '',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_application_express_tips_tricks
wwv_flow_api.create_tab (
  p_id=> 582543780611876750 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_APPLICATION_EXPRESS_TIPS&TRICKS',
  p_tab_text => 'Application Express Tips&Tricks',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

prompt  ...Shared Lists of values
--
--application/shared_components/user_interface/lov/cat
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 5543050070685082 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'CAT',
  p_lov_query=> 'select CATEGORY_NAME display_value, ID return_value '||unistr('\000a')||
'from BLOG_CATEGORIES'||unistr('\000a')||
'where active = ''Y'''||unistr('\000a')||
'order by 1');
 
null;
 
end;
/

--application/shared_components/user_interface/lov/years_of_experience
 
begin
 
wwv_flow_api.create_list_of_values (
  p_id       => 5539935709586361 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_lov_name => 'YEARS_OF_EXPERIENCE',
  p_lov_query=> 'select x.d, x.r'||unistr('\000a')||
'from ('||unistr('\000a')||
'select 0 d, 0 r from dual'||unistr('\000a')||
'union'||unistr('\000a')||
'select rownum d, rownum r'||unistr('\000a')||
'from all_objects'||unistr('\000a')||
'where rownum <= 20) x'||unistr('\000a')||
'order by 1');
 
null;
 
end;
/

prompt  ...Application Trees
--
--application/shared_components/navigation/trees/calendar
 
begin
 
wwv_flow_api.create_tree (
  p_id=> 2958308215967640 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'calendar',
  p_type=>'DYNAMIC',
  p_item=>'P2_TREE_ROOT',
  p_query=>'select "ID" id, '||unistr('\000a')||
'       "PARENT_ID" pid, '||unistr('\000a')||
'       case when "MSG_SUBJECT" is not null then "MSG_SUBJECT"'||unistr('\000a')||
'            when   name_1 != name then (Select month_display from WWV_FLOW_MONTHS_MONTH where month_value = name)'||unistr('\000a')||
'             else name_1 end name, '||unistr('\000a')||
'       case when "MSG_SUBJECT" is not null then ''f?p=BLOG:READ:0::::ARTICLE:''||id else null end link, '||unistr('\000a')||
'       null a1, '||unistr('\000a')||
'       null a2 '||unistr('\000a')||
'from "#OWNER#"."VW_BLOG_CALENDAR"'||unistr('\000a')||
'order by created_on desc',
  p_levels=>5,
  p_unexpanded_parent=> '<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre02.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#FNDUPDAT.gif" width="16" height="16" border="0"></td>',
  p_unexpanded_parent_last=> '<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre03.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#FNDUPDAT.gif" width="16" height="16" border="0"></td>',
  p_expanded_parent=>'<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre05.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#FNDUPDAT.gif" width="16" height="16" border="0"></td>',
  p_expanded_parent_last=>'<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre06.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#FNDUPDAT.gif" width="16" height="16" border="0"></td>',
  p_leaf_node=>'<td align="left"><img src="#IMAGE_PREFIX#Fndtre07.gif" width="16" height="22" border="0"></td>',
  p_leaf_node_last=>'<td align="left"><img src="#IMAGE_PREFIX#Fndtre08.gif" width="16" height="22" border="0"></td>',
  p_name_link_anchor_tag=>'<a href="#LINK#">#NAME#</a>',
  p_name_link_not_anchor_tag=>' #NAME#',
  p_indent_vertical_line=>'<td><img src="#IMAGE_PREFIX#Fndtre09.gif" width="16" height="22" border="0"></td>',
  p_indent_vertical_line_last=>'<td><img src="#IMAGE_PREFIX#Fndtre10.gif" width="16" height="22" border="0"></td>',
  p_drill_up=>'&nbsp;(up)',
  p_before_tree=>'<table border="0" cellspacing="0" cellpadding="0">',
  p_after_tree=>'</table>',
  p_level_1_template=>'<tr>#INDENT#<td colspan="#COLSPAN#" valign="CENTER" class="tiny">#NAME##A1##A2# #DRILL_UP#</td></tr>',
  p_level_2_template=>'<tr>#INDENT#<td colspan="#COLSPAN#" valign="CENTER" class="tiny">#NAME##A1##A2#</td></tr>');
null;
 
end;
/

--application/shared_components/navigation/trees/a
 
begin
 
wwv_flow_api.create_tree (
  p_id=> 2966132248878548 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'a',
  p_type=>'DYNAMIC',
  p_item=>'P10_TREE_ROOT',
  p_query=>'select "ID" id, '||unistr('\000a')||
'       "PARENT_ID" pid, '||unistr('\000a')||
'       "MSG_SUBJECT" name, '||unistr('\000a')||
'       ''f?p=&APP_ID.:5:&SESSION.::NO::REGION:''||"ID" link, '||unistr('\000a')||
'       null a1, '||unistr('\000a')||
'       null a2 '||unistr('\000a')||
'from "#OWNER#"."VW_BLOG_CALENDAR"',
  p_levels=>5,
  p_unexpanded_parent=> '<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre02.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#Fndtre_info.gif" width="16" height="16" border="0"></td>',
  p_unexpanded_parent_last=> '<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre03.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#Fndtre_info.gif" width="16" height="16" border="0"></td>',
  p_expanded_parent=>'<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre05.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#Fndtre_info.gif" width="16" height="16" border="0"></td>',
  p_expanded_parent_last=>'<td><a href="#DRILL_DOWN#"><img src="#IMAGE_PREFIX#Fndtre06.gif" width="16" height="22" border="0"></a></td><td><img src="#IMAGE_PREFIX#Fndtre_info.gif" width="16" height="16" border="0"></td>',
  p_leaf_node=>'<td align="left"><img src="#IMAGE_PREFIX#Fndtre07.gif" width="16" height="22" border="0"></td>',
  p_leaf_node_last=>'<td align="left"><img src="#IMAGE_PREFIX#Fndtre08.gif" width="16" height="22" border="0"></td>',
  p_name_link_anchor_tag=>'<a href="#LINK#">#NAME#</a>',
  p_name_link_not_anchor_tag=>'#NAME#',
  p_indent_vertical_line=>'<td><img src="#IMAGE_PREFIX#Fndtre09.gif" width="16" height="22" border="0"></td>',
  p_indent_vertical_line_last=>'<td><img src="#IMAGE_PREFIX#Fndtre10.gif" width="16" height="22" border="0"></td>',
  p_drill_up=>'&nbsp;(up)',
  p_before_tree=>'<table border="0" cellspacing="0" cellpadding="0">',
  p_after_tree=>'</table>',
  p_level_1_template=>'<tr>#INDENT#<td colspan="#COLSPAN#" valign="CENTER" class="tiny">#NAME##A1##A2# #DRILL_UP#</td></tr>',
  p_level_2_template=>'<tr>#INDENT#<td colspan="#COLSPAN#" valign="CENTER" class="tiny">#NAME##A1##A2#</td></tr>');
null;
 
end;
/

--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
wwv_flow_api.create_page_group(
  p_id=>5512335106656847 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_group_name=>'FILES',
  p_group_desc=>'');
 
wwv_flow_api.create_page_group(
  p_id=>582854674002318950 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_group_name=>'HOME',
  p_group_desc=>'');
 
wwv_flow_api.create_page_group(
  p_id=>5512233028656234 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_group_name=>'RESOURCES',
  p_group_desc=>'');
 
wwv_flow_api.create_page_group(
  p_id=>582854978851320269 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_group_name=>'SEARCH',
  p_group_desc=>'');
 
wwv_flow_api.create_page_group(
  p_id=>1784916227129380 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_group_name=>'VISITORS',
  p_group_desc=>'');
 
null;
 
end;
/

--application/comments
prompt  ...comments: requires application express 2.2 or higher
--
 
--application/pages/page_00000
prompt  ...PAGE 0: 0
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 0
 ,p_name => '0'
 ,p_step_title => '0'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111101104131'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div id="htmldb-confirm-dialog" class="hideMe508"><p class="fielddatabold"></p></div>'||unistr('\000a')||
'<div id="htmldb-msg-dialog" class="hideMe508"><p class="t12Messages"></p></div>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
' $(''#htmldb-confirm-dialog'').dialog({autoOpen:false});'||unistr('\000a')||
''||unistr('\000a')||
' function htmldbConfirmDialog(pReq,pOpt){'||unistr('\000a')||
'  pOpt=$.extend({'||unistr('\000a')||
'   buttons:{'||unistr('\000a')||
'    "OK":function(){$(this).dialog(''close'');doSubmit(pReq)},'||unistr('\000a')||
'    "Cancel"';

s:=s||':function(){$(this).dialog(''close'')}'||unistr('\000a')||
'   },'||unistr('\000a')||
'   title:''Confirm Action'','||unistr('\000a')||
'   modal:true,'||unistr('\000a')||
'   message:''Do you like to perform this action?'''||unistr('\000a')||
'   },pOpt);'||unistr('\000a')||
' '||unistr('\000a')||
'  $(''#htmldb-confirm-dialog'').find(''p'').text(pOpt.message);'||unistr('\000a')||
'  '||unistr('\000a')||
'  $(''#htmldb-confirm-dialog'').dialog(''option'',pOpt).dialog(''open'');'||unistr('\000a')||
'}'||unistr('\000a')||
' $(''#htmldb-msg-dialog'').dialog({autoOpen:false});'||unistr('\000a')||
''||unistr('\000a')||
' function htmldbMsgDialog(pOpt){'||unistr('\000a')||
'  pOpt=$.extend({'||unistr('\000a')||
'   buttons:{'||unistr('\000a')||
'   ';

s:=s||' "OK":function(){$(this).dialog(''close'')}'||unistr('\000a')||
'   },'||unistr('\000a')||
'   title:''Message'','||unistr('\000a')||
'   modal:true,'||unistr('\000a')||
'   message:'''''||unistr('\000a')||
'   },pOpt);'||unistr('\000a')||
' '||unistr('\000a')||
'  $(''#htmldb-msg-dialog'').find(''p'').html(pOpt.message);'||unistr('\000a')||
'  '||unistr('\000a')||
'  $(''#htmldb-msg-dialog'').dialog(''option'',pOpt).dialog(''open'');'||unistr('\000a')||
'}'||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 3044011718617544 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Confirm Dialog',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 160,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_IN_CONDITION',
  p_plug_display_when_condition => '9,8',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'&P9_NICKNAME.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';

wwv_flow_api.create_page_plug (
  p_id=> 3060701213275557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Nickname',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 170,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_02',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_plug_display_when_condition => 'P9_NICKNAME',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<script type="text/javascript">'||unistr('\000a')||
' $(document).ready(function () {'||unistr('\000a')||
'try{'||unistr('\000a')||
'animatedcollapse.toggle(''rabbit1'');animatedcollapse.toggle(''rabbit1'');'||unistr('\000a')||
'}'||unistr('\000a')||
'catch(err){'||unistr('\000a')||
';'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'});'||unistr('\000a')||
''||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 4688514650132858 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'toggle div',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 180,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '7,8,9,3',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<style type="text/css">'||unistr('\000a')||
'.jst {'||unistr('\000a')||
'width : 155px;'||unistr('\000a')||
'background:url("/blog/topbg.gif") -90 -90 no-repeat scroll;'||unistr('\000a')||
'padding: 0px;'||unistr('\000a')||
'}'||unistr('\000a')||
'.jst li {'||unistr('\000a')||
'list-style:none;'||unistr('\000a')||
'padding: 0px;'||unistr('\000a')||
'}'||unistr('\000a')||
'.jst a {'||unistr('\000a')||
'background:url("/blog/topbg.gif") -90 -90 no-repeat scroll;'||unistr('\000a')||
'text-decoration : none;'||unistr('\000a')||
'padding: 0px;'||unistr('\000a')||
'}'||unistr('\000a')||
'.jst a:hover {'||unistr('\000a')||
'text-decoration : underline;'||unistr('\000a')||
'color : #b4e04a;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#';

s:=s||'jquery.cookie.js"></script>'||unistr('\000a')||
'<link rel="stylesheet" href="#WORKSPACE_IMAGES#jquery.treeview.css" type="text/css" />'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.treeview.js"></script>'||unistr('\000a')||
'<script>'||unistr('\000a')||
'  $(document).ready(function(){'||unistr('\000a')||
'			$("#tree").treeview({'||unistr('\000a')||
'				collapsed: true,'||unistr('\000a')||
'				persist: "location"'||unistr('\000a')||
'			});'||unistr('\000a')||
''||unistr('\000a')||
'  });'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.treeview, .treeview ul {'||unistr('\000a')||
'margin:0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.tre';

s:=s||'eview ul {'||unistr('\000a')||
'background:url("/blog/topbg.gif") 0 0 no-repeat scroll;'||unistr('\000a')||
'}'||unistr('\000a')||
'.treeview li {'||unistr('\000a')||
'background:url("/blog/topbg.gif") -90 -90 no-repeat scroll;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>';

wwv_flow_api.create_page_plug (
  p_id=> 5093323896179360 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'load jstree',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 100,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_HEADER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '8,9,7,10',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '<link rel="stylesheet" type="text/css" href="/img/jstreestyle.css" />'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.jstree.js"></script>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.cookie.js"></script>');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_archives;';

wwv_flow_api.create_page_plug (
  p_id=> 5189426477399640 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Archives',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 35,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '8,9,7',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_header=> '<div id="tree">',
  p_plug_footer=> '</div>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 5498333423216068 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'contact form',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 140,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_header=> '<div id="contactDialog" style="display:none;">'||unistr('\000a')||
'<div id="responseeDiv"></div><div id="responseeokDiv"></div>',
  p_plug_footer=> '</div>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  $(function(){'||unistr('\000a')||
'    $("#contactDialog").dialog({'||unistr('\000a')||
'                autoOpen: false'||unistr('\000a')||
'                ,modal: true'||unistr('\000a')||
'		,width: 550'||unistr('\000a')||
'                ,height:500'||unistr('\000a')||
'                ,position: ''center'''||unistr('\000a')||
'                ,resizable: false'||unistr('\000a')||
'                ,title: ''Contact User: &CUSTOMER_NICK.'' '||unistr('\000a')||
'      ,open : function() {'||unistr('\000a')||
'            $(''#contactDialog'').dialog( "option" , "title" ,"Contact User: &CUSTOMER_NICK.");'||unistr('\000a')||
'      }'||unistr('\000a')||
'	});'||unistr('\000a')||
'  });'||unistr('\000a')||
'function openForm(p_cust_num){'||unistr('\000a')||
'   var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=SETCUSTOMERTO'',0);'||unistr('\000a')||
'   ajaxRequest.addParam(''x01'', p_cust_num);'||unistr('\000a')||
'   var results = ajaxRequest.get();'||unistr('\000a')||
'   ajaxRequest = null;'||unistr('\000a')||
'  document.getElementById("P0_EMAIL_FROM").value = '''';'||unistr('\000a')||
'  document.getElementById("P0_SUBJECT").value = '''';'||unistr('\000a')||
'  document.getElementById("P0_BODY").value = '''';'||unistr('\000a')||
'  $("#contactDialog").dialog(''open'');'||unistr('\000a')||
'  $(''#contactDialog'').dialog( "option" , "title" ,"Contact User: " + results);'||unistr('\000a')||
'  document.getElementById("P0_EMAIL_FROM").focus();'||unistr('\000a')||
'}'||unistr('\000a')||
'function AjaxSubmitEmail(p_email,p_subject,p_body){ '||unistr('\000a')||
''||unistr('\000a')||
'   var l_email   = $x(p_email);'||unistr('\000a')||
'   var l_subject   = $x(p_subject);'||unistr('\000a')||
'   var l_body   = $x(p_body);'||unistr('\000a')||
'   $(''#responseeDiv'').hide();'||unistr('\000a')||
'   $(''#responseeokDiv'').hide();'||unistr('\000a')||
'   var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=CHECKCONTACT'',0);'||unistr('\000a')||
'   ajaxRequest.add($x(l_email).id, $v(l_email));'||unistr('\000a')||
'   ajaxRequest.add($x(l_subject).id, $v(l_subject));'||unistr('\000a')||
'   ajaxRequest.add($x(l_body).id, $v(l_body));'||unistr('\000a')||
''||unistr('\000a')||
'   var results = ajaxRequest.get();'||unistr('\000a')||
''||unistr('\000a')||
'   if(results){'||unistr('\000a')||
'            $(''#responseeDiv'').fadeIn(500);'||unistr('\000a')||
'            $(''#responseeDiv'').html(results);'||unistr('\000a')||
'            $(''#responseeDiv'').fadeOut(7000);'||unistr('\000a')||
'   } else {'||unistr('\000a')||
'   doSubmit(''CONTACT'');'||unistr('\000a')||
'   $(''#responseeokDiv'').fadeIn(500);'||unistr('\000a')||
'   $(''#responseeokDiv'').html(''Email Sent'');'||unistr('\000a')||
'   $(''#responseeokDiv'').fadeOut(7000);'||unistr('\000a')||
'   };'||unistr('\000a')||
'   ajaxRequest = null;'||unistr('\000a')||
'   return;'||unistr('\000a')||
'}'||unistr('\000a')||
'</script>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<script type="text/javascript">'||unistr('\000a')||
' $(document).ready(function () {'||unistr('\000a')||
'googleapi();'||unistr('\000a')||
'});'||unistr('\000a')||
'function googleapi(){'||unistr('\000a')||
'if(google.loader.ClientLocation){'||unistr('\000a')||
'   var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=GOOGLEAPI'',&APP_PAGE_ID.);'||unistr('\000a')||
'   ajaxRequest.addParam(''x01'', google.loader.ClientLocation.latitude);'||unistr('\000a')||
'   ajaxRequest.addParam(''x02'', google.loader.ClientLocation.longitude);'||unistr('\000a')||
'   ajaxRequest';

s:=s||'.addParam(''x03'', google.loader.ClientLocation.address.city);'||unistr('\000a')||
'   ajaxRequest.addParam(''x04'', google.loader.ClientLocation.address.region);'||unistr('\000a')||
'   ajaxRequest.addParam(''x05'', google.loader.ClientLocation.address.country);'||unistr('\000a')||
'   ajaxRequest.addParam(''x06'', google.loader.ClientLocation.address.country_code);'||unistr('\000a')||
'   var results = ajaxRequest.get();'||unistr('\000a')||
'   ajaxRequest = null;'||unistr('\000a')||
'}'||unistr('\000a')||
'}'||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 5618730918880142 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'google',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 150,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'ITEM_IS_NULL',
  p_plug_display_when_condition => 'LAT',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<script type="text/javascript">'||unistr('\000a')||
' $(document).ready(function () {'||unistr('\000a')||
'try{'||unistr('\000a')||
'animatedcollapse.toggle(''rabbit1'');'||unistr('\000a')||
'}'||unistr('\000a')||
'catch(err){'||unistr('\000a')||
';'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'});'||unistr('\000a')||
''||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 6809823176041297 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'toggle div only for READ',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 190,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_EQUALS_CONDITION',
  p_plug_display_when_condition => '3',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<SCRIPT language="JavaScript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'window.location="f?p=&APP_ALIAS.:ERROR:0";'||unistr('\000a')||
'//-->'||unistr('\000a')||
'</SCRIPT>'||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 6953020950043927 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'redirect error',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 200,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_HEADER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_plug_display_when_condition => 'ERROR',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<style type="text/css">'||unistr('\000a')||
'#pscroller1{'||unistr('\000a')||
'height: 4em;'||unistr('\000a')||
'padding: 5px;'||unistr('\000a')||
'background:inherit;'||unistr('\000a')||
'margin-bottom:15px;'||unistr('\000a')||
'}'||unistr('\000a')||
'#pscroller2{'||unistr('\000a')||
'width: 400px;'||unistr('\000a')||
'height: 150px;'||unistr('\000a')||
'border: 1px solid black;'||unistr('\000a')||
'padding: 5px;'||unistr('\000a')||
'background-color: #F0F0F0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.rssclass .rsstitle{'||unistr('\000a')||
'font-weight: bold;'||unistr('\000a')||
'}'||unistr('\000a')||
'.rssclass .rssdate{'||unistr('\000a')||
'color: gray;'||unistr('\000a')||
'font-size: 85%;'||unistr('\000a')||
'}'||unistr('\000a')||
'.rssclass a{'||unistr('\000a')||
'text-decoration: none;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPA';

s:=s||'CE_IMAGES#rsspausescroller.js">'||unistr('\000a')||
''||unistr('\000a')||
'/***********************************************'||unistr('\000a')||
'* RSS Pausing Scroller- © Dynamic Drive (http://www.dynamicdrive.com)'||unistr('\000a')||
'* This notice MUST stay intact for legal use'||unistr('\000a')||
'* Visit http://www.dynamicdrive.com/dynamicindex17/rsspausescroller/ for source code and documentation'||unistr('\000a')||
'***********************************************/'||unistr('\000a')||
''||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 7500902175310379 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'load rss js',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 210,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_HEADER',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '10',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<script type="text/javascript">'||unistr('\000a')||
''||unistr('\000a')||
'new rsspausescroller("asktom", "pscroller1", "rssclass", 3000, "_new");'||unistr('\000a')||
''||unistr('\000a')||
'</script>';

wwv_flow_api.create_page_plug (
  p_id=> 7501108540321658 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Ask Tom',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 220,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '//new rsspausescroller(RSS_id, divId, divClass, delay, linktarget, optionalswitch)'||unistr('\000a')||
'//1) RSS_id: "Array key of RSS feed in scrollerbridge.php script"'||unistr('\000a')||
'//2) divId: "ID of DIV to display ticker in. DIV is dynamically created"'||unistr('\000a')||
'//3) divClass: "Class name of this ticker, for styling purposes"'||unistr('\000a')||
'//4) delay: delay between message change, in milliseconds'||unistr('\000a')||
'//5) linktarget: Target of links inside RSS feed. Set to "" for current page.'||unistr('\000a')||
'//6) optionalswitch: "optional arbitrary" string to create additional logic for formatrssmessage() to use.'||unistr('\000a')||
'//   By default, optionalswitch supports "date", or "date+description" to also show these parts of a RSS feed.'||unistr('\000a')||
'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 21531426642273121 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Search Archives',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 32,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '8,9,7,13',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '<script language="JavaScript">'||unistr('\000a')||
'function move(v) {'||unistr('\000a')||
'   var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=SEARCH'',0);'||unistr('\000a')||
'   ajaxRequest.addParam(''x01'', v);'||unistr('\000a')||
'   var results = ajaxRequest.get();'||unistr('\000a')||
'   ajaxRequest = null;'||unistr('\000a')||
''||unistr('\000a')||
'}'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'function redirectsearch(e) {     '||unistr('\000a')||
'if (e.keyCode == 13) {         '||unistr('\000a')||
'redirect(''f?p=&APP_ALIAS.:SEARCH:0'')         '||unistr('\000a')||
'return false;     '||unistr('\000a')||
'} '||unistr('\000a')||
'} '||unistr('\000a')||
'</script>');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'for i in ('||unistr('\000a')||
'select ''<div class="htmltooltip">''||ITEM_HELP_TEXT||''</div>'' text'||unistr('\000a')||
'from APEX_APPLICATION_PAGE_ITEMS'||unistr('\000a')||
'where  application_id = :app_id'||unistr('\000a')||
'and page_id = :app_page_id '||unistr('\000a')||
'and condition_type is null'||unistr('\000a')||
'and item_help_text is not null'||unistr('\000a')||
'order by DISPLAY_SEQUENCE'||unistr('\000a')||
') loop'||unistr('\000a')||
'htp.p(i.TEXT);'||unistr('\000a')||
'end loop;';

wwv_flow_api.create_page_plug (
  p_id=> 21539722504423268 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'print help',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 230,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_most_hit_articles(9);';

wwv_flow_api.create_page_plug (
  p_id=> 25493519121159713 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Most Hits per Day:',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 210,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'DbSWH - Building simple to use Web database applications';

wwv_flow_api.create_page_plug (
  p_id=> 582580776354896963 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Slogan',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_04',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_welcome;';

wwv_flow_api.create_page_plug (
  p_id=> 582594187773524707 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Thank you for visiting!',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_plug_display_when_condition => '9',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_last_articles(9);';

wwv_flow_api.create_page_plug (
  p_id=> 582594371628529496 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Last Articles:',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 40,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_popular_articles(9);';

wwv_flow_api.create_page_plug (
  p_id=> 582595579555579091 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Most Clicked Articles:',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 50,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_categories(20);';

wwv_flow_api.create_page_plug (
  p_id=> 582596481895598692 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Categories:',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 60,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9,13',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_super;';

wwv_flow_api.create_page_plug (
  p_id=> 582596686182609333 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Super',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 70,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9,13',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div class="pad">The web site goal is to highlight useful features of Oracle Application Express and Oracle Database for Web Applications developers</div>';

wwv_flow_api.create_page_plug (
  p_id=> 582596973630624711 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Intro',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 80,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_07',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'    <div>&copy; Copyright 2007, <a href="http://www.dbswh.com">DbSWH</a> - CSS Design adapted from: <a href="http://www.free-css-templates.com">Free Css Templates</a></div><div>DbSWH - Building simple to use Web database applications</div>'||unistr('\000a')||
'<p style="font-size: 0.8em; color: rgb(255,218,185); width: 750px;">'||unistr('\000a')||
'All information and materials provided here are provided "as-is"; DbSWH disclaims all expre';

s:=s||'ss and implied warranties, including, the implied warranties of merchantability or fitness for a particular use. DbSWH shall not be liable for any damages, including, direct, indirect, incidental, special or consequential damages for loss of profits, revenue, data or data use, incurred by you or any third party in connection with the use of this information or these materials.</p> ';

wwv_flow_api.create_page_plug (
  p_id=> 582598761819668572 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'footer',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 90,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_08',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> 'DbSWH reserves the rights to change any download software offered in this website without any notice when there is found a bug or for adding new features and based on the comments received; ');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_resource;';

wwv_flow_api.create_page_plug (
  p_id=> 582602483823788490 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Resource',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 100,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9,13',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_favorite;';

wwv_flow_api.create_page_plug (
  p_id=> 582602672179794520 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Favorite',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 110,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '9,13',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'declare'||unistr('\000a')||
'l_current_group VARCHAR2(100);'||unistr('\000a')||
'begin'||unistr('\000a')||
'htp.p(''<ul>'');'||unistr('\000a')||
'for i in ('||unistr('\000a')||
'    select min(PAGE_ID) page_id, PAGE_GROUP from apex_application_pages '||unistr('\000a')||
'    where application_id = :APP_ID '||unistr('\000a')||
'    and PAGE_REQUIRES_AUTHENTICATION = ''No'''||unistr('\000a')||
'    and page_id not in (0,101)'||unistr('\000a')||
'    and page_group is not null'||unistr('\000a')||
'    GROUP BY PAGE_GROUP'||unistr('\000a')||
'    order by page_id'||unistr('\000a')||
') loop'||unistr('\000a')||
''||unistr('\000a')||
'    select PAGE_GROUP '||unistr('\000a')||
'    into l_current_group'||unistr('\000a')||
'    from apex';

s:=s||'_application_pages '||unistr('\000a')||
'    where application_id = :APP_ID '||unistr('\000a')||
'    and   page_id = :APP_PAGE_ID;'||unistr('\000a')||
''||unistr('\000a')||
'   if i.PAGE_GROUP = l_current_group then'||unistr('\000a')||
'      htp.p(''<li><a class="current" href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION."><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
'   else'||unistr('\000a')||
'      htp.p(''<li><a href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION."><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
''||unistr('\000a')||
'   end';

s:=s||' if;'||unistr('\000a')||
''||unistr('\000a')||
'end loop;'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'htp.p(''</ul>'');'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 582711182278618323 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Tab List',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 120,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_03',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> 'declare'||unistr('\000a')||
'l_current_group VARCHAR2(100);'||unistr('\000a')||
'begin'||unistr('\000a')||
'htp.p(''<ul>'');'||unistr('\000a')||
'for i in ('||unistr('\000a')||
'    select min(PAGE_ID) page_id, PAGE_GROUP from apex_application_pages '||unistr('\000a')||
'    where application_id = :APP_ID '||unistr('\000a')||
'    and PAGE_REQUIRES_AUTHENTICATION = ''No'''||unistr('\000a')||
'    and page_id not in (0,101)'||unistr('\000a')||
'    GROUP BY PAGE_GROUP'||unistr('\000a')||
'    order by page_id'||unistr('\000a')||
') loop'||unistr('\000a')||
''||unistr('\000a')||
'    select PAGE_GROUP '||unistr('\000a')||
'    into l_current_group'||unistr('\000a')||
'    from apex_application_pages '||unistr('\000a')||
'    where application_id = :APP_ID '||unistr('\000a')||
'    and   page_id = :APP_PAGE_ID;'||unistr('\000a')||
'--   if i.page_group != ''ARCHIVES'' then'||unistr('\000a')||
'   if i.PAGE_GROUP = l_current_group then'||unistr('\000a')||
'      htp.p(''<li><a class="current" href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION."><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
'   else'||unistr('\000a')||
'      htp.p(''<li><a href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION."><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
''||unistr('\000a')||
'   end if;'||unistr('\000a')||
'/*   else'||unistr('\000a')||
'   if i.PAGE_GROUP = l_current_group then'||unistr('\000a')||
'      htp.p(''<li><a class="current" href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION.:CONTRACT_ALL"><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
'   else'||unistr('\000a')||
'      htp.p(''<li><a href="f?p=&APP_ALIAS.:''||i.page_group||'':&V_SESSION.:CONTRACT_ALL"><span>''||i.page_group||''</span></a></li>'');'||unistr('\000a')||
''||unistr('\000a')||
'   end if; */'||unistr('\000a')||
'   end if;'||unistr('\000a')||
''||unistr('\000a')||
'end loop;'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'htp.p(''</ul>'');'||unistr('\000a')||
''||unistr('\000a')||
'end;');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 21543509026646461 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 0,
  p_button_sequence=> 10,
  p_button_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_button_name    => 'GO',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(5557848262179649+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Go',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_condition_type=> 'NEVER',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 23211413253250912 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 0,
  p_button_sequence=> 20,
  p_button_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUBMIT',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(582535586482876738+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_button_condition_type=> 'NEVER',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>21543801684646504 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_branch_action=> 'f?p=&FLOW_ID.:SEARCH:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>21543509026646461+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5498849054248956 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_EMAIL_FROM',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540876368876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5499026328251913 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_SUBJECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subject',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540876368876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5499242258256430 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_BODY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Body',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 55,
  p_cMaxlength=> 2000,
  p_cHeight=> 15,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540876368876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5499549531258516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_X',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5499739965265300 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_SUBMITEMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'<input type="button" class="f-submit" value="Submit" onclick="javascript:AjaxSubmitEmail(''P0_EMAIL_FROM'',''P0_SUBJECT'',''P0_BODY'');" />',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540682551876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5499956242269986 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_CANCEL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 5498333423216068+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'<input type="button" class="f-submit" value="Cancel" onclick="javascript:$(''#contactDialog'').dialog(''close'');" />',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540682551876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8385017552728044 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_SEARCH_OPT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search Opt',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC2:All;ALL,Title;TITLE,Text;TEXT,Author;AUTHOR',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 582540573998876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>8387018029737620 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_STOP',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 75,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>21531720527273219 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_TREE_ROOT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> '1',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Tree Root',
  p_source=>'1',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter a keyword. It will be searched in both article subject and article text.';

wwv_flow_api.create_page_item(
  p_id=>21531921724273228 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_X1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 15,
  p_cMaxlength=> 200,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>21532324198273237 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_GO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'GO',
  p_prompt=>'Go',
  p_source=>'GO',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(5557848262179649 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 2,
  p_rowspan=> 2,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_action => 'SUBMIT',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>21782221073937220 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 0,
  p_name=>'P0_GO2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 21531426642273121+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'<a class="t12Button" href="javascript:redirect(''f?p=&APP_ID.:SEARCH:0'');">Go</a>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540682551876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 0
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00001
prompt  ...PAGE 1: Application Express Tips and Tricks
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_tab_set => 'TS1'
 ,p_name => 'Application Express Tips and Tricks'
 ,p_alias => 'HOME'
 ,p_step_title => '&APPLICATION_NAME.'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Application Express Tips&Tricks'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<script type="text/javascript" src="#WORKSPACE_IMAGES#animatedcollapse.js">'||unistr('\000a')||
'/***********************************************'||unistr('\000a')||
'* Animated Collapsible DIV v2.4- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)'||unistr('\000a')||
'* This notice MUST stay intact for legal use'||unistr('\000a')||
'* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more'||unistr('\000a')||
'***********************************************/'||unistr('\000a')||
'</sc'||
'ript>'||unistr('\000a')||
''||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shCore.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shThemeDefault.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<script language="javascript" src="#WORKSPACE_IMAGES#shCoreStaticInclude.js"></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shCore.js'' type=''text/javascript''></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shBrushJScript.js'' type=''text/javascri'||
'pt''></script>'||unistr('\000a')||
'<script language=''javascript''>'||unistr('\000a')||
'SyntaxHighlighter.config.bloggerMode = true;'||unistr('\000a')||
'SyntaxHighlighter.config.clipboardSwf = ''#WORKSPACE_IMAGES#clipboard.swf'';'||unistr('\000a')||
'SyntaxHighlighter.all();'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#ajaxpagination.css"/>'||unistr('\000a')||
'<script src=''http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js'' type="text/javascript" lan'||
'guage="javascript"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<link href=''http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.css'' type="text/css" rel="stylesheet"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.radio_group{'||unistr('\000a')||
'border-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_page_comment => '<script src="#IMAGE_PREFIX#javascript/apex_ns_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_get_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_builder.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#WORKSPACE_IMAGES#ajaxpagination.js" type="text/javascript"></script>'||unistr('\000a')||
'<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#ajaxpagination.css"/>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'window.onload = function () {'||unistr('\000a')||
'  // only apply to IE'||unistr('\000a')||
'  if (!/*@cc_on!@*/0) return;'||unistr('\000a')||
''||unistr('\000a')||
'  // find every element to test'||unistr('\000a')||
'  var all = document.getElementsByTagName(''*''), i = all.length;'||unistr('\000a')||
''||unistr('\000a')||
'  // fast reverse loop'||unistr('\000a')||
'  while (i--) {'||unistr('\000a')||
'    // if the scrollWidth (the real width) is greater than'||unistr('\000a')||
'    // the visible width, then apply style changes'||unistr('\000a')||
'    if (all[i].scrollWidth > all[i].offsetWidth) {'||unistr('\000a')||
'      all[i].style[''paddingBottom''] = ''20px'';'||unistr('\000a')||
'      all[i].style[''overflowY''] = ''hidden'';'||unistr('\000a')||
'    }'||unistr('\000a')||
'  }'||unistr('\000a')||
'};'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.syntaxhighlighter'||unistr('\000a')||
'{'||unistr('\000a')||
'padding-bottom:5px;'||unistr('\000a')||
'overflow-y:hidden;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'http://remysharp.com/2008/01/21/fixing-ie-overflow-problem/'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110523210839'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_pagination(:P_PAGE_COUNT, :P_CURRENT_PAGE);';

wwv_flow_api.create_page_plug (
  p_id=> 5583940416579822 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Pagination',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_article(p_number => 5, p_page => :P_CURRENT_PAGE);';

wwv_flow_api.create_page_plug (
  p_id=> 590185177294839392 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Print Article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>23517511892364575 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'GO,P0_X1',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 05-TOUKO -2011 11:55 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>5500927723327981 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=BLOG:HOME:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 04-NOV-2010 22:54 by ADMIN');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'RESET_PAGE';

wwv_flow_api.create_page_process(
  p_id     => 7550711528726518 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_FOOTER',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'Clear RESET_PAGE',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'if :request is not null and :request like ''PAGE%'' then'||unistr('\000a')||
':P_CURRENT_PAGE := replace(:REQUEST,''PAGE'','''');'||unistr('\000a')||
'else'||unistr('\000a')||
':P_CURRENT_PAGE := 1;'||unistr('\000a')||
'end if;'||unistr('\000a')||
':RESET_PAGE := 1;';

wwv_flow_api.create_page_process(
  p_id     => 7549830763495594 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'set page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'    l_email varchar2(1000) := null;'||unistr('\000a')||
'    l_fname varchar2(1000) := null;'||unistr('\000a')||
'    l_lname varchar2(1000) := null;'||unistr('\000a')||
'begin'||unistr('\000a')||
''||unistr('\000a')||
'    ate_api.read_askcookie;'||unistr('\000a')||
''||unistr('\000a')||
'    l_email := ate_api.fetch_askcookie_val(''EMAIL'');'||unistr('\000a')||
'    :P9_NICKNAME := ate_api.fetch_askcookie_val(''NICKNAME'');  '||unistr('\000a')||
''||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 3060504414257536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'read cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'if not apex_collection.collection_exists(''PAGINATION'') then'||unistr('\000a')||
'  APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B('||unistr('\000a')||
'    p_collection_name => ''PAGINATION'','||unistr('\000a')||
'    p_query           => ''select id, ceil(rownum/3)  from'||unistr('\000a')||
'(select *'||unistr('\000a')||
'    from BLOG_MESSAGES '||unistr('\000a')||
'    where msg_type = ''''STANDARD'''' and (trunc(expire_date) > trunc(sysdate) or expire_date is null)'||unistr('\000a')||
'    ORDER BY CREATED_ON DESC)'' );'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'select max(';

p:=p||'to_number(c002))'||unistr('\000a')||
'into :P_PAGE_COUNT'||unistr('\000a')||
'from apex_collections'||unistr('\000a')||
'where collection_name = ''PAGINATION'';'||unistr('\000a')||
':P_CURRENT_PAGE := 1;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 5260004185079952 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 1,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'create collection',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=>'P_PAGE_COUNT',
  p_process_when_type=>'ITEM_IS_NULL',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'begin'||unistr('\000a')||
'if not apex_collection.collection_exists(''PAGINATION'') then'||unistr('\000a')||
'  APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B('||unistr('\000a')||
'    p_collection_name => ''PAGINATION'','||unistr('\000a')||
'    p_query           => ''select id, ceil(rownum/3)  from'||unistr('\000a')||
'(select *'||unistr('\000a')||
'    from BLOG_MESSAGES '||unistr('\000a')||
'    where msg_type = ''''STANDARD'''' and (trunc(expire_date) > trunc(sysdate) or expire_date is null)'||unistr('\000a')||
'    ORDER BY CREATED_ON DESC)'' );'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'select max(c002)'||unistr('\000a')||
'into :P_PAGE_COUNT'||unistr('\000a')||
'from apex_collections'||unistr('\000a')||
'where collection_name = ''PAGINATION'';'||unistr('\000a')||
':P_CURRENT_PAGE := 1;'||unistr('\000a')||
'end;');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00002
prompt  ...PAGE 2: Search
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 2
 ,p_name => 'Search'
 ,p_alias => 'SEARCH'
 ,p_step_title => 'Search Archives'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<style type="text/css">'||unistr('\000a')||
'.fielddata {'||unistr('\000a')||
'color:#E7E7E7;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'div.htmltooltip{'||unistr('\000a')||
'position: absolute; /*leave this and next 3 values alone*/'||unistr('\000a')||
'z-index: 1000;'||unistr('\000a')||
'left: -1000px;'||unistr('\000a')||
'top: -1000px;'||unistr('\000a')||
'background: #272727;'||unistr('\000a')||
'border: 10px solid black;'||unistr('\000a')||
'color: white;'||unistr('\000a')||
'padding: 3px;'||unistr('\000a')||
'width: 250px; /*width of tooltip*/'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#htmltooltip.js"></'||
'script>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#animatedcollapse.js">'||unistr('\000a')||
''||unistr('\000a')||
'/***********************************************'||unistr('\000a')||
'* Animated Collapsible DIV v2.4- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)'||unistr('\000a')||
'* This notice MUST stay intact for legal use'||unistr('\000a')||
'* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more'||unistr('\000a')||
'********************************************'||
'***/'||unistr('\000a')||
''||unistr('\000a')||
'</script>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shCore.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shThemeDefault.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<script language="javascript" src="#WORKSPACE_IMAGES#shCoreStaticInclude.js"></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shCore.js'' type=''text/javascript''></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shBrushJScript.js'' type=''text'||
'/javascript''></script>'||unistr('\000a')||
'<script language=''javascript''>'||unistr('\000a')||
'SyntaxHighlighter.config.bloggerMode = true;'||unistr('\000a')||
'SyntaxHighlighter.config.clipboardSwf = ''#WORKSPACE_IMAGES#clipboard.swf'';'||unistr('\000a')||
'SyntaxHighlighter.all();'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src=''http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js'' type="text/javascript" language="javascript"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<link href=''http://jquery-star-rating-plugin.g'||
'ooglecode.com/svn/trunk/jquery.rating.css'' type="text/css" rel="stylesheet"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.radio_group{'||unistr('\000a')||
'border-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
''
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_page_comment => '<link rel="stylesheet" type="text/css" href="#WORKSPACE_IMAGES#jquery.autocomplete.css" />'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#jquery.autocompleteApex.min.js"></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'    $(document).ready( function() {'||unistr('\000a')||
'        $("#P2_X1").autocomplete(''APEX'', {'||unistr('\000a')||
'                apexProcess: ''P2_AUTO'','||unistr('\000a')||
'                width: 400,'||unistr('\000a')||
'                multiple: false,'||unistr('\000a')||
'                matchContains: false'||unistr('\000a')||
'            });'||unistr('\000a')||
'    });'||unistr('\000a')||
'</script>'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110921191134'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_article(p_number =>40, p_search => trim(:P0_X1), p_search_opt => :P0_SEARCH_OPT);'||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 2942223728197610 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Archives',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 30,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_footer=> '<script type="text/javascript">'||unistr('\000a')||
'<!-- '||unistr('\000a')||
'    first_field(''P2_X1'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'2958308215967640';

wwv_flow_api.create_page_plug (
  p_id=> 2964124454369832 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Archives',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 35,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> 2958308215967640 + wwv_flow_api.g_id_offset,
  p_plug_source_type=> 'TREE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select msg_subject,created_on from blog_messages'||unistr('\000a')||
'where msg_type = ''STANDARD'' and'||unistr('\000a')||
'(instr(upper(msg_subject),upper(:p2_x1)) > 0 or'||unistr('\000a')||
'instr(upper(msg_text),upper(:p2_x1)) > 0 or'||unistr('\000a')||
':p2_x1 is null'||unistr('\000a')||
')';

wwv_flow_api.create_report_region (
  p_id=> 5473148901460720 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Archives',
  p_region_name=>'',
  p_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 20,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_condition_type=> 'NEVER',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 582540290459876742+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> '<br><br>Please verify your search keyword and try again.',
  p_query_num_rows_type=> 'SEARCH_ENGINE',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5473429004460733 + wwv_flow_api.g_id_offset,
  p_region_id=> 5473148901460720 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'MSG_SUBJECT',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Article',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5473930247483719 + wwv_flow_api.g_id_offset,
  p_region_id=> 5473148901460720 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Created On',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'for i in ('||unistr('\000a')||
'select ''<div class="htmltooltip">''||ITEM_HELP_TEXT||''</div>'' text'||unistr('\000a')||
'from APEX_APPLICATION_PAGE_ITEMS'||unistr('\000a')||
'where  application_id = :app_id'||unistr('\000a')||
'and page_id = :app_page_id '||unistr('\000a')||
'and condition_type is null'||unistr('\000a')||
'and item_help_text is not null'||unistr('\000a')||
'order by DISPLAY_SEQUENCE'||unistr('\000a')||
') loop'||unistr('\000a')||
'htp.p(i.TEXT);'||unistr('\000a')||
'end loop;';

wwv_flow_api.create_page_plug (
  p_id=> 6790719298583258 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'print help',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 45,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 582871687686710717 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Search Archives',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>582659272546612708 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>21543509026646461+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 22-JAN-2010 06:16 by OLZAICEV');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2963106689232148 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_TREE_ROOT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 582871687686710717+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> '1',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Tree Root',
  p_source=>'1',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter a keyword. It will be searched in both article subject and article text.';

wwv_flow_api.create_page_item(
  p_id=>582659065966610853 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_X1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 582871687686710717+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Enter Keyword',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 200,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>583119862324132301 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_GO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 582871687686710717+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default=> 'Go',
  p_prompt=>'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(5557848262179649 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_is_persistent=> 'N',
  p_button_action => 'SUBMIT',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 4690822380043536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_computation_sequence => 10,
  p_computation_item=> 'P2_X1',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'PLSQL_EXPRESSION',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'trim(:P2_X1)',
  p_compute_when => '',
  p_compute_when_type=>'%null%');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'--:p0_x1 := null;'||unistr('\000a')||
'--:p0_search_opt := null;'||unistr('\000a')||
'null;';

wwv_flow_api.create_page_process(
  p_id     => 5612446008323115 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_FOOTER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'set search to null',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'ate_api.write_search_log( :P0_SEARCH_OPT||'':''||:P0_X1, :p9_email );';

wwv_flow_api.create_page_process(
  p_id     => 4718810612934619 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'write search log',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>583119862324132301 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
'select max(id) into'||unistr('\000a')||
':P2_TREE_ROOT'||unistr('\000a')||
'from vw_blog_calendar'||unistr('\000a')||
'where parent_id is null;'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2964414888376454 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 2,
  p_process_sequence=> 20,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'P2_TREE_ROOT',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: Read Article
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_name => 'Read Article'
 ,p_alias => 'READ'
 ,p_step_title => 'Read Article - &ARTICLE_SUBJ.'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Read Article'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<script type="text/javascript" src="#WORKSPACE_IMAGES#animatedcollapse.js">'||unistr('\000a')||
''||unistr('\000a')||
'/***********************************************'||unistr('\000a')||
'* Animated Collapsible DIV v2.4- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)'||unistr('\000a')||
'* This notice MUST stay intact for legal use'||unistr('\000a')||
'* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more'||unistr('\000a')||
'***********************************************/'||unistr('\000a')||
''||unistr('\000a')||
'</'||
'script>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shCore.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shThemeDefault.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<script language="javascript" src="#WORKSPACE_IMAGES#shCoreStaticInclude.js"></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shCore.js'' type=''text/javascript''></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shBrushJScript.js'' type=''text/javascr'||
'ipt''></script>'||unistr('\000a')||
'<script language=''javascript''>'||unistr('\000a')||
'SyntaxHighlighter.config.bloggerMode = true;'||unistr('\000a')||
'SyntaxHighlighter.config.clipboardSwf = ''#WORKSPACE_IMAGES#clipboard.swf'';'||unistr('\000a')||
'SyntaxHighlighter.all();'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src=''http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js'' type="text/javascript" language="javascript"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<link href=''http://jquery-star-rating-plugin.googlecod'||
'e.com/svn/trunk/jquery.rating.css'' type="text/css" rel="stylesheet"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.radio_group{'||unistr('\000a')||
'border-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_page_comment => '<script>'||unistr('\000a')||
'$(function(){'||unistr('\000a')||
' $(''.auto-submit-star'').rating({'||unistr('\000a')||
'  callback: function(value, link){'||unistr('\000a')||
'      var ajaxRequest = new htmldb_Get(null, $v(''pFlowId''), ''APPLICATION_PROCESS=RATE'',0);'||unistr('\000a')||
'   ajaxRequest.addParam(''x01'', value);'||unistr('\000a')||
'   var results = ajaxRequest.get();'||unistr('\000a')||
'   ajaxRequest = null;'||unistr('\000a')||
'   $(''.auto-submit-star'').rating(''disable'');'||unistr('\000a')||
'  }'||unistr('\000a')||
' });'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'animatedcollapse.addDiv(''rabbit1'', ''fade=0,hide=1'')'||unistr('\000a')||
''||unistr('\000a')||
'animatedcollapse.ontoggle=function($, divobj, state){ //fires each time a DIV is expanded/contracted'||unistr('\000a')||
'	//$: Access to jQuery'||unistr('\000a')||
'	//divobj: DOM reference to DIV being expanded/ collapsed. Use "divobj.id" to get its ID'||unistr('\000a')||
'	//state: "block" or "none", depending on state'||unistr('\000a')||
'};'||unistr('\000a')||
' '||unistr('\000a')||
'animatedcollapse.init()'||unistr('\000a')||
''||unistr('\000a')||
'</script>'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111005213341'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'        <h2>Webdesign</h2>'||unistr('\000a')||
'        <h3>Posted on April 11 , 2007 in <a href="http://www.free-css.com/">sNews</a></h3>'||unistr('\000a')||
'        <p>A website like free-css-templates.com is a collection of information about a particular topic or subject. Designing a website is defined as the arrangement and creation of web pages that in turn make up a website. A web page consists of information for which the website ';

s:=s||'is developed. A website might be compared to a book, where each page of the book is a web page. </p>'||unistr('\000a')||
'        <p> Here a code sample made with Code2CSS: </p>'||unistr('\000a')||
'        <ol class="code">'||unistr('\000a')||
'          <li class="t0">for ($i = 0; $i &lt; $num_kw; $i++) {</li>'||unistr('\000a')||
'          <li class="t2"><code>$keywords = trim($kws[$i]);</code></li>'||unistr('\000a')||
'          <li class="t2"><code>$value .= &quot; keywords_meta LIKE ''%$keywords';

s:=s||'%'' &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>if ($i &lt; $num_kw-1) {</code></li>'||unistr('\000a')||
'          <li class="t3"><code>$value .= &quot; OR &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>}</code></li>'||unistr('\000a')||
'          <li class="t0">}</li>'||unistr('\000a')||
'        </ol>'||unistr('\000a')||
'        <p>Blockquote example:</p>'||unistr('\000a')||
'        <blockquote>'||unistr('\000a')||
'          <p>The Extensible HyperText Markup Language, or XHTML, is a markup language that ';

s:=s||'has the same depth of expression as HTML, but with a syntax that conform to XML syntax.</p>'||unistr('\000a')||
'        </blockquote>'||unistr('\000a')||
'        <div class="date">'||unistr('\000a')||
'	<h3>'||unistr('\000a')||
'<a href="javascript:animatedcollapse.toggle(''rabbit'')">Comments (5)</a>'||unistr('\000a')||
'</h3>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="rabbit" style="background:#414141">'||unistr('\000a')||
'		<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, g';

s:=s||'ravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.         <ol class="code">'||unistr('\000a')||
'          <li class="t0">for ($i = 0; $i &lt; $num_kw; $i++) {</li>'||unistr('\000a')||
'          <li class="t2"><code>$keywords = trim($kws[$i]);</code></li>'||unistr('\000a')||
'          <li class="t2"><code>$value .= &quot; keywords_';

s:=s||'meta LIKE ''%$keywords%'' &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>if ($i &lt; $num_kw-1) {</code></li>'||unistr('\000a')||
'          <li class="t3"><code>$value .= &quot; OR &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>}</code></li>'||unistr('\000a')||
'          <li class="t0">}</li>'||unistr('\000a')||
'        </ol></p>'||unistr('\000a')||
'<div class="reply">'||unistr('\000a')||
'	<h3>'||unistr('\000a')||
'<a href="javascript:animatedcollapse.toggle(''rabbit'')">Reply</a>'||unistr('\000a')||
'</h3>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'       '||unistr('\000a')||
'	</div>'||unistr('\000a')||
'  ';

s:=s||'      <h2>Cascading Style Sheets</h2>'||unistr('\000a')||
'        <h3>Posted on April 10 , 2007 in <a href="http://www.free-css.com/">Internet</a></h3>'||unistr('\000a')||
'        <div class="rs"> <strong>List example</strong>:'||unistr('\000a')||
'          <ul>'||unistr('\000a')||
'            <li>list line 1</li>'||unistr('\000a')||
'            <li>list line 2'||unistr('\000a')||
'              <ul>'||unistr('\000a')||
'                <li>sublist line a</li>'||unistr('\000a')||
'                <li>sublist line b</li>'||unistr('\000a')||
'              </ul>'||unistr('\000a')||
'            </li>';

s:=s||''||unistr('\000a')||
'          </ul>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <p>In computing, <b>Cascading Style Sheets</b> (<b>CSS</b>) is a stylesheet language used to describe the presentation of a document written in a markup language. Its most common application is to style web pages written in HTML and XHTML, but the language can be applied to any kind of XML document, including SVG and XUL. The CSS specifications are maintaine';

s:=s||'d by the World Wide Web Consortium (W3C).</p>'||unistr('\000a')||
'        <p>CSS has various levels and profiles. Each level of CSS builds upon the last, typically adding new features and are typically denoted as CSS1, CSS2, and CSS3. Profiles are typically a subset of one or more levels of CSS built for a particular device or user interface. Currently there are profiles for mobile devices, printers, and television s';

s:=s||'ets. Profiles should not be confused with media types which were added in CSS2.</p>'||unistr('\000a')||
'        <div class="date"><a href="http://www.free-css.com/">Comments (11)</a></div>'||unistr('\000a')||
'      ';

wwv_flow_api.create_page_plug (
  p_id=> 5478755881573080 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Application Express Tips&Tricks',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'NEVER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 5478957337573089 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582536179758876739+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(582543463914876748 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 582541082065876742+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'NEVER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'if :article is not null then'||unistr('\000a')||
'blog_gui.print_article(p_number =>1, p_search => null, p_date_month => null, '||unistr('\000a')||
'          p_cat_id => null,p_article_id =>:article);'||unistr('\000a')||
'end if;'||unistr('\000a')||
'if :p3_preview is not null then'||unistr('\000a')||
'blog_gui.print_article_preview(p_number =>1, p_search => null, p_date_month => null, '||unistr('\000a')||
'          p_cat_id => null,p_article_id =>:p3_preview);'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 5479148441573089 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Print Article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>23528019305451877 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'GO,P0_X1',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 05-TOUKO -2011 12:09 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>6953307228049443 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_branch_action=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 12-JAN-2011 14:39 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4435024327307642 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_PREVIEW',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 5479148441573089+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5479550509577828 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'ARTICLE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 5479148441573089+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Article',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>6810910541075479 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'ARTICLE_SUBJ',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 5479148441573089+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subj',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>7476917762863954 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'RATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 5479148441573089+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'&nbsp;',
  p_pre_element_text=>'<div class="Clear">'||unistr('\000a')||
'Please rate this article so that we can improve the content (stars show the current rate):<br/>',
  p_post_element_text=>'</div>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_RADIOGROUP',
  p_lov=> 'STATIC2:1,2,3,4,5',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_tag_attributes  => 'class="auto-submit-star"',
  p_tag_attributes2=> 'style="display:none;"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_attribute_01 => '1',
  p_attribute_02 => 'NONE',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'P3_PREVIEW';

wwv_flow_api.create_page_process(
  p_id     => 12298921708413516 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_FOOTER',
  p_process_type=> 'CLEAR_CACHE_FOR_ITEMS',
  p_process_name=> 'P3_PREVIEW',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'    for I in (select MSG_SUBJECT'||unistr('\000a')||
'    from BLOG_MESSAGES '||unistr('\000a')||
'    where msg_type = ''STANDARD'''||unistr('\000a')||
'    and id = :article ) LOOP'||unistr('\000a')||
'  '||unistr('\000a')||
'    :article_subj := i.msg_subject;'||unistr('\000a')||
''||unistr('\000a')||
'    end loop;'||unistr('\000a')||
'    :rate := null;'||unistr('\000a')||
'    for I in (select rate'||unistr('\000a')||
'    from BLOG_ARTICLE_RATE'||unistr('\000a')||
'    where article_id = :article ) LOOP'||unistr('\000a')||
'  '||unistr('\000a')||
'    :rate := i.rate;'||unistr('\000a')||
''||unistr('\000a')||
'    end loop;'||unistr('\000a')||
''||unistr('\000a')||
'    for I in (select MSG_SUBJECT'||unistr('\000a')||
'    from BLOG_MESSAGES_PREVIEW'||unistr('\000a')||
'    whe';

p:=p||'re msg_type = ''STANDARD'''||unistr('\000a')||
'    and id = :P3_PREVIEW ) LOOP'||unistr('\000a')||
'  '||unistr('\000a')||
'    :article_subj := i.msg_subject;'||unistr('\000a')||
'    :rate := null;'||unistr('\000a')||
'    end loop;'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 6811329372090472 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'find art subj&rate',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: Read Category
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 4
 ,p_name => 'Read Category'
 ,p_alias => 'READCAT'
 ,p_step_title => 'Read Articles for Category: &P4_CAT_NAME.'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Read Articles for &CATEGORY.'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<script type="text/javascript" src="#WORKSPACE_IMAGES#animatedcollapse.js">'||unistr('\000a')||
''||unistr('\000a')||
'/***********************************************'||unistr('\000a')||
'* Animated Collapsible DIV v2.4- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)'||unistr('\000a')||
'* This notice MUST stay intact for legal use'||unistr('\000a')||
'* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more'||unistr('\000a')||
'***********************************************/'||unistr('\000a')||
''||unistr('\000a')||
'</'||
'script>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shCore.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<link href=''#WORKSPACE_IMAGES#shThemeDefault.css'' rel=''stylesheet'' type=''text/css''/>'||unistr('\000a')||
'<script language="javascript" src="#WORKSPACE_IMAGES#shCoreStaticInclude.js"></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shCore.js'' type=''text/javascript''></script>'||unistr('\000a')||
'<script src=''#WORKSPACE_IMAGES#shBrushJScript.js'' type=''text/javascr'||
'ipt''></script>'||unistr('\000a')||
'<script language=''javascript''>'||unistr('\000a')||
'SyntaxHighlighter.config.bloggerMode = true;'||unistr('\000a')||
'SyntaxHighlighter.config.clipboardSwf = ''#WORKSPACE_IMAGES#clipboard.swf'';'||unistr('\000a')||
'SyntaxHighlighter.all();'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src=''http://jquery-star-rating-plugin.googlecode.com/svn/trunk/jquery.rating.js'' type="text/javascript" language="javascript"></script>'||unistr('\000a')||
''||unistr('\000a')||
'<link href=''http://jquery-star-rating-plugin.googlecod'||
'e.com/svn/trunk/jquery.rating.css'' type="text/css" rel="stylesheet"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.radio_group{'||unistr('\000a')||
'border-style:none;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
''
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110505122551'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 5481753873822756 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582536179758876739+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_01',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(582543463914876748 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 582541082065876742+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'NEVER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_article(p_number =>100, p_search => null, p_date_month => null, '||unistr('\000a')||
'          p_cat_id => :category,p_article_id =>null);';

wwv_flow_api.create_page_plug (
  p_id=> 5481931924822757 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Print Article cat',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'        <h2>Webdesign</h2>'||unistr('\000a')||
'        <h3>Posted on April 11 , 2007 in <a href="http://www.free-css.com/">sNews</a></h3>'||unistr('\000a')||
'        <p>A website like free-css-templates.com is a collection of information about a particular topic or subject. Designing a website is defined as the arrangement and creation of web pages that in turn make up a website. A web page consists of information for which the website ';

s:=s||'is developed. A website might be compared to a book, where each page of the book is a web page. </p>'||unistr('\000a')||
'        <p> Here a code sample made with Code2CSS: </p>'||unistr('\000a')||
'        <ol class="code">'||unistr('\000a')||
'          <li class="t0">for ($i = 0; $i &lt; $num_kw; $i++) {</li>'||unistr('\000a')||
'          <li class="t2"><code>$keywords = trim($kws[$i]);</code></li>'||unistr('\000a')||
'          <li class="t2"><code>$value .= &quot; keywords_meta LIKE ''%$keywords';

s:=s||'%'' &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>if ($i &lt; $num_kw-1) {</code></li>'||unistr('\000a')||
'          <li class="t3"><code>$value .= &quot; OR &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>}</code></li>'||unistr('\000a')||
'          <li class="t0">}</li>'||unistr('\000a')||
'        </ol>'||unistr('\000a')||
'        <p>Blockquote example:</p>'||unistr('\000a')||
'        <blockquote>'||unistr('\000a')||
'          <p>The Extensible HyperText Markup Language, or XHTML, is a markup language that ';

s:=s||'has the same depth of expression as HTML, but with a syntax that conform to XML syntax.</p>'||unistr('\000a')||
'        </blockquote>'||unistr('\000a')||
'        <div class="date">'||unistr('\000a')||
'	<h3>'||unistr('\000a')||
'<a href="javascript:animatedcollapse.toggle(''rabbit'')">Comments (5)</a>'||unistr('\000a')||
'</h3>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="rabbit" style="background:#414141">'||unistr('\000a')||
'		<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer ut neque. Vivamus nisi metus, molestie vel, g';

s:=s||'ravida in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.         <ol class="code">'||unistr('\000a')||
'          <li class="t0">for ($i = 0; $i &lt; $num_kw; $i++) {</li>'||unistr('\000a')||
'          <li class="t2"><code>$keywords = trim($kws[$i]);</code></li>'||unistr('\000a')||
'          <li class="t2"><code>$value .= &quot; keywords_';

s:=s||'meta LIKE ''%$keywords%'' &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>if ($i &lt; $num_kw-1) {</code></li>'||unistr('\000a')||
'          <li class="t3"><code>$value .= &quot; OR &quot;;</code></li>'||unistr('\000a')||
'          <li class="t2"><code>}</code></li>'||unistr('\000a')||
'          <li class="t0">}</li>'||unistr('\000a')||
'        </ol></p>'||unistr('\000a')||
'<div class="reply">'||unistr('\000a')||
'	<h3>'||unistr('\000a')||
'<a href="javascript:animatedcollapse.toggle(''rabbit'')">Reply</a>'||unistr('\000a')||
'</h3>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'       '||unistr('\000a')||
'	</div>'||unistr('\000a')||
'  ';

s:=s||'      <h2>Cascading Style Sheets</h2>'||unistr('\000a')||
'        <h3>Posted on April 10 , 2007 in <a href="http://www.free-css.com/">Internet</a></h3>'||unistr('\000a')||
'        <div class="rs"> <strong>List example</strong>:'||unistr('\000a')||
'          <ul>'||unistr('\000a')||
'            <li>list line 1</li>'||unistr('\000a')||
'            <li>list line 2'||unistr('\000a')||
'              <ul>'||unistr('\000a')||
'                <li>sublist line a</li>'||unistr('\000a')||
'                <li>sublist line b</li>'||unistr('\000a')||
'              </ul>'||unistr('\000a')||
'            </li>';

s:=s||''||unistr('\000a')||
'          </ul>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <p>In computing, <b>Cascading Style Sheets</b> (<b>CSS</b>) is a stylesheet language used to describe the presentation of a document written in a markup language. Its most common application is to style web pages written in HTML and XHTML, but the language can be applied to any kind of XML document, including SVG and XUL. The CSS specifications are maintaine';

s:=s||'d by the World Wide Web Consortium (W3C).</p>'||unistr('\000a')||
'        <p>CSS has various levels and profiles. Each level of CSS builds upon the last, typically adding new features and are typically denoted as CSS1, CSS2, and CSS3. Profiles are typically a subset of one or more levels of CSS built for a particular device or user interface. Currently there are profiles for mobile devices, printers, and television s';

s:=s||'ets. Profiles should not be confused with media types which were added in CSS2.</p>'||unistr('\000a')||
'        <div class="date"><a href="http://www.free-css.com/">Comments (11)</a></div>'||unistr('\000a')||
'      ';

wwv_flow_api.create_page_plug (
  p_id=> 5482153016822757 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Application Express Tips&Tricks',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'NEVER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>23528229001454654 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'GO,P0_X1',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 05-TOUKO -2011 12:10 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>6955303793275595 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 12-JAN-2011 15:16 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5482329613822759 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'CATEGORY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 5482153016822757+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Article',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5589136300277133 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_CAT_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 5482153016822757+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Cat Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'select category_name'||unistr('\000a')||
'into :p4_cat_name'||unistr('\000a')||
'from blog_categories'||unistr('\000a')||
'where id = :CATEGORY;'||unistr('\000a')||
'exception when others then'||unistr('\000a')||
':p4_cat_name := null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 5589255693282726 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'cat name',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00005
prompt  ...PAGE 5: Resources
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 5
 ,p_name => 'Resources'
 ,p_alias => 'RESOURCES'
 ,p_step_title => 'Resources'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 5512233028656234 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110505122606'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select replace(msg_text,''#WORKSPACE#'',apex_application.get_current_flow_sgid(:APP_ID)) link'||unistr('\000a')||
'from blog_messages'||unistr('\000a')||
'where msg_type in ( ''RESOURCE'')'||unistr('\000a')||
'and nvl(expire_date,sysdate) >= sysdate'||unistr('\000a')||
'order by created_on';

wwv_flow_api.create_report_region (
  p_id=> 5521654658899066 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_name=> ' Resources',
  p_region_name=>'',
  p_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 582540290459876742+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '150',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_light.gif',
  p_query_asc_image_attr=> ' width="13" height="12" ',
  p_query_desc_image=> 'arrow_up_gray_light.gif',
  p_query_desc_image_attr=> ' width="13" height="12" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5521826623899068 + wwv_flow_api.g_id_offset,
  p_region_id=> 5521654658899066 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'LINK',
  p_column_display_sequence=> 1,
  p_column_heading=> ' Links to Resources',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>23523530771407842 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'GO,P0_X1',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 05-TOUKO -2011 12:02 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>6955127211272874 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 12-JAN-2011 15:16 by ADMIN');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00006
prompt  ...PAGE 6: Files
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 6
 ,p_name => 'Files'
 ,p_alias => 'FILES'
 ,p_step_title => 'Files'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 5512335106656847 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_page_comment => '<style>'||unistr('\000a')||
' .wordwrap{'||unistr('\000a')||
'  white-space: -moz-pre-wrap !important;  /* Mozilla, since 1999 */'||unistr('\000a')||
'  white-space: -pre-wrap;      /* Opera 4-6 */'||unistr('\000a')||
'  white-space: -o-pre-wrap;    /* Opera 7 */'||unistr('\000a')||
'  white-space: pre-wrap;       /* css-3 */'||unistr('\000a')||
'  word-wrap: break-word;       /* Internet Explorer 5.5+ */'||unistr('\000a')||
' }'||unistr('\000a')||
'</style>'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110925180638'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select null dummy,'||unistr('\000a')||
'''<table><tr><td style="white-space:normal;word-wrap:break-word;">''||description||''</td></tr></table>'''||unistr('\000a')||
'description,created_on,'||unistr('\000a')||
'case when external_link is not null then  '||unistr('\000a')||
'       ''<a href="''||external_link||''">''||filename||''</a>'''||unistr('\000a')||
'else   '||unistr('\000a')||
'       ''<a href="z?p_url=''||apex_util.url_encode(''#OWNER#.download_file?p_file=''||id)||'||unistr('\000a')||
'       ''&p_cat=''||category||''&p_company=''||apex_applicatio';

s:=s||'n.get_current_flow_sgid(:APP_ID)||''">''||filename||''</a>'' end link,'||unistr('\000a')||
'       case when doc_size < 102.4'||unistr('\000a')||
'              then round(doc_size,1)||'' b'''||unistr('\000a')||
'            when doc_size < 1048576 '||unistr('\000a')||
'              then round((doc_size/1024),1)||'' kb'''||unistr('\000a')||
'            else round((doc_size/1024/1024),1)||'' mb'' '||unistr('\000a')||
'       end the_size,'||unistr('\000a')||
'       id upload_id'||unistr('\000a')||
'  from ate_files'||unistr('\000a')||
'where publish = ''Y''';

wwv_flow_api.create_report_region (
  p_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 6,
  p_name=> 'Files',
  p_region_name=>'',
  p_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_header=> '<style>'||unistr('\000a')||
'#left_side img {'||unistr('\000a')||
'float:right;'||unistr('\000a')||
'padding:0;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'N',
  p_query_row_template=> 582540290459876742+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'No files found',
  p_query_num_rows_type=> 'NEXT_PREVIOUS_LINKS',
  p_query_row_count_max=> '200',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_csv_output=> 'N',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_light.gif',
  p_query_asc_image_attr=> ' width="10" height="9" ',
  p_query_desc_image=> 'arrow_up_gray_light.gif',
  p_query_desc_image_attr=> ' width="10" height="9" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5517738965832503 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'DUMMY',
  p_column_display_sequence=> 3,
  p_column_heading=> '<br />',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5517857343832505 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'DESCRIPTION',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Description',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5517934952832505 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Created On',
  p_column_format=> '&ASKUS_DATE_FORMAT.',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>1,
  p_default_sort_dir=>'desc',
  p_disable_sort_column=>'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5518029122832505 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'LINK',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Link',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5518137114832505 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'THE_SIZE',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Size',
  p_column_css_style=>'white-space:nowrap;',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5518241336832505 + wwv_flow_api.g_id_offset,
  p_region_id=> 5517553740832499 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'UPLOAD_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Upload Id',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>23523713240412277 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ALIAS.:SEARCH:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_condition_type=> 'REQUEST_IN_CONDITION',
  p_branch_condition=> 'GO,P0_X1',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 05-TOUKO -2011 12:03 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>6954920285270813 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 6,
  p_branch_action=> 'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 12-JAN-2011 15:16 by ADMIN');
 
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 6
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00007
prompt  ...PAGE 7: Error page
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 7
 ,p_name => 'Error page'
 ,p_alias => 'ERROR'
 ,p_step_title => 'Error page'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111101110656'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>The following error occured:</p>'||unistr('\000a')||
'<h3>&ERRMSG.</h3>'||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 2956803500225109 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_plug_name=> 'Error occured',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_display_when_condition => 'ERROR',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'begin'||unistr('\000a')||
'htp.prn(wwv_flow.g_sqlerrm );'||unistr('\000a')||
'htp.prn(wwv_flow.g_err_comp_type);'||unistr('\000a')||
'htp.prn(wwv_flow.g_error_template);'||unistr('\000a')||
'/*for i in 1..wwv_flow.g_plug_display_error_message.count loop'||unistr('\000a')||
'htp.prn(wwv_flow.g_plug_display_error_message(i));'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'*/'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_plug (
  p_id=> 3056929406618220 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 7,
  p_plug_name=> 'Error',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 20,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3049219138830977 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 7,
  p_name=>'ERROR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2956803500225109+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Error',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':ERROR := null;';

wwv_flow_api.create_page_process(
  p_id     => 6953912039098145 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 7,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_FOOTER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'clrear ERROR',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 7
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00008
prompt  ...PAGE 8: Edit Comment
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 8
 ,p_name => 'Edit Comment'
 ,p_alias => 'EDIT'
 ,p_step_title => 'Edit Comment'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Edit Comment'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<style>'||unistr('\000a')||
'textarea{white-space:pre;font-family: monospace; font-size: 12px;}'||unistr('\000a')||
'.fielddata {'||unistr('\000a')||
'color:#E7E7E7;'||unistr('\000a')||
'}'||unistr('\000a')||
'.errTxt {'||unistr('\000a')||
'white-space:normal;'||unistr('\000a')||
'font-size:80%;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#htmltooltip.js"></script>'||unistr('\000a')||
'<script>'||unistr('\000a')||
'var pc = navigator.userAgent.toLowerCase();'||unistr('\000a')||
'var ie4_win = (pc.indexOf("win")!=-1) && (pc.indexOf("msie") != -1)'||unistr('\000a')||
'    && (parseInt(navigator.appVersion)'||
' >= 4);'||unistr('\000a')||
'// only builds based upon gecko later than Jan 8th support the selectionStart, selectionEnd properly'||unistr('\000a')||
'var is_gecko = pc.indexOf("gecko/") != -1 &&'||unistr('\000a')||
'    parseFloat(pc.substring(pc.indexOf("gecko/") + 6, pc.indexOf("gecko/") + 14)) > 20030108;'||unistr('\000a')||
''||unistr('\000a')||
'function styleTag(tag, ta) {'||unistr('\000a')||
'    var tagOpen = ''<'' + tag.toLowerCase() + ''>'';'||unistr('\000a')||
'    var tagClose = ''</'' + tag.toLowerCase() + ''>'';'||unistr('\000a')||
'    if (ie4_win) {'||unistr('\000a')||
'   '||
'     var selected;'||unistr('\000a')||
''||unistr('\000a')||
'        if (document.selection.createRange().parentElement().tagName == ''TEXTAREA'') {'||unistr('\000a')||
'            selected = document.selection.createRange().text;'||unistr('\000a')||
'        }'||unistr('\000a')||
''||unistr('\000a')||
'        if (selected) {'||unistr('\000a')||
'            var addSpace = false;'||unistr('\000a')||
'            if (selected.charAt(selected.length-1) == '' '') {'||unistr('\000a')||
'                selected = selected.substring(0, selected.length-1);'||unistr('\000a')||
'                addSpace = true;'||unistr('\000a')||
''||
'            }'||unistr('\000a')||
'            document.selection.createRange().text'||unistr('\000a')||
'                    = tagOpen + selected + tagClose + ((addSpace)?" ":"");'||unistr('\000a')||
'        } else {'||unistr('\000a')||
'            ta.value += tagOpen + tagClose;'||unistr('\000a')||
'        }'||unistr('\000a')||
'    } else if (is_gecko) {'||unistr('\000a')||
'        var selLength = ta.textLength;'||unistr('\000a')||
'        var selStart = ta.selectionStart;'||unistr('\000a')||
'        var selEnd = ta.selectionEnd;'||unistr('\000a')||
'        if (selEnd == 1 || selEnd == 2) {'||unistr('\000a')||
'  '||
'          selEnd = selLength;'||unistr('\000a')||
'        }'||unistr('\000a')||
'        var s1 = (ta.value).substring(0, selStart);'||unistr('\000a')||
'        var s2 = (ta.value).substring(selStart, selEnd)'||unistr('\000a')||
'        var s3 = (ta.value).substring(selEnd, selLength);'||unistr('\000a')||
''||unistr('\000a')||
'        var scrollTop = ta.scrollTop;'||unistr('\000a')||
''||unistr('\000a')||
'        ta.value = s1 + tagOpen + s2 + tagClose + s3;'||unistr('\000a')||
'        var cursorPos = selStart+tagOpen.length+s2.length+tagClose.length;'||unistr('\000a')||
'        ta.selectionStart'||
' = cursorPos;'||unistr('\000a')||
'        ta.selectionEnd = cursorPos;'||unistr('\000a')||
'        ta.scrollTop = scrollTop;'||unistr('\000a')||
''||unistr('\000a')||
'    } else {'||unistr('\000a')||
'        ta.value += tagOpen + tagClose;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    ta.focus();'||unistr('\000a')||
'    return;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'div.htmltooltip{'||unistr('\000a')||
'position: absolute; /*leave this and next 3 values alone*/'||unistr('\000a')||
'z-index: 1000;'||unistr('\000a')||
'left: -1000px;'||unistr('\000a')||
'top: -1000px;'||unistr('\000a')||
'background: #272727;'||unistr('\000a')||
'border: 10px solid black;'||unistr('\000a')||
'color: white;'||unistr('\000a')||
'padding: '||
'3px;'||unistr('\000a')||
'width: 250px; /*width of tooltip*/'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'function trim(str, chars) {'||unistr('\000a')||
'	return ltrim(rtrim(str, chars), chars);'||unistr('\000a')||
'}'||unistr('\000a')||
' '||unistr('\000a')||
'function ltrim(str, chars) {'||unistr('\000a')||
'	chars = chars || "\\s";'||unistr('\000a')||
'	return str.replace(new RegExp("^[" + chars + "]+", "g"), "");'||unistr('\000a')||
'}'||unistr('\000a')||
' '||unistr('\000a')||
'function rtrim(str, chars) {'||unistr('\000a')||
'	chars = chars || "\\s";'||unistr('\000a')||
'	return str.replace(new RegExp("[" + chars + "]+$", "g"), "");'||unistr('\000a')||
'}'||unistr('\000a')||
'func'||
'tion setCookie(c_name,value,expiredays)'||unistr('\000a')||
'{'||unistr('\000a')||
'var exdate=new Date();'||unistr('\000a')||
'exdate.setDate(exdate.getDate()+expiredays);'||unistr('\000a')||
'document.cookie=c_name+ "=" +escape(value)+'||unistr('\000a')||
'((expiredays==null) ? "" : ";expires="+exdate.toUTCString());'||unistr('\000a')||
'}'||unistr('\000a')||
'function SubmitComment()'||unistr('\000a')||
'{'||unistr('\000a')||
''||unistr('\000a')||
'  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P8_EMAIL'')) + ''|'' + trim($v(''P8_FNAME'')) + ''|'' + trim($v(''P8_LNAME'')) + ''|'' + ''|'' + trim($v(''P8_NICKNAME'')) '||
'+ ''|'' + ''|'' + ''|'' + ''|'' + &APP_SESSION.,365);'||unistr('\000a')||
'htmldbConfirmDialog(''NEXT'',{message:"Your comment will be updated after you press OK button."});'||unistr('\000a')||
'}'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'$(document).ready(function(){'||unistr('\000a')||
'if( $(''#MESSAGE'').text()) {'||unistr('\000a')||
'$(''.pb'').remove();'||unistr('\000a')||
'htmldbMsgDialog({message: $(''#MESSAGE'').html()});'||unistr('\000a')||
'$(''#MESSAGE'').remove();'||unistr('\000a')||
'}'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_page_comment => '  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P9_EMAIL'')) + ''|'' + trim($v(''P9_FNAME'')) + ''|'' + trim($v(''P9_LNAME'')) + ''|'' + ''|'' + trim($v(''P9_NICKNAME'')) + ''|'' + ''|'' + ''|'',365);'||unistr('\000a')||
''||unistr('\000a')||
'  var ajaxRequest = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=HASH'',&APP_PAGE_ID.);'||unistr('\000a')||
'  ajaxRequest.addParam(''x01'', trim($v(''P9_EMAIL'')));'||unistr('\000a')||
'  var ajaxResult = ajaxRequest.get();'||unistr('\000a')||
''||unistr('\000a')||
'  ajaxRequest = null;'||unistr('\000a')||
'  htmldbConfirmDialog(''NEXT'',{message:"Your comment will be submitted after you press OK button."});'||unistr('\000a')||
'}'||unistr('\000a')||
'  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P9_EMAIL'')) + ''|'' + trim($v(''P9_FNAME'')) + ''|'' + trim($v(''P9_LNAME'')) + ''|'' + ''|'' + trim($v(''P9_NICKNAME'')) + ''|'' + ''|'' + ''|'' + ''|'' + &APP_SESSION.,365);'||unistr('\000a')||
''
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20110120203342'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'for i in ('||unistr('\000a')||
'select ''<div class="htmltooltip">''||ITEM_HELP_TEXT||''</div>'' text'||unistr('\000a')||
'from APEX_APPLICATION_PAGE_ITEMS'||unistr('\000a')||
'where  application_id = :app_id'||unistr('\000a')||
'and page_id = :app_page_id '||unistr('\000a')||
'and condition_type is null'||unistr('\000a')||
'and item_help_text is not null'||unistr('\000a')||
'order by DISPLAY_SEQUENCE'||unistr('\000a')||
') loop'||unistr('\000a')||
'htp.p(i.TEXT);'||unistr('\000a')||
'end loop;';

wwv_flow_api.create_page_plug (
  p_id=> 4755007328351880 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'print help',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 51,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4755231043351884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Comment on Article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 61,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select msg_subject,msg_text, created_on from blog_messages'||unistr('\000a')||
'where msg_type = ''STANDARD'' and id = :article';

wwv_flow_api.create_report_region (
  p_id=> 4755422621351884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_name=> 'Comment on Article',
  p_region_name=>'',
  p_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 41,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_condition_type=> 'NEVER',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 2,
  p_query_headings_type=> 'NO_HEADINGS',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> '0',
  p_query_row_count_max=> '500',
  p_csv_output=> 'N',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4755632729351889 + wwv_flow_api.g_id_offset,
  p_region_id=> 4755422621351884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'MSG_SUBJECT',
  p_column_display_sequence=> 1,
  p_column_heading=> '',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4755711539351890 + wwv_flow_api.g_id_offset,
  p_region_id=> 4755422621351884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'MSG_TEXT',
  p_column_display_sequence=> 2,
  p_column_heading=> '',
  p_column_css_style=>'color:#E7E7E7;font-weight:normal;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 4755826973351890 + wwv_flow_api.g_id_offset,
  p_region_id=> 4755422621351884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 3,
  p_column_heading=> '',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 4755932465351890 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Edit Your Comment',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 21,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Fields with red asterisks are required.  '||unistr('\000a')||
'<br><br>'||unistr('\000a')||
''||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 4756132075351891 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Information',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 31,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_article(p_number =>1, p_search => null, p_date_month => null, '||unistr('\000a')||
'          p_cat_id => null,p_article_id =>:article,p_print_comment => false);';

wwv_flow_api.create_page_plug (
  p_id=> 4756303482351892 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 8,
  p_plug_name=> 'Print article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 71,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 4756502648351894 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 10,
  p_button_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(5557848262179649+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ALIAS.:HOME:0',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 4756718865351897 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 8,
  p_button_sequence=> 10,
  p_button_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(5557848262179649+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:SubmitComment();',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>4767208902351946 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_branch_action=> 'f?p=&APP_ALIAS.:READ:0::::ARTICLE:&ARTICLE.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>4756718865351897+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>4767402649351947 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_branch_action=> 'f?p=&APP_ALIAS.:EDIT:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 20,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 07-NOV-2010 10:44 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>4767601208351948 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_branch_action=> 'f?p=&APP_ALIAS.:HOME:0',
  p_branch_point=> 'BEFORE_HEADER',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_condition_type=> 'NEVER',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your email address.';

wwv_flow_api.create_page_item(
  p_id=>4756928986351898 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter the name of your company/employer.';

wwv_flow_api.create_page_item(
  p_id=>4757418634351903 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_ORG',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Company',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your first name.';

wwv_flow_api.create_page_item(
  p_id=>4757913256351904 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_FNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'First Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_tag_attributes  => 'Please enter your first name.',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your geographic location (e.g., your city/country/state).';

wwv_flow_api.create_page_item(
  p_id=>4758409716351905 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_LOCATION',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Location',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your last name.';

wwv_flow_api.create_page_item(
  p_id=>4758904404351907 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_LNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Last Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your job title/description of what you do.';

wwv_flow_api.create_page_item(
  p_id=>4759405372351908 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_JOB_TITLE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Job Title',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please choose the specific category you are asking about.';

wwv_flow_api.create_page_item(
  p_id=>4759908505351909 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_CATEGORY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Category',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Years of Oracle experience.';

wwv_flow_api.create_page_item(
  p_id=>4760423401351910 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_YEARS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Years Using Oracle',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'YEARS_OF_EXPERIENCE',
  p_lov=> 'select x.d, x.r'||unistr('\000a')||
'from ('||unistr('\000a')||
'select 0 d, 0 r from dual'||unistr('\000a')||
'union'||unistr('\000a')||
'select rownum d, rownum r'||unistr('\000a')||
'from all_objects'||unistr('\000a')||
'where rownum <= 20) x'||unistr('\000a')||
'order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter a descriptive subject of your question.';

wwv_flow_api.create_page_item(
  p_id=>4760918345351914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_SUBJECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subject',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 70,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your question below.  Use the formatting buttons to add allowed HTML tags.';

wwv_flow_api.create_page_item(
  p_id=>4761304319351915 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_QUESTION_T',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Question',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4761806730351916 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_X',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 105,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your comment. Use the formatting buttons to add allowed HTML tags.';

wwv_flow_api.create_page_item(
  p_id=>4762025821351917 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_COMMENT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comment',
  p_post_element_text=>'"TEXT_EDIT"',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 2000,
  p_cHeight=> 20,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT-TOP',
  p_field_alignment=> 'RIGHT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4762512491351917 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_X2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 115,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4762710225351918 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_X3',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 95,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Check this box if you want an email sent when a new comment is posted to this article.';

wwv_flow_api.create_page_item(
  p_id=>4762914530351919 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_FOLLOWUP_NOTIFY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 102,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notification',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC:Notify me of followup comments via e-mail;YES',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_help_text=> h,
  p_attribute_01 => '1',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4763406317351920 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_BUTTONS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 118,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_post_element_text=>'"FORMATTING_BUTTONS"',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter Nickname, it will be displayed in Posted by.';

wwv_flow_api.create_page_item(
  p_id=>4763623773351921 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_NICKNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Nickname',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => 'Enter Nickname, it will be displayed in Posted by.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4764107434351924 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4767908175377261 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'COMMENT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comment',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>7363210332206949 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_name=>'P8_INFO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 4755932465351890+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'&nbsp;',
  p_post_element_text=>'<p>Your email address will not be published. Required fields are marked with asterisk.</p>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540682551876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 4764418476351927 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 8,
  p_computation_sequence => 10,
  p_computation_item=> 'P8_EMAIL',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'FUNCTION_BODY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'begin'||unistr('\000a')||
''||unistr('\000a')||
':P8_FNAME :=    substr(trim(:P8_FNAME),1,30);'||unistr('\000a')||
':P8_LNAME :=    substr(trim(:P8_LNAME),1,30);'||unistr('\000a')||
':P8_NICKNAME := substr(trim(:P8_NICKNAME),1,30);'||unistr('\000a')||
':P8_EMAIL :=    substr(trim(:P8_EMAIL),1,255);'||unistr('\000a')||
'return :P8_EMAIL;'||unistr('\000a')||
''||unistr('\000a')||
'end;',
  p_compute_when => '',
  p_compute_when_type=>'%null%');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4766001764351937 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_EMAIL not null',
  p_validation_sequence=> 10,
  p_validation => 'P8_EMAIL',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your e-mail address.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4756928986351898 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4764825528351934 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'E-Mail Address validate',
  p_validation_sequence=> 20,
  p_validation => 'begin'||unistr('\000a')||
':P8_EMAIL := trim(:P8_EMAIL);'||unistr('\000a')||
'return check_email(:P8_EMAIL) ;'||unistr('\000a')||
'end;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'Please specify a valid e-mail address.',
  p_validation_condition=> 'P8_EMAIL',
  p_validation_condition_type=> 'ITEM_IS_NOT_NULL',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4756928986351898 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4765025102351935 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_NICKNAME',
  p_validation_sequence=> 25,
  p_validation => 'P8_NICKNAME',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your Nickname.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4763623773351921 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4765217093351935 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_CATEGORY not null',
  p_validation_sequence=> 30,
  p_validation => 'P8_CATEGORY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify a category for your question.',
  p_validation_condition_type=> 'NEVER',
  p_associated_item=> 4759908505351909 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4765401927351935 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_SUBJECT not null',
  p_validation_sequence=> 50,
  p_validation => 'P8_SUBJECT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify a subject for your question.',
  p_validation_condition_type=> 'NEVER',
  p_associated_item=> 4760918345351914 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4765605220351936 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_COMMENT',
  p_validation_sequence=> 60,
  p_validation => 'P8_COMMENT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your comment.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4762025821351917 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4765809789351936 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'Validate Tags in comment',
  p_validation_sequence=> 70,
  p_validation => 'return ate_api.validate_message(:P8_COMMENT);',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'There are mismatched HTML tags in your comment.  Please close all tags and resubmit.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4764600086351933 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_COMMENT too long',
  p_validation_sequence=> 80,
  p_validation => 'begin'||unistr('\000a')||
'--:P8_COMMENT := replace(:P8_COMMENT,''<code>'',''<pre class="brush:javascript">'');'||unistr('\000a')||
'--:P8_COMMENT := replace(:P8_COMMENT,''</code>'',''</pre>'');'||unistr('\000a')||
'if length(:P8_COMMENT) > 4000 then'||unistr('\000a')||
'return false;'||unistr('\000a')||
'else return true;'||unistr('\000a')||
'end if;'||unistr('\000a')||
'end;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'Comment is too long, please make it shorter.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4762025821351917 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 4766214744351937 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P8_EMAIL bad email',
  p_validation_sequence=> 90,
  p_validation => 'select 1'||unistr('\000a')||
'from ate_bad_emails'||unistr('\000a')||
'where upper(email) = upper(:P8_EMAIL)',
  p_validation_type => 'NOT_EXISTS',
  p_error_message => 'You email is in the list of bad email, comment is not possible.',
  p_when_button_pressed=> 4756718865351897 + wwv_flow_api.g_id_offset,
  p_associated_item=> 4756928986351898 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'        owa_util.mime_header(''text/html'', FALSE);'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'/*'||unistr('\000a')||
'ate_api.write_askcookie('||unistr('\000a')||
'        p_email     => :P8_EMAIL,'||unistr('\000a')||
'        p_fname     =>  :P8_FNAME,'||unistr('\000a')||
'        p_lname     =>  :P8_LNAME,'||unistr('\000a')||
'        p_nickname   => :P8_NICKNAME);'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4766721834351941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'send cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>4756718865351897 + wwv_flow_api.g_id_offset,
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
':P8_COMMENT := trim(:P8_COMMENT);'||unistr('\000a')||
''||unistr('\000a')||
'update BLOG_REG_USERS set'||unistr('\000a')||
'    EMAIL = substr(trim(:P8_EMAIL),1,255), -- EMAIL'||unistr('\000a')||
'    FNAME = substr(trim(:P8_FNAME),1,30), -- FNAME,'||unistr('\000a')||
'    LNAME =  substr(trim(:P8_LNAME),1,30), -- LNAME,'||unistr('\000a')||
'    MODIFIED_ON = sysdate,'||unistr('\000a')||
'    MODIFIED_BY = :P8_ID,'||unistr('\000a')||
'    NICK = substr(trim(:P8_NICKNAME),1,30)'||unistr('\000a')||
'where id = :P8_ID;'||unistr('\000a')||
''||unistr('\000a')||
'update BLOG_MESSAGES set'||unistr('\000a')||
'    MSG_TEXT = ate_api.format_comme';

p:=p||'nt(:P8_COMMENT,length(:P8_COMMENT)),   '||unistr('\000a')||
'    followup_notify = decode(:P9_FOLLOWUP_NOTIFY,''YES'',''Y'',''N''),'||unistr('\000a')||
'    MODIFIED_ON = sysdate,'||unistr('\000a')||
'    MODIFIED_BY_ID = :P8_ID'||unistr('\000a')||
'WHERE id = :COMMENT;'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4766331566351938 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'WRITECOMMENT',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>4756718865351897 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Thank you for updating your comment.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'INSERT'||unistr('\000a')||
'INTO BLOG_REG_USERS'||unistr('\000a')||
'  ('||unistr('\000a')||
'    HTTP_USER_AGENT,'||unistr('\000a')||
'    HTTP_REFERER,'||unistr('\000a')||
'    HOST_NAME,'||unistr('\000a')||
'    FOLLOWUP_NOTIFY,'||unistr('\000a')||
'    REMOTE_ADDR,'||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    EMAIL,'||unistr('\000a')||
'    FNAME,'||unistr('\000a')||
'    LNAME,'||unistr('\000a')||
'    LOCATION,'||unistr('\000a')||
'    TITLE,'||unistr('\000a')||
'    ORG,'||unistr('\000a')||
'    YEARS_EXP,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    CREATED_BY,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    MODIFIED_BY,'||unistr('\000a')||
'    PASSWORD,'||unistr('\000a')||
'    NICK'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    null, -- HTTP_USER_AGENT,'||unistr('\000a')||
'    null, -- HTTP_REFERER,'||unistr('\000a')||
'    null, -- HOST_NAME,'||unistr('\000a')||
'    FOLLOWUP_NOTIFY,'||unistr('\000a')||
'    REMOTE_ADDR,'||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    EMAIL,'||unistr('\000a')||
'    FNAME,'||unistr('\000a')||
'    LNAME,'||unistr('\000a')||
'    LOCATION,'||unistr('\000a')||
'    title,'||unistr('\000a')||
'    null, -- org,'||unistr('\000a')||
'    null, -- years_exp,'||unistr('\000a')||
'    null, -- CREATED_ON,'||unistr('\000a')||
'    null, -- CREATED_BY,'||unistr('\000a')||
'    null, -- MODIFIED_ON,'||unistr('\000a')||
'    null, -- modified_by,'||unistr('\000a')||
'    null, --upassword,'||unistr('\000a')||
'    :P9_NICKNAME'||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'INSERT'||unistr('\000a')||
'INTO BLOG_MESSAGES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    MSG_ID,'||unistr('\000a')||
'    MSG_TYPE,'||unistr('\000a')||
'    MSG_SUBJECT,'||unistr('\000a')||
'    MSG_TEXT,'||unistr('\000a')||
'    CATEGORY_ID,'||unistr('\000a')||
'    EXPIRE_DATE,'||unistr('\000a')||
'    VIEWED,'||unistr('\000a')||
'    RESERVED2,'||unistr('\000a')||
'    RESERVED3,'||unistr('\000a')||
'    RESERVED4,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    CREATED_BY_ID,'||unistr('\000a')||
'    MODIFIED_BY_ID'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    :v0,'||unistr('\000a')||
'    :v1,'||unistr('\000a')||
'    :v2,'||unistr('\000a')||
'    :v3,'||unistr('\000a')||
'    :v4,'||unistr('\000a')||
'    :v5,'||unistr('\000a')||
'    :v6,'||unistr('\000a')||
'    :v7,'||unistr('\000a')||
'    :v8,'||unistr('\000a')||
'    :v9,'||unistr('\000a')||
'    :v10,'||unistr('\000a')||
'    :v11,'||unistr('\000a')||
'    :v12,'||unistr('\000a')||
'    :v13,'||unistr('\000a')||
'    :v14'||unistr('\000a')||
'  );');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'l number;'||unistr('\000a')||
'begin'||unistr('\000a')||
'select count(1) '||unistr('\000a')||
'into l'||unistr('\000a')||
'from blog_messages'||unistr('\000a')||
'where id = :COMMENT'||unistr('\000a')||
'and exists (select 1 from apex_collections where collection_name = ''COMMENTS'' and c001 = :COMMENT);'||unistr('\000a')||
'if l = 0 then'||unistr('\000a')||
'owa_util.redirect_url(''f?p=&APP_ALIAS.:HOME:0'');'||unistr('\000a')||
'end if;'||unistr('\000a')||
'exception when others then'||unistr('\000a')||
'owa_util.redirect_url(''f?p=&APP_ALIAS.:HOME:0'');'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4771215091003764 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 1,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'redirect',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
'    for i in (select * from blog_messages where id = :COMMENT) loop'||unistr('\000a')||
'     :P8_COMMENT := i.msg_text;'||unistr('\000a')||
'      select decode(i.followup_notify,''Y'',''YES'',null) into :P8_FOLLOWUP_NOTIFY from dual;'||unistr('\000a')||
'     :ARTICLE := i.msg_id;'||unistr('\000a')||
'      for j in (select * from blog_reg_users where id = i.created_by_id) loop'||unistr('\000a')||
'        :P8_ID := j.id;'||unistr('\000a')||
'        :P8_EMAIL := j.email;'||unistr('\000a')||
'        :P8_NICKNAME := j.NICK;  '||unistr('\000a')||
'        :P';

p:=p||'8_FNAME := j.fname;'||unistr('\000a')||
'        :P8_LNAME := j.lname;        '||unistr('\000a')||
'      end loop;'||unistr('\000a')||
'    end loop;'||unistr('\000a')||
''||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4766501622351941 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 8,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'fetch info',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 8
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00009
prompt  ...PAGE 9: Submit Comment
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 9
 ,p_name => 'Submit Comment'
 ,p_alias => 'WRITECOMMENT'
 ,p_step_title => 'Submit Comment'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Submit Comment'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 582854674002318950 + wwv_flow_api.g_id_offset
 ,p_html_page_header => 
'<style>'||unistr('\000a')||
'textarea{white-space:pre;font-family: monospace; font-size: 12px;}'||unistr('\000a')||
'.fielddata {'||unistr('\000a')||
'color:#E7E7E7;'||unistr('\000a')||
'}'||unistr('\000a')||
'.errTxt {'||unistr('\000a')||
'white-space:normal;'||unistr('\000a')||
'font-size:80%;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript" src="#WORKSPACE_IMAGES#htmltooltip.js"></script>'||unistr('\000a')||
'<script>'||unistr('\000a')||
'var pc = navigator.userAgent.toLowerCase();'||unistr('\000a')||
'var ie4_win = (pc.indexOf("win")!=-1) && (pc.indexOf("msie") != -1)'||unistr('\000a')||
'    && (parseInt(navigator.appVersion)'||
' >= 4);'||unistr('\000a')||
'// only builds based upon gecko later than Jan 8th support the selectionStart, selectionEnd properly'||unistr('\000a')||
'var is_gecko = pc.indexOf("gecko/") != -1 &&'||unistr('\000a')||
'    parseFloat(pc.substring(pc.indexOf("gecko/") + 6, pc.indexOf("gecko/") + 14)) > 20030108;'||unistr('\000a')||
''||unistr('\000a')||
'function styleTag(tag, ta) {'||unistr('\000a')||
'    var tagOpen = ''<'' + tag.toLowerCase() + ''>'';'||unistr('\000a')||
'    var tagClose = ''</'' + tag.toLowerCase() + ''>'';'||unistr('\000a')||
'    if (ie4_win) {'||unistr('\000a')||
'   '||
'     var selected;'||unistr('\000a')||
''||unistr('\000a')||
'        if (document.selection.createRange().parentElement().tagName == ''TEXTAREA'') {'||unistr('\000a')||
'            selected = document.selection.createRange().text;'||unistr('\000a')||
'        }'||unistr('\000a')||
''||unistr('\000a')||
'        if (selected) {'||unistr('\000a')||
'            var addSpace = false;'||unistr('\000a')||
'            if (selected.charAt(selected.length-1) == '' '') {'||unistr('\000a')||
'                selected = selected.substring(0, selected.length-1);'||unistr('\000a')||
'                addSpace = true;'||unistr('\000a')||
''||
'            }'||unistr('\000a')||
'            document.selection.createRange().text'||unistr('\000a')||
'                    = tagOpen + selected + tagClose + ((addSpace)?" ":"");'||unistr('\000a')||
'        } else {'||unistr('\000a')||
'            ta.value += tagOpen + tagClose;'||unistr('\000a')||
'        }'||unistr('\000a')||
'    } else if (is_gecko) {'||unistr('\000a')||
'        var selLength = ta.textLength;'||unistr('\000a')||
'        var selStart = ta.selectionStart;'||unistr('\000a')||
'        var selEnd = ta.selectionEnd;'||unistr('\000a')||
'        if (selEnd == 1 || selEnd == 2) {'||unistr('\000a')||
'  '||
'          selEnd = selLength;'||unistr('\000a')||
'        }'||unistr('\000a')||
'        var s1 = (ta.value).substring(0, selStart);'||unistr('\000a')||
'        var s2 = (ta.value).substring(selStart, selEnd)'||unistr('\000a')||
'        var s3 = (ta.value).substring(selEnd, selLength);'||unistr('\000a')||
''||unistr('\000a')||
'        var scrollTop = ta.scrollTop;'||unistr('\000a')||
''||unistr('\000a')||
'        ta.value = s1 + tagOpen + s2 + tagClose + s3;'||unistr('\000a')||
'        var cursorPos = selStart+tagOpen.length+s2.length+tagClose.length;'||unistr('\000a')||
'        ta.selectionStart'||
' = cursorPos;'||unistr('\000a')||
'        ta.selectionEnd = cursorPos;'||unistr('\000a')||
'        ta.scrollTop = scrollTop;'||unistr('\000a')||
''||unistr('\000a')||
'    } else {'||unistr('\000a')||
'        ta.value += tagOpen + tagClose;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    ta.focus();'||unistr('\000a')||
'    return;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'div.htmltooltip{'||unistr('\000a')||
'position: absolute; /*leave this and next 3 values alone*/'||unistr('\000a')||
'z-index: 1000;'||unistr('\000a')||
'left: -1000px;'||unistr('\000a')||
'top: -1000px;'||unistr('\000a')||
'background: #272727;'||unistr('\000a')||
'border: 10px solid black;'||unistr('\000a')||
'color: white;'||unistr('\000a')||
'padding: '||
'3px;'||unistr('\000a')||
'width: 250px; /*width of tooltip*/'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'function trim(str, chars) {'||unistr('\000a')||
'	return ltrim(rtrim(str, chars), chars);'||unistr('\000a')||
'}'||unistr('\000a')||
' '||unistr('\000a')||
'function ltrim(str, chars) {'||unistr('\000a')||
'	chars = chars || "\\s";'||unistr('\000a')||
'	return str.replace(new RegExp("^[" + chars + "]+", "g"), "");'||unistr('\000a')||
'}'||unistr('\000a')||
' '||unistr('\000a')||
'function rtrim(str, chars) {'||unistr('\000a')||
'	chars = chars || "\\s";'||unistr('\000a')||
'	return str.replace(new RegExp("[" + chars + "]+$", "g"), "");'||unistr('\000a')||
'}'||unistr('\000a')||
'func'||
'tion setCookie(c_name,value,expiredays)'||unistr('\000a')||
'{'||unistr('\000a')||
'var exdate=new Date();'||unistr('\000a')||
'exdate.setDate(exdate.getDate()+expiredays);'||unistr('\000a')||
'document.cookie=c_name+ "=" +escape(value)+'||unistr('\000a')||
'((expiredays==null) ? "" : ";expires="+exdate.toUTCString());'||unistr('\000a')||
'}'||unistr('\000a')||
'function SubmitComment()'||unistr('\000a')||
'{'||unistr('\000a')||
'  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P9_EMAIL'')) + ''|'' + trim($v(''P9_FNAME'')) + ''|'' + trim($v(''P9_LNAME'')) + ''|'' + ''|'' + trim($v(''P9_NICKNAME'')) +'||
' ''|'' + ''|'' + ''|'' + ''|'' + &APP_SESSION.,365);'||unistr('\000a')||
'htmldbConfirmDialog(''NEXT'',{message:"Your comment will be submitted after you press OK button. You will be able to modify it later in the same session. You will find Edit link if you go to Comments section of this article."});'||unistr('\000a')||
'}'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'$(document).ready(function(){'||unistr('\000a')||
'if( $(''#MESSAGE'').text()) {'||unistr('\000a')||
'$(''.pb'').remove();'||unistr('\000a')||
'htmldbM'||
'sgDialog({message: $(''#MESSAGE'').html()});'||unistr('\000a')||
'$(''#MESSAGE'').remove();'||unistr('\000a')||
'}'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_page_comment => '  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P9_EMAIL'')) + ''|'' + trim($v(''P9_FNAME'')) + ''|'' + trim($v(''P9_LNAME'')) + ''|'' + ''|'' + trim($v(''P9_NICKNAME'')) + ''|'' + ''|'' + ''|'',365);'||unistr('\000a')||
''||unistr('\000a')||
'  var ajaxRequest = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=HASH'',&APP_PAGE_ID.);'||unistr('\000a')||
'  ajaxRequest.addParam(''x01'', trim($v(''P9_EMAIL'')));'||unistr('\000a')||
'  var ajaxResult = ajaxRequest.get();'||unistr('\000a')||
''||unistr('\000a')||
'  ajaxRequest = null;'||unistr('\000a')||
'  htmldbConfirmDialog(''NEXT'',{message:"Your comment will be submitted after you press OK button."});'||unistr('\000a')||
'}'||unistr('\000a')||
'  setCookie(''dbswh_blog'',''1'' + ''|'' + trim($v(''P9_EMAIL'')) + ''|'' + trim($v(''P9_FNAME'')) + ''|'' + trim($v(''P9_LNAME'')) + ''|'' + ''|'' + trim($v(''P9_NICKNAME'')) + ''|'' + ''|'' + ''|'' + ''|'' + &APP_SESSION.,365);'||unistr('\000a')||
''
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111101110022'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'for i in ('||unistr('\000a')||
'select ''<div class="htmltooltip">''||ITEM_HELP_TEXT||''</div>'' text'||unistr('\000a')||
'from APEX_APPLICATION_PAGE_ITEMS'||unistr('\000a')||
'where  application_id = :app_id'||unistr('\000a')||
'and page_id = :app_page_id '||unistr('\000a')||
'and condition_type is null'||unistr('\000a')||
'and item_help_text is not null'||unistr('\000a')||
'order by DISPLAY_SEQUENCE'||unistr('\000a')||
') loop'||unistr('\000a')||
'htp.p(i.TEXT);'||unistr('\000a')||
'end loop;';

wwv_flow_api.create_page_plug (
  p_id=> 2895700673305510 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'print help',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 51,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'BEFORE_FOOTER',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2943707450593377 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Comment on Article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 61,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'blog_gui.print_article(p_number =>1, p_search => null, p_date_month => null, '||unistr('\000a')||
'          p_cat_id => null,p_article_id =>:article,p_print_comment => false);';

wwv_flow_api.create_page_plug (
  p_id=> 2943915415595706 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Print article',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 71,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'PLSQL_PROCEDURE',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 5530240883586310 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Please Enter Your Comment',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 21,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Fields with red asterisks are required.  '||unistr('\000a')||
'<br><br>'||unistr('\000a')||
''||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 5530453719586311 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_plug_name=> 'Information',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 582566391649655437+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 31,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'REGION_POSITION_05',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'NEVER',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select msg_subject,msg_text, created_on from blog_messages'||unistr('\000a')||
'where msg_type = ''STANDARD'' and id = :article';

wwv_flow_api.create_report_region (
  p_id=> 5577725976307630 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 9,
  p_name=> 'Comment on Article',
  p_region_name=>'',
  p_template=> 583013784843585555+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 41,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_condition_type=> 'NEVER',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_query_row_template=> 2,
  p_query_headings_type=> 'NO_HEADINGS',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> '0',
  p_query_row_count_max=> '500',
  p_csv_output=> 'N',
  p_sort_null=> 'F',
  p_query_asc_image=> 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr=> 'width="13" height="12" alt=""',
  p_query_desc_image=> 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr=> 'width="13" height="12" alt=""',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5577951284307638 + wwv_flow_api.g_id_offset,
  p_region_id=> 5577725976307630 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'MSG_SUBJECT',
  p_column_display_sequence=> 1,
  p_column_heading=> '',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5578149499307639 + wwv_flow_api.g_id_offset,
  p_region_id=> 5577725976307630 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'MSG_TEXT',
  p_column_display_sequence=> 2,
  p_column_heading=> '',
  p_column_css_style=>'color:#E7E7E7;font-weight:normal;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 5578041908307638 + wwv_flow_api.g_id_offset,
  p_region_id=> 5577725976307630 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED_ON',
  p_column_display_sequence=> 3,
  p_column_heading=> '',
  p_column_css_style=>'color:#D0EB55;',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 5530650068586312 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 10,
  p_button_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(5557848262179649+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ALIAS.:HOME:0',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 5530847612586317 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 9,
  p_button_sequence=> 10,
  p_button_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_button_name    => 'NEXT',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(5557848262179649+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Submit',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:SubmitComment();',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>5539552531586354 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_branch_action=> 'f?p=&APP_ALIAS.:READ:0::::ARTICLE:&ARTICLE.',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_when_button_id=>5530847612586317+ wwv_flow_api.g_id_offset,
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
wwv_flow_api.create_page_branch(
  p_id=>5563233455874469 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_branch_action=> 'f?p=&APP_ALIAS.:WRITECOMMENT:0',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 20,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 07-NOV-2010 10:44 by ADMIN');
 
wwv_flow_api.create_page_branch(
  p_id=>5539754241586356 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_branch_action=> 'f?p=&APP_ALIAS.:HOME:0',
  p_branch_point=> 'BEFORE_HEADER',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_condition_type=> 'NOT_EXISTS',
  p_branch_condition=> 'select 1 from blog_messages'||unistr('\000a')||
'where id = :ARTICLE',
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>4751100943227141 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_ID',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Id',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_attribute_01 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your email address. Please note: we do not use your email address in any kind of spam sending, we do not give it to any third parties and it is not shown anywhere.';

wwv_flow_api.create_page_item(
  p_id=>5531054021586318 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter the name of your company/employer.';

wwv_flow_api.create_page_item(
  p_id=>5531525471586324 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_ORG',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Company',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your first name. It will not be displayed in the comment.';

wwv_flow_api.create_page_item(
  p_id=>5532035364586325 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_FNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'First Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_tag_attributes  => 'Please enter your first name.',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your geographic location (e.g., your city/country/state).';

wwv_flow_api.create_page_item(
  p_id=>5532539505586327 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_LOCATION',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Location',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your last name. It will not be displayed in the comment.';

wwv_flow_api.create_page_item(
  p_id=>5533054476586329 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_LNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Last Name',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter your job title/description of what you do.';

wwv_flow_api.create_page_item(
  p_id=>5533547505586330 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_JOB_TITLE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Job Title',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please choose the specific category you are asking about.';

wwv_flow_api.create_page_item(
  p_id=>5534026216586331 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_CATEGORY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Category',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Years of Oracle experience.';

wwv_flow_api.create_page_item(
  p_id=>5534541678586333 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_YEARS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Years Using Oracle',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_named_lov=> 'YEARS_OF_EXPERIENCE',
  p_lov=> 'select x.d, x.r'||unistr('\000a')||
'from ('||unistr('\000a')||
'select 0 d, 0 r from dual'||unistr('\000a')||
'union'||unistr('\000a')||
'select rownum d, rownum r'||unistr('\000a')||
'from all_objects'||unistr('\000a')||
'where rownum <= 20) x'||unistr('\000a')||
'order by 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Please enter a descriptive subject of your question.';

wwv_flow_api.create_page_item(
  p_id=>5535032216586336 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_SUBJECT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Subject',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 70,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your question below.  Use the formatting buttons to add allowed HTML tags.';

wwv_flow_api.create_page_item(
  p_id=>5535550448586337 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_QUESTION_T',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Question',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 583030577831793770+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5536043908586337 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_X',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 105,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter your comment. Use the formatting buttons to add allowed HTML tags.';

wwv_flow_api.create_page_item(
  p_id=>5536251850586338 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_COMMENT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comment',
  p_post_element_text=>'"TEXT_EDIT"',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 2000,
  p_cHeight=> 20,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT-TOP',
  p_field_alignment=> 'RIGHT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5536734887586339 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_X2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 115,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5536941377586339 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_X3',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 95,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_STOP_AND_START_HTML_TABLE',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_display_when_type=>'NEVER',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Check this box if you want an email sent when a new comment is posted to this article.';

wwv_flow_api.create_page_item(
  p_id=>5537133409586340 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_FOLLOWUP_NOTIFY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 102,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notification',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC:Notify me of followup comments via e-mail;YES',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2892732765588026+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_help_text=> h,
  p_attribute_01 => '1',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>5537630935586341 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_BUTTONS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 118,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_post_element_text=>'"FORMATTING_BUTTONS"',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540768116876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Enter Nickname, it will be displayed in Posted by.';

wwv_flow_api.create_page_item(
  p_id=>5554231499089656 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_NICKNAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Nickname',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 2896603067345371+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => 'Enter Nickname, it will be displayed in Posted by.');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>7362314441179732 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_name=>'P9_INFO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 5530240883586310+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'&nbsp;',
  p_post_element_text=>'<p>Your email address will not be published. Required fields are marked with asterisk.</p>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 582540682551876742+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'N',
  p_attribute_01 => 'N',
  p_attribute_02 => 'VALUE',
  p_attribute_04 => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 2974225433503113 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 9,
  p_computation_sequence => 10,
  p_computation_item=> 'P9_EMAIL',
  p_computation_point=> 'AFTER_SUBMIT',
  p_computation_type=> 'FUNCTION_BODY',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> 'begin'||unistr('\000a')||
''||unistr('\000a')||
':P9_FNAME :=    substr(trim(:P9_FNAME),1,30);'||unistr('\000a')||
':P9_LNAME :=    substr(trim(:P9_LNAME),1,30);'||unistr('\000a')||
':P9_NICKNAME := substr(trim(:P9_NICKNAME),1,30);'||unistr('\000a')||
':P9_EMAIL :=    substr(trim(:P9_EMAIL),1,255);'||unistr('\000a')||
''||unistr('\000a')||
'return :P9_EMAIL;'||unistr('\000a')||
''||unistr('\000a')||
'end;',
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5537931427586342 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_EMAIL not null',
  p_validation_sequence=> 10,
  p_validation => 'P9_EMAIL',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your e-mail address.',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5531054021586318 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5538146574586344 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'E-Mail Address validate',
  p_validation_sequence=> 20,
  p_validation => 'begin'||unistr('\000a')||
':P9_EMAIL := trim(:P9_EMAIL);'||unistr('\000a')||
'return check_email(:P9_EMAIL) ;'||unistr('\000a')||
'end;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'Please specify a valid e-mail address.',
  p_validation_condition=> 'P9_EMAIL',
  p_validation_condition_type=> 'ITEM_IS_NOT_NULL',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5531054021586318 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5555554317143562 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_NICKNAME',
  p_validation_sequence=> 25,
  p_validation => 'P9_NICKNAME',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your Nickname.',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5554231499089656 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5538534094586345 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_SUBJECT not null',
  p_validation_sequence=> 50,
  p_validation => 'P9_SUBJECT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify a subject for your question.',
  p_validation_condition_type=> 'NEVER',
  p_associated_item=> 5535032216586336 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5577457949174926 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_COMMENT',
  p_validation_sequence=> 60,
  p_validation => 'P9_COMMENT',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Please specify your comment.',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5536251850586338 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 5538940553586347 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'Validate Tags in comment',
  p_validation_sequence=> 70,
  p_validation => 'return ate_api.validate_message(:P9_COMMENT);',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'There are mismatched HTML tags in your comment.  Please close all tags and resubmit.',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 2882409635135196 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_COMMENT too long',
  p_validation_sequence=> 80,
  p_validation => 'begin'||unistr('\000a')||
'--:P9_COMMENT := replace(:P9_COMMENT,''<code>'',''<pre class="brush:javascript">'');'||unistr('\000a')||
'--:P9_COMMENT := replace(:P9_COMMENT,''</code>'',''</pre>'');'||unistr('\000a')||
'if length(:P9_COMMENT) > 4000 then'||unistr('\000a')||
'return false;'||unistr('\000a')||
'else return true;'||unistr('\000a')||
'end if;'||unistr('\000a')||
'end;',
  p_validation_type => 'FUNC_BODY_RETURNING_BOOLEAN',
  p_error_message => 'Too long comment, please make it shorter. ',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5536251850586338 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_IN_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 2883107406024087 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_tabular_form_region_id => null + wwv_flow_api.g_id_offset,
  p_validation_name => 'P9_EMAIL bad email',
  p_validation_sequence=> 90,
  p_validation => 'select 1'||unistr('\000a')||
'from ate_bad_emails'||unistr('\000a')||
'where upper(email) = upper(:P9_EMAIL)',
  p_validation_type => 'NOT_EXISTS',
  p_error_message => 'You email is in the list of bad email, comment is not possible.',
  p_when_button_pressed=> 5530847612586317 + wwv_flow_api.g_id_offset,
  p_associated_item=> 5531054021586318 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'        owa_util.mime_header(''text/html'', FALSE);'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'/*'||unistr('\000a')||
'ate_api.write_askcookie('||unistr('\000a')||
'        p_email     => :P9_EMAIL,'||unistr('\000a')||
'        p_fname     =>  :P9_FNAME,'||unistr('\000a')||
'        p_lname     =>  :P9_LNAME,'||unistr('\000a')||
'        p_nickname   => :P9_NICKNAME);'||unistr('\000a')||
'*/'||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2957100860934080 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 1,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'send cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>5530847612586317 + wwv_flow_api.g_id_offset,
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'l number;'||unistr('\000a')||
'l_comment_id number;'||unistr('\000a')||
'begin'||unistr('\000a')||
':P9_COMMENT := trim(:P9_COMMENT);'||unistr('\000a')||
''||unistr('\000a')||
'for i in (select id from blog_reg_users where upper(email) = upper(:P9_EMAIL)) loop'||unistr('\000a')||
'   l := i.id;'||unistr('\000a')||
'end loop;'||unistr('\000a')||
'if l is null then'||unistr('\000a')||
'l := blog_id.next_val;'||unistr('\000a')||
''||unistr('\000a')||
'INSERT'||unistr('\000a')||
'INTO BLOG_REG_USERS'||unistr('\000a')||
'  ('||unistr('\000a')||
'    HTTP_USER_AGENT,'||unistr('\000a')||
'    HTTP_REFERER,'||unistr('\000a')||
'    HOST_NAME,'||unistr('\000a')||
'    REMOTE_ADDR,'||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    EMAIL,'||unistr('\000a')||
'    FNAME,'||unistr('\000a')||
'    LNAME,'||unistr('\000a')||
'    LOCATION,'||unistr('\000a')||
'    TITLE,'||unistr('\000a')||
'  ';

p:=p||'  ORG,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    CREATED_BY,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    MODIFIED_BY,'||unistr('\000a')||
'    PASSWORD,'||unistr('\000a')||
'    NICK'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    owa_util.get_cgi_env( ''HTTP_USER_AGENT'' ), -- HTTP_USER_AGENT,'||unistr('\000a')||
'    owa_util.get_cgi_env( ''HTTP_REFERER'' ), -- HTTP_REFERER,'||unistr('\000a')||
'    null, -- HOST_NAME,'||unistr('\000a')||
'    owa_util.get_cgi_env( ''REMOTE_ADDR'' ), -- REMOTE_ADDR,'||unistr('\000a')||
'    l, -- ID,'||unistr('\000a')||
'    substr(trim(:P9_EMAIL),1,255), -- EMAIL,'||unistr('\000a')||
'    substr(trim(:';

p:=p||'P9_FNAME),1,30), -- FNAME,'||unistr('\000a')||
'    substr(trim(:P9_LNAME),1,30), -- LNAME,'||unistr('\000a')||
'    substr(trim(:COUNTRY),1,30), -- LOCATION,'||unistr('\000a')||
'    null, -- TITLE,'||unistr('\000a')||
'    null, -- org,'||unistr('\000a')||
'    null, -- CREATED_ON,'||unistr('\000a')||
'    null, -- CREATED_BY,'||unistr('\000a')||
'    null, -- MODIFIED_ON,'||unistr('\000a')||
'    null, -- modified_by,'||unistr('\000a')||
'    null, --upassword,'||unistr('\000a')||
'    substr(trim(:P9_NICKNAME),1,30)'||unistr('\000a')||
'  );'||unistr('\000a')||
'end if;'||unistr('\000a')||
':P9_ID := l;'||unistr('\000a')||
'l_comment_id := blog_id.next_val;'||unistr('\000a')||
'INSERT'||unistr('\000a')||
'INTO BLOG_MESSAGE';

p:=p||'S'||unistr('\000a')||
'  ('||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    MSG_ID,'||unistr('\000a')||
'    MSG_TYPE,'||unistr('\000a')||
'    MSG_SUBJECT,'||unistr('\000a')||
'    MSG_TEXT,    '||unistr('\000a')||
'    followup_notify,'||unistr('\000a')||
'    CATEGORY_ID,'||unistr('\000a')||
'    EXPIRE_DATE,'||unistr('\000a')||
'    VIEWED,'||unistr('\000a')||
'    rss_description,'||unistr('\000a')||
'    session_id,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    CREATED_BY_ID,'||unistr('\000a')||
'    MODIFIED_BY_ID'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    l_comment_id, '||unistr('\000a')||
'    :ARTICLE, '||unistr('\000a')||
'    ''COMMENT'', '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    ate_api.format_comment(:P9_COMMENT,length(:P9_COMMENT)), '||unistr('\000a')||
'    decode';

p:=p||'(:P9_FOLLOWUP_NOTIFY,''YES'',''Y'',''N'')	,'||unistr('\000a')||
'    null, '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    :SESSION, '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    null, '||unistr('\000a')||
'    l, '||unistr('\000a')||
'    l '||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'if not APEX_COLLECTION.COLLECTION_EXISTS  ('||unistr('\000a')||
'  p_collection_name => ''COMMENTS'' ) then'||unistr('\000a')||
'APEX_COLLECTION.CREATE_COLLECTION('||unistr('\000a')||
'    p_collection_name => ''COMMENTS'' );'||unistr('\000a')||
'end if;'||unistr('\000a')||
''||unistr('\000a')||
'APEX_COLLECTION.ADD_MEMBER('||unistr('\000a')||
'    p_collection_name => ''COMMENTS'','||unistr('\000a')||
'    p_c001          => l_co';

p:=p||'mment_id); '||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 5577556311231189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'WRITECOMMENT',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>5530847612586317 + wwv_flow_api.g_id_offset,
  p_process_success_message=> 'Thank you for submitting your comment.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'INSERT'||unistr('\000a')||
'INTO BLOG_REG_USERS'||unistr('\000a')||
'  ('||unistr('\000a')||
'    HTTP_USER_AGENT,'||unistr('\000a')||
'    HTTP_REFERER,'||unistr('\000a')||
'    HOST_NAME,'||unistr('\000a')||
'    FOLLOWUP_NOTIFY,'||unistr('\000a')||
'    REMOTE_ADDR,'||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    EMAIL,'||unistr('\000a')||
'    FNAME,'||unistr('\000a')||
'    LNAME,'||unistr('\000a')||
'    LOCATION,'||unistr('\000a')||
'    TITLE,'||unistr('\000a')||
'    ORG,'||unistr('\000a')||
'    YEARS_EXP,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    CREATED_BY,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    MODIFIED_BY,'||unistr('\000a')||
'    PASSWORD,'||unistr('\000a')||
'    NICK'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    null, -- HTTP_USER_AGENT,'||unistr('\000a')||
'    null, -- HTTP_REFERER,'||unistr('\000a')||
'    null, -- HOST_NAME,'||unistr('\000a')||
'    FOLLOWUP_NOTIFY,'||unistr('\000a')||
'    REMOTE_ADDR,'||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    EMAIL,'||unistr('\000a')||
'    FNAME,'||unistr('\000a')||
'    LNAME,'||unistr('\000a')||
'    LOCATION,'||unistr('\000a')||
'    title,'||unistr('\000a')||
'    null, -- org,'||unistr('\000a')||
'    null, -- years_exp,'||unistr('\000a')||
'    null, -- CREATED_ON,'||unistr('\000a')||
'    null, -- CREATED_BY,'||unistr('\000a')||
'    null, -- MODIFIED_ON,'||unistr('\000a')||
'    null, -- modified_by,'||unistr('\000a')||
'    null, --upassword,'||unistr('\000a')||
'    :P9_NICKNAME'||unistr('\000a')||
'  );'||unistr('\000a')||
''||unistr('\000a')||
'INSERT'||unistr('\000a')||
'INTO BLOG_MESSAGES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    ID,'||unistr('\000a')||
'    MSG_ID,'||unistr('\000a')||
'    MSG_TYPE,'||unistr('\000a')||
'    MSG_SUBJECT,'||unistr('\000a')||
'    MSG_TEXT,'||unistr('\000a')||
'    CATEGORY_ID,'||unistr('\000a')||
'    EXPIRE_DATE,'||unistr('\000a')||
'    VIEWED,'||unistr('\000a')||
'    RESERVED2,'||unistr('\000a')||
'    RESERVED3,'||unistr('\000a')||
'    RESERVED4,'||unistr('\000a')||
'    CREATED_ON,'||unistr('\000a')||
'    MODIFIED_ON,'||unistr('\000a')||
'    CREATED_BY_ID,'||unistr('\000a')||
'    MODIFIED_BY_ID'||unistr('\000a')||
'  )'||unistr('\000a')||
'  VALUES'||unistr('\000a')||
'  ('||unistr('\000a')||
'    :v0,'||unistr('\000a')||
'    :v1,'||unistr('\000a')||
'    :v2,'||unistr('\000a')||
'    :v3,'||unistr('\000a')||
'    :v4,'||unistr('\000a')||
'    :v5,'||unistr('\000a')||
'    :v6,'||unistr('\000a')||
'    :v7,'||unistr('\000a')||
'    :v8,'||unistr('\000a')||
'    :v9,'||unistr('\000a')||
'    :v10,'||unistr('\000a')||
'    :v11,'||unistr('\000a')||
'    :v12,'||unistr('\000a')||
'    :v13,'||unistr('\000a')||
'    :v14'||unistr('\000a')||
'  );');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'n number;'||unistr('\000a')||
'begin'||unistr('\000a')||
'n := HTMLDB_PLSQL_JOB.submit_process'||unistr('\000a')||
'('||unistr('\000a')||
'p_sql => '''||unistr('\000a')||
'begin'||unistr('\000a')||
'ate_api.notify(''''&ARTICLE.'''',''''&P9_ID.'''',''''&BLOG_EMAIL.'''',''''&APP_ID.'''');'||unistr('\000a')||
'HTMLDB_MAIL.PUSH_QUEUE(''''localhost'''', 25);'||unistr('\000a')||
'end;'','||unistr('\000a')||
'p_when => sysdate,'||unistr('\000a')||
'p_status => ''SUBMITTED'''||unistr('\000a')||
');'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 4746317106355890 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'notify others',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_when_button_id=>5530847612586317 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'    l_email varchar2(1000) := null;'||unistr('\000a')||
'    l_fname varchar2(1000) := null;'||unistr('\000a')||
'    l_lname varchar2(1000) := null;'||unistr('\000a')||
'begin'||unistr('\000a')||
''||unistr('\000a')||
'    ate_api.read_askcookie;'||unistr('\000a')||
''||unistr('\000a')||
'    l_email := ate_api.fetch_askcookie_val(''EMAIL'');'||unistr('\000a')||
'    :P9_NICKNAME := ate_api.fetch_askcookie_val(''NICKNAME'');  '||unistr('\000a')||
'    :P9_COMMENT := null;'||unistr('\000a')||
'    :P9_FOLLOWUP_NOTIFY := null;'||unistr('\000a')||
'    l_fname := ate_api.fetch_askcookie_val(''FNAME'');'||unistr('\000a')||
'    l_lname := ate_ap';

p:=p||'i.fetch_askcookie_val(''LNAME'');    '||unistr('\000a')||
'    '||unistr('\000a')||
'    :P9_EMAIL := l_email;'||unistr('\000a')||
''||unistr('\000a')||
'    :P9_FNAME := l_fname;'||unistr('\000a')||
'    :P9_LNAME := l_lname;'||unistr('\000a')||
'    --:P9_ORG := ate_api.fetch_askcookie_val( p_val_name => ''ORG'' );'||unistr('\000a')||
'    --:P9_LOCATION := ate_api.fetch_askcookie_val( p_val_name => ''LOCATION'' );'||unistr('\000a')||
'    --:P9_JOB_TITLE := ate_api.fetch_askcookie_val( p_val_name => ''JOB_TITLE'' );'||unistr('\000a')||
'    --:P9_YEARS := ate_api.fetch_askcookie_val( p_v';

p:=p||'al_name => ''YEARS'' );'||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 5539028817586347 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 9,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Read Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 9
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00013
prompt  ...PAGE 13: Visitors
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 13
 ,p_name => 'Visitors'
 ,p_alias => 'VISITORS'
 ,p_step_title => 'Visitors'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Map'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_group_id => 1784916227129380 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111031132118'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'||unistr('\000a')||
'    codebase="#HOST_PROTOCOL#://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"'||unistr('\000a')||
'    width="#WIDTH#"'||unistr('\000a')||
'    height="#HEIGHT#"'||unistr('\000a')||
'    id="#CHART_NAME#"'||unistr('\000a')||
'    align="top">'||unistr('\000a')||
'<param name="movie" value="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf">'||unistr('\000a')||
'<param name="quality" value="high">'||unistr('\000a')||
'<param name="allowScriptAccess" value="sa';

s:=s||'meDomain">'||unistr('\000a')||
'<param name="allowNetworking" value="all">'||unistr('\000a')||
'<param name="scale" value="noscale">'||unistr('\000a')||
'<param name="wmode" value="transparent">'||unistr('\000a')||
'<param name="FlashVars" value="XMLFile=http://&WEBSITE./apex_util.flash?p=&APP_ID.:13:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForDataText';

s:=s||'=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||unistr('\000a')||
''||unistr('\000a')||
'<embed src="#IMAGE_PREFIX#flashchart/swf/AnyChart.swf"'||unistr('\000a')||
'       quality="high"'||unistr('\000a')||
'       width="#WIDTH#"'||unistr('\000a')||
'       height="#HEIGHT#"'||unistr('\000a')||
'       name="#CHART_NAME#"'||unistr('\000a')||
'       scale="noscale"'||unistr('\000a')||
'       align=""'||unistr('\000a')||
'       allowScriptAccess="sameDomain" '||unistr('\000a')||
'       allowNetworking="all"'||unistr('\000a')||
'       type="application/x-shockwave-flash"'||unistr('\000a')||
'       pluginspage="#HOST_PROTOCOL#://';

s:=s||'www.macromedia.com/go/getflashplayer"'||unistr('\000a')||
'       wmode="transparent"'||unistr('\000a')||
'        FlashVars="XMLFile=http://&WEBSITE./apex_util.flash?p=&APP_ID.:13:&APP_SESSION.:FLOW_FLASH_CHART5_R#REGION_ID#&noDataText=#FLASH_NO_DATA#&initText=#FLASH_INIT#&xmlLoadingText=#FLASH_LOADING#&resourcesLoadingText=#FLASH_RESOURCES#&waitingForDataText=#FLASH_WAITING#&templatesLoadingText=#FLASH_TEMPLATES#">'||unistr('\000a')||
'</embed>'||unistr('\000a')||
'</object>'||unistr('\000a')||
'#C';

s:=s||'HART_REFRESH#';

wwv_flow_api.create_page_plug (
  p_id=> 1792726400192076 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 13,
  p_plug_name=> 'Map',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'FLASH_MAP',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1 := null;
wwv_flow_api.create_flash_chart5(
  p_id => 1792918302192108+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id => 13,
  p_region_id => 1792726400192076+wwv_flow_api.g_id_offset,
  p_default_chart_type     =>'Map',
  p_chart_title            =>'Blog Visits by Country',
  p_chart_name             =>'chart_1792918302192108',
  p_chart_width            =>700,
  p_chart_height           =>500,
  p_chart_animation        =>'Appear',
  p_display_attr           =>':H:N::X::N::V:Y:None:::::',
  p_dial_tick_attr         =>'',
  p_gantt_attr             =>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E',
  p_pie_attr               =>'',
  p_map_attr               =>'Eckert1:NonOverlap:REGION_ID:Y:Y:Series:::- Map Regions -:Y:',
  p_map_source             =>'world/world_wo_gr.amap',
  p_margins                =>':::',
  p_omit_label_interval    => null,
  p_bgtype                 =>'Trans',
  p_bgcolor1               =>'',
  p_bgcolor2               =>'',
  p_gradient_rotation      =>null,
  p_grid_bgtype            =>'Trans',
  p_grid_bgcolor1          =>'',
  p_grid_bgcolor2          =>'',
  p_grid_gradient_rotation =>null,
  p_color_scheme           =>'7',
  p_custom_colors          =>'',
  p_map_undef_color_scheme =>'1',
  p_map_undef_custom_colors =>'',
  p_x_axis_title           =>'',
  p_x_axis_min             =>null,
  p_x_axis_max             =>null,
  p_x_axis_decimal_place   =>null,
  p_x_axis_prefix          =>'',
  p_x_axis_postfix         =>'',
  p_x_axis_label_rotation  =>'',
  p_x_axis_label_font      =>'',
  p_x_axis_major_interval  =>null,
  p_x_axis_minor_interval  =>null,
  p_y_axis_title           =>'',
  p_y_axis_min             =>null,
  p_y_axis_max             =>null,
  p_y_axis_decimal_place   =>null,
  p_y_axis_prefix          =>'',
  p_y_axis_postfix         =>'',
  p_y_axis_label_rotation  =>'',
  p_y_axis_label_font      =>'',
  p_y_axis_major_interval  =>null,
  p_y_axis_minor_interval  =>null,
  p_async_update           =>'N',
  p_async_time             =>null,
  p_legend_title           =>'',
  p_legend_title_font      =>'',
  p_names_font             => null,
  p_names_rotation         => null,
  p_values_font            =>'Arial:10:#000000',
  p_values_rotation        =>null,
  p_values_prefix          =>'',
  p_values_postfix         =>'',
  p_hints_font             =>'Tahoma:10:#000000',
  p_legend_font            =>'Arial:10:#000000',
  p_grid_labels_font       =>'',
  p_chart_title_font       =>'Tahoma:14:#000000',
  p_x_axis_title_font      =>'Tahoma:14:',
  p_x_axis_title_rotation  =>'',
  p_y_axis_title_font      =>'Tahoma:14:',
  p_y_axis_title_rotation  =>'',
  p_gauge_labels_font      =>'Tahoma:10',
  p_use_chart_xml          =>'N',
  p_chart_xml              => a1);
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select null link, decode(country_code,''GB'',''UK'',country_code) label, count(*) value from ate_activity_log where country_code is not null group by country_code';

wwv_flow_api.create_flash_chart5_series(
  p_id => 1793015379192114+wwv_flow_api.g_id_offset,
  p_chart_id => 1792918302192108+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_series_seq                =>10,
  p_series_name               =>'Series 1',
  p_series_query              => a1,
  p_series_type               =>'Map',
  p_series_query_type         =>'SQL_QUERY',
  p_series_query_parse_opt    =>'PARSE_CHART_QUERY',
  p_series_query_no_data_found=>'No data found.',
  p_series_query_row_count_max=>300,
  p_action_link               =>'',
  p_show_action_link          =>'N',
  p_action_link_checksum_type =>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 13
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00019
prompt  ...PAGE 19: Login Page
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 19
 ,p_name => 'Login Page'
 ,p_alias => 'LOGIN'
 ,p_step_title => 'Login Page'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'N'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 582564885251524262 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_page_comment => 'This page was generated by the Login Page wizard'
 ,p_last_updated_by => 'ADMIN'
 ,p_last_upd_yyyymmddhh24miss => '20111011114018'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2971214987264761 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 19,
  p_plug_name=> 'Login Items',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column=> 1,
  p_plug_display_point=> 'AFTER_SHOW_ITEMS',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>6955500807284142 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 19,
  p_branch_action=> 'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> 'Created 12-JAN-2011 15:18 by ADMIN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2971431132264763 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 19,
  p_name=>'P19_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2971214987264761+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'User Name',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2971624179264764 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 19,
  p_name=>'P19_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2971214987264761+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 20,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2971808902264765 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 19,
  p_name=>'P19_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2971214987264761+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'LOGIN',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(5557848262179649 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan=> 1,
  p_rowspan=> 1,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_action => 'SUBMIT',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||unistr('\000a')||
'sys.owa_util.mime_header(''text/html'', FALSE);'||unistr('\000a')||
'sys.owa_cookie.send('||unistr('\000a')||
'    name=>''LOGIN_USERNAME_COOKIE'','||unistr('\000a')||
'    value=>lower(:P19_USERNAME));'||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2972227464264767 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 19,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||unistr('\000a')||
'    P_UNAME       => :P19_USERNAME,'||unistr('\000a')||
'    P_PASSWORD    => :P19_PASSWORD,'||unistr('\000a')||
'    P_SESSION_ID  => v(''APP_SESSION''),'||unistr('\000a')||
'    P_FLOW_PAGE   => 999||'':250'''||unistr('\000a')||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 2972000924264767 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 19,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'19';

wwv_flow_api.create_page_process(
  p_id     => 2972423259264768 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 19,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||unistr('\000a')||
'    v varchar2(255) := null;'||unistr('\000a')||
'    c sys.owa_cookie.cookie;'||unistr('\000a')||
'begin'||unistr('\000a')||
'   c := sys.owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||unistr('\000a')||
'   :P19_USERNAME := c.vals(1);'||unistr('\000a')||
'exception when others then null;'||unistr('\000a')||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2972611450264769 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 19,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 19
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/lists/tabs
 
begin
 
wwv_flow_api.create_list (
  p_id=> 582591591611402800 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Tabs',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT',
  p_display_row_template_id=> 582572067583688884 + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_list_item (
  p_id=> 582592066808405099 + wwv_flow_api.g_id_offset,
  p_list_id=> 582591591611402800 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> '<span>HOME</span>',
  p_list_item_link_target=> 'f?p=&APP_ID.:HOME:&V_SESSION.',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 582592592696431513 + wwv_flow_api.g_id_offset,
  p_list_id=> 582591591611402800 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> '<span>ARTICLES</span>',
  p_list_item_link_target=> 'f?p=&APP_ALIAS.:ARTICLES:0',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 582543463914876748 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>582543965782876751 + wwv_flow_api.g_id_offset,
  p_menu_id=>582543463914876748 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Application Express Tips&Tricks',
  p_long_name=>'',
  p_link=>'f?p=&APP_ID.:1:&SESSION.',
  p_page_id=>1,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 109
--
--application/shared_components/user_interface/templates/page/error_dkblog_no_tabs_with_side_bar
prompt  ......Page template 2954601722196224
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||unistr('\000a')||
'<html xmlns="http://www.w3.org/1999/xhtml" lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'<script type="text/javascri';

c1:=c1||'pt" src="https://www.google.com/jsapi?key=&APIKEY."></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  google.load("jquery", "1.4.4");'||unistr('\000a')||
'  google.load("jqueryui", "1.8");'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_ns_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_3_1.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_get_3_1.js" ty';

c1:=c1||'pe="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_builder.js" type="text/javascript"></script>'||unistr('\000a')||
'<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'$(document).ready(function(){'||unistr('\000a')||
'  var ajaxRequest = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=LOGERROR'',&AP';

c1:=c1||'P_PAGE_ID.);'||unistr('\000a')||
'  ajaxRequest.addParam(''x01'', $(''.ErrorPageMessage'').text());'||unistr('\000a')||
'  ajaxRequest.addParam(''x02'', gErrMesg);'||unistr('\000a')||
'  var ajaxResult = ajaxRequest.get();'||unistr('\000a')||
'  ajaxRequest = null; '||unistr('\000a')||
'  $(''.ErrorPageMessage'').remove();'||unistr('\000a')||
'  window.location="f?p=&APP_ALIAS.:ERROR:0";'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<link href="/blog.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'  <div id="footer">#REGION_POSITION_08#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div id="topbar">'||unistr('\000a')||
'  <div class="content">#REGION_POSITION_01#'||unistr('\000a')||
'    <div id="icons"> #REGION_POSITION_02##NAVIGATION_BAR#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="url"> <a href="http://www.dbswh.com">www.dbswh.com</a> </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="top"> '||unistr('\000a')||
'  <div class="content">'||unistr('\000a')||
'    <div id="menu">#REGION_POSITION_03#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <h1>#LOGO#</h1>'||unistr('\000a')||
'    <h2>#REGION_POSITION_04#</h2>'||unistr('\000a')||
'  </div>   '||unistr('\000a')||
'</div><div class="';

c3:=c3||'t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div class="content">'||unistr('\000a')||
'  <div id="main">'||unistr('\000a')||
'    <div class="right_side">'||unistr('\000a')||
'      <div class="pad">#REGION_POSITION_05#'||unistr('\000a')||
'        <a href="/dbswh/#OWNER#.rss"><img src="#WORKSPACE_IMAGES#rss.jpg" alt="DbSWH Blog RSS Feed" /></a> </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="right_side">'||unistr('\000a')||
'      <div class="pad">'||unistr('\000a')||
'        #REGION_POSITION_06#'||unistr('\000a')||
'';

c3:=c3||'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div id="left_side">'||unistr('\000a')||
'      <div class="intro">'||unistr('\000a')||
'        <div class="pad">#REGION_POSITION_07# </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div class="mpart">'||unistr('\000a')||
'        #BOX_BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>';

wwv_flow_api.create_template(
  p_id=> 2954601722196224 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Error Dkblog No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12success" style="color:red;" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#"><img src="#IMAGE#" alt="#TEXT#" title="#TEXT#"/>#TEXT#</a>'||unistr('\000a')||
''||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 17,
  p_error_page_template => '<pre style="font-weight:bold">#MESSAGE#</pre>'||unistr('\000a')||
'<br/><div class="appenderror"></div>'||unistr('\000a')||
'<br/>'||unistr('\000a')||
'<a href="#BACK_LINK#" class="free"><b>#RETURN_TO_APPLICATION#<b></a>'||unistr('\000a')||
'<script type="text/javascript" src="https://www.google.com/jsapi?key=&APIKEY."></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  google.load("jquery", "1.4.4");'||unistr('\000a')||
'  google.load("jqueryui", "1.8");'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'$(document).ready(function(){'||unistr('\000a')||
'  var ajaxRequest = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=LOGERROR'',&APP_PAGE_ID.);'||unistr('\000a')||
'  ajaxRequest.addParam(''x01'', $(''.ErrorPageMessage'').text());'||unistr('\000a')||
'  ajaxRequest.addParam(''x02'', gErrMesg);'||unistr('\000a')||
'  var ajaxResult = ajaxRequest.get();'||unistr('\000a')||
'  ajaxRequest = null; '||unistr('\000a')||
'  $(''.ErrorPageMessage'').remove();'||unistr('\000a')||
'  window.location="f?p=&APP_ALIAS.:ERROR:0";'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
' var gErrMesg = ''#MESSAGE#'';'||unistr('\000a')||
'</script>',
  p_template_comment => '<style type="text/css">'||unistr('\000a')||
'.apexir_WORKSHEET_DATA td {'||unistr('\000a')||
'background:#414141 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'td.apex_finderbar_left {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_middle {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_top  {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_bottom {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'window.location = "f?p=BLOG:ERROR:0:" '||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/copy_of_popup
prompt  ......Page template 7515506859353420
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<div><!-- This template is missing #HEAD# and <head>-->';

c2:=c2||'</div>';

c3:=c3||''||unistr('\000a')||
'#BOX_BODY#'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 7515506859353420 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Copy of Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" /><img src="#IMAGE_PREFIX#themes/theme_12/success_w.gif" width="24" height="23" alt="" class="success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/login
prompt  ......Page template 582534683624876737
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||unistr('\000a')||
'</html>'||unistr('\000a')||
'';

c3:=c3||'#NOTIFICATION_MESSAGE#'||unistr('\000a')||
'<table class="t12Login" align="center" summary=""><tr><td class="t12Body">#BOX_BODY#</td></tr></table>'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 582534683624876737 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '#BODY_TITLE#',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_theme_id  => 12,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs
prompt  ......Page template 582534765725876737
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span class';

c3:=c3||'="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom"><br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr><td colspan="2" class="t12VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_12/ParentTabBase.gif" alt="" /></td></tr>'||unistr('\000a')||
' <tr><td colspan="2">#REGION_POSITION_01#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" summary="" height="70%"><tr>'||unistr('\000a')||
'<td valign="top" class="t12ContentBody"><div class="t12Messages">#GLOB';

c3:=c3||'AL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'<td align="right" valign="top" class="t12ContentBody">#REGION_POSITION_03##CUSTOMIZE#<br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582534765725876737 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/no_tabs_with_side_bar
prompt  ......Page template 582534880156876737
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span clas';

c3:=c3||'s="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom"><br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr><td colspan="2" class="t12VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_12/ParentTabBase.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div>#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" class="t12SidebarLayout" width="100%" summary="" height="70%">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td valign="top"';

c3:=c3||' width="150">'||unistr('\000a')||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t12SidebarColor" summary="">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td><br /></td>'||unistr('\000a')||
'          <td width="5" valign="top" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarUpperRight.gif" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'         <td valign="top" class="t12SideBarNav">';

c3:=c3||'#REGION_POSITION_02#</td>'||unistr('\000a')||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif" alt="" />&nbsp;</td>'||unistr('\000a')||
'       </tr>'||unistr('\000a')||
'       <tr bgcolor="#FFFFFF">'||unistr('\000a')||
'          <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_12/SidebarBottomMiddle.gif" alt="" /></td> '||unistr('\000a')||
'          <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarBottom';

c3:=c3||'Right.gif" alt="" /><br /><br /></td>'||unistr('\000a')||
'       </tr>  '||unistr('\000a')||
'     </table>'||unistr('\000a')||
'   </td>'||unistr('\000a')||
'   <td class="t12ContentBody" valign="top"><div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'   <td align="right" valign="top" class="t12ContentBody">#REGION_POSITION_03# #CUSTOMIZE#<br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582534880156876737 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
''||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 17,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs
prompt  ......Page template 582534988982876737
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span clas';

c3:=c3||'s="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr><td colspan="2" class="t12VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_12/ParentTabBase.gif" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td colspan="2">#REGION_POSITION_01#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" summary="" height="';

c3:=c3||'70%">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ContentBody" valign="top"><div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'  <td align="right" valign="top" class="t12ContentBody">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582534988982876737 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentBackground.gif); background-repeat:repeat;"><span class="t12parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentRight.gif" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t12parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_03',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/one_level_tabs_with_side_bar
prompt  ......Page template 582535077018876738
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span clas';

c3:=c3||'s="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom">'||unistr('\000a')||
'   <table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>'||unistr('\000a')||
'  </td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr><td colspan="2" class="t12VerticalBar"><img src="#IMAGE_PREFIX#themes/theme_12/ParentTabBase.gif" alt="" /></td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div>#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspacing="0" class="t1';

c3:=c3||'2SidebarLayout" width="100%" summary="" height="70%">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'  <td valign="top" width="150">'||unistr('\000a')||
'    <table cellpadding="0" cellspacing="0" width="100%" class="t12SidebarColor" summary="">'||unistr('\000a')||
'       <tr>'||unistr('\000a')||
'         <td>&nbsp;</td>'||unistr('\000a')||
'         <td width="15" valign="top" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarUpperRight.gif" alt="" /></td>'||unistr('\000a')||
' ';

c3:=c3||'      </tr>'||unistr('\000a')||
'       <tr>'||unistr('\000a')||
'        <td valign="top" class="t12SideBarNav">#REGION_POSITION_02#</td>'||unistr('\000a')||
'        <td width="15" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif">&nbsp;</td>'||unistr('\000a')||
'      </tr>'||unistr('\000a')||
'      <tr bgcolor="#FFFFFF">'||unistr('\000a')||
'         <td valign="top">'||unistr('\000a')||
'           <img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_12/SidebarBottomMiddle.gif" alt="" /></td> '||unistr('\000a')||
'         <td valign';

c3:=c3||'="top" width="15"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarBottomRight.gif" alt="" /><br /><br /></td>'||unistr('\000a')||
'      </tr>  '||unistr('\000a')||
'    </table>'||unistr('\000a')||
'  </td>'||unistr('\000a')||
'  <td class="t12ContentBody" valign="top"><div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'  <td align="right" valign="top" class="t12ContentBody">#REGION_POSITION_03#<br /></td>';

c3:=c3||''||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582535077018876738 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentBackground.gif); background-repeat:repeat;"><span class="t12parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentRight.gif" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t12parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 16,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/popup
prompt  ......Page template 582535191255876738
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#'||unistr('\000a')||
'';

wwv_flow_api.create_template(
  p_id=> 582535191255876738 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" /><img src="#IMAGE_PREFIX#themes/theme_12/success_w.gif" width="24" height="23" alt="" class="success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 582535276357876738
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||unistr('\000a')||
'</html>';

c3:=c3||'#LOGO#'||unistr('\000a')||
'<br />#BOX_BODY#';

wwv_flow_api.create_template(
  p_id=> 582535276357876738 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" /><img src="#IMAGE_PREFIX#themes/theme_12/success_w.gif" width="24" height="23" alt="" class="t12success" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_03',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs
prompt  ......Page template 582535389028876738
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span clas';

c3:=c3||'s="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td colspan="2" class="t12Tabs"><table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr><td colspan="2">#REGION_POSITION_01#</td></tr> '||unistr('\000a')||
'</table>'||unistr('\000a')||
'<table width="100%" summary=""';

c3:=c3||' height="70%">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ContentBody" valign="top"><div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04#</td>'||unistr('\000a')||
'  <td align="right" valign="top" class="t12ContentBody">#REGION_POSITION_03#<br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582535389028876738 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><span class="t12standardtabcurrent">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t12standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentBackground.gif); background-repeat:repeat;"><span class="t12standardtabcurrent" href="#TAB_LINK#">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentRight.gif" alt="" /></td>'||unistr('\000a')||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t12standardtabnoncurrent"  href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comment => '8');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/two_level_tabs_with_side_bar
prompt  ......Page template 582535472418876738
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table class="t12PageFooter" width="100%" cellpadding="0" cellspacing="0" summary="">'||unistr('\000a')||
'<tr><td align="right">#CUSTOMIZE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterTop">&nbsp;</td></tr>'||unistr('\000a')||
'<tr><td class="t12FooterBottom">&nbsp;</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'#REGION_POSITION_05#'||unistr('\000a')||
'#FORM_CLOSE# '||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<table class="t12PageBody" cellpadding="0" cellspacing="0" width="100%" summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12ApplicationLogo"><table width="100%" border="0" cellpadding="0" cellspacing="0" summary=""><tr><td>#LOGO##REGION_POSITION_06#</td>'||unistr('\000a')||
'<td width="100%">#REGION_POSITION_07#<br /></td>'||unistr('\000a')||
'<td>#REGION_POSITION_08#</td></tr></table></td></tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12UserName">&APP_USER. <span clas';

c3:=c3||'s="t12NavBar">#NAVIGATION_BAR#</span></td>'||unistr('\000a')||
'  <td align="right" valign="bottom"><table cellpadding="0" cellspacing="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table>'||unistr('\000a')||
'  </td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td colspan="2" class="t12Tabs">'||unistr('\000a')||
'   <table cellpadding="0" cellspacing="0" summary=""><tr>#TAB_CELLS#</tr></table>'||unistr('\000a')||
'  </td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'<div>#REGION_POSITION_01#</div>'||unistr('\000a')||
'<table border="0" cellpadding="0" cellspa';

c3:=c3||'cing="0" class="t12SidebarLayout" width="100%" summary="" height="70%">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td valign="top" width="150">'||unistr('\000a')||
'     <table cellpadding="0" cellspacing="0" width="100%" class="t12SidebarColor" summary="">'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'          <td><br /></td>'||unistr('\000a')||
'          <td width="5" valign="top" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarUpperRigh';

c3:=c3||'t.gif" alt="" /></td>'||unistr('\000a')||
'        </tr>'||unistr('\000a')||
'        <tr>'||unistr('\000a')||
'         <td valign="top" class="t12SideBarNav">#REGION_POSITION_02#</td>'||unistr('\000a')||
'         <td width="5" background="#IMAGE_PREFIX#themes/theme_12/SidebarRightSide.gif"><br /></td>'||unistr('\000a')||
'       </tr>'||unistr('\000a')||
'       <tr bgcolor="#FFFFFF">'||unistr('\000a')||
'          <td valign="top"><img width="100%" height="14" src="#IMAGE_PREFIX#themes/theme_12/SidebarBottomMiddle.gif" alt="" /></td> '||unistr('\000a')||
'  ';

c3:=c3||'        <td valign="top" width="5"><img src="#IMAGE_PREFIX#themes/theme_12/SidebarBottomRight.gif" alt="" /><br /><br /></td>'||unistr('\000a')||
'       </tr>  '||unistr('\000a')||
'     </table>'||unistr('\000a')||
'   </td>'||unistr('\000a')||
'   <td class="t12ContentBody" valign="top"><div class="t12Messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04#</td>'||unistr('\000a')||
'  <td align="right" valign="top" class="t12ContentBody">#REGION_PO';

c3:=c3||'SITION_03#<br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_template(
  p_id=> 582535472418876738 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td><span class="t12standardtabcurrent">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><a href="#TAB_LINK#" class="t12standardtabnoncurrent">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentBackground.gif); background-repeat:repeat;"><span class="t12parenttabcurrent" href="#TAB_LINK#">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabCurrentRight.gif" alt="" /></td>',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t12parenttabnoncurrent" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/StandardTabNonCurrentRight.gif" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#" class="t12NavBarItem">#TEXT#</a>'||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 18,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

--application/shared_components/user_interface/templates/page/dkblog_no_tabs_with_side_bar
prompt  ......Page template 582564885251524262
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">'||unistr('\000a')||
'<html xmlns="http://www.w3.org/1999/xhtml" lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<meta name="y_key" content="fd981e3ac40931b8" />'||unistr('\000a')||
'<meta name="description" content="DbSWH Goodies on Oracle Application Express, Oracle Database, jQuery, Linux and etc"/> '||unistr('\000a')||
'<meta name="keywords" content="APEX develo';

c1:=c1||'pment, Application Express development, Oracle Application Express software, Oracle XE, Oracle EPG, Oracle 10g, Oracle 11g, Oracle database applications, Apex Blog, Oracle Application Express Blog, Apex jQuery, Apex Linux, Linux, Web development, Web applications, jQuery, Apex tricks, Apex CSS, Linux scripts"/> '||unistr('\000a')||
'<title>#TITLE#</title>'||unistr('\000a')||
'<link rel="shortcut icon" href="/blog/favicon.ico" type="image/';

c1:=c1||'x-icon" />'||unistr('\000a')||
'  <link rel="alternate" type="application/rss+xml" title="Recently Created" '||unistr('\000a')||
'    href="http://feeds.feedburner.com/Dbswh" />'||unistr('\000a')||
'  <link rel="alternate" type="application/rss+xml" title="Hot Articles" '||unistr('\000a')||
'    href="http://feeds.feedburner.com/Dbswh_hot" />'||unistr('\000a')||
'  <link rel="alternate" type="application/rss+xml" title="Most Popular" '||unistr('\000a')||
'    href="http://feeds.feedburner.com/Dbswh_popular" />'||unistr('\000a')||
'<script ty';

c1:=c1||'pe="text/javascript" src="https://www.google.com/jsapi?key=&APIKEY."></script>'||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
'  google.load("jquery", "1.4.4");'||unistr('\000a')||
'  google.load("jqueryui", "1.8");'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_4_0.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_legacy_4_0.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascrip';

c1:=c1||'t/apex_widget_4_0.js" type="text/javascript"></script>'||unistr('\000a')||
'<script src="#IMAGE_PREFIX#javascript/apex_dynamic_actions_4_0.js" type="text/javascript"></script>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'<link href="#WORKSPACE_IMAGES#blog.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/b';

c1:=c1||'ase/jquery-ui.css" rel="stylesheet" type="text/css"/>'||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'#responseeDiv {'||unistr('\000a')||
'border: 1px solid;'||unistr('\000a')||
'margin: 10px 0px;'||unistr('\000a')||
'padding:15px 10px 15px 50px;'||unistr('\000a')||
'background-repeat: no-repeat;'||unistr('\000a')||
'background-position: 10px center;'||unistr('\000a')||
'color: #D8000C;'||unistr('\000a')||
'background-color: #FFBABA;'||unistr('\000a')||
'background-image: url(''#WORKSPACE_IMAGES#Cancel.png'');'||unistr('\000a')||
'display:none;}'||unistr('\000a')||
'#responseeokDiv {'||unistr('\000a')||
'border: 1px solid;'||unistr('\000a')||
'margin: 10px 0px;'||unistr('\000a')||
'padding:';

c1:=c1||'15px 10px 15px 50px;'||unistr('\000a')||
'background-repeat: no-repeat;'||unistr('\000a')||
'background-position: 10px center;'||unistr('\000a')||
'color: #D8000C;'||unistr('\000a')||
'background-color: #FFA500;'||unistr('\000a')||
'background-image: url(''#WORKSPACE_IMAGES#ok.png'');'||unistr('\000a')||
'display:none;}'||unistr('\000a')||
'pre {white-space:pre-wrap;}'||unistr('\000a')||
''||unistr('\000a')||
'.Clear{margin-top:25px}'||unistr('\000a')||
'.syntaxhighlighter{overflow-y: hidden !important}'||unistr('\000a')||
''||unistr('\000a')||
'</style>'||unistr('\000a')||
''||unistr('\000a')||
'<script type="text/javascript">'||unistr('\000a')||
''||unistr('\000a')||
'  var _gaq = _gaq || [];'||unistr('\000a')||
'  _gaq.push([''_setAccount'', ''UA-42';

c1:=c1||'33498-6'']);'||unistr('\000a')||
'  _gaq.push([''_trackPageview'']);'||unistr('\000a')||
''||unistr('\000a')||
'  (function() {'||unistr('\000a')||
'    var ga = document.createElement(''script''); ga.type = ''text/javascript''; ga.async = true;'||unistr('\000a')||
'    ga.src = (''https:'' == document.location.protocol ? ''https://ssl'' : ''http://www'') + ''.google-analytics.com/ga.js'';'||unistr('\000a')||
'    var s = document.getElementsByTagName(''script'')[0]; s.parentNode.insertBefore(ga, s);'||unistr('\000a')||
'  })();'||unistr('\000a')||
''||unistr('\000a')||
'</script>'||unistr('\000a')||
''||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ON';

c1:=c1||'LOAD#>#FORM_OPEN#';

c2:=c2||' <div id="footer">#REGION_POSITION_08#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'</div> #FORM_CLOSE#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>';

c3:=c3||'<div id="topbar">'||unistr('\000a')||
'  <div class="content">'||unistr('\000a')||
'    <div id="icons"> #NAVIGATION_BAR#'||unistr('\000a')||
'    </div>#REGION_POSITION_02#'||unistr('\000a')||
'    <div class="url"> <a href="http://www.dbswh.com">www.dbswh.com</a> </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="top"> '||unistr('\000a')||
'  <div class="content">'||unistr('\000a')||
'<div id="menu">#REGION_POSITION_03#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <h1>#LOGO#</h1>'||unistr('\000a')||
'    <h2>#REGION_POSITION_04#</h2>'||unistr('\000a')||
'  </div>   '||unistr('\000a')||
'</div><div class="t12Messages">#GLOBAL_NOT';

c3:=c3||'IFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>'||unistr('\000a')||
'<div class="content">'||unistr('\000a')||
'  <div id="main">'||unistr('\000a')||
'    <div class="right_side">'||unistr('\000a')||
'      <div class="pad">#REGION_POSITION_05#'||unistr('\000a')||
'        <a href="http://feeds.feedburner.com/Dbswh"><img src="#WORKSPACE_IMAGES#rss.jpg" alt="DbSWH Blog RSS Feed" /></a> </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="right_side">'||unistr('\000a')||
'      <div class="pad">'||unistr('\000a')||
'        #REGION_POSITION_06#'||unistr('\000a')||
'      </d';

c3:=c3||'iv>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'   <div  id="left_side_a">'||unistr('\000a')||
'      <div class="intro">'||unistr('\000a')||
'        #REGION_POSITION_07# '||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    <div  id="left_side">'||unistr('\000a')||
'      <div class="mpart">'||unistr('\000a')||
'        #BOX_BODY#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'  </div>    '||unistr('\000a')||
'  </div>';

wwv_flow_api.create_template(
  p_id=> 582564885251524262 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Dkblog No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t12success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t12success" style="color:red;" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
  p_navigation_bar=> '#BAR_BODY#',
  p_navbar_entry=> '<a href="#LINK#"><img src="#IMAGE#" alt="#TEXT#" title="#TEXT#"/>#TEXT#</a>'||unistr('\000a')||
''||unistr('\000a')||
'',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> 'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" ',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 12,
  p_theme_class_id => 17,
  p_template_comment => '<script type="text/javascript">'||unistr('\000a')||
'<!--'||unistr('\000a')||
'/*Global JS Variables*/'||unistr('\000a')||
'var htmldb_Img_Dir = "/img/";'||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
''||unistr('\000a')||
'<style type="text/css">'||unistr('\000a')||
'.apexir_WORKSHEET_DATA td {'||unistr('\000a')||
'background:#414141 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'td.apex_finderbar_left {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_middle {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_top  {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'.apex_finderbar_left_bottom {'||unistr('\000a')||
'background:#D0EB55 none repeat scroll 0 0;'||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'');
end;
 
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/custom_button
prompt  ......Button Template 5557848262179649
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 5557848262179649 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'custom Button'
 ,p_template => 
'<input type="button" class="f-submit" value="#LABEL#" onclick="#LINK#" #BUTTON_ATTRIBUTES#>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button
prompt  ......Button Template 582535586482876738
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 582535586482876738 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button'
 ,p_template => 
'<a href="#LINK#" class="t12Button">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_1
prompt  ......Button Template 582535665524876738
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 582535665524876738 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 1'
 ,p_template => 
'<a href="#LINK#" class="t12ButtonAlternative1">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 4
 ,p_theme_id => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_2
prompt  ......Button Template 582535781429876739
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 582535781429876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 2'
 ,p_template => 
'<a href="#LINK#" class="t12ButtonAlternative2">#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 5
 ,p_theme_id => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/button_alternative_3
prompt  ......Button Template 582535892895876739
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 582535892895876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'Button, Alternative 3'
 ,p_template => 
'<table cellpadding="0" cellspacing="0" border="0" class="t12ButtonAlternative3" summary="">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ButtonAlternative3Left" width="3"><br /></td>'||unistr('\000a')||
'  <td style="padding-left: 10px; padding-right: 10px;"><a href="#LINK#">#LABEL#</a></td>'||unistr('\000a')||
'  <td class="t12ButtonAlternative3Right" width="3"><br /></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 2
 ,p_theme_id => 12
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/borderless_region
prompt  ......region template 582535976747876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582535976747876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12BorderlessRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Borderless Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 7
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582535976747876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/bracketed_region
prompt  ......region template 582536087034876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536087034876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td align="center"><table width="100%" class="t12ButtonHolder" summary=""><tr><td><br /></td></tr></table></td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2#'||
'#EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Bracketed Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 18
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536087034876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/breadcrumb_region
prompt  ......region template 582536179758876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536179758876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<div class="t12BreadcrumbRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
 ,p_page_plug_template_name => 'Breadcrumb Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 6
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536179758876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_with_title
prompt  ......region template 582536277716876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536277716876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ButtonRegionWithTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Button Region with Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 4
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536277716876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/button_region_without_title
prompt  ......region template 582536366944876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536366944876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ButtonRegionWithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Button Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 17
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536366944876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_list
prompt  ......region template 582536468183876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536468183876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ListRegionWithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td colspan="2" class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_12/ChartList.gif" alt="" />&nbsp;</'||
'td>'||unistr('\000a')||
'  <td valign="top" class="t12Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Chart List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536468183876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/chart_region
prompt  ......region template 582536574263876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536574263876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ChartRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12Header">#TITLE#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12Body">#BODY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Chart Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 30
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536574263876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/form_region
prompt  ......region template 582536687372876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536687372876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12FormRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'<tr><td><img src="#IMAGE_PREFIX#themes/theme_12/t.gif" width="400" height="1" alt="" />'||
'</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Form Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536687372876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/hide_and_show_region
prompt  ......region template 582536763418876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536763418876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table width="100%" cellpadding="0" cellspacing="0" border="0"  class="t12HideAndShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t12Header">#TITLE#<a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#htmldb/builder/rollup_minus_dgray.gif'');" class="htmldbHideShow'||
'MinLink"><img src="#IMAGE_PREFIX#htmldb/builder/rollup_plus_dgray.gif" id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><div class="t12Hide" id="region#REGION_SEQUENCE_ID#">'||unistr('\000a')||
'<div class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>'||unistr('\000a')||
'<div class="t12Body">#BODY#</div>'||unistr('\000a')||
'</div></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Hide and Show Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 1
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536763418876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/list_region_with_icon
prompt  ......region template 582536877620876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536877620876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ListRegionWithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
' <tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
' <td><td class="t12Body"><img src="#IMAGE_PREFIX#themes/theme_12/provisioning_reports.gif" alt="" />#BODY#</td></tr>'||unistr('\000a')||
'<'||
'/table>'
 ,p_page_plug_template_name => 'List Region with Icon'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536877620876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region
prompt  ......region template 582536980288876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582536980288876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Navigation Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 5
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582536980288876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/navigation_region_alternative_1
prompt  ......region template 582537078829876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537078829876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Navigation Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 16
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537078829876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_buttons_and_title
prompt  ......region template 582537192346876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537192346876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12RegionWithoutButtonsAndTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Region without Buttons and Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 19
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537192346876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/region_without_title
prompt  ......region template 582537264542876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537264542876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12RegionWithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Region without Title'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 11
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537264542876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_filter_single_row
prompt  ......region template 582537363887876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537363887876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'<tbody>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_f'||
'ind.png" /></td>'||unistr('\000a')||
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>'||unistr('\000a')||
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>'||unistr('\000a')||
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr><td class="'||
'apex_finderbar_left_middle"><br /></td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</tbody>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report Filter - Single Row'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 31
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537363887876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/report_list
prompt  ......region template 582537485595876739
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537485595876739 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ListRegionWithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td colspan="2" class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td colspan="2" class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'  <td valign="top"><img src="#IMAGE_PREFIX#themes/theme_12/ReportList.gif" alt="" /></td>'||unistr('\000a')||
' '||
' <td valign="top" class="t12Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Report List'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 29
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537485595876739 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region
prompt  ......region template 582537578408876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537578408876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12Header">#TITLE#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12Body">#BODY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Reports Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537578408876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_100_width
prompt  ......region template 582537690245876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537690245876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ReportsRegion100PercentWidth" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
' <tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Reports Region 100% Width'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 13
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537690245876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/reports_region_alternative_1
prompt  ......region template 582537775373876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537775373876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
'<tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'<tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Reports Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 10
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537775373876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region
prompt  ......region template 582537880656876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537880656876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12SidebarRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
' <tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</table>'
 ,p_page_plug_template_name => 'Sidebar Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 2
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537880656876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
prompt  ......region template 582537986522876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582537986522876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12SidebarRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr><td class="t12Header">#TITLE#</td></tr>'||unistr('\000a')||
' <tr><td class="t12Body">#BODY#</td></tr>'||unistr('\000a')||
' <tr><td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Sidebar Region, Alternative 1'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 3
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582537986522876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region
prompt  ......region template 582538076148876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582538076148876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12WizardRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'  <td class="t12Header">#TITLE#</td>'||unistr('\000a')||
'  <td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
' <td colspan="2" class="t12Body">#BODY#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Wizard Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 12
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582538076148876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/wizard_region_with_icon
prompt  ......region template 582538185970876740
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582538185970876740 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12WizardRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="" border="1">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t12Header">#TITLE#</td>'||unistr('\000a')||
'<td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
' <td colspan="2" class="t12Body"><table width="100%" summary="">'||unistr('\000a')||
'    <tr><td><img src="#IMAGE_PREFIX#themes/theme_12/'||
'WizardIcon.gif" alt="" />&nbsp;</td><td>#BODY#</td></tr>'||unistr('\000a')||
'  </table>'||unistr('\000a')||
' </td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'Wizard Region with Icon'
 ,p_render_form_items_in_table => 'Y'
 ,p_theme_id => 12
 ,p_theme_class_id => 20
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582538185970876740 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/h3_region
prompt  ......region template 582566391649655437
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 582566391649655437 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<h3>#TITLE#</h3>'||unistr('\000a')||
'#BODY#'
 ,p_page_plug_template_name => 'H3 Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 21
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 582566391649655437 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/h2_region
prompt  ......region template 583009671951547262
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 583009671951547262 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<h2>#TITLE#</h2>'||unistr('\000a')||
'#BODY#'
 ,p_page_plug_template_name => 'H2 Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 12
 ,p_theme_class_id => 21
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 583009671951547262 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/region/h2_reports_region
prompt  ......region template 583013784843585555
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 583013784843585555 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template => 
'<table class="t12ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td><div class="intro"><div  class="pad"><h2>#TITLE#</h2></div></div></td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td class="t12ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
'  <td>#BODY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
''
 ,p_page_plug_template_name => 'H2 Reports Region'
 ,p_render_form_items_in_table => 'Y'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 12
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 583013784843585555 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/button_list
prompt  ......list template 582538261945876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t12Button">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t12Button">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582538261945876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 12,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t12ButtonList">',
  p_list_template_after_rows=>'</div><br />',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_menu_with_sublist
prompt  ......list template 582538369570876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t6:=t6||'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>582538369570876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 12,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dhtml_tree
prompt  ......list template 582538474898876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>582538474898876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 12,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
prompt  ......list template 582538587694876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t12current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t2:=t2||'<td class="t12noncurrent"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582538587694876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table class="t12HorozontalImagesWithLabelList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/horizontal_links_list
prompt  ......list template 582538664403876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t12current"><a href="#LINK#" class="t12current">#TEXT#</a></td>';

t2:=t2||'<td class="t12noncurrent"><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582538664403876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 12,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<table class="t12HorizontalLinksList" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image
prompt  ......list template 582538783644876740
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>582538783644876740 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image',
  p_theme_id  => 12,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
prompt  ......list template 582538888666876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>582538888666876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Pull Down Menu with Image (Custom 1)',
  p_theme_id  => 12,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tabbed_navigation_list
prompt  ......list template 582538982713876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td><img src="#IMAGE_PREFIX#themes/theme_12/ListTabCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/ListTabCurrentBackground.gif); background-repeat:repeat;"><a class="t12current" href="#LINK#">#TEXT#</a></td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/ListTabCurrentRight.gif" alt="" /></td>';

t2:=t2||'<td><img src="#IMAGE_PREFIX#themes/theme_12/ListTabNonCurrentLeft.gif" alt="" /></td>'||unistr('\000a')||
'<td style="background-image: url(#IMAGE_PREFIX#themes/theme_12/ListTabNonCurrentBackground.gif); background-repeat:repeat;"><a class="t12noncurrent" href="#LINK#">#TEXT#</a></td>'||unistr('\000a')||
'<td><img src="#IMAGE_PREFIX#themes/theme_12/ListTabNonCurrentRight.gif" alt="" /></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582538982713876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 12,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<table class="t12TabbedNavigationList" cellspacing="0" cellpadding="0" summary=""><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tree_list
prompt  ......list template 582539081222876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>582539081222876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 12,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="htmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list
prompt  ......list template 582539180949876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="center" class="t12current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t2:=t2||'<tr><td align="center"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539180949876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 12,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table class="t12VerticalImagesList" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
prompt  ......list template 582539280791876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||unistr('\000a')||
'';

t2:=t2||'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>'||unistr('\000a')||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539280791876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List (Custom 2)',
  p_theme_id  => 12,
  p_theme_class_id => 10,
  p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >',
  p_list_template_after_rows=>'</table>'||unistr('\000a')||
'',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_ordered_list
prompt  ......list template 582539363549876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t12current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539363549876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t12VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_sidebar_list
prompt  ......list template 582539489858876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t12current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539489858876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 12,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<table class="t12VerticalSidebarList" cellpadding="0" cellspacing="0" width="100%" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
prompt  ......list template 582539578079876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t12current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539578079876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullets',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t12VerticalUnorderedListWithBullets">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
prompt  ......list template 582539689635876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td><a class="t12current" href="#LINK#">#TEXT#</a></td></tr>';

t2:=t2||'<tr><td><a href="#LINK#">#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539689635876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullets',
  p_theme_id  => 12,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<table class="t12VerticalUnorderedListWithoutBullets" summary="">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/wizard_progress_list
prompt  ......list template 582539769122876741
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<img src="#IMAGE_PREFIX#themes/theme_12/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||unistr('\000a')||
'<div class="current">#TEXT#</div>';

t2:=t2||'<img src="#IMAGE_PREFIX#themes/theme_12/WizardDownArrow.gif" width="7" height="12" alt="Down" /><br />'||unistr('\000a')||
'<div class="noncurrent">#TEXT#</div>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582539769122876741 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 12,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<div class="t12WizardProgressList">'||unistr('\000a')||
'<div class="noncurrent">Start</div>',
  p_list_template_after_rows=>'<div>&DONE.</div>'||unistr('\000a')||
'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/dkblog_list
prompt  ......list template 582572067583688884
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="current" href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>582572067583688884 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'dkblog list',
  p_theme_id  => 12,
  p_theme_class_id => 9,
  p_list_template_before_rows=>'<ul>',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/borderless
prompt  ......report template 582539867096876741
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t12data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582539867096876741 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t12borderless">',
  p_row_template_after_rows =>'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t12header" #ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_row_style_checked=>'#6CAAD9',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582539867096876741 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/horizontal_border
prompt  ......report template 582539971924876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t12data" #ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582539971924876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="t12contentcollapse" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#"><table cellpadding="0" border="0" cellspacing="0" summary="" width="100%">#TOP_PAGINATION#</table><table class="t12bottomborderonly" border="0" cellpadding="0" cellspacing="0" summary="">',
  p_row_template_after_rows =>'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table></div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t12header"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_row_style_checked=>'#6CAAD9',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582539971924876742 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/one_column_unordered_list
prompt  ......report template 582540074976876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582540074976876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellspacing="0" cellpadding="0" width="100%" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><ul class="t12OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul></td></tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_theme_id  => 12,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard
prompt  ......report template 582540190330876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t12data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582540190330876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t12standard">',
  p_row_template_after_rows =>'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t12header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_row_style_checked=>'#6CAAD9',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582540190330876742 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_ppr
prompt  ......report template 582540290459876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t12data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582540290459876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">'||unistr('\000a')||
'#TOP_PAGINATION#'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t12standard">',
  p_row_template_after_rows =>'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table><script language=JavaScript type=text/javascript>'||unistr('\000a')||
'<!--'||unistr('\000a')||
'init_htmlPPRReport(''#REGION_ID#'');'||unistr('\000a')||
''||unistr('\000a')||
'//-->'||unistr('\000a')||
'</script>'||unistr('\000a')||
'</htmldb:#REGION_ID#>'||unistr('\000a')||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t12header" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_row_style_checked=>'#6CAAD9',
  p_theme_id  => 12,
  p_theme_class_id => 7,
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582540290459876742 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/standard_alternating_row_colors
prompt  ......report template 582540374952876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td class="t12data"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c2:=c2||'<td class="t12dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582540374952876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t12standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'<th class="t12header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond2=>'NOT_CONDITIONAL',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'ODD_ROW_NUMBERS',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_row_style_checked=>'#6CAAD9',
  p_theme_id  => 12,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582540374952876742 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/report/value_attribute_pairs
prompt  ......report template 582540493943876742
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t12header">#COLUMN_HEADER#</th><td class="t12data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 582540493943876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t12valueattributepairs">',
  p_row_template_after_rows =>'</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'#PAGINATION#'||unistr('\000a')||
'<tr><td class="t12bottom" colspan="99">#EXTERNAL_LINK##CSV_LINK#</td></tr>'||unistr('\000a')||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template=>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<span class="t12Pagination">#TEXT#</span>',
  p_next_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextPage.gif" alt="" /></a>',
  p_previous_page_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousPage.gif" alt="" /></a>',
  p_next_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/NextSet.gif" alt="" /></a>',
  p_previous_set_template=>'<a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_12/PreviousSet.gif" alt="" /></a>',
  p_theme_id  => 12,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 582540493943876742 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'<tr><td colspan="2">&nbsp;</td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/tooltip_optional_label_with_help
prompt  ......label template 2892732765588026
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2892732765588026 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Tooltip Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><a class="t12OptionalLabelWithHelp" rel="htmltooltip" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/tooltip_of_red_asterisk_required_label_with_help
prompt  ......label template 2896603067345371
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2896603067345371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Tooltip of Red asterisk Required Label with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_15/requiredicon_status2.gif" alt="Required Field Icon" /><a class="t12RequiredLabelWithHelp"  rel="htmltooltip" >',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 582540573998876742
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 582540573998876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t12NoLabel">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label
prompt  ......label template 582540682551876742
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 582540682551876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><span class="t12OptionalLabel">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/optional_label_with_help
prompt  ......label template 582540768116876742
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 582540768116876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><a class="t12OptionalLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label
prompt  ......label template 582540876368876742
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 582540876368876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_12/required.gif" alt="Required Field Icon" /><span class="t12RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/required_label_with_help
prompt  ......label template 582540993800876742
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 582540993800876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_12/required.gif" alt="Required Field Icon" /><a class="t12RequiredLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/red_asterisk_required_label
prompt  ......label template 583030476125793769
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 583030476125793769 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Red asterisk Required Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_15/requiredicon_status2.gif" alt="Required Field Icon" /><span class="t12RequiredLabel">',
  p_template_body2=>'</span></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/red_asterisk_required_label_with_help
prompt  ......label template 583030577831793770
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 583030577831793770 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Red asterisk Required Label with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#"><img src="#IMAGE_PREFIX#themes/theme_15/requiredicon_status2.gif" alt="Required Field Icon" /><a class="t12RequiredLabelWithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
prompt  ......template 582541082065876742
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 582541082065876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div class="t12BreadcrumbMenu">',
  p_current_page_option=>'#NAME#',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
prompt  ......template 582541179264876742
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 582541179264876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t12HierarchicalMenu">',
  p_current_page_option=>'<li><a style="font-weight:bold;" href="#LINK#">#NAME#</a></li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 582541864523876743
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 582541864523876743 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_12/theme_3_1.css" type="text/css" />'||unistr('\000a')||
'',
  p_page_body_attr=>'onload="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="t12PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="t12PopupBody">',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 582541291474876742
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 582541291474876742 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<td width="100">#IDAY#</td>',
  p_month_title_format=> '<table class="t12StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td align="center" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>',
  p_month_open_format=> '<table class="t12StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td align="center"  class="formRegionHeader"><table cellspacing="2" cellpadding="2" summary="">',
  p_month_close_format=> '    </table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||unistr('\000a')||
'',
  p_day_open_format=> '<td valign="top" width="100" class="formRegionBody">'||unistr('\000a')||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||unistr('\000a')||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||unistr('\000a')||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12WeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t12MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t12DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t12WeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t12Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t12Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t12NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t12Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t12DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12DayCalendarHolder"> <tr> <td class="t12MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t12DayCalendar">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t12Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t12Today">',
  p_daily_time_open_format => '<th class="t12Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 12,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/calendar_alternative_1
prompt  ......template 582541473760876743
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 582541473760876743 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<td width="60">#IDY#</td>',
  p_month_title_format=> '<table class="t12StandardCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td align="center" class="formRegionHeader">#IMONTH#&nbsp;#YYYY#</td>'||unistr('\000a')||
'  </tr>',
  p_month_open_format=> '  <tr>'||unistr('\000a')||
'    <td align="center"  class="formRegionHeader"><table cellspacing="0" cellpadding="0" class="condensedTable" summary="">',
  p_month_close_format=> '    </table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold">'||unistr('\000a')||
'',
  p_day_open_format=> '<td valign="top"  width="60" class="formRegionBody">'||unistr('\000a')||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="formRegionBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold">'||unistr('\000a')||
'',
  p_weekend_open_format => '<td valign="top" class="formRegionBodyWE">'||unistr('\000a')||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12WeekCalendarAlternative1Holder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t12MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t12DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t12WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t12Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t12Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t12NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t12Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t12DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12DayCalendarAlternative1Holder"> <tr><td class="t12MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t12DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t12Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t12Today">',
  p_daily_time_open_format => '<th class="t12Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 12,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/calendar/small_calendar
prompt  ......template 582541680860876743
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 582541680860876743 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<td width="40" class="simpleHeadings">#IDY#</td>',
  p_month_title_format=> '<table class="t12SimpleCalendar" width="100%" cellpadding="0" cellspacing="0" border="0" cellspacing="0" summary="">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td align="center" class="simpleHeader">#IMONTH#&nbsp;#YYYY#</td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'',
  p_month_open_format=> '  <tr>'||unistr('\000a')||
'    <td align="center" class="simpleHeader"><table cellspacing="0" cellpadding="0" class="simpleTable" summary="">',
  p_month_close_format=> '    </table></td>'||unistr('\000a')||
'  </tr>'||unistr('\000a')||
'</table>',
  p_day_title_format=> '#DD#<br/><span style="font-weight:bold;">'||unistr('\000a')||
'',
  p_day_open_format=> '<td valign="top" class="simpleBody">'||unistr('\000a')||
'',
  p_day_close_format=> '</span>&nbsp;</td>',
  p_today_open_format=> '<td valign="top" class="simpleBodyCurrent">',
  p_weekend_title_format=> '<div>#DD#</div><span style="font-weight:bold;">'||unistr('\000a')||
'',
  p_weekend_open_format => '<td valign="top" class="simpleBodyWE">'||unistr('\000a')||
'',
  p_weekend_close_format => '<span></td>',
  p_nonday_title_format => '<div>&nbsp;</div>',
  p_nonday_open_format => '<td valign="top" class="simpleBody">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr class="formRegionHeader">',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12SmallWeekCalendarHolder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="t12MonthTitle" id="test">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="t12DayOfWeek">#IDAY#<br />#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t12SmallWeekCalendar">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="t12Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="t12Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="t12NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="t12Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="t12DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t12SmallDayCalendarHolder"> <tr> <td class="t12MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t12SmallDayCalendar">',
  p_daily_month_close_format => '</table></td></tr></table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="t12Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="t12Today">',
  p_daily_time_open_format => '<th class="t12Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_theme_id  => 12,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/blog
prompt  ......theme 582541989108876743
begin
wwv_flow_api.create_theme (
  p_id =>582541989108876743 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 12,
  p_theme_name=>'Blog',
  p_default_page_template=>582564885251524262 + wwv_flow_api.g_id_offset,
  p_error_template=>2954601722196224 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>582535276357876738 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>582534683624876737 + wwv_flow_api.g_id_offset,
  p_default_button_template=>582535586482876738 + wwv_flow_api.g_id_offset,
  p_default_region_template=>582537578408876740 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>582536574263876739 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>582536687372876739 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>582537578408876740 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>582537578408876740 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>582538076148876740 + wwv_flow_api.g_id_offset,
  p_default_menur_template=>582536179758876739 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>582537775373876740 + wwv_flow_api.g_id_offset,
  p_default_irr_template=>null + wwv_flow_api.g_id_offset,
  p_default_report_template   =>582540374952876742 + wwv_flow_api.g_id_offset,
  p_default_label_template=>582540768116876742 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>582541082065876742 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>582541291474876742 + wwv_flow_api.g_id_offset,
  p_default_list_template=>582539578079876741 + wwv_flow_api.g_id_offset,
  p_default_option_label=>582540768116876742 + wwv_flow_api.g_id_offset,
  p_default_required_label=>582540993800876742 + wwv_flow_api.g_id_offset);
end;
/
 
prompt  ...build options used by application 109
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 109
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...messages used by application: 109
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations used by application: 109
--
prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/text_edit
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<script type="text/javascript">'||unistr('\000a')||
' <!--'||unistr('\000a')||
'    var textEd = $x(''#CURRENT_ITEM_NAME#'');'||unistr('\000a')||
'    var textName = ''#CURRENT_ITEM_NAME#'';'||unistr('\000a')||
' -->'||unistr('\000a')||
'</script>';

wwv_flow_api.create_shortcut (
 p_id=> 5550546204929981 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'TEXT_EDIT',
 p_shortcut_type=> 'HTML_TEXT',
 p_shortcut=> c1);
end;
null;
 
end;
/

--application/shared_components/user_interface/shortcuts/formatting_buttons
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<table cellpadding="2" cellspacing="0" border="0">'||unistr('\000a')||
'  <tr>'||unistr('\000a')||
'    <td><a href="#" onclick="styleTag(''b'',textEd);return false;" title="Click for bold">'||unistr('\000a')||
'        <img src="#WORKSPACE_IMAGES#text-bold-20x22.gif" width="20" height="22" border="0" alt="Click for bold"></a>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'    <td><a href="#" onclick="styleTag(''i'',textEd);return false;" title="Click for italics"> '||unistr('\000a')||
'        <img src="#WORKSPACE_IMAG';

c1:=c1||'ES#text-italics-20x22.gif" width="20" height="22" border="0" alt="Click for italics"></a>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'    <td><a href="#" onclick="styleTag(''u'',textEd);return false;" title="Click for underline">'||unistr('\000a')||
'      <img src="#WORKSPACE_IMAGES#text-underline-20x22.gif" width="20" height="22" border="0" alt="Click for underline"></a>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'    <td><a href="#" onclick="styleTag(''code'',textEd);return false;" tit';

c1:=c1||'le="Click for code">'||unistr('\000a')||
'        <img src="#WORKSPACE_IMAGES#code.jpg" width="20" height="22" border="0" alt="Click for code"></a>'||unistr('\000a')||
'    </td>'||unistr('\000a')||
'    </tr>'||unistr('\000a')||
'</table>';

wwv_flow_api.create_shortcut (
 p_id=> 5551254300941752 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'FORMATTING_BUTTONS',
 p_shortcut_type=> 'HTML_TEXT',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
--application/shared_components/reports/report_queries/vw_finland
declare
    p1 varchar2(32767) := null;
begin
p1:=p1||'select max(time_stamp) Last_visit,'||unistr('\000a')||
'count(*) number_visits,'||unistr('\000a')||
'  IP_ADDRESS,'||unistr('\000a')||
'  USER_AGENT,'||unistr('\000a')||
'  LAT,'||unistr('\000a')||
'  LONGt,'||unistr('\000a')||
'  CITY'||unistr('\000a')||
'from ate_activity_log '||unistr('\000a')||
'where country = ''FINLAND'''||unistr('\000a')||
'group by '||unistr('\000a')||
'  IP_ADDRESS,'||unistr('\000a')||
'  USER_AGENT,'||unistr('\000a')||
'  LAT,'||unistr('\000a')||
'  longt,'||unistr('\000a')||
'  CITY'||unistr('\000a')||
'order by max(time_stamp) desc';

wwv_flow_api.create_shared_query(
  p_id => 1703823650077839 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_name=>'vw_finland',
  p_query_text => p1,
  p_xml_structure =>'STANDARD',
  p_report_layout_id =>null + wwv_flow_api.g_id_offset,
  p_format =>'PDF',
  p_format_item =>'',
  p_output_file_name =>'vw_finland',
  p_content_disposition =>'',
  p_document_header =>'',
  p_xml_items =>'');
end;
/
--application/shared_components/reports/report_queries/vw_lastday_distinct_visitors
declare
    p1 varchar2(32767) := null;
begin
p1:=p1||'SELECT VISIT_TIME,'||unistr('\000a')||
'  IP_ADDRESS,'||unistr('\000a')||
'  LAT,'||unistr('\000a')||
'  LONGT,'||unistr('\000a')||
'  CITY,'||unistr('\000a')||
'  REGION,'||unistr('\000a')||
'  COUNTRY,'||unistr('\000a')||
'  COUNTRY_CODE'||unistr('\000a')||
'FROM VW_LASTDAY_DISTINCT_VISITORS ;'||unistr('\000a')||
'';

wwv_flow_api.create_shared_query(
  p_id => 7010529107037260 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_name=>'VW_LASTDAY_DISTINCT_VISITORS',
  p_query_text => p1,
  p_xml_structure =>'STANDARD',
  p_report_layout_id =>null + wwv_flow_api.g_id_offset,
  p_format =>'PDF',
  p_format_item =>'',
  p_output_file_name =>'VW_LASTDAY_DISTINCT_VISITORS',
  p_content_disposition =>'',
  p_document_header =>'',
  p_xml_items =>'');
end;
/
prompt  ...report layouts
--
 
begin
 
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version = ''''1.0'''' encoding = ''''utf-8''''?>'||unistr('\000a')||
'<xsl:stylesheet version="2.0" xmlns:xsl="http://www.';
    wwv_flow_api.g_varchar2_table(2) := 'w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.o';
    wwv_flow_api.g_varchar2_table(3) := 'rg/1999/xlink">'||unistr('\000a')||
'      <xsl:variable name="_XDOFOPOS" select="''''''''"/>'||unistr('\000a')||
'      <xsl:variable name="_XD';
    wwv_flow_api.g_varchar2_table(4) := 'OFOPOS2" select="number(1)"/>'||unistr('\000a')||
'      <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||unistr('\000a')||
'    <xsl';
    wwv_flow_api.g_varchar2_table(5) := ':variable name="_XDOFOOSTOTAL" select="number(0)"/>'||unistr('\000a')||
'   <xsl:attribute-set name="padding">'||unistr('\000a')||
'      <x';
    wwv_flow_api.g_varchar2_table(6) := 'sl:attribute name="padding-bottom">0.25pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0';
    wwv_flow_api.g_varchar2_table(7) := '.25pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="text">'||unistr('\000a')||
'      <xsl:attri';
    wwv_flow_api.g_varchar2_table(8) := 'bute name="text-align">start</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="orphans">2</xsl:attribute>';
    wwv_flow_api.g_varchar2_table(9) := ''||unistr('\000a')||
'      <xsl:attribute name="start-indent">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="linefeed';
    wwv_flow_api.g_varchar2_table(10) := '-treatment">preserve</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>';
    wwv_flow_api.g_varchar2_table(11) := ''||unistr('\000a')||
'      <xsl:attribute name="end-indent">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-bo';
    wwv_flow_api.g_varchar2_table(12) := 'ttom">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:at';
    wwv_flow_api.g_varchar2_table(13) := 'tribute name="widows">2</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="align-';
    wwv_flow_api.g_varchar2_table(14) := 'left">'||unistr('\000a')||
'      <xsl:attribute name="text-align">left</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xs';
    wwv_flow_api.g_varchar2_table(15) := 'l:attribute-set name="align-center">'||unistr('\000a')||
'      <xsl:attribute name="text-align">center</xsl:attribute>';
    wwv_flow_api.g_varchar2_table(16) := ''||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="align-right">'||unistr('\000a')||
'      <xsl:attribute name="text';
    wwv_flow_api.g_varchar2_table(17) := '-align">right</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="footer">'||unistr('\000a')||
'      ';
    wwv_flow_api.g_varchar2_table(18) := '<xsl:attribute name="text-align">right</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="start-indent">5.4';
    wwv_flow_api.g_varchar2_table(19) := 'pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute';
    wwv_flow_api.g_varchar2_table(20) := '-set>'||unistr('\000a')||
'   <xsl:attribute-set name="text_2">'||unistr('\000a')||
'      <xsl:attribute name="start-indent">5.4pt</xsl:att';
    wwv_flow_api.g_varchar2_table(21) := 'ribute>'||unistr('\000a')||
'      <xsl:attribute name="end-indent">23.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   ';
    wwv_flow_api.g_varchar2_table(22) := '<xsl:attribute-set name="text_20">'||unistr('\000a')||
'      <xsl:attribute name="height">13.872pt</xsl:attribute>'||unistr('\000a')||
'   ';
    wwv_flow_api.g_varchar2_table(23) := '   <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribut';
    wwv_flow_api.g_varchar2_table(24) := 'e-set name="text_0">'||unistr('\000a')||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribu';
    wwv_flow_api.g_varchar2_table(25) := 'te-set>'||unistr('\000a')||
'   <xsl:attribute-set name="page-header">'||unistr('\000a')||
'      <xsl:attribute name="color">#PAGE_HEADER_F';
    wwv_flow_api.g_varchar2_table(26) := 'ONT_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-family">#PAGE_HEADER_FONT_FAMILY#</xsl:a';
    wwv_flow_api.g_varchar2_table(27) := 'ttribute>'||unistr('\000a')||
'      <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attrib';
    wwv_flow_api.g_varchar2_table(28) := 'ute name="font-size">#PAGE_HEADER_FONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weig';
    wwv_flow_api.g_varchar2_table(29) := 'ht">#PAGE_HEADER_FONT_WEIGHT#</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="';
    wwv_flow_api.g_varchar2_table(30) := 'page-footer">'||unistr('\000a')||
'      <xsl:attribute name="color">#PAGE_FOOTER_FONT_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xs';
    wwv_flow_api.g_varchar2_table(31) := 'l:attribute name="font-family">#PAGE_FOOTER_FONT_FAMILY#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name=';
    wwv_flow_api.g_varchar2_table(32) := '"white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-size">#PAGE_FOOTER_FON';
    wwv_flow_api.g_varchar2_table(33) := 'T_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#PAGE_FOOTER_FONT_WEIGHT#</xsl:at';
    wwv_flow_api.g_varchar2_table(34) := 'tribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="body-font">'||unistr('\000a')||
'      <xsl:attribute nam';
    wwv_flow_api.g_varchar2_table(35) := 'e="height">12.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-family">#BODY_FONT_FAMILY#</xsl:a';
    wwv_flow_api.g_varchar2_table(36) := 'ttribute>'||unistr('\000a')||
'      <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attrib';
    wwv_flow_api.g_varchar2_table(37) := 'ute name="font-size">#BODY_FONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#BO';
    wwv_flow_api.g_varchar2_table(38) := 'DY_FONT_WEIGHT#</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="page-number">';
    wwv_flow_api.g_varchar2_table(39) := ''||unistr('\000a')||
'      <xsl:attribute name="height">13.872pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attri';
    wwv_flow_api.g_varchar2_table(40) := 'bute-set name="header-font">'||unistr('\000a')||
'      <xsl:attribute name="height">#HEADER_FONT_SIZE#pt</xsl:attribute';
    wwv_flow_api.g_varchar2_table(41) := '>'||unistr('\000a')||
'      <xsl:attribute name="font-family">#HEADER_FONT_FAMILY#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribut';
    wwv_flow_api.g_varchar2_table(42) := 'e name="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-size">#HEADER_F';
    wwv_flow_api.g_varchar2_table(43) := 'ONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#HEADER_FONT_WEIGHT#</xsl:attri';
    wwv_flow_api.g_varchar2_table(44) := 'bute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="border">'||unistr('\000a')||
'      <xsl:attribute name="bor';
    wwv_flow_api.g_varchar2_table(45) := 'der-top">#BORDER_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-bo';
    wwv_flow_api.g_varchar2_table(46) := 'ttom">#BORDER_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start';
    wwv_flow_api.g_varchar2_table(47) := '-width">#BORDER_WIDTH#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start-color">#BORDER_COL';
    wwv_flow_api.g_varchar2_table(48) := 'OR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start-style">solid</xsl:attribute>'||unistr('\000a')||
'      <xs';
    wwv_flow_api.g_varchar2_table(49) := 'l:attribute name="border-end-width">#BORDER_WIDTH#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="bor';
    wwv_flow_api.g_varchar2_table(50) := 'der-end-color">#BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-end-style">solid</x';
    wwv_flow_api.g_varchar2_table(51) := 'sl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="cell">'||unistr('\000a')||
'      <xsl:attribute nam';
    wwv_flow_api.g_varchar2_table(52) := 'e="background-color">#BODY_BG_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="color">#BODY_FONT_C';
    wwv_flow_api.g_varchar2_table(53) := 'OLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-start">5.15pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:';
    wwv_flow_api.g_varchar2_table(54) := 'attribute name="vertical-align">top</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0.0pt</';
    wwv_flow_api.g_varchar2_table(55) := 'xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-end">5.15pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute';
    wwv_flow_api.g_varchar2_table(56) := ' name="number-columns-spanned">1</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="height">0.0pt</xsl:attr';
    wwv_flow_api.g_varchar2_table(57) := 'ibute>'||unistr('\000a')||
'      <xsl:attribute name="padding-bottom">0.0pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
' ';
    wwv_flow_api.g_varchar2_table(58) := '  <xsl:attribute-set name="header-color">'||unistr('\000a')||
'      <xsl:attribute name="background-color">#HEADER_BG_C';
    wwv_flow_api.g_varchar2_table(59) := 'OLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="color">#HEADER_FONT_COLOR#</xsl:attribute>'||unistr('\000a')||
'   </x';
    wwv_flow_api.g_varchar2_table(60) := 'sl:attribute-set>'||unistr('\000a')||
'   <xsl:template match="/">'||unistr('\000a')||
'      <fo:root>'||unistr('\000a')||
'         <fo:layout-master-set>'||unistr('\000a')||
'  ';
    wwv_flow_api.g_varchar2_table(61) := '          <fo:simple-page-master master-name="master0" margin-left="66.6pt" margin-right="66.6pt" pa';
    wwv_flow_api.g_varchar2_table(62) := 'ge-height="#PAGE_HEIGHT#pt" page-width="#PAGE_WIDTH#pt" margin-top="36.0pt" margin-bottom="36.0pt">';
    wwv_flow_api.g_varchar2_table(63) := ''||unistr('\000a')||
'               <fo:region-before region-name="region-header" extent="54.0pt"/>'||unistr('\000a')||
'               <fo:';
    wwv_flow_api.g_varchar2_table(64) := 'region-body region-name="region-body" margin-top="54.0pt" margin-bottom="54.0pt"/>'||unistr('\000a')||
'               <';
    wwv_flow_api.g_varchar2_table(65) := 'fo:region-after region-name="region-footer" extent="54.0pt" display-align="after"/>'||unistr('\000a')||
'            </f';
    wwv_flow_api.g_varchar2_table(66) := 'o:simple-page-master>'||unistr('\000a')||
'         </fo:layout-master-set>'||unistr('\000a')||
'         <fo:page-sequence master-reference';
    wwv_flow_api.g_varchar2_table(67) := '="master0">'||unistr('\000a')||
'            <xsl:variable name="_PW" select="number(#PAGE_HEIGHT#)"/>'||unistr('\000a')||
'            <xsl';
    wwv_flow_api.g_varchar2_table(68) := ':variable name="_PH" select="number(#PAGE_WIDTH#)"/>'||unistr('\000a')||
'            <xsl:variable name="_ML" select="n';
    wwv_flow_api.g_varchar2_table(69) := 'umber(72.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_MR" select="number(72.0)"/>'||unistr('\000a')||
'            <xsl:varia';
    wwv_flow_api.g_varchar2_table(70) := 'ble name="_MT" select="number(90.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_MB" select="number(90.0)"/>';
    wwv_flow_api.g_varchar2_table(71) := ''||unistr('\000a')||
'            <xsl:variable name="_HY" select="number(36.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_FY"';
    wwv_flow_api.g_varchar2_table(72) := ' select="number(36.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_SECTION_NAME" select="string(''''master0'''')';
    wwv_flow_api.g_varchar2_table(73) := '"/>'||unistr('\000a')||
'            <fo:static-content flow-name="region-header">'||unistr('\000a')||
'               <fo:block xsl:use-att';
    wwv_flow_api.g_varchar2_table(74) := 'ribute-sets="text text_2 text_0 #PAGE_HEADER_ALIGNMENT#">'||unistr('\000a')||
'                  <fo:inline xsl:use-attr';
    wwv_flow_api.g_varchar2_table(75) := 'ibute-sets="page-header">#PAGE_HEADER#</fo:inline>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'            </fo:sta';
    wwv_flow_api.g_varchar2_table(76) := 'tic-content>'||unistr('\000a')||
'            <fo:static-content flow-name="region-footer">'||unistr('\000a')||
'               <fo:block xs';
    wwv_flow_api.g_varchar2_table(77) := 'l:use-attribute-sets="text footer">'||unistr('\000a')||
'                  <fo:inline xsl:use-attribute-sets="body-font ';
    wwv_flow_api.g_varchar2_table(78) := 'page-number">'||unistr('\000a')||
'                     <fo:page-number/>'||unistr('\000a')||
'                  </fo:inline>'||unistr('\000a')||
'             ';
    wwv_flow_api.g_varchar2_table(79) := '  </fo:block>'||unistr('\000a')||
'               <fo:block xsl:use-attribute-sets="text text_2 #PAGE_FOOTER_ALIGNMENT#"';
    wwv_flow_api.g_varchar2_table(80) := '>'||unistr('\000a')||
'                  <fo:inline xsl:use-attribute-sets="page-footer">#PAGE_FOOTER#</fo:inline>'||unistr('\000a')||
'    ';
    wwv_flow_api.g_varchar2_table(81) := '           </fo:block>'||unistr('\000a')||
'            </fo:static-content>'||unistr('\000a')||
'            <fo:flow flow-name="region-bod';
    wwv_flow_api.g_varchar2_table(82) := 'y">'||unistr('\000a')||
'               <fo:block xsl:use-attribute-sets="padding">'||unistr('\000a')||
'                  <fo:table start-i';
    wwv_flow_api.g_varchar2_table(83) := 'ndent="0.0pt">'||unistr('\000a')||
'                     <xsl:variable name="_XDOFOPOS2" select="number(1)"/>'||unistr('\000a')||
'         ';
    wwv_flow_api.g_varchar2_table(84) := '            <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||unistr('\000a')||
'                     #PRN_TABLE_C';
    wwv_flow_api.g_varchar2_table(85) := 'ELLS#'||unistr('\000a')||
'                     <fo:table-header>'||unistr('\000a')||
'                        <fo:table-row>'||unistr('\000a')||
'             ';
    wwv_flow_api.g_varchar2_table(86) := '              #PRN_TEMPLATE_HEADER_ROW#'||unistr('\000a')||
'                        </fo:table-row>'||unistr('\000a')||
'                  ';
    wwv_flow_api.g_varchar2_table(87) := '   </fo:table-header>'||unistr('\000a')||
'                     <fo:table-body>'||unistr('\000a')||
'                        <xsl:for-each s';
    wwv_flow_api.g_varchar2_table(88) := 'elect=".//ROW">'||unistr('\000a')||
'                           <fo:table-row>'||unistr('\000a')||
'                              #PRN_TEMPL';
    wwv_flow_api.g_varchar2_table(89) := 'ATE_BODY_ROW#'||unistr('\000a')||
'                           </fo:table-row>'||unistr('\000a')||
'                        </xsl:for-each>'||unistr('\000a')||
'';
    wwv_flow_api.g_varchar2_table(90) := '                     </fo:table-body>'||unistr('\000a')||
'                  </fo:table>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'  ';
    wwv_flow_api.g_varchar2_table(91) := '             <fo:block xsl:use-attribute-sets="text text_2 text_20">'||unistr('\000a')||
'                  <fo:inline i';
    wwv_flow_api.g_varchar2_table(92) := 'd="{concat(''''page-total-'''', $_SECTION_NAME, $_XDOFOPOS)}"/>'||unistr('\000a')||
'                  <fo:inline id="{conca';
    wwv_flow_api.g_varchar2_table(93) := 't(''''page-total'''', $_XDOFOPOS)}"/>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'            </fo:flow>'||unistr('\000a')||
'         </fo';
    wwv_flow_api.g_varchar2_table(94) := ':page-sequence>'||unistr('\000a')||
'      </fo:root>'||unistr('\000a')||
'   </xsl:template>'||unistr('\000a')||
'</xsl:stylesheet>';
 
end;
/

--application/shared_components/reports/report_layouts/test
begin
wwv_flow_api.create_report_layout(
  p_id => 7653715338878611 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_report_layout_name =>'test',
  p_report_layout_type =>'RTF_FILE',
  p_varchar2_table => wwv_flow_api.g_varchar2_table,
  p_xslfo_column_heading =>'',
  p_xslfo_column_template =>'',
  p_xslfo_column_template_width =>'',
  p_reference_id =>null,
  p_report_layout_comment =>'');
end;
/
 
begin
 
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version = ''1.0'' encoding = ''utf-8''?>'||unistr('\000a')||
'<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.o';
    wwv_flow_api.g_varchar2_table(2) := 'rg/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1';
    wwv_flow_api.g_varchar2_table(3) := '999/xlink">'||unistr('\000a')||
'      <xsl:variable name="_XDOFOPOS" select="''''"/>'||unistr('\000a')||
'      <xsl:variable name="_XDOFOPOS';
    wwv_flow_api.g_varchar2_table(4) := '2" select="number(1)"/>'||unistr('\000a')||
'      <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||unistr('\000a')||
'    <xsl:varia';
    wwv_flow_api.g_varchar2_table(5) := 'ble name="_XDOFOOSTOTAL" select="number(0)"/>'||unistr('\000a')||
'   <xsl:attribute-set name="padding">'||unistr('\000a')||
'      <xsl:att';
    wwv_flow_api.g_varchar2_table(6) := 'ribute name="padding-bottom">0.25pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0.25pt<';
    wwv_flow_api.g_varchar2_table(7) := '/xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="text">'||unistr('\000a')||
'      <xsl:attribute n';
    wwv_flow_api.g_varchar2_table(8) := 'ame="text-align">start</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="orphans">2</xsl:attribute>'||unistr('\000a')||
'     ';
    wwv_flow_api.g_varchar2_table(9) := ' <xsl:attribute name="start-indent">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="linefeed-treat';
    wwv_flow_api.g_varchar2_table(10) := 'ment">preserve</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>'||unistr('\000a')||
'     ';
    wwv_flow_api.g_varchar2_table(11) := ' <xsl:attribute name="end-indent">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-bottom">';
    wwv_flow_api.g_varchar2_table(12) := '0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribut';
    wwv_flow_api.g_varchar2_table(13) := 'e name="widows">2</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="align-left">';
    wwv_flow_api.g_varchar2_table(14) := ''||unistr('\000a')||
'      <xsl:attribute name="text-align">left</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attr';
    wwv_flow_api.g_varchar2_table(15) := 'ibute-set name="align-center">'||unistr('\000a')||
'      <xsl:attribute name="text-align">center</xsl:attribute>'||unistr('\000a')||
'   </';
    wwv_flow_api.g_varchar2_table(16) := 'xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="align-right">'||unistr('\000a')||
'      <xsl:attribute name="text-align';
    wwv_flow_api.g_varchar2_table(17) := '">right</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="footer">'||unistr('\000a')||
'      <xsl:a';
    wwv_flow_api.g_varchar2_table(18) := 'ttribute name="text-align">right</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="start-indent">5.4pt</xs';
    wwv_flow_api.g_varchar2_table(19) := 'l:attribute>'||unistr('\000a')||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>';
    wwv_flow_api.g_varchar2_table(20) := ''||unistr('\000a')||
'   <xsl:attribute-set name="text_2">'||unistr('\000a')||
'      <xsl:attribute name="start-indent">5.4pt</xsl:attribute';
    wwv_flow_api.g_varchar2_table(21) := '>'||unistr('\000a')||
'      <xsl:attribute name="end-indent">23.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:a';
    wwv_flow_api.g_varchar2_table(22) := 'ttribute-set name="text_20">'||unistr('\000a')||
'      <xsl:attribute name="height">13.872pt</xsl:attribute>'||unistr('\000a')||
'      <xs';
    wwv_flow_api.g_varchar2_table(23) := 'l:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set ';
    wwv_flow_api.g_varchar2_table(24) := 'name="text_0">'||unistr('\000a')||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set';
    wwv_flow_api.g_varchar2_table(25) := '>'||unistr('\000a')||
'   <xsl:attribute-set name="page-header">'||unistr('\000a')||
'      <xsl:attribute name="color">#PAGE_HEADER_FONT_CO';
    wwv_flow_api.g_varchar2_table(26) := 'LOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-family">#PAGE_HEADER_FONT_FAMILY#</xsl:attribu';
    wwv_flow_api.g_varchar2_table(27) := 'te>'||unistr('\000a')||
'      <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute na';
    wwv_flow_api.g_varchar2_table(28) := 'me="font-size">#PAGE_HEADER_FONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#P';
    wwv_flow_api.g_varchar2_table(29) := 'AGE_HEADER_FONT_WEIGHT#</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="page-f';
    wwv_flow_api.g_varchar2_table(30) := 'ooter">'||unistr('\000a')||
'      <xsl:attribute name="color">#PAGE_FOOTER_FONT_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(31) := 'ibute name="font-family">#PAGE_FOOTER_FONT_FAMILY#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="white';
    wwv_flow_api.g_varchar2_table(32) := '-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-size">#PAGE_FOOTER_FONT_SIZE';
    wwv_flow_api.g_varchar2_table(33) := '#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#PAGE_FOOTER_FONT_WEIGHT#</xsl:attribut';
    wwv_flow_api.g_varchar2_table(34) := 'e>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="body-font">'||unistr('\000a')||
'      <xsl:attribute name="hei';
    wwv_flow_api.g_varchar2_table(35) := 'ght">12.0pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-family">#BODY_FONT_FAMILY#</xsl:attribu';
    wwv_flow_api.g_varchar2_table(36) := 'te>'||unistr('\000a')||
'      <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute na';
    wwv_flow_api.g_varchar2_table(37) := 'me="font-size">#BODY_FONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#BODY_FON';
    wwv_flow_api.g_varchar2_table(38) := 'T_WEIGHT#</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="page-number">'||unistr('\000a')||
'     ';
    wwv_flow_api.g_varchar2_table(39) := ' <xsl:attribute name="height">13.872pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-s';
    wwv_flow_api.g_varchar2_table(40) := 'et name="header-font">'||unistr('\000a')||
'      <xsl:attribute name="height">#HEADER_FONT_SIZE#pt</xsl:attribute>'||unistr('\000a')||
'   ';
    wwv_flow_api.g_varchar2_table(41) := '   <xsl:attribute name="font-family">#HEADER_FONT_FAMILY#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(42) := '="white-space-collapse">false</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-size">#HEADER_FONT_SI';
    wwv_flow_api.g_varchar2_table(43) := 'ZE#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="font-weight">#HEADER_FONT_WEIGHT#</xsl:attribute>';
    wwv_flow_api.g_varchar2_table(44) := ''||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="border">'||unistr('\000a')||
'      <xsl:attribute name="border-to';
    wwv_flow_api.g_varchar2_table(45) := 'p">#BORDER_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-bottom">';
    wwv_flow_api.g_varchar2_table(46) := '#BORDER_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start-width';
    wwv_flow_api.g_varchar2_table(47) := '">#BORDER_WIDTH#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start-color">#BORDER_COLOR#</x';
    wwv_flow_api.g_varchar2_table(48) := 'sl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-start-style">solid</xsl:attribute>'||unistr('\000a')||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(49) := 'ibute name="border-end-width">#BORDER_WIDTH#pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-en';
    wwv_flow_api.g_varchar2_table(50) := 'd-color">#BORDER_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="border-end-style">solid</xsl:att';
    wwv_flow_api.g_varchar2_table(51) := 'ribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl:attribute-set name="cell">'||unistr('\000a')||
'      <xsl:attribute name="bac';
    wwv_flow_api.g_varchar2_table(52) := 'kground-color">#BODY_BG_COLOR#</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="color">#BODY_FONT_COLOR#<';
    wwv_flow_api.g_varchar2_table(53) := '/xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-start">5.15pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attrib';
    wwv_flow_api.g_varchar2_table(54) := 'ute name="vertical-align">top</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-top">0.0pt</xsl:at';
    wwv_flow_api.g_varchar2_table(55) := 'tribute>'||unistr('\000a')||
'      <xsl:attribute name="padding-end">5.15pt</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name=';
    wwv_flow_api.g_varchar2_table(56) := '"number-columns-spanned">1</xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>';
    wwv_flow_api.g_varchar2_table(57) := ''||unistr('\000a')||
'      <xsl:attribute name="padding-bottom">0.0pt</xsl:attribute>'||unistr('\000a')||
'   </xsl:attribute-set>'||unistr('\000a')||
'   <xsl';
    wwv_flow_api.g_varchar2_table(58) := ':attribute-set name="header-color">'||unistr('\000a')||
'      <xsl:attribute name="background-color">#HEADER_BG_COLOR#<';
    wwv_flow_api.g_varchar2_table(59) := '/xsl:attribute>'||unistr('\000a')||
'      <xsl:attribute name="color">#HEADER_FONT_COLOR#</xsl:attribute>'||unistr('\000a')||
'   </xsl:att';
    wwv_flow_api.g_varchar2_table(60) := 'ribute-set>'||unistr('\000a')||
'   <xsl:template match="/">'||unistr('\000a')||
'      <fo:root>'||unistr('\000a')||
'         <fo:layout-master-set>'||unistr('\000a')||
'        ';
    wwv_flow_api.g_varchar2_table(61) := '    <fo:simple-page-master master-name="master0" margin-left="66.6pt" margin-right="66.6pt" page-hei';
    wwv_flow_api.g_varchar2_table(62) := 'ght="#PAGE_HEIGHT#pt" page-width="#PAGE_WIDTH#pt" margin-top="36.0pt" margin-bottom="36.0pt">'||unistr('\000a')||
'     ';
    wwv_flow_api.g_varchar2_table(63) := '          <fo:region-before region-name="region-header" extent="54.0pt"/>'||unistr('\000a')||
'               <fo:region';
    wwv_flow_api.g_varchar2_table(64) := '-body region-name="region-body" margin-top="54.0pt" margin-bottom="54.0pt"/>'||unistr('\000a')||
'               <fo:reg';
    wwv_flow_api.g_varchar2_table(65) := 'ion-after region-name="region-footer" extent="54.0pt" display-align="after"/>'||unistr('\000a')||
'            </fo:simp';
    wwv_flow_api.g_varchar2_table(66) := 'le-page-master>'||unistr('\000a')||
'         </fo:layout-master-set>'||unistr('\000a')||
'         <fo:page-sequence master-reference="mast';
    wwv_flow_api.g_varchar2_table(67) := 'er0">'||unistr('\000a')||
'            <xsl:variable name="_PW" select="number(#PAGE_HEIGHT#)"/>'||unistr('\000a')||
'            <xsl:varia';
    wwv_flow_api.g_varchar2_table(68) := 'ble name="_PH" select="number(#PAGE_WIDTH#)"/>'||unistr('\000a')||
'            <xsl:variable name="_ML" select="number(';
    wwv_flow_api.g_varchar2_table(69) := '72.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_MR" select="number(72.0)"/>'||unistr('\000a')||
'            <xsl:variable na';
    wwv_flow_api.g_varchar2_table(70) := 'me="_MT" select="number(90.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_MB" select="number(90.0)"/>'||unistr('\000a')||
'    ';
    wwv_flow_api.g_varchar2_table(71) := '        <xsl:variable name="_HY" select="number(36.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_FY" selec';
    wwv_flow_api.g_varchar2_table(72) := 't="number(36.0)"/>'||unistr('\000a')||
'            <xsl:variable name="_SECTION_NAME" select="string(''master0'')"/>'||unistr('\000a')||
'   ';
    wwv_flow_api.g_varchar2_table(73) := '         <fo:static-content flow-name="region-header">'||unistr('\000a')||
'               <fo:block xsl:use-attribute-s';
    wwv_flow_api.g_varchar2_table(74) := 'ets="text text_2 text_0 #PAGE_HEADER_ALIGNMENT#">'||unistr('\000a')||
'                  <fo:inline xsl:use-attribute-se';
    wwv_flow_api.g_varchar2_table(75) := 'ts="page-header">#PAGE_HEADER#</fo:inline>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'            </fo:static-cont';
    wwv_flow_api.g_varchar2_table(76) := 'ent>'||unistr('\000a')||
'            <fo:static-content flow-name="region-footer">'||unistr('\000a')||
'               <fo:block xsl:use-at';
    wwv_flow_api.g_varchar2_table(77) := 'tribute-sets="text footer">'||unistr('\000a')||
'                  <fo:inline xsl:use-attribute-sets="body-font page-num';
    wwv_flow_api.g_varchar2_table(78) := 'ber">'||unistr('\000a')||
'                     <fo:page-number/>'||unistr('\000a')||
'                  </fo:inline>'||unistr('\000a')||
'               </fo:b';
    wwv_flow_api.g_varchar2_table(79) := 'lock>'||unistr('\000a')||
'               <fo:block xsl:use-attribute-sets="text text_2 #PAGE_FOOTER_ALIGNMENT#">'||unistr('\000a')||
'     ';
    wwv_flow_api.g_varchar2_table(80) := '             <fo:inline xsl:use-attribute-sets="page-footer">#PAGE_FOOTER#</fo:inline>'||unistr('\000a')||
'            ';
    wwv_flow_api.g_varchar2_table(81) := '   </fo:block>'||unistr('\000a')||
'            </fo:static-content>'||unistr('\000a')||
'            <fo:flow flow-name="region-body">'||unistr('\000a')||
'   ';
    wwv_flow_api.g_varchar2_table(82) := '            <fo:block xsl:use-attribute-sets="padding">'||unistr('\000a')||
'                  <fo:table start-indent="0';
    wwv_flow_api.g_varchar2_table(83) := '.0pt">'||unistr('\000a')||
'                     <xsl:variable name="_XDOFOPOS2" select="number(1)"/>'||unistr('\000a')||
'                 ';
    wwv_flow_api.g_varchar2_table(84) := '    <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||unistr('\000a')||
'                     #PRN_TABLE_CELLS#'||unistr('\000a')||
' ';
    wwv_flow_api.g_varchar2_table(85) := '                    <fo:table-header>'||unistr('\000a')||
'                        <fo:table-row>'||unistr('\000a')||
'                     ';
    wwv_flow_api.g_varchar2_table(86) := '      #PRN_TEMPLATE_HEADER_ROW#'||unistr('\000a')||
'                        </fo:table-row>'||unistr('\000a')||
'                     </fo:';
    wwv_flow_api.g_varchar2_table(87) := 'table-header>'||unistr('\000a')||
'                     <fo:table-body>'||unistr('\000a')||
'                        <xsl:for-each select=".';
    wwv_flow_api.g_varchar2_table(88) := '//ROW">'||unistr('\000a')||
'                           <fo:table-row>'||unistr('\000a')||
'                              #PRN_TEMPLATE_BODY';
    wwv_flow_api.g_varchar2_table(89) := '_ROW#'||unistr('\000a')||
'                           </fo:table-row>'||unistr('\000a')||
'                        </xsl:for-each>'||unistr('\000a')||
'        ';
    wwv_flow_api.g_varchar2_table(90) := '             </fo:table-body>'||unistr('\000a')||
'                  </fo:table>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'          ';
    wwv_flow_api.g_varchar2_table(91) := '     <fo:block xsl:use-attribute-sets="text text_2 text_20">'||unistr('\000a')||
'                  <fo:inline id="{conc';
    wwv_flow_api.g_varchar2_table(92) := 'at(''page-total-'', $_SECTION_NAME, $_XDOFOPOS)}"/>'||unistr('\000a')||
'                  <fo:inline id="{concat(''page-to';
    wwv_flow_api.g_varchar2_table(93) := 'tal'', $_XDOFOPOS)}"/>'||unistr('\000a')||
'               </fo:block>'||unistr('\000a')||
'            </fo:flow>'||unistr('\000a')||
'         </fo:page-sequen';
    wwv_flow_api.g_varchar2_table(94) := 'ce>'||unistr('\000a')||
'      </fo:root>'||unistr('\000a')||
'   </xsl:template>'||unistr('\000a')||
'</xsl:stylesheet>';
 
end;
/

--application/shared_components/reports/report_layouts/test1
begin
wwv_flow_api.create_report_layout(
  p_id => 7654209490911690 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_report_layout_name =>'test1',
  p_report_layout_type =>'RTF_FILE',
  p_varchar2_table => wwv_flow_api.g_varchar2_table,
  p_xslfo_column_heading =>'',
  p_xslfo_column_template =>'',
  p_xslfo_column_template_width =>'',
  p_reference_id =>null,
  p_report_layout_comment =>'');
end;
/
 
begin
 
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<fo:block font-size="14pt" font-family="verdana" color="red"'||unistr('\000a')||
'space-before="5mm" space-after="5mm">';
    wwv_flow_api.g_varchar2_table(2) := ''||unistr('\000a')||
'  W3Schools'||unistr('\000a')||
'</fo:block>'||unistr('\000a')||
''||unistr('\000a')||
'<fo:block text-indent="5mm" font-family="verdana" font-size="12pt">'||unistr('\000a')||
'  ';
    wwv_flow_api.g_varchar2_table(3) := 'At W3Schools you will find all the Web-building tutorials you'||unistr('\000a')||
'  need, from basic HTML and XHTML to ';
    wwv_flow_api.g_varchar2_table(4) := 'advanced XML, XSL, Multimedia and WAP.'||unistr('\000a')||
'</fo:block>';
 
end;
/

--application/shared_components/reports/report_layouts/test2
begin
wwv_flow_api.create_report_layout(
  p_id => 7654729460008786 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_report_layout_name =>'test2',
  p_report_layout_type =>'RTF_FILE',
  p_varchar2_table => wwv_flow_api.g_varchar2_table,
  p_xslfo_column_heading =>'',
  p_xslfo_column_template =>'',
  p_xslfo_column_template_width =>'',
  p_reference_id =>null,
  p_report_layout_comment =>'');
end;
/
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/copy_of_custom_scheme
prompt  ......authentication 6349363935092784
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 6349363935092784 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => ' Copy of CUSTOM SCHEME'
 ,p_scheme_type => 'NATIVE_CUSTOM'
 ,p_attribute_03 => 'blog_auth'
 ,p_attribute_05 => 'N'
 ,p_attribute_15 => '6349363935092784'
 ,p_invalid_session_type => 'LOGIN'
 ,p_logout_url => 'f?p=&APP_ID.:19'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'This custom authentication scheme is based on the username and password values stored in custom table.'
  );
null;
 
end;
/

--application/shared_components/security/authentication/html_db
prompt  ......authentication 582542080772876746
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 582542080772876746 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'HTML DB'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_attribute_15 => '582542080772876746'
 ,p_invalid_session_type => 'URL'
 ,p_invalid_session_url => 'f?p=&APP_ID.:101:&SESSION.'
 ,p_logout_url => 'f?p=&APP_ID.:1'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use internal Application Express account credentials and login page in this application.'
  );
null;
 
end;
/

--application/shared_components/security/authentication/database
prompt  ......authentication 582542163496876746
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 582542163496876746 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'DATABASE'
 ,p_scheme_type => 'NATIVE_DAD'
 ,p_attribute_15 => '582542163496876746'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use database authentication (user identified by DAD).'
  );
null;
 
end;
/

--application/shared_components/security/authentication/database_account
prompt  ......authentication 582542293187876746
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 582542293187876746 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'DATABASE ACCOUNT'
 ,p_scheme_type => 'NATIVE_DB_ACCOUNTS'
 ,p_attribute_15 => '582542293187876746'
 ,p_invalid_session_type => 'URL'
 ,p_invalid_session_url => 'f?p=&APP_ID.:101:&SESSION.'
 ,p_logout_url => 'f?p=&APP_ID.:1'
 ,p_use_secure_cookie_yn => 'N'
 ,p_comments => 'Use database account credentials.'
  );
null;
 
end;
/

prompt  ...plugins
--
prompt  ...load tables
--
--application/end_environment
commit;
commit;
begin 
execute immediate 'begin dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
prompt  ...done

prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.5'
,p_default_workspace_id=>64554023420237786494
,p_default_application_id=>251747
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MIKEARGU'
);
end;
/
 
prompt APPLICATION 251747 - Tech-TonIQ
--
-- Application Export:
--   Application:     251747
--   Name:            Tech-TonIQ
--   Date and Time:   17:26 Saturday October 26, 2024
--   Exported By:     MIKKE03@ICLOUD.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     21
--       Items:                   17
--       Computations:             3
--       Processes:                6
--       Regions:                 41
--       Buttons:                 28
--       Dynamic Actions:          7
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          4
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:             15
--       Security:
--         Authentication:         2
--         Authorization:          2
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--         LOVs:                   2
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.1.5
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MIKEARGU')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Tech-TonIQ')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TECH-TONIQ')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'23A7147417045D17DA8C108E8424850F39E220070EAE8F862954E715493317A9'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(64708928885544723335)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Tech-ToniQ'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Tech-ToniQ'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>16
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(64843745837441183879)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(251747)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(64708929639490723336)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(64709619085622723543)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(64709493427880723414)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_prub
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64607313357522533620)
,p_name=>'Credentials for prub'
,p_static_id=>'credentials_for_prub'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_ia
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64828713314910712958)
,p_name=>'Credentials for IA'
,p_static_id=>'credentials_for_ia'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_ia_tech
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64835432672587264455)
,p_name=>'Credentials for IA_TECH'
,p_static_id=>'credentials_for_ia_tech'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/app_251747_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64843745837441183879)
,p_name=>'App 251747 Push Notifications Credentials'
,p_static_id=>'App_251747_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/credentials/credentials_for_ia_1_0
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64857786200922720222)
,p_name=>'Credentials for IA-1.0'
,p_static_id=>'credentials_for_ia_1_0'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_ia_chula
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64879602239566629256)
,p_name=>'Credentials for IA-CHULA'
,p_static_id=>'credentials_for_ia_chula'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_ia_c4
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64896929983140742188)
,p_name=>'Credentials for IA-C4'
,p_static_id=>'credentials_for_ia_c4'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.aimlapi.com/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_geminy
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64926092240503310207)
,p_name=>'Credentials for Geminy'
,p_static_id=>'credentials_for_geminy'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://generativelanguage.googleapis.com/v1beta/models/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/credentials/credentials_for_gemini
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(64930860702625420037)
,p_name=>'Credentials for Gemini'
,p_static_id=>'credentials_for_gemini'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://generativelanguage.googleapis.com/v1beta/models/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/api_aimlapi_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(64607313600129533620)
,p_name=>'api-aimlapi-com'
,p_static_id=>'api_aimlapi_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_aimlapi_com'),'https://api.aimlapi.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_aimlapi_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_aimlapi_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_aimlapi_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_aimlapi_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_aimlapi_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_aimlapi_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_aimlapi_com'),'')
);
end;
/
prompt --workspace/remote_servers/generativelanguage_googleapis_com_v1beta_models
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(64926092527293310211)
,p_name=>'generativelanguage-googleapis-com-v1beta-models'
,p_static_id=>'generativelanguage_googleapis_com_v1beta_models'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('generativelanguage_googleapis_com_v1beta_models'),'https://generativelanguage.googleapis.com/v1beta/models/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('generativelanguage_googleapis_com_v1beta_models'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('generativelanguage_googleapis_com_v1beta_models'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('generativelanguage_googleapis_com_v1beta_models'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('generativelanguage_googleapis_com_v1beta_models'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('generativelanguage_googleapis_com_v1beta_models'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('generativelanguage_googleapis_com_v1beta_models'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('generativelanguage_googleapis_com_v1beta_models'),'')
);
end;
/
prompt --workspace/remote_servers/openai
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(64950287462922081744)
,p_name=>'OpenAI'
,p_static_id=>'HCM_OPENAI'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('HCM_OPENAI'),'https://api.openai.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('HCM_OPENAI'),'')
,p_server_type=>'GENERATIVE_AI'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('HCM_OPENAI'),'')
,p_credential_id=>wwv_flow_imp.id(64828713314910712958)
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('HCM_OPENAI'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('HCM_OPENAI'),'')
,p_prompt_on_install=>true
,p_ai_provider_type=>'OPENAI'
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('HCM_OPENAI'),'gpt-4o')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('HCM_OPENAI'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('HCM_OPENAI'),'')
);
end;
/
prompt --application/shared_components/data_profiles/ia
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'IA'
,p_format=>'JSON'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64828713845790712959)
,p_data_profile_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'PATH'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64828714152892712959)
,p_data_profile_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'MESSAGE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64828714424427712959)
,p_data_profile_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'REQUESTID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'requestId'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64828714712288712960)
,p_data_profile_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'TIMESTAMP'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY"-"MM"-"DD"T"HH24":"MI:SS.FF9TZR'
,p_has_time_zone=>true
,p_selector=>'timestamp'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64828715091130712960)
,p_data_profile_id=>wwv_flow_imp.id(64828713674173712959)
,p_name=>'STATUSCODE'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'statusCode'
);
end;
/
prompt --application/shared_components/data_profiles/ia_buena
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'IA_Buena'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831406603456138504)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831406992600138504)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831407252187138504)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831407523809138504)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831407860489138505)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64831408120386138505)
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/ia_tech
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'IA_TECH'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835433136354264456)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835433405083264456)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835433762293264457)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835434070703264457)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835434346999264457)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64835434672180264457)
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/ia_1_0
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'IA-1.0'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857786705737720231)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857787064730720232)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857787373540720232)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857787687876720232)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857787981899720232)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64857788228207720232)
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/ia_chula
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'IA-CHULA'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879602715323629257)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879603054760629257)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879603338508629257)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879603601578629257)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879603919901629258)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64879604223966629258)
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/ia_c4
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'IA-C4'
,p_format=>'JSON'
,p_row_selector=>'choices'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896930476982742191)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896930790294742192)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'MESSAGE_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896931058091742192)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'MESSAGE_CONTENT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.content'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896931313733742192)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'MESSAGE_REFUSAL'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'message.refusal'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896931694236742192)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'LOGPROBS'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'logprobs'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64896931970890742192)
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_name=>'FINISH_REASON'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finish_reason'
);
end;
/
prompt --application/shared_components/data_profiles/geminy
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64926092743306310211)
,p_name=>'Geminy'
,p_format=>'JSON'
,p_row_selector=>'error.details'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64926092934995310211)
,p_data_profile_id=>wwv_flow_imp.id(64926092743306310211)
,p_name=>'C_TYPE'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'"@type"'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64926093299093310212)
,p_data_profile_id=>wwv_flow_imp.id(64926092743306310211)
,p_name=>'DOMAIN'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'domain'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64926093509820310212)
,p_data_profile_id=>wwv_flow_imp.id(64926092743306310211)
,p_name=>'REASON'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'reason'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64926093837467310212)
,p_data_profile_id=>wwv_flow_imp.id(64926092743306310211)
,p_name=>'METADATA_SERVICE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'metadata.service'
);
end;
/
prompt --application/shared_components/data_profiles/gemini
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'Gemini'
,p_format=>'JSON'
,p_row_selector=>'candidates'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930861211236420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'INDEX_'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'index'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930861557767420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'CONTENT_ROLE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'content.role'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930861843028420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'CONTENT_PARTS'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'content.parts'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930862188498420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'TEXT'
,p_sequence=>4
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(64930861843028420040)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'text'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930862460801420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'FINISHREASON'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'finishReason'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930862792124420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'SAFETYRATINGS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_selector=>'safetyRatings'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930863070267420040)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'CATEGORY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(64930862792124420040)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'category'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(64930863397229420041)
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_name=>'PROBABILITY'
,p_sequence=>8
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(64930862792124420040)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'probability'
);
end;
/
prompt --application/shared_components/web_sources/ia_buena
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64831408585772138505)
,p_name=>'IA_Buena'
,p_static_id=>'ia_buena'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64831406560594138504)
,p_remote_server_id=>wwv_flow_imp.id(64607313600129533620)
,p_url_path_prefix=>'/chat/completions'
,p_credential_id=>wwv_flow_imp.id(64607313357522533620)
,p_version_scn=>15585915880500
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64831409170651138506)
,p_web_src_module_id=>wwv_flow_imp.id(64831408585772138505)
,p_name=>'PROMPT'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'hi!'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64831409567791138506)
,p_web_src_module_id=>wwv_flow_imp.id(64831408585772138505)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64831408795027138505)
,p_web_src_module_id=>wwv_flow_imp.id(64831408585772138505)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"model":"gpt-4o","messages":[{"role":"user","content":"#PROMPT#"}],"max_tokens":512,"stream":false}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/ia_tech
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64835434984397264457)
,p_name=>'IA_TECH'
,p_static_id=>'ia_tech'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64835432920090264456)
,p_remote_server_id=>wwv_flow_imp.id(64607313600129533620)
,p_url_path_prefix=>'chat/completions'
,p_credential_id=>wwv_flow_imp.id(64835432672587264455)
,p_version_scn=>15585917786801
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64835355623994968691)
,p_web_src_module_id=>wwv_flow_imp.id(64835434984397264457)
,p_name=>'IA_CHIDA'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64835435552085264458)
,p_web_src_module_id=>wwv_flow_imp.id(64835434984397264457)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64835435125213264458)
,p_web_src_module_id=>wwv_flow_imp.id(64835434984397264457)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"model":"gpt-4o","messages":[{"role":"user","content":"#PROMPT#"}],"max_tokens":512,"stream":false}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/ia_1_0
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64857788501550720235)
,p_name=>'IA-1.0'
,p_static_id=>'ia_1_0'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64857786519342720225)
,p_remote_server_id=>wwv_flow_imp.id(64607313600129533620)
,p_url_path_prefix=>'chat/completions'
,p_credential_id=>wwv_flow_imp.id(64857786200922720222)
,p_version_scn=>15585929716551
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64857789108698720238)
,p_web_src_module_id=>wwv_flow_imp.id(64857788501550720235)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64858279366077028722)
,p_web_src_module_id=>wwv_flow_imp.id(64857788501550720235)
,p_name=>'IA-0.01'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64857788768883720237)
,p_web_src_module_id=>wwv_flow_imp.id(64857788501550720235)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"model":"gpt-4o","messages":[{"role":"user","content":"#PROMPT#"}],"max_tokens":512,"stream":false}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/ia_chula
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64879604562965629258)
,p_name=>'IA-CHULA'
,p_static_id=>'ia_chula'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64879602577165629256)
,p_remote_server_id=>wwv_flow_imp.id(64607313600129533620)
,p_url_path_prefix=>'chat/completions'
,p_credential_id=>wwv_flow_imp.id(64879602239566629256)
,p_version_scn=>15585937186414
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64879380683330337245)
,p_web_src_module_id=>wwv_flow_imp.id(64879604562965629258)
,p_name=>'IA-Chula1'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64879605194133629259)
,p_web_src_module_id=>wwv_flow_imp.id(64879604562965629258)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64879604727676629258)
,p_web_src_module_id=>wwv_flow_imp.id(64879604562965629258)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"model":"gpt-4o","messages":[{"role":"user","content":"#PROMPT#"}],"max_tokens":512,"stream":false}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/ia_c4
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64896932247254742192)
,p_name=>'IA-C4'
,p_static_id=>'ia_c4'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64896930299522742191)
,p_remote_server_id=>wwv_flow_imp.id(64607313600129533620)
,p_url_path_prefix=>'chat/completions'
,p_credential_id=>wwv_flow_imp.id(64896929983140742188)
,p_version_scn=>15585942862381
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64896932826179742193)
,p_web_src_module_id=>wwv_flow_imp.id(64896932247254742192)
,p_name=>'Content-Type'
,p_param_type=>'HEADER'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'application/json'
,p_is_static=>true
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64896947693505746333)
,p_web_src_module_id=>wwv_flow_imp.id(64896932247254742192)
,p_name=>'IA-C4'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64896932463277742193)
,p_web_src_module_id=>wwv_flow_imp.id(64896932247254742192)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "model": "gpt-4o",',
'  "messages": [',
'    {',
'      "role": "user",',
'      "content": "Quiero que me respondas de forma correcta y concisa todas las preguntas de algebra matematica."',
'    }',
'  ],',
'  "max_tokens": 512,',
'  "stream": false',
'}'))
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/geminy
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64926094174033310212)
,p_name=>'Geminy'
,p_static_id=>'geminy'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64926092743306310211)
,p_remote_server_id=>wwv_flow_imp.id(64926092527293310211)
,p_url_path_prefix=>'/gemini-1.5-flash-latest:generateContent'
,p_credential_id=>wwv_flow_imp.id(64926092240503310207)
,p_version_scn=>15585950373994
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64926094788437310215)
,p_web_src_module_id=>wwv_flow_imp.id(64926094174033310212)
,p_name=>'generateContent'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'AIzaSyAZD4p40wsRPJd5IcqUGV1l59yo_pvPDmI'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64926095152810310216)
,p_web_src_module_id=>wwv_flow_imp.id(64926094174033310212)
,p_name=>'key'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'YOUR_API_KEY'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64926094378728310215)
,p_web_src_module_id=>wwv_flow_imp.id(64926094174033310212)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/gemini
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(64930864286216420042)
,p_name=>'Gemini'
,p_static_id=>'gemini'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(64930861019533420039)
,p_remote_server_id=>wwv_flow_imp.id(64926092527293310211)
,p_url_path_prefix=>'gemini-1.5-flash-latest:generateContent'
,p_credential_id=>wwv_flow_imp.id(64930860702625420037)
,p_version_scn=>15585952868320
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64930864876447420043)
,p_web_src_module_id=>wwv_flow_imp.id(64930864286216420042)
,p_name=>'generateContent'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>':generateContent'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(64930900571516423288)
,p_web_src_module_id=>wwv_flow_imp.id(64930864286216420042)
,p_name=>'PROMPT'
,p_param_type=>'BODY'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(64930864488178420042)
,p_web_src_module_id=>wwv_flow_imp.id(64930864286216420042)
,p_operation=>'POST'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_request_body_template=>'{"contents":[{"parts":[{"text":"#PROMPT#"}]}]}'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64708929639490723336)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15585955582801
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64709629647962723554)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64857352649693987793)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Configuraci\00F3n')
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64709629647962723554)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64857693568547709034)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Administrar cuenta'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(64857352649693987793)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64741790354819970567)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Test'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ai-sparkle-generate-document'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64776253127990613172)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Grupos'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64778228099837972928)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Curso Matematicas'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64785873673034187076)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Algebra'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64788379015595966283)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Trigonometria'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cards'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64804685828366303540)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'VisualPage'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64809282774720390614)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'AuditivoPage'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64811155990212440589)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'KinePage'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64812492846327472756)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'LecPage'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''admin'''
,p_list_item_disp_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_imp.id(64709622631508723548)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64838408271117360916)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Reporte Semanal'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64946567666047685356)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Thonny-Bot'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-chatbot'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64709619085622723543)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15585928655598
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64709631148156723556)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64709631687515723557)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(64709631148156723556)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64709632083648723557)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(64709631148156723556)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64786200739249876014)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(64786162445113875978)
,p_version_scn=>15585908224624
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(64843742780491183873)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(64843739191622183867)
,p_version_scn=>15585921426111
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(64843743142787183875)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(64843738835837183866)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000003274944415458479D574D4F5A41143D93F7480D094DFC0DF5171857F6273C9312D9B8905A1290C4954D8D6C2A21EED912292B48';
wwv_flow_imp.g_varchar2_table(2) := 'D4A5AEDCD0DF201BD7BA070CA90112A009CDBCCFF99E6767F5DE9B997BCFBDF7CCB9F30880356C8344ABE207DB0E693ED829EFD7584CE78880609D02BF8C36B11F3ED91D4A5B52E680B52C792134843425A0CBC83A59C99624FEAE30257EB22ED1C231E1';
wwv_flow_imp.g_varchar2_table(3) := 'A47374A8A864F5186420651A80F424D217287246888FD95CDAFFC9886F38CC064700E63B034F9D019563EE9B29ED29D9192E33C4F88E23267094DAD61936F2323D17A2280325D051D09A0B0ADC7C0C2D326143CCF2016AB0DC123B7519C4EF3C3FA2EDC8';
wwv_flow_imp.g_varchar2_table(4) := '7110832C51E9F489B5CAD8D07158552A6EDBC5C54F6C6D7D82E3B8787A7AC2CECE0E66B3995FE5EFA7A7984C2668341A68B55A180E871CEECFBBBB705D178EEBA252AE60B95AC6F01CC741BFDF47AFDBE37A072D8A003678A51B1E1E1E707070E03B8D46';
wwv_flow_imp.g_varchar2_table(5) := 'A150C0D98F333CBF3C63B15804E45BAFD16EB7B1B9B9896C368B72B98C7CFE0B56ABBF497E08C1EF7E1F85FD7DFC797BE398C70360DE3A9D0E2A950A57BA5EAF879393132C572B1F391DB95C0ECD66133737D7C8E53EA2F4AD046FCF93E874777787E3E3';
wwv_flow_imp.g_varchar2_table(6) := '638C46236E4EAE7EA090E8FC92015C5E5EA25EAF8310E2471E8DABAB2B5007144CA95482E779D2F9A2F334A0F1781C6C531FB0048F2A03310081A211808D8D0F383C3CC4F9790DF3F93C06E83A0EAE6F6FB1E779984EA7EA0C70B20DE0EBD111BABD2ED7';
wwv_flow_imp.g_varchar2_table(7) := 'E4F2F93CEEEFEFB908E84BB158C4E3E3A34FC2D7D757D46A35643299D8D1F6F636AAD52A068341F82DEE4861222C7AC31754C95BE392231A4CB72B00572940022CD535C5E8558895297BBC8DBAD34A90B1DFD954300E246CC1627D996E2D4BB152C6F85E';
wwv_flow_imp.g_varchar2_table(8) := '1E8013BAA598BD10A4BF4A17A6B11949516AB4D6960DB64E31D712F089556D31244D114AAFBEE998D5861149B9EBA86A209D3C037B82293AE46BAA9C45E9002A2990B63772F615372A459615FE12FCF1644416FB4F5CBADC328679002C93FD1C2A2E7B16';
wwv_flow_imp.g_varchar2_table(9) := '4ABC775A5F709325E52EE1CA65B0AC9185C8A3E260E859658019D8493483A7A5281BF12F12FB0BA8E07E70B59416C908FD964DCF818537FF008718641C31689E870000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64709620172225723546)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE900000EAC49444154785EED9D69A855551BC79FEB900391232848E68016392288A9385C51481C2BC52F49DEEB88A6681658E21091FAC5';
wwv_flow_imp.g_varchar2_table(2) := '89D20FE22C889A5F4C0D4929154D894A54C409B437C5790A4D73BCEFFDAF7B8E9D7BCFD967AF71AFB5F7590B8EF7AA6B78D6FFF9AD670D7B9D738A8A88A88CFD413E79058415003A3E7905A415F000F9E82B0D0F0A7A8094E4335038664017C5CC5E031E';
wwv_flow_imp.g_varchar2_table(3) := 'F355AA28E05804F238AB38D346591F814254378DB4E9FA4D43E5580432DD5D5FBF6E053C40BA152DB0FA0A730A8BFBBC9109A9E5BEF8081414312C3B262E81CC0314174F89DA19D100880D4011E921EA26FBF92D0B131B80F27ACAB288F629B267818B00';
wwv_flow_imp.g_varchar2_table(4) := '352222BC901A67FC8EBFA7FFFDA5620966E73611E185742BF533F3DFEC5193D1B20B00B520A23144D48788FA3AA18ADB46FC59AED37E22FA5FEA277EB7966C6DE301CA472970043BAF39E68856279A5FB07781D983DB0550485F12D17A5DCDF1D6C31F81';
wwv_flow_imp.g_varchar2_table(5) := 'F408373F050EA28EC1A4C7585E03A36D2DAF55806943790EE81C49E288405AE44187E645D223DF0814880C24FE08C4ED982CE07EF66B1B6EF17467C4B466261AA5DC6C00A0971A609A5AE7E1A9D0434B1C97C30BD1A8381595E46AC853CA1440582423F2';
wwv_flow_imp.g_varchar2_table(6) := 'F8E4860280C8C822DB0440883C17DDD0CD5B91A1809148A400506050E65FF3588CEBA168B96C5BA8F1811900514BF9E2D92539766142CDF1C32354ADCFAC51019C1595E8AA4F2102659990C0AD3A4F18E2C9A3CB5DA97AD49B0440D2878E99CDEB0408EB';
wwv_flow_imp.g_varchar2_table(7) := '1EC307841C8E501797A391D867D13695650324E7003CCBC296DD4E92B339525B1D3451290AA5C5AB04904227DD883E9122C1D99882A89C2DC866D31285744C6111441F77BD20EB3D47CAE18051E969BE0E80FCCECB111A24CC003C80483AE900C87F308C';
wwv_flow_imp.g_varchar2_table(8) := 'B4FCD60B2A4F63AA0045307D591759CD0081D95720ABBC4D598D14151395494F631E207957C4A064089215FFADF4C45E15206CDD11857C8AAF02F9D7411C0CAA743DD6DBF748A60C1575A329ABB40E527D16E617D0D138D9742B78F74BFA1D20426DA94C';
wwv_flow_imp.g_varchar2_table(9) := '616D89E8AC506B31C95C8091E94D223A27E31E15807A10D1619946C5CB14A04BC54552291123803816657E5E546121A46C6EFD7B12D12F32ADC62402C974CD971150C00A404388E87B01237D56CD0A689CD88712D14E19F35422903F859651DCCD321E20';
wwv_flow_imp.g_varchar2_table(10) := '37FD121BABA4EF06F147A0EC7819AF08A421DE6BA8C22A5179EC8F00A0ECAEE70728EE6A5B7575E48D3B0850E41AF8064514A832BE3D4022E2F9BC590AC8031434D370CC40F15A03796AF229200F9082AE1E2005F11C2BEA0172CC217133471CA0D414C5';
wwv_flow_imp.g_varchar2_table(11) := 'BF8D17DD85C54DC2C2B6571CA0945E2AF781923185712CF694D8325DBF92712F0BCB03A4D07E32005210405B51FB907980789D69DF57BC96E6CE67C87E0F909A5B0ABEB407C80C0286C6BB1963556A2DA1225A4F1237F91CD885697092862A54D44F40D9';
wwv_flow_imp.g_varchar2_table(12) := '9008142CB05E80BC23CDB164565B3F8559FD20DD506CCC7A3FB4F9F00C1EA0708D027238EF5BE99E8914741FA00E1D3A508B162DA8881D5D66A767CF9ED1F5EBD7E9F8F1E384DFD309F91B376E4C6FBFFD36BDF6DA6B81E59F3C7942070E1CA0478F1E65';
wwv_flow_imp.g_varchar2_table(13) := '559E66A4478F1ED4A85123BA74E9126BA7AC4C62D598C376F4AB53A74EF4F7DF7FD3FEFDB93FA720DD877AF5EA05F621C8E32F5EBCA0FBF7EFD3C99327E9CE9D3B2260F0E6751FA0458B16D1D8B163A95AB56A553A052716316800D0AFBFFE4A9B366DA2';
wwv_flow_imp.g_varchar2_table(14) := '83070F32077FFCF1C7F4EEBBEF5602A8A244E574EFDE3DEAD5AB175DB9722550B49D3B7752F7EEDD69F3E6CD347DFA7482635413001F3D7A342D5BB68CCE9C3943803433D5AE5D9B468D1A45EFBDF71E6110D5AB579F02C650A029D0210DD0DEBD7B69ED';
wwv_flow_imp.g_varchar2_table(15) := 'DAB5F4CF3FFFA89A9E59DE7D80962F5F4E93264DCA0150453FAA57AFCE4626C4BA78F12203E7C30F3FA4E1C38753DDBA75599EE7CF9F07468DBB77EF52972E5DE8F2E5CB81C2223AF4EEDD9BD6AD5B47E3C78FD70650696929AD5EBD9A4E9D3A45EDDBB7';
wwv_flow_imp.g_varchar2_table(16) := 'AFD4FEAC59B3E88B2FBEA0575F7D95F52F5F1F820CC7A04B0FBC870F1FD2FAF5EBE9D34F3FCD196D25A9720920F945454949092D58B0809A366DCA4081E0884C18759F7CF2091BE12A296A801079B66CD9428F1F3F669175CC983174E1C205A92EB46DDB';
wwv_flow_imp.g_varchar2_table(17) := '9641DAAD5B377AE5955768C68C19F4CD37DF30203524970052EB4EBB76ED68DBB66D6CCA42C2743679F2647AF0E08174C5F5EBD7A756AD5AD19A356BD85A65CF9E3DB464C912EEFA9E3E7D4A376EDCA0F3E7CF575A9FA102409E2B0261ADF5DB6FBFD1EB';
wwv_flow_imp.g_varchar2_table(18) := 'AFBF4EDF7DF71D9B323145AB24446944F22953A6D01F7FFC4103070E64766948C901A8468D1A0C98C58B173367B56CD992AE5DBB26AD519F3E7D98F300509B366DA84E9D3A846900531E4F42244C0384290A53D2CD9B375F160D0268F0E0C1B471E346D6';
wwv_flow_imp.g_varchar2_table(19) := '8761C386D1912347789A0BCDD3BA756B3A74E8108BD298B28F1D3B165A86234372004267478E1CC9D62908FD4D9A34C91AF51C82B02C5847CD9F3F9FEDBC7424C08491FFFEFBEFD35F7FFDC5AA044025A5A5B4A6CA1A086B2C4439EC9A10F5B0C8CF4EE2';
wwv_flow_imp.g_varchar2_table(20) := 'D33DFAB27DFB76EADBB72F0D1E348876FFF00367D7F25E5E1607C8DA85320ECD468C185109A0E7CFB15B12DB72C3693FFEF8233B02C028C5DAEAE8D1A3526B062CE2B17EC1D40107EEDEBD9BFDFDD6AD5B8153D8C489135914459ECE9D3B0700C4E9FB8C';
wwv_flow_imp.g_varchar2_table(21) := '6C0D1B3664EBAA010306D0D0A143093B4B0D491CA054A3EA8F3218101C5408F4321B20B18522B6CEAB56AD62BB382CBCF11391235FE2E901B6EB98966EDFBECD00DAB56B573840B76F51E74E1EA05CDA1BBB50A60A50F3E6CDD956B7B8B898A64E9D4ADF';
wwv_flow_imp.g_varchar2_table(22) := '7EFBAD00BEC159B195C6F954CF9E3DE9B3CF3E63673FD805E55A4423022D59BC986E3A1A81227D5F58C0E87416A0B7DE7A8B4D81EFBCF30E3B38C4D4A52B614D356FDE3C363DCD993387FEFDF7DF4A007568DF9E4DB62FA7B0A447209ED01D20BED30021';
wwv_flow_imp.g_varchar2_table(23) := '02E1CC042F9CC1E84A3814FCFAEBAF69E9D2A5347BF6EC2C80D207897E0D14BE60D0045036C2AA53182290074868C8585C440BD9C997D90314AC53F276617C4C70E7423CFA206B1B2FB60B7321024D983081AD93B063D3BD8DDFBA752BF5EFDF9F860C19';
wwv_flow_imp.g_varchar2_table(24) := 'C276821A928F40EC502F755AA413A0AA132CEF1A08878D78748245367683AACFF1D290BCF1C61B74F8F0616AD6AC99CEF59D07287314E6044861B79059372F407030B6FC7038AE8FE0E127A2914AAA59B3265BB86317881B0B384EB87AF5AA4A95E9B21E';
wwv_flow_imp.g_varchar2_table(25) := 'A0508074C84CC4AE66F0ECC2D0DCB469D3D8C34F3C77C38931CE8D641FA8E2D917A6451C8AE279DE575F7D450B172E648F7B342477019219F8F15A443FA2D2D2B139EF03D5AA558B458BCF3FFF9C1D382202E1C1AC688286356AD6648F65F0EC6DC78E1D';
wwv_flow_imp.g_varchar2_table(26) := '346EDC38E588966187BB00898A85FC787ABD72E54A36BAF0045DF4CE0BEECEA07CD7AE5DA95FBF7EF4FBEFBFCB9891B3CCCC993369EEDCB9B462C50A1605B0C6C1230EDCCD397DFA343BBCCC4C987670528D93EB060D1AB08B73BC09B0E01A2F6E4EE206';
wwv_flow_imp.g_varchar2_table(27) := '225E3FFDF413BBAD80EBB32CC98CD06C03920510EED0C0F9100EA34DF4EE324447798CD87DFBF6E91CA9EC9E52C78E1DE9ECD9B374E2C4090637AE58A03D3C71C75DA35C095310CAE16E52FAE66530481554E0E2D8860D1B58BDD8D1E129FCB973525F69';
wwv_flow_imp.g_varchar2_table(28) := '11C66CB2000AEB6DA1FC3FD63AB80B8D75131EDEE266A6A1E40132246CFE6A43A60FD5D9A54EED3A74FF8107C88A6F93D028AEA5609B8E0884750FD63F86928F40BCC2AA4605DE7674E4C3827BD0A0416C33814B719AEE3FE732CD03A4C361055C877D80';
wwv_flow_imp.g_varchar2_table(29) := 'E234B20B1894A0AEDB07C83B25D60AA400120F03EA77A2B97513378EBB6A9F5155011F815415B453DE9941E501B20340325A2D222A29235A2FD39B08A73019F37C998814F0112822A193DA4CF2017266B5900884B2D4340950A0EB04BFB1D023E0307B26';
wwv_flow_imp.g_varchar2_table(30) := '010AECB6A6B7F5382C6B624D8B340279809CE6289385D4EF12B1BE902290843C4E13E08471850490138227CD080F50D23C1A717FAC00348488BE8FB8A3BE39330AC41920C3F742CD089EB45A871251958F3AE35B6BAA3CCAC0276A1F567A5B099F8D4973';
wwv_flow_imp.g_varchar2_table(31) := '968BFDE94944BFC818A60E904CABBE8C1505F28C572B00B525A2B35694F08D722AC01DE2DF2422A9379CA944200F107323B793389D5E912D77AD66DA22222B00E1C3976F09A9A29AD9987EAA8619E34883615C55342622A98F0E518940B02CF5E1CD2E7B';
wwv_flow_imp.g_varchar2_table(32) := '964B407399229246B119690EA40BA614FF9988FA9A53DF7ECD418E517498FD8EFD67016E22E21C482A71009457AAF9E551689E54CB018512E4189DB298AC4BFA1031BD5653310ED10751A8005262D16E49447FCA3A907D799ED8B750FCD75411518BB222';
wwv_flow_imp.g_varchar2_table(33) := 'BA285D81ACD58E9553D1D081AE70CC42415616657D73A44C7F12BF0E9211C54A19F1A7424AEB1F1D5318EAD03F8DC57C485B8147AED1E272FFE5FE9660CEFA14C257A5167C14E2143C5FB688C70DD63D58FF28255D00F9FBD14A6EB0525869F795B65817';
wwv_flow_imp.g_varchar2_table(34) := '402D52BB31FC8C30453C6623EC59044D69F1BD964A529DD51C853C1C0621FAB2BC6E9CE129279D00C19875E5670A0029B949946BD1FCE695C3A2198B672D49374098C20051A21F6F6851DE4E253916CE6A84AB0394DD3E20BA68479F78B7AAE64AAEBE2B';
wwv_flow_imp.g_varchar2_table(35) := '6FDBABB6120090725734AF87B8C449502665FD2B6B51519D7678D08889089436DED2CE2C411CE9E90AA62D6CD9950E0CB34C4931AE0E50FE4E022244238D4FEC8346A7E651ABC779B66BC9BF606692A9E9661AA0B480D8327E4444119F13D9F69FB5F611';
wwv_flow_imp.g_varchar2_table(36) := '753694B7AE65AB9EAF175101041B000F766700C9B95D9ADA38B4064AD586230327DD703640D1288969CD499064508846B2BC96011C1C0E4A7CCEA1B8F5992594EE03E5EE929041884AE9579FC41C420A49208C2C60C1EB406A612CB638D66C5B94535886';
wwv_flow_imp.g_varchar2_table(37) := '52797B81777BE08584770B2065FE9BB0E2312C90F90E09FC9E7EF78BD47BB74CF6DF124026BB5428756B0E2592B2C5122037A493543C57B11877C8084031D683B937EEF66B443BB42A230085B66A31837E38F4D768511EC1A6F55CAA176CB4D0B3270BB8';
wwv_flow_imp.g_varchar2_table(38) := '4A1128595D730454D3A29AAE3F44C6829BC28C6165D991CAFD92B4DF03A4AC7C6157E0004092E817B6DFAAF4DE9E860E00E44988B3021E2017BC672F80289F7B197898CAE711CB9AF119E973852AE0700472033137AC08F5A3B50CC6010A7740780E6BEA';
wwv_flow_imp.g_varchar2_table(39) := 'F8864315F83F99E6E5DE05DF4CBA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64709620480948723546)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000010FB49444154785EED9D77EC9DE31BC6EF2F5A45AD2208122B76C48C4D6B445A5B8488191AB15BAD552B24884DED4D8404316244';
wwv_flow_imp.g_varchar2_table(2) := '4BAC90881145CCD862EFBD5BFDE57ADB737E679F67AF733DFF357D9E7B7CAEFB7ED779DFE73B2422B38583040694C090EF06F0EE2013E1C82101A13A88E05917CFE61360CA10F226E0AC429D19CA9BA752F464A584C97A920A679539D6812819308AC468';
wwv_flow_imp.g_varchar2_table(3) := '9152389C148B40584DC37A8BC5947E49A00B01364032A5E15F0AF71EDC5B0C2D47C219241C5A6895E8AF33010725E2C0443AEA64954CB760B34A221DED4D2321EE3EE43A0322B6766C7932C9336AD376E73A12682130000D1028C5406E58C16E095036B7';
wwv_flow_imp.g_varchar2_table(4) := '3C692D33026E1BC0ADB5CC502A844B3E0A901C4CD1E0AC31D541603441028911306B00B35589A5CE70484084A51CA80A8C401B2D0A94505437EEC0B8B31415089D9380190136801937FB55246FCFD081052B19AC163B08DEC4448E319BE4C935DD083457';
wwv_flow_imp.g_varchar2_table(5) := '00EB819532D004D800032D3F93670314510394D15446923325C77545106003142123933025C0063025C7751911E85EE6DA0DA0BD20294CF1A20FE939A4AFA4E46D0A468D82DAAC74B3CC3C32E28F2D605005823A8B4D7690FC672C6CC6A10F528531575F';
wwv_flow_imp.g_varchar2_table(6) := '049A1A80DDE00B7348BB5451873669E9D01AF4B905564B81290D7A95169EBFE38A756CAE70F84CAF38026C808424A518E1C520F3F0CCE93121027935405ED126243343E9462052494572CB3A208116029A95A839BD076E7796A8695F0284DD1511D1F4AD';
wwv_flow_imp.g_varchar2_table(7) := '1EBB4386AE79CEF75192DD6DFAF0460DA312A0A43AF8494B875697B9E9424C373207D89D98C8925096413B918B465C13602DB9264A7B5911600364251783754D800DE09A28EDA545A04F85B301D2928BD1042610B00102BA0A0C91EEF225C0AACC573B46';
wwv_flow_imp.g_varchar2_table(8) := 'EE80001BC001C43613D654AD0DF8C8AA489B241D4856820E045AD34DBB2E544A1361E374C2B380176529158B823D23A7855788527A4A933C681ACBAF875468325102563566B5382920E5649214D6E48319E29F494D5E2306A84F40E378A631553F8EE82B';
wwv_flow_imp.g_varchar2_table(9) := '3C66E7D174746C8314803F1DFD591E247D98AB6702E99769FA117A9688E67D126079E9D2CD9D58EEF1EBEAD5673E7138064A73E913682CFA4C1A209330BD68EF20770726BCA4968051B7681C587360E2FF58DB8C65D8FB091449C92138ADB7924131B732';
wwv_flow_imp.g_varchar2_table(10) := '09B001CAD49559291260032882529B469C6A9C5467E15585D9325B75BAC1BC688A45736C00894BCA25E0B60E1D587360C2A15A6945E330319A9A4B800AE75E0A54D04AC1DEF812859B68585642845D4C8235DE2411B6F2E82D31026C80C40449229C01AA';
wwv_flow_imp.g_varchar2_table(11) := '8A014A3589D2F214440632261A62A26179AA139A258116026C0096C44013600318CA4F700AE03280E43944CFE61534F035A5DCCCCC89E5C824C798CD15E24A121069DA0AC569030C0D0DC9ECD93E5F5DA27EFD08A4A781D312EB97BEF6FFB7476719EF1B';
wwv_flow_imp.g_varchar2_table(12) := '6FBC21ABADB69ACC9A354B3998BFFFFE5B3EFFFC7379E28927E4FAEBAF17D8E836965C724939F0C003658F3DF690D5575F5D468E1C29105D75FCFAEBAFB2F7DE7BCBD34F3FADBAA49A377AF468B9EBAEBB6491451691112346C8B1C71E2B575C7185960D';
wwv_flow_imp.g_varchar2_table(13) := 'D79391FBD75F7F2DF3CC338F0C1F3E5C1E7AE821D97DF7DD7BBB99ABEF72CB2D27471C71848C1D3B56565E79E52A271F03DA7EF1C51795B6D75C738DBCF5D65B3EDC18DBB42CF776BFEFBFFFBEACB2CA2AC60161E1638F3D26A79C728ABCFCF2CB753BCB';
wwv_flow_imp.g_varchar2_table(14) := '2CB38C1C75D45172EAA9A76A157C6B206800340F04D119DB6DB79DDC7FFFFDB2F0C20B57CB264F9E2C975C72898E09E77311CBCF3FFF5CE7317DFAF4AAA07B8D55575D554E3FFDF4EA2012632046683863C68C18EEDB7C3A6F800F3FFC50565A6925EBE4';
wwv_flow_imp.g_varchar2_table(15) := '7EFCF14739E69863E48E3BEE90B5D75E5B6EBDF556D968A38DACEDFEFEFBEFB2DB6EBB6937C0B6DB6E5B3500CE0022B365D2A4C972E9A5975AC76363000DF0D34F3F5567008C69D3A6C9B871E3BA981C92316346CB6DB7DD26CB2FBFBC8D5BEBB53FFCF0';
wwv_flow_imp.g_varchar2_table(16) := '43750685B6B12FD99C37C0534F3D559D52752E8116586001C111BE75E07EE2B0C30E93430E394436DB6CB3B6FFFFEDB7DFE4BBEFBED3BAEFC09AC30F3F5C9E7BEE392D219B1B4064D2A449D11B6024CE008A0D80CBC537DF7C53E69D77DEB6BCBFFDF65B';
wwv_flow_imp.g_varchar2_table(17) := '01171F039756CB2EBB6C47D3FBEEBBAFDC79E79D3EDC2ADB74DE00CA9E5B26E21AF6B8E38E93891327766C86DAF43FFFFCB33A729C7DF6D9F2C9279F98BAD35E976203A89E017080C13DD6E28B2F5ECF1B457FEDB5D7CA79E79D277FFCF187360FA50573';
wwv_flow_imp.g_varchar2_table(18) := 'AB0B4D87B3F9F1C71F2FB8F7A88D5F7EF94536DD745379FBEDB7DBCD05AACC406E9470559370A4BAFDF6DB3B5EEEE0866AFFFDF7977BEEB947DD60D7997AA96FB3CD36F2E0830FCEBD0412993861824CBDFC720771989BE8D600AD995D76D9653261C284';
wwv_flow_imp.g_varchar2_table(19) := 'BA231C38F6DC73CFE0D7E1B832C025D8165B6C518FE5E69B6FAECEC8FFFEFBAF1A083DD9FADA746CAEAF3FA509B8D67FF8E18765E9A5976E9A1FEBC613A7F1430F3D542EB8E0025970C105AB986EB9E5962A4617E3BFFFFE131C0D718982A73AAA43E50C';
wwv_flow_imp.g_varchar2_table(20) := '804BCB279F7C52D65C73CDBAD9B5D65AABF35157D5B1C53CF87EF4D147EBF721B884DD60830DE4D34F3FB5B06ABE34C906403A38521C70C001F5CC70533C6AD428F34C3557A2D077DA692739E38C33649D75D6D15C6D3EFDA38F3EAA9ED2E06C832756BD';
wwv_flow_imp.g_varchar2_table(21) := '864A038C1933461E78E081FAD32B5CF61C7DF4D15AF768E6D9745E89C7C788A1367079897BC71823D90638F8E083E5861B6E90F9E69BAFE28267C8471E796410461B6FBC7175B4C7B3FF58E3A5975EAAAE999F79E699AE21A834C03EFBECD374A3897FDF';
wwv_flow_imp.g_varchar2_table(22) := '7DF7DDF6695954CE5E7BED555DE6CE3FFFFC551C279D7452C53BC6B048C36FB8382AE099F1B061C38242DA79E79D05D7A54B2DB594DF0415ACE37121CE828F3CF248C7D92A0D70D04107558F9031700F851FCAC035E6D87CF3CDABDF7A165A68A12A8CF3';
wwv_flow_imp.g_varchar2_table(23) := 'CF3F5FA69C7CB2D7ED4FBAE59B6C03E0A61390F074080347C38B2FBED8AB6EADD7A77086EBF3AFBEFAAABAF1FEE0830FBC5C3AE059F80A2BAC50DD98E287AAC681C793B8049BF3C4AB592E9506C09914F72B187FFDF557F51B08B8C61C78F2F3F8E38FD7';
wwv_flow_imp.g_varchar2_table(24) := '1BE0C20B2F94134F3C314A486C80B9D8F1A80E85D278DFF1E5975F56BF5AD60A288442680234FA8A2BAE5877F7E28B2FCA269B6CD2E69E0D60AF48D90DA0911D1EBFBEF3CE3B75A2783A81627CF6D967ED296B5A58638D35E4F9E79F9745175DB4BEB2D3';
wwv_flow_imp.g_varchar2_table(25) := '8F466C004DB01DA66B9488BD331D0BA12F812EBAE8A2EAFD9EDA38F3CC33E5ACB3CED209D9E9DC1D77DCB1E95AFD85175EA87E346A1CE93640EFB22AF712C8613B856E80F7DE7BAF7EFD8DD738165B6C316FAF07A8764AE38B85F87D00CFF2F138B836D2';
wwv_flow_imp.g_varchar2_table(26) := '6D80DE1996DB00AACA2ACC0BDD00B8D9ADBD568D9BDD3937A30E3B5A21E7D629D75D775DF52E14C6F7DF7F2F5B6EB965D3651A1B401D6A3725E32ADC23FE7A030C1B5ED5A1EFA7408D1FF274BBE954C7ED66269E8E206F0C1CF9F1A3D66BAFBDD6F70CD0';
wwv_flow_imp.g_varchar2_table(27) := '286A494F817C14AB0F9B4ED40F7D0628A9011A0528A9019C14568B11CD06D09C6E11311B4044E70C800F51A777F81E800DD0BB08C355B46233D4026203E83500F076FA20860D905903D4C2CDAE013C1C4A74CE0055034C9F26E3C6367F11C6066003289D';
wwv_flow_imp.g_varchar2_table(28) := '7B780F300793873E6EE3DFFA1814BFC19C70C2094A3AB99E14225FA398B33B031865D97B91F61920937B00BCD6814D096A2FC325FE2E509C1ED16A000721967A06C0BB4DF8B6021FF2CF9C39ABDA11C3D5873CA63D8FC7B988A1F671113E6FC53710EDC3';
wwv_flow_imp.g_varchar2_table(29) := '81B07D82F4EFC19092560318FA685C566A03ECBAEBAE72EFBDF7D6BFAB48613F237CF78DA37EED5B8FF1E3C7CB4D37DDE440457D13653480832C4A6D8075D75DB77AA7A8B633C3EBAFBF2EEBAFBFBE97D7BA55CA0F1FE8E36BB7EDB7DFBE7AFF1FD2219E';
wwv_flow_imp.g_varchar2_table(30) := '575F7D5565B9F3390E4AC72CA67E8ED5CE00FDACA8C7566A038000BE2ADB6AABADEA30AEBAEAAAA64F12D529D9CFC46E74575F7D75DD107ED9DE61871D04BB54C418EE2AC871F46A0DE0CEA9510378A6E7E2261884F0110C36F56ADC42F2CA2BAFAC76DF';
wwv_flow_imp.g_varchar2_table(31) := 'EBF7DDB12BC238F2637F27F86D1CA79D769A9C73CE39AEDC68DBF12CA1763CF505593480797A4A2B5D35009CE19B6A6C3FD238B007EB7DF7DD27F810FF9F7FFE518A4977123E69C55E40BBECB24BDBEBDCAFBCF28AE0D357EC6E176B446B807E8EF51BA0';
wwv_flow_imp.g_varchar2_table(32) := '9FC5DE888DCE009E5573D900D8DAE5C61B6F94FDF6DBAF2DEA993367569F7EFA18D8B6B176B3DB681F6FB7AEB7DE7AF2D9679FF970DBC366739DD8558DC7D0F51BC02E98D21B0074F07D35AEBFB1B9586D47063B6A66ABDF7DF75DD97AEBADB5F64032F3';
wwv_flow_imp.g_varchar2_table(33) := 'D4BF0F926D009C1A1B77709E32654AB58D9FAFD1D800785282A727B1C7D4A953AB4D6431B0A303F647C565436D60A35EEC0E5D1BD8F21DCFD8FB0DEC7784EF0C902336CAED7484EE6743F7FF11273EF0C107F9E79E7B6EF48F8D6AF127DB00D8046BC30D';
wwv_flow_imp.g_varchar2_table(34) := '37AC763EC607EBD857FEE38F3FD6E5AE3C1FBB2AE34B30DC28E29A14DFE4C61EF84E19DB09E2F2045B0762AFA0C69B56142E0E1488199CBEF9E69BA62DE57BC58FF9B08DDDF7F083546D8769DB9CB1F304EE2B6A9B98A1F01123062E7710634A23D90648';
wwv_flow_imp.g_varchar2_table(35) := '099297581C907760C24B6AF88318B5DF1DB0B9400A7B2C754B3455865E84C9DA68464AB1015A2BAD51BC8C84CCBA612206CF0688089FAEE31360034083013AD20F50AA4ADD851DF56A7FF107CFFBF1870DE78C78A4BA79F617913FCB4A2270523C02F87B';
wwv_flow_imp.g_varchar2_table(36) := '0478BA84A757D8CD02CFFC531D2C533E1E705E9B4B2CB144FDB12A9A006781744626BF04A7038C91944CC0EA0CD07F71FF1925C3656EE91350AF50F599E9671D2442020B82D9D20955B20498D472AAA92D873D327B0BDA41730109B822C0F25521990C25';
wwv_flow_imp.g_varchar2_table(37) := '8D4034A6AA2028750E3125A32CA5882105A9C7A04E9FC91008DA006DCE827A4F8639034988004B3021317C8732C862877F17C8B79AB44F020E080CF241C1013E9AC89D001BC08782A4EA83AA179B94CA0B561ACD85001B2017A518A797CF693C34800793';
wwv_flow_imp.g_varchar2_table(38) := '49885F6A5E49C08D1604558D863E45C719978361E886CB52148F3191C05C021A55AD31957849A03C02711BA08F77DFC1F9B65F5EB9949151A3EE016B2092DB323463169E08046C004F190433EB0A952B3BC1122FDA11D5285A5EFFC9E55E40B9C7EF5FE1';
wwv_flow_imp.g_varchar2_table(39) := '123C50E5AE2A268626B1704A287EE6D093002B8E059225015785EBCA4E9610193409B0015803034D800D30D0F2337936006BC019811C8B29C7989D09464324C006600D0C34818606602F0C7425444D3E5EEDC5F31C15389D93C01C025D1A40BF2FF45750';
wwv_flow_imp.g_varchar2_table(40) := '825E04C8334C7D907318CE8EBC502E4720EB6648D43551057B7AD0F5662BB8E79406029A7435A7133509742560534B366B9B0372678952C721105CC1E00E1D70ED1E738ED99801199C4CCDF814B74A4D70B559C5C1719B500A105388C12DD530D6C82D0C';
wwv_flow_imp.g_varchar2_table(41) := '677A4994001B2051617C8445B1DBA992898F4AA3CD6C08B001B2918A81FA20C006F041B583CD1440A7104320DCCA6EAC98B42DB6B2A61C73D21389206979DA82A35E79E9C5681D13C8A40174C3E42F7F8EEBA45873BA95552C88AC12A36ACEE4224A0D94';
wwv_flow_imp.g_varchar2_table(42) := '7E61A959579BA59154825343E618D25778D46567179E67811E592246A2129B11B6041751C904456148E10864D80019861C4E4F7AD224C06AD204D6349DF46CE825B1367309330FBF56027DD22824CB240ABE3508B2559185945428653987D266291B836E';
wwv_flow_imp.g_varchar2_table(43) := '246053C4366B3DAB9070689E33AF9B2702EFA4FD21F667D9028AFFA0FC7BD04B3FB578F4A2F73F9B7C0C19139C21B8C49651C7C4046138DD09F828561F36A961100294CE056652744131591B36F2DAAC4D16485B60C965995C400968991A93D4E2B191C8';
wwv_flow_imp.g_varchar2_table(44) := '6D2E6EAD35E5E5D1B40DBF22D60E325BF5DCD5673A2B8A082E9DC54E43791008536361BCE441DC6794C9734E2FC0F422B22D90F232B225E2677D1FCEB9C8904B9CED22E61BB99F82A45523022C23236C8D8B88D01A614403542F227CBA8E4FE07F0BD970';
wwv_flow_imp.g_varchar2_table(45) := '6BC64A30B80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64709620791865723546)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE9000019AE49444154785EED5D67AC56C516DD57EC14B1A082150BB6D86289261A78C6F6C7184DD458E2037B2F3116D4F8783146FD6349';
wwv_flow_imp.g_varchar2_table(2) := 'EC0DB0FFD0A8519E1ACBC31A7B6FA0F18105D4D851B1F35C877B3EBFEFDEAFCC9C337DD62437E2BD53F65E7BCF9A3D7BE69CD3272C448008648B405FB69A53712240048404109D13C0648BA2939A0287890009C0955D386F5D21CD71341020016880C5AA';
wwv_flow_imp.g_varchar2_table(3) := '442035044800A95994FA648180A98092049085BB64A4649F48DF226649542D4E0250458AF588408208900012342A552202AA089000549162BDA01130B5270E5A490BC291002C805AA94B7A7025D8741B11E656C43A120081D2752DD62702F121C008203E';
wwv_flow_imp.g_varchar2_table(4) := '9B516222600C0112803128ED77C4A8CC3EC6B98D4002C8CDE2D497083421102001709D1B9CA6E1C33FC4C40E6F054800761465AF44207C04DC2F7E2480F0BD8212D642C0FDA4AA25AEE3C62400C780733822101202248090AC51C8C2152B3893242C1009';
wwv_flow_imp.g_varchar2_table(5) := '2009E392349230A3072548001E40E790092210290757228048754DD0EBA81211A887402502A837245B13013F0870E11A8C3B09C08F2F32D7E70B778EDB820009A0BD430CEFFFF5B0A63F97BF73EB425CB6D4F16EC56AC180863F88C8C0DFA9F79D68CD9C';
wwv_flow_imp.g_varchar2_table(6) := '09605D11992022F8EF3AFDFFC5BFF1C3922E027344A4FC81964FF4FFFFCC7455EEAC592E04D03CD9C7F74FFC1CED4D9D3B2300524001118014A6E50056CA0480493F5144129EF0DC1F589EA42085E9FDA4906484901A019493FE9F0CE52D4F8DFCBA2FC9';
wwv_flow_imp.g_varchar2_table(7) := '604AA8AA57590E5221004CFC7FF5AFF8A1DA8772A581008800D140191944AD55EC0480893F359C3D7D150E8EDA7F72171E44F0EF7E4288128B5809802B7E94EE96ACD048188208CA4462348AC64800D88321DC672102F610D00FE682CF11B4032B260208';
wwv_flow_imp.g_varchar2_table(8) := '2CDCB7E77BEC396A044004FF88251A8885007061E7BF51BB0585CF09010BD1807E48A202780C0480B37C24FA587247C0CE1CB0892AF202C11E1B42F1D00900131F04C0E21081AAF3AC6A3B87AAF9182A6812B04300663C01213F427F1622E00F0133BE8C';
wwv_flow_imp.g_varchar2_table(9) := '538249CE955090DD0E01D4D7942B7F7D0CC3EA41C119C312D8B834414602211240BCC77C7472E3B326B10E832381D00880D9FEE03C9EAC66D82441914048048073FEFF19069BDD1181D010307F4FA006478744004CFA85E6AADEE4A9E1D1DE64D61A18CF';
wwv_flow_imp.g_varchar2_table(10) := '10E0B290F7120A0168ECFB93770EEF4E614B005AAE05D920B602960840CBD40CFD6DCD38F61B3202D80AE068D0EB8B462C118016EE0CFDB5E062E58410F0BE15F04D00CCFA27E4CD54A51202C805788B027C130057FF4A3EC346F510D0DAA2D61BAA776B';
wwv_flow_imp.g_varchar2_table(11) := 'AF51804F02E8B8FA07659EDE06640D225017016F51804F02E075DFBA6EC3F641206060C1F21605F824804541588F421001FF08E04460AC0F317C11009FF1F7616D8E1932025EEE05F822005CF9E527B84276474FB2F50EA77BD7F0247ADD61BD44013E08';
wwv_flow_imp.g_varchar2_table(12) := '80AB7F5D57A9DC3ED9C9531991C01A3A4F06D622808AEEA471ED3730F3509C3811A8E8A850B646D32A5839DF06D422802A1AF63FF1C7F0BF22786CE61F018BA4E0FC34C0070130FBEFDF872941B8083898937F539883C15A90E6FE3F5CC7A3646120E034';
wwv_flow_imp.g_varchar2_table(13) := '0FE09A0078F9270C27A314E122E0741BE09A0078FC17AEE351B29A0818CA0D383D0E744D00DCFFD774B2F49A1B9A36E900932C01F0C51FE938A97D4DF2E6056779009711001380F6A78D9511A2988B5108A96C9E240980094065FBB362E60838BB10E432';
wwv_flow_imp.g_varchar2_table(14) := '02200164EED5545F19016727012E09806FFF51B63F2B668E409204C023C0CCBD3A6BF5F57214CE4E025C46003C02CC7A0650794D049CCC4D2783F42B4E02D0F40056CF1A811122B2C03602AE0860B488CCB3AD0CFB27023122D06177304644E6DBD68704';
wwv_flow_imp.g_varchar2_table(15) := '601B61F69F15027A5BFDAED09000B2F21C2A4B045A112001D023FC20607015F3A3401AA3FA2600A36E304E4466A561176A113E02467DD797BA1B89C8EC4E839BD2502B0750635012802F37E2B8B122D095004C29A5450035062501D4008F4DB344800490';
wwv_flow_imp.g_varchar2_table(16) := 'A5D9A93411588C400F02A8118F3721CC0880EE4604C2448011409876A15444C009022480EA309B098FAA8FCF96F511C8DE862480FA4EC41EEC2190FD04B507AD520EC0CCF0CC0198C191BD1001D308441201A82D043C0634ED1E457F6AE05B199A9DDA46';
wwv_flow_imp.g_varchar2_table(17) := '20120250838104A086136B1181120112007D8108641CE49000E8FE442063044800191BBF9AEA4C0954C32DCC562480CA76E144A80C1D1B06830009A0B6294804B5216407DE1020010C829E13DA9B37E63270402E4602C8C5E9A8271168830009806E4104';
wwv_flow_imp.g_varchar2_table(18) := '3246800450183FA0982C6367A4EAED10B0EB9B24007A1D11C818011240C6C6A7EA448004908B0FD88D24734131393D4900C999940A110175044800EA58B9A8C975DA05CA1CA3810009A0B333703272A2D444207C172201D434319B1381C8106861A5B008';
wwv_flow_imp.g_varchar2_table(19) := 'A02661F2852091B9A27B716B7A987B816D8F181601D4D49604501340360F1001BB9C450208D0E4148908B842800400A4ED92AC2B5B721C22A08D0009A01D6424046D47628338112001C469374A4D048C20900E01F4898C5B2432CB082C3E3A61D8E103F5';
wwv_flow_imp.g_varchar2_table(20) := 'DCC74C87004484A70011BA3379CFABD14800DDE01F3264886CBAE9A6B2E4924B6A5BE9B7DF7E93EFBFFF5E3EFDF453F9E38F3F94DA2FB7DC72B2DA6AABC9F0E1C32B8DB960C1029933678EFCFEFBEF4AE335571A356A94ACB5D65AB268D1A2E267DEBC79';
wwv_flow_imp.g_varchar2_table(21) := 'F2C5175F68F763A301F05F7FFDF565F9E5972FBA079EEFBDF79EFCFAEBAFCAC3A10FE8B8D24A2BC9D24B2FADDCAE4A45E0FFEDB7DF16F8FDF2CB2F55BA70D5266D02A8BBBA8C183142EEBEFB6E5975D555B50C8209042700017CF2C927F2EAABAFCA5D77';
wwv_flow_imp.g_varchar2_table(22) := 'DD251F7FFC71DB7ED0FFC1071F2CDB6EBBAD8C1933A62080A5965A4A6B4C547EFEF9E7E5F4D34F97EFBEFB4EABED124B2C21FBEFBFBF4C9E3CB968F7F3CF3FCB95575E2937DF7CB3563FB62A63D25E71C515B2D9669B15437CF9E59772E8A18716E4DAAB';
wwv_flow_imp.g_varchar2_table(23) := '60E21F70C0013261C28482E0565E79E502DBBE3E7B9FAC04F9C306F3E7CF97679E79466EBDF55601390758D22680BA80AFB8E28AF2FAEBAF178E53A72C5CB8503EFCF04339FBECB3E581071E903FFFFCB3D1DD21871C22175E7861E198CB2EBB6C2DC77C';
wwv_flow_imp.g_varchar2_table(24) := 'ECB1C70A67FFEAABAFB4C405011C7BECB1C5244381BCE79E7BAE5C72C925ADFDD465542DA9FEAEBCCAA851F29F193364BBEDB62B7E8989B5D34E3B1598762B3BECB0835C7DF5D5B2DE7AEBC9B061C3047ABA2E3FFEF8A3CC9D3B57CE38E30C99316386EB';
wwv_flow_imp.g_varchar2_table(25) := 'E17B8D4702E886902902681EE388238E90E9D3A71761E8942953E4E4934F3616925A27805EEE64E9EF08DD31795409005BB7FDF6DB4F2EBDF452597DF5D52D49A5D72DA2C133CF3C536EBCF146418410482101743304B60077DE7967B177D429082FB19A';
wwv_flow_imp.g_varchar2_table(26) := '633F8FF075E0CA73DA69A709FAC6AA807D7F59B0B7FDFAEBAFE5F3CF3F2FF68ED84AE894975E7A49CE3AEBAC4A5B00A50840471883757509E0A0830E2AA21910785980252621A207ACCABAD8EAA803DB8F1E3D5A46AE3852862C31A4D11491D5A9A79E2A';
wwv_flow_imp.g_varchar2_table(27) := 'D75E7BAD4E7736EB9200BAA18B9564C30D37AC94902B137A9B6FBE7911FA23042D0BF203D82322EC2F0B7205D75D779DBCFCF2CB0D02D0B5FC0F3FFC50E41954938E65FFCA5B80AE02D9DB1FE810C0B871E3E4C9279F2CC8B72CC86920EA7AE8A1870A02';
wwv_flow_imp.g_varchar2_table(28) := 'F8E9A79F9C10C0CE3BEF2CC71C734C91D3290B48080415C8768004A03BC974EB23E1B4D5565BC9FDF7DFDFE294CDFD7CF6D967B2FBEEBBCBAC59B3B432DBBAB274AA6F86004C4933B81F1D0278F6D96765C71D776CE964B7DD7693E79E7B4E40902E0B16';
wwv_flow_imp.g_varchar2_table(29) := '01E48F904742545096B7DF7EBBD8CE2022F05CCC13409B75C05EBAB515BDA0EF01ECB3CF3E3275EA54596185155AA44638BAF1C61B17A705AE0BB62A887220137213175D7451210256CC8B2FBE586EB8E106632221E4466482BEB10A3627427B0DA24A00';
wwv_flow_imp.g_varchar2_table(30) := '480CDE73CF3DB2CA2AAB34F4D877DF7DE5C1071FEC3584D5BFE328F9C5175F6C1C63C2E638AD4182D273314F006D142201881413ED9A6BAE91C30F3FBC25D38F6CFB05175CE0DC0FD658630D41888ABDEAAEBBEE2A5B6CB185ACB9E69A851C98AC70524C';
wwv_flow_imp.g_varchar2_table(31) := '565305931F131FABDF238F3C52DC3378EAA9A7944E2C5409E0AAABAE92A38F3EBA9173B9EDB6DBE4B8E38E2BC6F559707F01E47AC2092714B607BE38623DF2C8237D270449002E1D0367EDD8E737470158FD11FABB2C7BEDB5979C74D24945A83C74E850';
wwv_flow_imp.g_varchar2_table(32) := '974337C642B21367E4C88CBFFBEEBB5D6550250064D80F3BECB0068961FF7DFDF5D75BDDEFAB8237300204094E9A3449E92E83EA1815EA91002A8056B90932FF6FBDF556E35E01B2FDDB6CB38D532740D889BB02CD19F2CA0A6937C4A9466B4088FC074E';
wwv_flow_imp.g_varchar2_table(33) := '20EEBDF7DE8EBDA91200B65813274E2CFAC16521FC3B90645B716F61DAB469C58D46149CD88000E00F838BBD84EA80B14800DA3E5CA3C132CB2C23B367CF96B5D75EBBE8051759E018C84CDB2EB87770FEF9E7CB29A79C32E8DE014264DD7D791579B10D';
wwv_flow_imp.g_varchar2_table(34) := '1A3972E4A0A803D766315991286D971BA84200380DC104C3DD8810CAF6DB6F5F10C0269B6C528883C420E4C32D518F255F0270C6B14DD6F54500C8F2EFB1C71E45D2699D75D66948F4D1471F09B2E6F7DD779F3CFAE8A3C5BEDF6641D4B1F7DE7BCB2EBB';
wwv_flow_imp.g_varchar2_table(35) := 'EC52FCE08E44595E79E595227CC7C4185852248037DE78A3203D1280398F0BFA14006ADA2180DE54868977FBEDB7CB9E7BEED9401B0E78DE79E7C9C30F3F6C34D9A7624EDC89C0156864C2714DB72C48E2E172D440222201A8A05AA94EBE114025B86A36';
wwv_flow_imp.g_varchar2_table(36) := 'B24300BD8542B20F9763CAA71ABFF9E69BC6FE58F7D250EFD1D46AE07E046EC5E13A74791B121774B6DC724BF9E0830F5A3A69260064113EEBF02C40730EC0D916A037FF16BA0CDC0254890014875233C0E25A24001DB4EAD6F5450078D8085784CBF2C4';
wwv_flow_imp.g_varchar2_table(37) := '134F144FC7392D6DBC175B9337DF7CB378E4BA2CB810850C7973C92702B030C5BB1BB92701989088F700FA8DE08B00DE7FFF7DD960830D0A2970068D5516132F8482C77A714DB72C78F6E2C0030FCC94009C5BA4270198908804E09900F0EC0132F02878';
wwv_flow_imp.g_varchar2_table(38) := '8906882894824B32CD7B7E84FF78FE22CF08C0B95548002E21F71501343FF9867DF6D0614345F41E34B406137201CD6FF6C1F9FDC0A72FF3D9025883B953C7240097900743009E6EFFB5C37A2001E06526E55DFEB23E09C09A979200EA40AB9B20210134';
wwv_flow_imp.g_varchar2_table(39) := 'A1DD0F5EB004A06BDC1E8E64E214A08EAF76684B02B0006AC72E490083A10996000C3B46AA04A0C2934C027A4E020ECA01700B60787AF7EE2E5502E8ADF9C0A73F545A54AB93E94DC0DE6091007A6364BB0609C036C2117C18845B00775B00BC600577ED';
wwv_flow_imp.g_varchar2_table(40) := '437D18A8CA4D400B53A8730E4025B65714885B006E013ABA8AAD1C009EB0C4D37678D6218482EBD8B8AABCD1469873523C0404F9DA3DFCE4505E26011D826DE961A0DE1AE4B205B8E9A69B8A498582CB4F8800F056A0100A9EC6C4E3C0E56BCAF13214C8';
wwv_flow_imp.g_varchar2_table(41) := '8A5B9A954BFD559A045019FC0A0DA3DE02D477B6B688998C00F0F69FE657AEE16947BCDB50E7136215CCDAB3099E7938EAA8A38AAF2D95AF88C7BB0B4100BA5F71EA39985E851C0840C37335AAEAE1BCB876D40450456185362609E0C4134F2CDEBD577E';
wwv_flow_imp.g_varchar2_table(42) := '4310AF5AC34B41DF79E71D0549EC55C1E7DEF045A8ADB7DEBA119D5C76D965C5E3D09E4B0E04E019E2A6E14900836D619200F08211BC6A6BECD8B18D811E7FFCF1E2DD032EDEBAD4CED3F00CC61D77DC517CA9A82CB8EE8C77043EFDF4D3BE9DF36F02B0';
wwv_flow_imp.g_varchar2_table(43) := 'B8F83109D86F6612805D0240EF58F1F141D7E68248002F1FC59B8F5C16BCEEEDF2CB2F2F56FEE68F918210F0146495AF381B969F11806140BB76972601D45B3A4C460025F8F802103E06D2FC4936BCF80447833367CE2CBE9E54EFD360DD75C6D79EC78F';
wwv_flow_imp.g_varchar2_table(44) := '1F5FBCED68E0A7C8F122586C0974BE8BA0E6A395EC40025003D74CAD3409A01E363608005B0164DC4102CD5FE4A92769FDD6AFBDF65AB1F287F22E06FD370255229901EF81AE8F63A71E3CDD0454078504607F0B508E808F9CE06B47F8106BF37719EDB9';
wwv_flow_imp.g_varchar2_table(45) := '5FE79E117DE02D4C93274F2E7214E657FFCA5A198B00BACD02E6009803E8E8A13622807230ACFE4808E2DD83B81380B15C176C37701C89579EE36328F5B61E35A51F3C4B8D114037C9822500F5B5BB26F0FDCD9111C6D781CA1509EFE28763E0251D36CB';
wwv_flow_imp.g_varchar2_table(46) := 'F1C71FDF380B47E20937D24229D8A7E3ECBE2CF81CD92DB7DCD2221E2632DE685CBE280475F02191050B1628AB01CCF1A56610028E099B9372CA9D74A88857AD9F73CE398DBFCE9D3BB7F8D809928F73E6CC0969C51FA841DE0450D7F06C4F048000BEF4';
wwv_flow_imp.g_varchar2_table(47) := 'FBC20B2F34C0C01E1FDF5A8CA05426009DC533D80820020351C40810C8910074CC4202D0412BF2BA3A2B43E4AA36C4B742006E80AC1C01E8D82E12027083B80E70AC1B07025608C08DEA2400373873949411200174B7AEB50860C09AEDE91E40CAAEED58';
wwv_flow_imp.g_varchar2_table(48) := 'B74883B08104804F7EE3C42182C20820022351C4C011183A746831E1CB33FE850B170ADEF8134121014460248A48046C214002B0852CFB25021120400288C048818918E9463D301403118704108821280611308680064593008CA1CE8E88407C08D82580';
wwv_flow_imp.g_varchar2_table(49) := '7E26B2760C38006F1E03C6E78094D805029D4302BB04D0AF1B09C08591390611D0478004A08F59F7161AFB2FD343B33F22A08B00094017B1E4EB27CF60C92BA8E3A224001DB458970824860009203183521D22A08340C204C0484FC711C2AB4BFBB9B089';
wwv_flow_imp.g_varchar2_table(50) := '1102E8652A9E02B83025C7B08F402F4FB72F81E9118C10402FA15A09C01E88BC07D0CB12FC3B116845C00301D833415702B0C73BF61462CF44A03E025D3D3F1F02A80F247B2002C921400248CEA454282E04FC86A62480B8BC256569FDCE849491EDA21B';
wwv_flow_imp.g_varchar2_table(51) := '092053C3536D2200044800B1F801D7C7582C15959C2400F7E60A642A0722867BFC39621302391340AE33C093DE9E86E574EF8A40CE0440D72002D923B0519FC8EC459661F0771598AB8E65D3B2FBC8116004A064401289124CAC141D02311080F2ECE3B3';
wwv_flow_imp.g_varchar2_table(52) := '00D1F95F4D81955DA3E638E9368F810094D127012843A55EB131C738D9D4418BA72609201E5B515222A089406FD28E93003AE8C50840D33F583D7B04E2248041665BCC08A345645EF6264D0180DE2B570A5A86A0432204B0184A1240082E45196242608C';
wwv_flow_imp.g_varchar2_table(53) := '88CCB72DB0AB7B002400AE9CB67D39B5FE6B13808ACB910052739BB6FAA8B8421640C4A4646D025051D615010C1791EF5504B25F8793C13EC61CC1000223446481563F155C3B4302D0829495894045042ACCC6D691F409A082A4AE0800A2D97EAEA182FA';
wwv_flow_imp.g_varchar2_table(54) := '6CE21381DA53C4A7F0F6C77632372D0FD262E2FF89C8BAF671E308ED10E0648BCA2FE688C85817125B26801615FE2B22135C28C531884088086890F04C11F9870B1DB227000DA374B787B18E440C76E5C28738867904A689C824F3DD0EEED125014CF92B';
wwv_flow_imp.g_varchar2_table(55) := '0FF02F174A710C22D00B81C04936490240F88F6D000B11081081A02801AB3F48C07A71190120018844200B11A889405093B5A62E6D9B23018844A0F54202B00E3107B08680211E30D48D49359DCD4B6703F5A3C39300936EC2BE5244C0D90900C0734D00';
wwv_flow_imp.g_varchar2_table(56) := '53FF0A6D26BAB45A7B760F90F375414940055D9533A9EF2C01E883009808CCC48BA96665049C25007D1000138195FD820D3341C05902D00701604CE6017C7A32B70E3ED1EF35B6D3F0DF380128FA162F04F57203FE3D5704FEFD97E2981FCE8AEB242014';
wwv_flow_imp.g_varchar2_table(57) := 'AB990750A4196710722022600C01DCFFC72980B3E28300B80D70665E0E141102CE9E006CC6C41701E0281047822C4480082C46C069F6BF04DD1701F034806E4F045A11709AFDF74D006EB7014C1B70B2858D80F3EC7F080450331918B645291D11D040C0';
wwv_flow_imp.g_varchar2_table(58) := '79F22F0402701B05685823C5AA21054121C91280AD9DDEFD1FA8AFAF1C402907730101782045F08A80B7D51F5AFB26802CA300AE805E275C48837BDBFB87B205801CE94701C1CFF8E005343369C353D34BE6BF19CC102200C8C37B01665C3CB25EC29B91';
wwv_flow_imp.g_varchar2_table(59) := '0E01747EEDB79D6EA11040965B0187CEC6A18240A041785E137F214600796C058270420A110002DE43FF907200CDF6A8B115C83A9C0CC0A7FD89D0D727B2A8E287E73C788DD7AC7F68C780EDBC868F0BFB9B4B1CD92E025EEEFB7753C9410EA012C79204';
wwv_flow_imp.g_varchar2_table(60) := 'EC3A227B778F80F7233FF349C04A735B09791C0D623BC02F0929C1C54A81236029E9577F023A88002A9B862450193A360C08812057FE509380CC0904E4B9C18A527FE173A55A1067FD0D65DBE016720460E874C095AD398E0E02F1CC611DAD5AEA0694ED';
wwv_flow_imp.g_varchar2_table(61) := 'EF8C762C040064B125C05B84F018310B11D043C01DE360BF8F6CBF936FFBE98130B8764C04504ACF1382BA56677B5B08D40FF9DD115581418C04504603382170FA99315B5EC37EA34720AA55BF19ED5809A0D401DB021241F4F3C7B502C696D968277E89';
wwv_flow_imp.g_varchar2_table(62) := '78EC044022703D77381E10C0D1DE743BEFF037464E4A964A85009A8900DB82F16692856E8DA1643156F28500927A98F44EBFDC635BD9D408A081579FC8BA8B16E7080C91816D53B0FF001128273D427DA75FEC718585120124B00E225780E3439041F96F';
wwv_flow_imp.g_varchar2_table(63) := '571867394EA43E534E78D82CBE95BE02E84A04E0C3832BE8A223264800A52405FC1BBF2B7F74FA62DDB810C0242F7FE6F68B9EEC0ADFCB34C112402FC12DFF7D787FFFC39AC6297FD732B465A2B2ACA6FBEE1DE2B5608076F3DD6B1BFE882480F06D4409';
wwv_flow_imp.g_varchar2_table(64) := '898035044800D6A065C744207C044800C565C88AEF930ADFBE9490087445800410888368D19056E54014A41841224002F06C16CE65CF06C87C781240E60E40F5F3468004D0CDFE5C9EF39E1DB5B48FC3794800358C1C8789072A18A7D435CCC4A65D1068';
wwv_flow_imp.g_varchar2_table(65) := '4F00F49136901114CEA4F4106004909E4DA9111150468004A00C152B12019F08D8894049001A36B563020D015895081846207802E0A4336CF1ECBBA34735BB40F00490BDBF1280F608701E1BF18C4408A09D37D0438C78083B491A81440820691B513922';
wwv_flow_imp.g_varchar2_table(66) := '600D81B009808BB835C3B3635D04D274C6B00940D746ACEF078134E7861F2C1D8FFA3701D0881DA12734EA5E49ACD4B00A052746006AF6622D22902402611340283499A4E9A954A808B874FBB00920540B512E229008022480440C19821A2E57AE10F44D';
wwv_flow_imp.g_varchar2_table(67) := '410612400A56A40E44A0220224808AC0B11911480181FF03D14324975BC7ED110000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64709621014343723547)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD0BF47ED59C3FF05DFD22CAE86618318A306625D762C6AD486E45EED70C8324D7A95C16294517950AB98B';
wwv_flow_imp.g_varchar2_table(2) := '252C0DCAB0B258D1945C464B43EED310A66264A45219D2E5BF3E67FE5FA57EDFE79CE779CE65EF735E67ADDF32FF7FE79CBDF7EBB3CF39EFEFF39C739E75524AD7260B01020408102030298175048049D5DB600910204080402520009808040810204060';
wwv_flow_imp.g_varchar2_table(3) := '820202C0048B6EC80408102040400030070810204080C0040504800916DD9009102040808000600E102040800081090A0800132CBA21132040603C022E638BD692DCA272B6234080000102050B080005174FD70910204080C0A20202C0A272B623D09A80';
wwv_flow_imp.g_varchar2_table(4) := 'C3B0354A3B2240A0B180334F632A2B122040800081F1080800E3A9A591102040800081C6020240632A2B122040800081F1080800E3A9A591102040800081C6020240632A2B122040A01B0127E26E5CED75B680796786102040804086022E4F5D178570D7';
wwv_flow_imp.g_varchar2_table(5) := 'C2F64F800001020432141000322C8A2E112040800081AE050480AE85ED9F0001020408642820006458145D224080C074045C8686AA35F9A1E4B54B80000102040614100006C4D7340102040810184A4000184A5EBB04081020406040010160407C4D1320';
wwv_flow_imp.g_varchar2_table(6) := '40800081A1040480A1E4B54B80000102040614100006C4D73481150107A2B9408040DF02CE3B7D8B6B8F0001020408642020006450045D2040800001027D0B08007D8B6B8F0001020408642020006450045D204020049C8ECC03027D0A38E2FAD4D65611';
wwv_flow_imp.g_varchar2_table(7) := '020E8A22CAA49304082C29E05CB724A0CD091020408040890202408955D3670204081020B0A48000B024A0CD0910C85CC0592EF302E9DE50020E8DA1E4B54B8000811B0A38239B133D0A986E3D626B8A0001020408E4222000E45209FD2040800001023D';
wwv_flow_imp.g_varchar2_table(8) := '0A08003D626B8A0001020408E4222000E45209FD2040800081EE055CF5FE648CA2FBE9A6050204081020909D8000905D4906EA90993010BC66094C4DC0C926978AAB442E95D00F0204081020D0A38000D023B6A67A1230AB7B82D60C0102250B3855965C';
wwv_flow_imp.g_varchar2_table(9) := '3D7D2740800001020B0A8C24008C64180B16D1660408102040605E0157CE79C5AC4F80403F02CE4EFD386B65B2020EB1C996DEC00910204060CA0202C094AB6FEC04081020305981220240119D9CEC1432F0CE051C009D136B80C014059C5AA658756326';
wwv_flow_imp.g_varchar2_table(10) := '40800081C90B0800939F020008102040608A0202C014AB6ECC04081020B05681295D14A73456D39D000102048A1570B96ABB7444DB16B53F02040810205080800050409174910001020408B42D2000B42D6A7F0408102040A0000101A08022E922010204';
wwv_flow_imp.g_varchar2_table(11) := '0810685B4000685BD4FE081020408040010202400145D24502040810080197AC36E701CD3635ED8B000102040814222000145228DD1CB9802371E405363C02F90938EDE457133D2240804076022E16D99564E90EA9E9D28476408000010204CA131000CA';
wwv_flow_imp.g_varchar2_table(12) := 'AB991E132040800081A5050480A509ED800001020408942720009457333D2640800001024B0B08004B13DA410902267A0955D2470204FA14705EEC535B5B040810204020130101209342B4D30DE56CC7D15E081020307E01578CF1D7D8080910204080C0';
wwv_flow_imp.g_varchar2_table(13) := '8D04040093820001023D0938E1F604AD994602E66323262B11204080008171090800E3AAA7D11020408000814602024023262B11204080008171090800E3AAA7D11020408000814602024023262B11204080008171090800E3AAA7D1B42EE010699DD40E';
wwv_flow_imp.g_varchar2_table(14) := '0910C842C0D92D8B32E8040102040810E85760C0003060D3FD1A6B8D00010204086427E02A9C5D49746845C0E43417081020D09D80736C77B6F64C8000010204B2151000B22D8D8E111840C0196100744D121846C0E13E8C7B01AD9A1A0514A9C72E8E60';
wwv_flow_imp.g_varchar2_table(15) := '3E8C60083D165C53131070484CA0C8864880000102046E2820009813040810204060820202C0048B6EC804081426E04C5D58C1CAE8AE6955469DF4920001020408B42A2000B4CA69670408102040A00C0101A08C3AE925010204081068554000689573F1';
wwv_flow_imp.g_varchar2_table(16) := '9D29C4E276B62440800081F9055C77E637B3050102040810285E400028BE8406408000010204E6171000E637B3050102040810285E400028BE840640A0B98003BEB99535098C5DC0F960EC15363E0204081020B0160101C0B42030190187FB644A6DA004';
wwv_flow_imp.g_varchar2_table(17) := '1A0838233440B20A0102040810189B8000D0624561B6886957ED0B98A0ED9BDA23811028F4D89ADDED420765461220408000812C0432BE8E66DCB52C4AA713040810209089800B56BB85E0D9AEA7BD1120408000812204048022CA34824E9A692328A221';
wwv_flow_imp.g_varchar2_table(18) := '1020302601A7E53155D358088480A3BAFD79C0B47D537B1C5CC0B41EBC043A408000010204FA171000FA37D72201020408CC2BE06A35AF58EDFA486B89AC408000010204C62720008CAFA64644804016024EAF59944127561530434D0E0204C621E06C36';
wwv_flow_imp.g_varchar2_table(19) := '8E3A1A456F020E99DEA835448000010204F2111000F2A9859E1421E09029A24C3A498040AD80B3592D91150810204080C0F8040480F1D5D4880810E854C069B3535E3BEF4DC04CEE8D3AF386CC84CC0BA47B0408106857C069BF5D4F7B23408000010245';
wwv_flow_imp.g_varchar2_table(20) := '08080045944927091020408040BB020240BB9EF64680000102048A1010008A28934E12204080008176050480763DED8D0001020408142120001451269D2440A05C01A7D9726B37EE9E9B99E3AEAFD14D4DC0113DB58A1B2F8185059C2E16A62B6F43C52E';
wwv_flow_imp.g_varchar2_table(21) := 'AF667A4C800081AE045C13BA929DC47E4D9F4994D920091018A58033F828CB6A500408105846C0A56119BD52B655E5522AA59F0408102040A0450101A0454CBB2240E07A02CE2EA603811902C31F20C3F7C004214080000102047A1710007A27D7200102';
wwv_flow_imp.g_varchar2_table(22) := '040810185E400018BE067A4080000102047A1710007A27D7200102040810185E6074016074031A7E8EE8018172059C10CAAD9D9E772E90F9E19179F73A2F8F060810204080403702AEB0DDB8DA2B0102040810C85A4000C8BA3C3A478000010204BA1110';
wwv_flow_imp.g_varchar2_table(23) := '00BA71B5570204B21098DE296E7A23CE62A215D90973A5C8B2E9340102040810584E400058CECFD60408CC2DE0B43337990D087420E048EC00D52E091020408040EE020240EE15D23F0204081020D0818000D001EAA87769C68CBABC064780C074049CCE';
wwv_flow_imp.g_varchar2_table(24) := 'A7536B232540800001027F1210004C060204081020304101016082453764020408B427E032D29E65BF7B52B925BCE12D816753020408101854C0356C507E8D1320408000816104048061DCB54A80000102631628E0EA5A4017C73C438C8D00010204080C';
wwv_flow_imp.g_varchar2_table(25) := '2320000CE3AE55020408642DE0E29075795AE95C1635CEA213AD70DA0901020408102843C0B5B78C3AE9250102040810685540006895D3CE081020408040190202401975D24B0204081020D0AA8000D02AA79D1120408000813204048032EAA497040810';
wwv_flow_imp.g_varchar2_table(26) := '2040A05581710480718CA2D5C2DA1901020408109825E0D2697E102040800081090A0800AD161DE7BC9CC4E615B33E010204DA1170FE6DC7D15EB21230ADB32A87CE102090A5C034CF94D31C75961350A7081020306D81E12E48C3B53CED8A1B3D010204';
wwv_flow_imp.g_varchar2_table(27) := '7A10708AEF01B9D826CC8E624BA7E304861170D218C65DAB04DA16702CB72D6A7F0408102040A0000101A08022E9220102040810685B4000685BD4FE081020408040010202400145BAAE8BCA5554B97496000102190BB8A2645C1C5D2340800001025D09';
wwv_flow_imp.g_varchar2_table(28) := '08005DC966BD5F65CFBA3C1977CECCC9B838BA46604E01C7F39C605627408000010263101000C65045632040800081720432B9F266D28D72EAA6A70408B425E0F4D396A4FD105844C011B8889A6D081020408040E1020240E105D47D0204081020B08880';
wwv_flow_imp.g_varchar2_table(29) := '00B0889A6D081020408040E1020240E105D47D0204081020B0888000B0889A6D0810285FC0D9AFFC1A1AC152020E81A5F86C4C8000010204CA141000CAAC9B5E132040800081A5040480A5F86C4C8000010204CA141000CAAC9B5E132040800081A50404';
wwv_flow_imp.g_varchar2_table(30) := '80A5F86C4C8000010204CA141000CAAC9B5E7726E090E88CD68E0910C84AC0D92EAB72E80C01020408E42D309ECBE6784692F78CD13B02040810209095800090553974860001020408F4232000F4E3AC1502048A1670AA2CBA7C3ABF5601B3DAC4204080';
wwv_flow_imp.g_varchar2_table(31) := '0001021314100026587443264060AC024EE963AD6C17E3325BBA50B54F020408102090B98000907981748F00010204087421200074A16A9F131070E84CA0C8864860D402CE62A32EAFC1112040800081B50B08006606010204081098A0800030C1A21B32';
wwv_flow_imp.g_varchar2_table(32) := '01020408101000CC010204081020304101016082453764020408102020009803040810204060820202C0048B5ECC90CDCE624AA5A30408E425D0E4F4D9649DBC46A53704081020304E8192AE4825F57595D9B2D41096DA789CD3D7A80810204080401102';
wwv_flow_imp.g_varchar2_table(33) := 'AEE145944927091020408040BB020240BB9EF64680000102041613E8F98ADC73738B99D88A0001020408106857400068D7D3DE081020408040110202401165D2490204081020D0AE8000D0AEA7BD112030B880D3DAE025D08122041C29459469CE4EAAEA';
wwv_flow_imp.g_varchar2_table(34) := '9C6056274080C0F4045C2AA6577323264080000102490030090810204080C0040504800916DD90091020B090802BC6426CB96EA49CB95646BF0810204080408702A30C006BD6AC49F16F9D756278792CD75E7B6D5AF977CD35D7A4ABAFBEBAFA7FF7B5AC';
wwv_flow_imp.g_varchar2_table(35) := 'BBEEBA69E55FB8ACFCEBABFDBA76C2E28F7FFC63E592CB1273E82637B9496D9DA2DF575D75552EDD1E653FD65B6FBDAA16B39698D3575E79E5A0B5883E445FE358CBF138EB7372AC9CDFE27C17FF771CDBF17F5BF21118650078DEF39E975EF39AD7A4DB';
wwv_flow_imp.g_varchar2_table(36) := 'DCE636835F50E2E270F9E597A72BAEB822FDEA57BF4A3FFEF18FD339E79C93CE38E38CF4FDEF7F3FFDE10F7FA80E8A2EC2C0CA49E8A637BD69BAEF7DEF9BFEEEEFFE2EDDF5AE774D5B6FBD75DA6CB3CDD2861B6E58FD5B7FFDF5079D9171C2BCF0C20BD3';
wwv_flow_imp.g_varchar2_table(37) := '5E7BED954E39E59441FBB2D278D83DEB59CF4A1FFAD087D2A5975EBAD63EC509FE77BFFB5D3AF0C003D3BBDFFDEE2CFA3D7427BA38A184F3A31FFDE8F4E10F7FB8BAB0AEB6C45C7ED5AB5E95DEF7BEF755C75C5F4BF42FFA15F3388EAF1D77DC316DB3CD';
wwv_flow_imp.g_varchar2_table(38) := 'DDD3565B6D99B6D8628BEA18BBF9CD6F3EF871D697479CCF7EFFFBDF57E7BC8B2EBA289D77DE79E93FFFF33FD3D7BEF6B5F4F5AF7FBD3A9EE27C270CF45591D5DBE9E2781D7C54712139E08003D25FFEE55F0EDE97591D8803E32B5FF94A3AEEB8E3D2BF';
wwv_flow_imp.g_varchar2_table(39) := 'FDDBBFA5FFFDDFFF6DADBF71C2D969A79DD2B39FFDECF4C0073E30DDFAD6B76E6DDF5DECE87FFEE77FD2739FFBDCF4D9CF7EB68BDDCFBDCF38A1FFE33FFE63753199B544CD5EFBDAD7A6638E3966EE366CD04C202EB0BBEDB65BFAE4273F393300C4DEA2';
wwv_flow_imp.g_varchar2_table(40) := '16C71E7B6CBAECB2CB9AED7CC9B5223C6FBFFDF65558DC65975DD2ED6E77BB25F738EECD2330471038E18413D2A73FFDE9F4EB5FFF7ADC03CE7C74A30C002F7AD18BD21BDEF086EC03C0F5E7C6D9679F9DDEF6B6B7A6134F3C29FDF6B7BF5D78DA6CBCF1';
wwv_flow_imp.g_varchar2_table(41) := 'C6E939CF794E7AE10B5F98FEE66FFE66E1FDF4BDA100D0B77839ED450078DCE31E974E3CF1C46C02407C1DB1EBAEBBA67DF6D9A7FA64CD32BFC02F7FF9CBF4810F7C20BDF39DEF4C3FFFF9CFE7DF812D9616100096266C7707918EE3D38B534F3D75AEAF';
wwv_flow_imp.g_varchar2_table(42) := '05E284F4A8473D2ABDF18D6F4C77BFFBDDAB6D73BA07A24E4900A8139AEE7FCF2900C42743F7B9CF7DD211471C911EF29087FCF97116B7F4E473DB51111326CE531104C2F3E8A38F2EA2CF63EAA400906135E3BE8038188E3CF2C8EA3BB4BA25EE7588D0';
wwv_flow_imp.g_varchar2_table(43) := '107FF59774D1BFFEB80480BA2A4FF7BF2F1600E21E80766FB2DD68A38DD2BEFBEE9B5EFDEA57A7B8AFA6D4632DC79914376FC6FD017BECB147758F94A51F0101A01FE7855A89EFC3E36413370BAEB6C4CD7DF1FDF3031EF08085DAC865230120974AE4D7';
wwv_flow_imp.g_varchar2_table(44) := '8FC50240BBF7006CB9E596D547D5F1299BA51B81F83420EE8B8A9015F77B58BA171000BA375EAA85AF7EF5ABD5F78C679E79E68DF6B3C30E3BA477BDEB5D457DD7BF1A8600B0D43419F5C64307807BDEF39EE9831FFC608AFFB5742F109F7AC6279AEF78';
wwv_flow_imp.g_varchar2_table(45) := 'C73BBA6F6CE22D0800054C80B8F8472A8E27065696873FFCE1E9ED6F7F7BF5D8D1181601600C55EC660C430680FBDFFFFEE9F8E38F4F77BEF39DBB199CBDAE55E0924B2E49871E7A683AFCF0C309752830CA00F0E217BF381D74D04169D34D37ED90AEDF';
wwv_flow_imp.g_varchar2_table(46) := '5D7FE10B5FA89E718EA705E2A414E9F8DEF7BE77BF9DE8B0B58B2FBEB87A64F1E4934FEEB095E6BBF6186073ABAED71C2A00C4F1157FF96FBBEDB65D0FD1FED7221021201EEB8C4F392DDD088C3200C42343F128DCE69B6F3EF88B80E2EEFC7811C86D6F';
wwv_flow_imp.g_varchar2_table(47) := '7BDBAA3FCB2CEF7FFFFBD3C73FFEF1EA4699273DE949CBECAABAF336FEC5CB3A867E8B5D5C6C7FF39BDFA437BFF9CDD5FB10725804801CAAF07F7D182200DCE52E7749EF79CF7B527CCDB6CC129F6CFDE217BFA88EB37829D814967821D2061B6C50FD01';
wwv_flow_imp.g_varchar2_table(48) := 'F6D77FFDD769CD9AF5167E3C22CE0BF162B77FF9977F99025DEF631C65008897E0C445372662176FD89BA74A2B6F098BD7CADEEA56B74A0F7EF083D3631FFBD8854E2CF106AD784740EC270EB07996B8C8C75FD77163615C64E34529F1FFD7D55B08E7E9';
wwv_flow_imp.g_varchar2_table(49) := '5B18C56B42636CF104440E8B00904315860900F1D2ACFDF6DB2FBDE4252F5908E1F39FFF7C75AC7DF9CB5FAEDE7A1717FE95B7DE0D7D3E5A6840736EB4F20AE43886E23CFCB77FFBB7E9318F794CF5EFAFFEEAAFE6DC5B4A3FFDE94FD3231EF188F4A31F';
wwv_flow_imp.g_varchar2_table(50) := 'FD68EE6D6D305B60940120E7A2C701718B5BDCA27A56FF15AF7845F58AD32E97B8B0C6CB36E2AF99F3CF3FBFBAC8C66B3A2DB30504807C66489F9F0044DDE38D94F16AE708EDF32C1FFDE847ABAFE67EF6B39FA5F8F8BACD377BCED38FDCD60DC738E7C5';
wwv_flow_imp.g_varchar2_table(51) := 'A7A0F1E9EC4B5FFAD2EA35EDF32C5FFCE21753DCF7646957400068D7B3F1DEE24413EFE38F8FF2E38ED72E5ED5FB831FFC20BDF295AFAC9EAF8D8FD22CCD050480E6565DAFD967008897FCC4576DF3DCF11F8FAEEDBDF7DED55FFCF17B1F96D505E2D3D9';
wwv_flow_imp.g_varchar2_table(52) := 'B08D3F7E9EFCE42737A68A4F2B2338F8CD8DC6648D5614001A3175B752BC50E4410F7A503AEAA8A3AA4F05DA5AE2A6C197BDEC65D54B35A6F0B1635B6E2BFB1100DA165D7C7F7D05805BDEF296D58DB671E359D325C275BC7AFC7BDFFBDEE0F7D234ED73';
wwv_flow_imp.g_varchar2_table(53) := '0EEB6DB5D556E9F9CF7FFE5CD6F10966BCF744C86AAF8202407B964BED29DE271E1F1FDEEB5EF75A6A3F71B18FEF20E346C10B2EB860A97D4D796301209FEAF71500E2FE9CF8EBBFE9237FF1586EFC6094EFA6179B2B712FD39E7BEE593DB1D574897016';
wwv_flow_imp.g_varchar2_table(54) := '8F06E6F4B3E14DFB9EE37A0240465569E3D9FEF82D81DD77DF3DFDE4273FC96864E57565DA01209FD342F56AFD1E7E0C286EAA8D9F108FAFE39A2CF176CEA73CE52929BE66B32C2E10BFD81A9FBAC4CBCE9A2CF1474D7C521AF758589617C8E7485F7E2C';
wwv_flow_imp.g_varchar2_table(55) := 'A3D8437CCF1577202FF253C671B76C7CACF6AFFFFAAFA3B0187A1011A4E22530B396F879D33879F96EB2BB6AF5F109407CF2165FC33579EC2F1EED8B7756C4276D96E505EE74A73B55AF59DE79E79D1BEDECA94F7D6A3AE9A4937CE5D2486BF64A02400B';
wwv_flow_imp.g_varchar2_table(56) := '886DEE22FE1279EF7BDF5BFD153FCF128FF5C541147FC558161388BB95E391A578763902D8C31EF6B0F48C673C63E6CEE2E6A4D34F3F3DFDFBBFFFFB287E1C26C6138F62C61DEC71A18B7745C447DCE79E7BEE62A82D6CD5470078FAD39F5E3D2D53F778';
wwv_flow_imp.g_varchar2_table(57) := '6DB8BCEF7DEF4B2F7FF9CB5B18995DAC08C47D509FFBDCE7AAC706EB964F7DEA53D571E969A63AA9FAFF2E00D41BF5BE46FCE048FC1AE03CAFF9FDC637BE517D24198F20599A0BDCFEF6B7AF7ED635FE028CEF7EE3C2BFF1C61BA7B85B396E0AFB8BBFF8';
wwv_flow_imp.g_varchar2_table(58) := '8BDA9D5DFF39EFDA95335E21EE1F897F1102624CF1F29A0896F10449DCE9FEC31FFEB07A87C497BEF4A55EFFFAEA3A00C4CBBAE2A3FF2637FFFDC77FFC47F5976ADC9066694F202EFCF193C0714365DD121FFFDFE10E77A81E69B62C2720002CE7D7C9D6';
wwv_flow_imp.g_varchar2_table(59) := '71C23BEEB8E3AAE7919B2CF15749BC2EB3E9F7684DF639F675EE77BFFBA55D77DD35C5FFC685FF76B7BB5DF5E2A8B52F7EE83D5C2EBFFCF2EAA52C71C77B7CCD147F8935F9B9EA65E752D70120DEFA176FA1DC6DB7DD667635BEEE894F09E26B3A4BFB02';
wwv_flow_imp.g_varchar2_table(60) := 'F1086604CCF5D75FBF76E70F7CE003AB75575EB054BB8115D62A2000643A31E22EFEB83BB6C9FB01E223DA7FFAA77FAADEF267992D1037103DED694FAB5E2A728F7BDC23C55F7F96F905E2AB813801C777B1279E7862A72FBDE93A00ECB8E38ED5276E31';
wwv_flow_imp.g_varchar2_table(61) := '1F662D7103DA339FF9CC74C61967CC0F668B5A81F8E42DE653D4A36E891B07DFF6B6B765F3E6D0BAFEE6FADF05806C2AF3E7A5D87EFBEDD35BDFFAD6EA877FEA963821C51BB6DC197B63A9B878C4C7DA1B6DB451F5D2A5B8B722BE6F6CF257469DBBFF9E';
wwv_flow_imp.g_varchar2_table(62) := 'AA474D3FF399CF54F7AD7CFBDBDFEE84A4EB00F0C4273E311D7BECB1B56FA73BEBACB3D276DB6DD7C918ED34555FBBC5BD15871C72482D477C421AEF39894F652C8B0B08008BDB75BA65BC3A337E892C4E4E75CBC73EF6B1D56F5653E1142F1D89EF16E3';
wwv_flow_imp.g_varchar2_table(63) := 'CEED269FA8D479FBEF371688FB028E39E698EA53A8B67FF4A6EB0010CFF2C7531CB34261DC17117F9DC61DE8966E04E2D1DB7817C369A79D56DB40BCE82CCE8D718F8A653581FA937FFD1A74071388BBFAEB6E8A893BB6E30542BEFF5F7B99E2275DE375';
wwv_flow_imp.g_varchar2_table(64) := 'C8F1D7FFBCEF761FACF085361C4F0A1C79E491D5A393F197D9CAA72FCB0EA7EB00103F1F1E9F00CC5AE2FE87B8CF263E7AB67427104FE0FCD77FFD576D03DFFCE637ABAF0AB2BA11B0C0AB69815DAE9D1BA359216E4CAA3BE144028EE797DFF086378C66';
wwv_flow_imp.g_varchar2_table(65) := 'DC6D0D24BE3E39F8E083D3431FFAD0B676693F3502716F4084807854AEAD9373D70120DE4B1FF700CC5A2EBEF8E2EA0D74871D769839D0A1403C85132F31AB7B1C309EC688E33B7E6DD1B2B88000B0B85DE75BBEE94D6F4AAF7BDDEB66B613DFFBC70937';
wwv_flow_imp.g_varchar2_table(66) := '2E7496EB04E21E8A7089EFFB2DFD08C4BD1671B18E2703E242199F60ADFE1D6DF3534FD70160DF7DF7AD1E419BB5C498E218AB0B0AFD488FB7950800F176C5F8A1B4594B3CEE1C8FEEBAEF69B9B9D0FC285CAE1D5B2F20F0C637BEB10A0071025C6D8903';
wwv_flow_imp.g_varchar2_table(67) := '204E5E4D6E9C59A00B456E126F168BEF7477DA69A7D6FA3F951F549A35D79A60AE8480F82420E66F7C12B0EC3D01B9048008E4719F83A53B810800F19AE5CD37DF7C6623F15E8A786A430058AE1602C0727E9D6E2D00CCCF1B77FBC777B5F166B7D59FEB';
wwv_flow_imp.g_varchar2_table(68) := '5F7DBFF1975E3CEBFEDFFFFDDFD59BF0E223C6B1BCE8A78966DC2711BF50B9E9A69B5677C56FB1C516E98E77BCE3428F4B86637C85F5C94F7EB249D3ABAE23002CC557D4C60240BFE51200FAF59EAB3501A039D7CA448E1BFEF6DF7FFFEAB1BF7996B858';
wwv_flow_imp.g_varchar2_table(69) := '9D79E699D5B3EDF15ADFF81832BEF79DF2124F4F6CB3CD36D5A36F7FFFF77F5FFD146BBC1D719E257E9C2A6EB23BFBECB3E7D9ECCFD6150016A62B6E4301A0DF920900FD7ACFD59A003017577581FAF8C73F5E3DF6D774898F104F3DF5D4148F529E7CF2';
wwv_flow_imp.g_varchar2_table(70) := 'C95E2CB20ADC965B6E593D02F784273CA1728E47B69A2EF1F6BC08018BBEBB5D00682ADDF17A3D5C2D04808E6B7883DDF750D27E0734A6D60480E6D58C8B44BC912E5EEFBBDE9A3569F5BB26AEDB673C6E14DF51C7CD6A53FF6BBFA9745CFCE3A6B9708E';
wwv_flow_imp.g_varchar2_table(71) := '17B73459E2EB94D7BFFEF5D5EBAD1759048045D4CADC4600E8B76E0240BFDE73B5260034E77AEC631F5BBD3829BEBB6EB29C73CE39D5A393279C7042B57A5BCFAC3769BBB7753A3ABAE395ADF1E339F1029D263F9614E33DE59453D2B39EF5ACEABE8A79';
wwv_flow_imp.g_varchar2_table(72) := '1701605EB172D71700FAAD5D47A7887E0731D6D60480E6958D9F128DF7FB37B9F12F7E3B21EE15F8F4A73FDDA80107C98D99E246C1782C6ECF3DF7AC7D663BB68E0B7FDC451FEF6F9F771100E6152B777D01A0DFDA39B7F5EB3D576B024033AE78E63FBE';
wwv_flow_imp.g_varchar2_table(73) := 'BFBFD5AD6E55BBC1AF7FFDEBEA87933EF2918FD4AE6B85D902F1D77FFC5E45BC62B9C93D0151A3B88760DEC7020580E9CC4401A0DF5A0B00FD7ACFD59A00D08C2B2E422F78C10BD2CD6E76B3DA0DE263FF78A35BFC84B2657981F875C5F8AB7E871D76A8';
wwv_flow_imp.g_varchar2_table(74) := 'DDD9A2BF5AD95E0058FBE9AEE98B80A6FC1E80BE2E140240ED61D4EA0A7DD5B5D54E4F65670240B34AC72366753FE51A7B8A1F1089D7BEC6237E96F604227CC5D701759FC044E87AFBDBDF9E5EFDEA57CFD5787B0160EDCD0A007395A3D39505804E796F';
wwv_flow_imp.g_varchar2_table(75) := 'B47301A05FEFB95A1300EAB9E2C77EE206B3BA5787C69E9EF39CE7A40F7DE843F53BB5C65C02611F2F5F7AF2939F5CBB5DFC5AE02EBBEC52BBDEF5571000E6E22A7A650160B5F27573A9EE66AF454FC17C3A2F00D4D762AFBDF64A871E7A68EDDDE8F173';
wwv_flow_imp.g_varchar2_table(76) := 'B5F1FBE1DFF9CE77EA776A8DB905A20EF129403C21306BF9D6B7BE9576DF7DF7EA75AF4D1701A0A954F9EB0900FDD65000E8D77BAED604807AAE78E7FF3FFCC33FA40D36D860E6CA071E7860F59B09575C7145FD4EAD31B740DC88193F94136F0C9CB5C4';
wwv_flow_imp.g_varchar2_table(77) := '1B17E3098C786743D34500682A55FE7A0240BF351400FAF59EAB3501A09E2B3E52DE79E79D53BCC37ED6B2DB6EBB357EECAFBE556BDC50206EC08C30164F04CC5A2EBCF0C2EA9382B817A0E9220034952A7F3D01A0DF1A0A007D782FA82C00D417E79BDF';
wwv_flow_imp.g_varchar2_table(78) := 'FC66F5B3A0B396F3CF3FBFFAD839BE06B0742770D04107556FFC9BB55C76D965D55303FBEDB75FE38E08008DA98A5FB1DF00B0E089B978E5EB064020E3620A00F5C58947CBB6DE7AEB992B464878E10B5F98CE3AEBACFA1D5A636181BDF7DEBBFAEB7ED6';
wwv_flow_imp.g_varchar2_table(79) := 'D731F12440DC30B8CF3EFB346E4700684C55FC8AFD068036B8CABE8496DDFB36EA97F13E0480FAE25C70C105D54FD6CE5ABEF295AFA497BCE425E9DBDFFE76FD0EADB1B040FCE04F048059BF1878E5955756BF0910370D365D0480A652E5AF97430098D2';
wwv_flow_imp.g_varchar2_table(80) := '45714A632DEEE81000EA4B163F3413BF5B3F6B39FDF4D3AB2700BEFBDDEFD6EFD01A0B0BC4A72CF144C6269B6CB2EA3EAEBAEAAAEA371BF6D8638FC6ED0C1B00AE8D5F8A48175D7451F52AE3638E39A671BFAD38BF400E0160FE5E97BB85009071ED0480';
wwv_flow_imp.g_varchar2_table(81) := 'FAE20800F5467DAD31CE00F07F7A02403FB34800E8C779A51501A05FEFB95A1300EAB904807AA3BED61000FA921E6F3B0240BFB51500FAF59EAB3501A09E4B00A837EA6B0D01A02FE9F1B62300F45B5B01A05FEFB95A1300EAB904807AA3BED61000FA92';
wwv_flow_imp.g_varchar2_table(82) := '1E6F3B0240BFB51500FAF59EAB3501A09E4B00A837EA6B0D01A02FE9F1B633BE0090F72536EFDE8D779E371A990050CF2400D41BF5B58600D097F478DB195F00C8BB560240C6F56916002E4E471C71643AE49043321E49775D1300BAB39D77CF02C0BC62';
wwv_flow_imp.g_varchar2_table(83) := 'D6BFA18000D0EF9C100096F2EE96AF5900B8A4FA911B0160F5427A0FC05293BCF1C60240632A2BAE222000F43B35FE6E6E350000172749444154BABD82F53B96D1B52600D497D42700F5467DAD2100F4253DDE7604807E6B2B00F4EB3D576B02403D9700';
wwv_flow_imp.g_varchar2_table(84) := '506FD4D71A02405FD2E36D4700E8B7B60240BFDE73B52600D4730900F5467DAD2100F4253DDE7604807E6B2B00F4EB3D576B02403D9700506FD4D71A02405FD2E36D4700E8B7B60240BFDE73B52600D4730900F5467DAD2100F4253DDE7604807E6B2B00';
wwv_flow_imp.g_varchar2_table(85) := 'F4EB3D576B02403DD7D201C011508FDC700D01A02194D556151000FA9D1C4E7FFD7ACFD55AF30010EF013878AE7D8F65E5A503403110F91FAA0240319329DB8E0A00FD9626FFB34ABF1E59B5D63C00780FC0ACC2790F403FD35A00E8C779CCAD340D00E7';
wwv_flow_imp.g_varchar2_table(86) := '9F7F7EDA76DB6DD325975C32668ECEC72600744EBC7803C504800167D1743E01587C1EF5B5E5D803C0C1071F9C8E3EFAE8BE3827D94E04801FFCE00769B3CD369B39FE9FFDEC67E95EF7BA9700B0E42C19F0D4BD64CF27B079310160C05A080003E2DFA0';
wwv_flow_imp.g_varchar2_table(87) := 'E95203C02B5EF18ADA0BFBC5175F9C0E3FFCF074D86187E5033EC29E440038F7DC73D3461B6D347374E79C734EBADFFDEE972EBDF4D2112AF437A4690580C2462B00D41F080240BD515F6B941A005EFCE217A7638F3D7626D3E5975F9EDEF5AE77A557BD';
wwv_flow_imp.g_varchar2_table(88) := 'EA557D714EB29DDBDFFEF6E9BCF3CEAB1DFBD9679F9D1EF29087A4DFFEF6B7B5EB5A617581C22E89D32AA500505F6F01A0DEA8AF354A0D00CF7DEE73D3BBDFFDEE74939BDC6455AAABAEBA2A9D74D249E9A94F7D6A5F9C936B67DD75D74D0F7EF083D369';
wwv_flow_imp.g_varchar2_table(89) := 'A79D563BF6534F3D353DFEF18F4F975D7659EDBA5610008A9C0302407DD904807AA3BED62835003CF1894FAC3E01B8CD6D6E3393EAACB3CE4ADB6DB75D5F9C936BE7E637BF797AD9CB5E960E3DF4D0DAB11F7FFCF169AFBDF64A575C7145EDBA79AE90C7';
wwv_flow_imp.g_varchar2_table(90) := 'DFDE79F422CF0A0DDE2B01A0BE040240BD515F6B941A0076D8718774F45147A77BDEF39E33A92EB8E082F48C673C237DF9CB5FEE8B7452ED6CBCF1C6D5A72C3BEEB863EDB80F38E080EA9E8CDFFFFEF7B5EB5AC1270045CE0101A0BE6C0240BD515F6B94';
wwv_flow_imp.g_varchar2_table(91) := '1A00B6DE7AEBF4E637BF393DE1094F9849F5BBDFFD2E7DE0031F482F7DE94BFB229D543BF7BDEF7DD3D7BEF6B5B4FEFAEBD78EFB518F7A54FAC217BE90AEBEFAEADA75AD20001439070480FAB20900F5467DAD516A0058B3664D8ABF28F7DB6FBF5AAA1F';
wwv_flow_imp.g_varchar2_table(92) := 'FEF087E9918F7C64A31BD56A7766853F096CB8E186D55FF4F1B17EDDF2873FFC216DB9E596E997BFFC65DDAAFE7B8D80AF00329E2202407D7104807AA3BED628350084CFD39FFEF4F4FEF7BF3FC5F7D0B396F8C8F9BDEF7D6F7AF9CB5FDE17EB24DAD961';
wwv_flow_imp.g_varchar2_table(93) := '871DD2673EF399748B5BDCA276BCF115CCCE3BEFECE3FF5AA9FA15261C00F21FBA00503F8105807AA3BED6A802C06187A64D36DE64D526E36EFA0F7EF083698F3DF668DCAD75D659273DEE718F4B279E78628A3BC5672DAF7DED6BAB1BFAE6BD3B3C5E2A';
wwv_flow_imp.g_varchar2_table(94) := 'F396B7BCA5D1F7CFBFFAD5AFD2F39EF7BC74F2C927371E83155717D86AABADD27BDEF39EF4F0873FBC11D3DE7BEF5DD5F88F7FFC63A3F5ADB4BA40FE57C109574F00A82FBE00506FD4D71A257F0270D39BDEB47AC6FFA0830E6AC4F59DEF7C27EDBEFBEE';
wwv_flow_imp.g_varchar2_table(95) := '29FED7B2B8C0E69B6F9E5EF7BAD7A57819539325DEC770EF7BDF3BFDF8C73F4ED75E7B6D934DAC33434000C8787A0800F5C51100EA8DFA5AA3E40010460F7AD083D271C71D97EE7CE73B3722FBD297BE547D671DAFAEB5CC2F1017FF78ECEFF5AF7F7DE3';
wwv_flow_imp.g_varchar2_table(96) := '8D3FFAD18FA6673FFBD9E99A6BAE69BC8D157D0250E41C1000EACB2600D41BF5B546E901E096B7BC65F529407C8DD07439E38C33AA6DCE3CF3CCA69B582FA574C73BDE31C57C99E7CD8AF114467C4DF0F5AF7F5D00686916F904A025C82E762300D4AB0A';
wwv_flow_imp.g_varchar2_table(97) := '00F5467DAD517A0008A778142D6E06BCC73DEED198ED473FFA51F5576CDC9CF68B5FFCA2F176535CF16637BB59BAFFFDEF9F5EF0821754375ECEB37CF8C31FAEFEFAB7B4272000B467D9FA9E04807A5201A0DEA8AF35960E00AB9C8DFAB80970C5289E41';
wwv_flow_imp.g_varchar2_table(98) := '8F1BFCE226B3F5D65BAF315D7C241DEF08F8C8473E92E297EA2208B849ED3ABEF8B83F1EDD7BD8C31E56FDE51F37FECDB3FCFCE73F4F3BEDB4538A1F01F2DDFF3C72B3D71500DAB36C7D4F02403DA900506FD4D71A4B0780553ADA6700882EDCF6B6B7AD';
wwv_flow_imp.g_varchar2_table(99) := '6E068C2030EF128F097EF6B39F4D9FFBDCE7D2F7BFFFFD1437ADC573EBF1F4436717AECCCEE251AF785A237E5B61830D3648F1033F0F7DE843D32EBBEC92EE74A73BCD4B5A3DEEB7CF3EFBA477BEF39D736F6B0301A0D8392000D497AED70090D989B65E';
wwv_flow_imp.g_varchar2_table(100) := 'A7DF35C61200426D9B6DB6A96E08DC7EFBED17468C8BFE4F7FFAD3EA8535F1CEFAA9BCB52E2EFEF154C5A69B6E5AFDD51FAFF85D7409B34F7CE213737F5DB0687B53DBCE292DE38A0B00F5C5E93500D47767D26B8C29004421E3E76623042CF257EBA427';
wwv_flow_imp.g_varchar2_table(101) := '424B838F4F4CE2BE8A7807C425975CD2D25EEDE6FA020240C6F34100A82F8E00506FD4D71A630B00F151F6631EF398EAA782B7D8628BBE18B5F3FF05BEF5AD6F553FBF1C37595ABA111000BA716D65AF02403DA300506FD4D71A630B002B6EF1DAD977BC';
wwv_flow_imp.g_varchar2_table(102) := 'E31D297E34C8D2BD40DC50F9DDEF7E373DF399CFACEEA3B0742720007467BBF49E05807A4201A0DEA8AF35C61A00C22FDE3E1721E03EF7B94FA35FABEBCB7C6CEDC49313DFF8C637AAC704BD60A9FBEA0A00DD1B2FDC8200504F2700D41BF5B5C6980340';
wwv_flow_imp.g_varchar2_table(103) := '18C6CD6C871C7248F52C7A3CCF5EF7BB047DB98FA59D4B2FBD347DF18B5FAC7E27E237BFF9CD588695F53804808CCB2300D4174700A837EA6B8DB1078015C7F839E0030F3C306DBBEDB6D5DDEE71AF806571812BAFBC32C573FEF1634CF1298BA53F0101';
wwv_flow_imp.g_varchar2_table(104) := 'A03FEBB95B1200EAC904807AA3BED6984A0008CF7849D0F39FFFFCEAAFD5BBDDED6ED5D7026BD6ACE98BBAF876E27BFE784CF2A28B2E4AFFFCCFFF5C5DFC2FB8E082E2C755DA0004808C2B160160BFFDF69BD9C3783CE688238EA83E9A9CE212CF58DFFA';
wwv_flow_imp.g_varchar2_table(105) := 'D6B79E39F4D34F3FBDFAD191B8B1C8D2A2C00DCE1E7BEEB967350F37D964F59F038EE7BAE3E780E33BDEA64BFC85BDDB6EBB553F075CF7D7F6A23F07DCB42F6B5B6FD75D774D4F79CA53AAF7D4C7EF09443888AF07A2AF2BFF96D97FC9DBC6A37CD7FF17';
wwv_flow_imp.g_varchar2_table(106) := '17FE783152BCD12F2EFC1FFBD8C7AABFFE2DC3080800D773CF0DE380030E48AF79CD6BAA93C9DADE2216279A48D0471D75543AFCF0C387994103B71AAF5D8D37B7ADF6EB60F111ED29A79C52BD49EC7BDFFBDEC0BD1D77F3F1177184D678EDEBDA5E7A13';
wwv_flow_imp.g_varchar2_table(107) := '17C3B8C9EBF8E38FAF7E45AFE912DBC545F684134E98F9BDFBCA4FFAC6637B975D7659D3DDB7B65E7C02F080073CA0FA172F12BAC31DEE50CDCD8D36DAA8BA67208ED7BA00D35A673ADA519C87629C4DC612E7A6782572BC04E9C20B2F4CE79E7B6EF5F3';
wwv_flow_imp.g_varchar2_table(108) := 'C9A79D765A3AEFBCF33AEAA1DDCE2390DB356F9EBE5B9700010204FE24D0CFE97CDF7DF7ADFE30D96CB3CD66DA4718DC7FFFFDD52763817E664CC600BA46800081AE05C674A28D9FF08D7F7501E04D6F7A53F52B89967C05C6342FF355D6330204088C44';
wwv_flow_imp.g_varchar2_table(109) := '4000184921534A02C0786A6924040810E85CA0AF00E0E2D479290580EE89B540800081F108F41500C62396EF4884AC7C6BA367040810C84E4000C8AE240B7748005898CE86040810989E8000309E9A0B00E3A9A591102040A0730101A073E2DE1A10007A';
wwv_flow_imp.g_varchar2_table(110) := 'A3D610010204CA17100086AB61DB17ECB6F7379C8C96096425E0D0CAAA1C3AD39A8000D01AE5E03B72965AA404D41651B30D01022310E83C0038BFF6364B50F746AD21020408942FD07900289FA898110800C5944A4709102030BC8000307C0DDAEA8100';
wwv_flow_imp.g_varchar2_table(111) := 'D096A4FD10204060020202C0788A2C00645A4B85C9B430BA4560E20202C0782680EBCC786A39AE919899E3AA67CEA331D7E6AA8E00301757D62B9BFA599747E70810209097C0FEFBEF5FFDCCEF9A356B6676ECC8238F4CAF7CE52BFBEDBC2BDA5CDEDD73';
wwv_flow_imp.g_varchar2_table(112) := '75DFC25C03B6320102048A14C8E45CBADD76DBA5EDB7DF3E6DB8E186E99A6BAEB911E53AEBAC93E2DF57BFFAD5EA9F255F814CA654BE407A4680000102D709ACBBEEBA29FEC5457ED672F5D557AF3520CC6BE92235AF58F3F5D936B7B226010204081018';
wwv_flow_imp.g_varchar2_table(113) := '8D8000D0622961B688695704081020D0A9806B56A7BC764E8000010204F2141000F2ACCB12BD52D225F00ADD54CD0B2D9C6E131854C09963507E8D13204080008161047A0C003D36358CA5560910204080403102AECAC5944A470910204080407B02E507';
wwv_flow_imp.g_varchar2_table(114) := '80F247D05E35ED890001020408341470F96C086535020408102030260101604CD534160204081020D0504000581B149586D3C76A0408102050AA804B5DA995D36F0204081020B0848000B0049E4D09CC16707899210408B423D0C5D9A48B7DB6335A7B21';
wwv_flow_imp.g_varchar2_table(115) := '4080000102043A1310003AA3B563020408102090AF8000906F6DF48C00010204087426200074466BC704081020406039812E2FD25DEE7BB951DB9A000102048A177091C9B7846A936F6DF48C00010204087426200074466BC7040810209095802BDE9F95';
wwv_flow_imp.g_varchar2_table(116) := '034756B353670810204080403F0202403FCE5A21408000812C045CF656CA40228B09A9130408102040A05F81E90680E98EBCDF19A63502040810C852C06530CBB2E8148126020EDF264AD6E94AC0FCEB4AB6AFFDAA605FD2DA999E80A36B7A356F386253';
wwv_flow_imp.g_varchar2_table(117) := 'A32194D53A15300F3BE5B5730204080C2CE02C3F7001F26DDED4C8B736A3EF99C937FA121B200102190B3807675C1C5D2340800001025D091419008AEC7457159CCC7E557D32A5365002047A117056ED85592304088C41C00973982A4ECE7DAD036E5FA1';
wwv_flow_imp.g_varchar2_table(118) := 'FD3D0E333FB44A800001020408CC212000CC816555020408102030160101602C959C7B1CD32AFDB4463BF764B00101021314705E9C60D10DB967014759CFE09A2340A0898053531325EB10204080008191090800232BA8E1102040800081260202401325';
wwv_flow_imp.g_varchar2_table(119) := 'EB10204080008191090800232BA8E1102040800081260202401325EB10204080008191090800232BE8D48733D9093DD9814F7DC61B3F81C5059C3616B7B365EF02A66BEFE4C535688E1457321D1E4CC0D13218BD860910E84FC0A9AE3F6B2D9522E0A828';
wwv_flow_imp.g_varchar2_table(120) := 'A552FA391D0147E5746A6DA404061470AA19105FD3040810C85AC01522EBF22CDB39E55D56D0F60408102040A0400101A0C0A2E9320102040810585640005856D0F63D0898A63D206B8240B7020EE36E7D17D8BB922C806613020408102050BA8000507A';
wwv_flow_imp.g_varchar2_table(121) := '05F59F00010204082C2020002C806613020408102050BA8000507A05F59F00010204082C2020002C806613020408102050BA8000507A0533EBBF099559417487000102AB08385F9B1A0408102040608202024076455792EC4AA24304081018A180ABCD08';
wwv_flow_imp.g_varchar2_table(122) := '8B6A480408AC26E094676E1058117034980B040810204060820202C0048B6EC80408102040400030070810204080C0040504800916DD9009102040808000600E102040800081E205E6BF9CCFBF45F14806408000010204080800E600010204081098A080';
wwv_flow_imp.g_varchar2_table(123) := '0030C1A21B3201020408101000CC0102040810203041010160824537640204081020200098037909989179D5436F081018AD80D3ED684B6B60040810204060750101C0EC2040800001021314100026587443264080000102028039408000010204262820';
wwv_flow_imp.g_varchar2_table(124) := '004CB0E8864C80000102040400738000010204084C5040009860D10D9900010204080800E600010204561170823435C62C607E8FB9BAC6468000010204045C73800001020408105811E8E013800E76A95E040810204020A5E40AD3DE3460D99EA53D1120';
wwv_flow_imp.g_varchar2_table(125) := '4080404301179F86501DAE366C0D866DBD4356BB264080000102790BB804E75D1FBD2340800001029D0808009DB0DA290102040810C85B4000C8BB3E7A4780C0E4049C962757F281066CA60D04AF59020408102030A4800030A4BEB60910204080C04002';
wwv_flow_imp.g_varchar2_table(126) := '02C040F09A254080000102430A080043EA77DDF694AA3BA5B1763D6FEC9F00814908386D4EA2CC06498000010204FE5C400030230810204080C0040504800916DD9009102040808000600E102040800081090A0800132CBA2113204080000101A0A439A0';
wwv_flow_imp.g_varchar2_table(127) := '5A25554B5F09102090B5804B4AD6E5D1390204081020D08D800030B72BB2B9C96C4080000102D909B89A6557121D224080000102DD0B2C100016D8A4FB7168810001022D0838BFB5806817850898ED85144A370910204080409B0202409B9AF645804096';
wwv_flow_imp.g_varchar2_table(128) := '024E74599645A70616705C0C5C00CD1320408000812104048021D4B549800001020406161000661600CFC0F353F304081020D091802B5C47B0764B80000102047216100072AE8EBE1120408000818E0404808E60BBDFADD2756FAC050204088C57C05564';
wwv_flow_imp.g_varchar2_table(129) := 'BCB535320204081020B0AA80006072942760D69657333D2640203B01A7D2EC4AA2430408102040A07B811E03408F4D75EFA605020408102050B480AB72D1E5ABEBBCF2D609F9EF04081098AA802BC4542B3FD1719BF0132DBC611320702301E743938200';
wwv_flow_imp.g_varchar2_table(130) := '81D6059C585A27B54302AD0B384E5B27B5C376044CCD761CED850001026B1770966D6966806C09D26E08102040A01701D7AD5E9835428000010204F2121000F2AA87DE1020408000815E0404805E983542A0070147730FC89A20301E01A78CF1D4D2487A';
wwv_flow_imp.g_varchar2_table(131) := '1470E0F488ADA9E2051C2F7996505DF2AC8B5E1120408000814E0504804E79ED9C0001020408E4292000E45917BD2240800001029D0A08009DF2DA390102040810C8534000C8B32E7A4580000102043A1510003AE5B573020408102090A7800090675D46';
wwv_flow_imp.g_varchar2_table(132) := 'D62BD36C6405CD6E3866587625D1A102041C3705144917091020408040DB020240DBA2F64780000102040A1010000A28922EDE50C0B43527081020B0AC8033E9B282B6274080000102190BAC76A11700322E9AAE112040800081AE040480AE64ED970081';
wwv_flow_imp.g_varchar2_table(133) := 'E90838934EA7D6231AA9693BA2621A0A0102040810682A20003495B21E01020408101891800030A2621A0A01024E69E60081A602C51E2DC576BC6965AC47800081890938AFF75B70DEFD7A6B8D0001020408642120002C5906804B02DA9C000102040611';
wwv_flow_imp.g_varchar2_table(134) := '70FD1A845DA304081020406058010160587FAD1320408000814104048041D8354A80000102048615100086F5D73A01020408101844400018845DA304081020406058010160587FAD1320408000814104048041D8354A80000102048615100086F5D73A01';
wwv_flow_imp.g_varchar2_table(135) := '026B117062322D08742FE038EBDE580B048A13706228AE644577D87C1BA67CDC8771D72A010204262AE0B2934BE15522974AE8070102040810E8514000E8115B5304081020402017010120974A74DC0F85EE1878B0DDABECAAF468069B951A2E43C02152';
wwv_flow_imp.g_varchar2_table(136) := '469DF4920001020408B42A2000B4CA696704C62FE0A431FE1A1BE134041CCBD3A8B3511220909580536F56E5986867CCC28916DEB00910204060DA0202C0B4EB6FF4040810203051010160A285376C0204081098B6800030EDFA1B3D010204084C544000';
wwv_flow_imp.g_varchar2_table(137) := '9868E10D9B00010204A62D20004CBBFE464F8000010213151000265A78C32640800081690B0800D3AEBFD113204080C044050480AE0A4FB62B59FB25306A01A78E51973783C15D37C3CCB50CCAA10B04081020B08A80AB546753036D67B4764C80000102';
wwv_flow_imp.g_varchar2_table(138) := '04F2151000F2AD8D9E11204080401102655E4ACBEC7511134227091020D09E8093757B96F6F47F02E69499408000010204262820004CB0E8864C80000102040400738000010204084C5040009860D10D990001026D0BB898B42DDAFDFED4AC7BE3625A30';
wwv_flow_imp.g_varchar2_table(139) := '198A29958E122030A4C0484E962319C6903341DB0408102040A03C81890680890E7BE0F9497DE002689E000102D713704E361DD62A6062981804081018B780F37C27F5C5DA09AB9D162060EE1750245D245009385A4D84890998F2132B7899C3354DCBAC';
wwv_flow_imp.g_varchar2_table(140) := '5B61BD36CD0A2B98EE122040800081360404803614ED83000102040814262000145630DD25D08A8023BF15463B21707D81D20EABD2FA6BB6112040800001022D0808002D20DA050102040810284D400028AD62FA4B80000102045A1010005A40B40B0204';
wwv_flow_imp.g_varchar2_table(141) := '081020509A8000505AC5F4970001020408B42020005C0F11460B33CA2E08102040A00801D7BC22CAA4930408102040A05D0101A05D4F7B2340C059A59039A0508514AAB36E9A019DD1DA310102040810C8574000C8B7367A4680000102043A1310003AA3';
wwv_flow_imp.g_varchar2_table(142) := 'B563020408102090AF8000906F6DF48C00010204087426200074466BC70408102040205F010120DFDA94D13333A88C3AE9250102046E20E0F46D4A102040800081090A0800132CBA21132040800081FF07121D2F4B342755EC0000000049454E44AE4260';
wwv_flow_imp.g_varchar2_table(143) := '82';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(64709621326226723547)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708924659554723333)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15585861230576
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708924969235723333)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708925242232723333)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708925568534723334)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708925881834723334)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708926129183723334)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708926467805723334)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708926766476723334)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708927027559723334)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708927338428723335)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708927651676723335)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708927944604723335)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15585861230579
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(64708928226785723335)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15585861230583
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(64709622631508723548)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15585861233149
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/user_not_logged_in
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(64750796649080893637)
,p_name=>'User Not Logged In'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RETURN apex_custom_auth.get_username IS NULL;',
''))
,p_version_scn=>15585886007981
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(64786162752472875979)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(64786162445113875978)
,p_version_scn=>15585899005543
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64786168789291875983)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(64786168789291875983)||'.'
,p_location=>'STATIC'
,p_version_scn=>15585899005587
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786169006406875983)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786169402593875984)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786169824676875984)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64786181166725875991)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(64786181166725875991)||'.'
,p_location=>'STATIC'
,p_version_scn=>15585899005707
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786181439845875991)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786181824652875992)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786182299285875992)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(64786182653375875992)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(64709622970687723548)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(64843738778928183866)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(64708929199517723336)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64708929309974723336)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64726612473955204324)
,p_short_name=>'Perfil de Usuario'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64734847824056332930)
,p_short_name=>'Registros'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64735027844548648788)
,p_short_name=>'Test de estilos de aprendizaje'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64741791266759970568)
,p_short_name=>'Selector'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64776254074079613174)
,p_short_name=>'Grupos'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64778228993006972929)
,p_short_name=>'Curso Matematicas'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64785874507267187078)
,p_short_name=>'Algebra'
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64788379962668966285)
,p_short_name=>'Trigonometria'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64804686717291303541)
,p_short_name=>'VisualPage'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64809283646957390615)
,p_short_name=>'AuditivoPage'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64811156865269440590)
,p_short_name=>'KinePage'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64812493786541472757)
,p_short_name=>'LecPage'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64823928469835896747)
,p_short_name=>'Inteligencia Artificial'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(64838409191359360918)
,p_short_name=>'Table'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/drawer
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708929923411723337)
,p_theme_id=>42
,p_name=>'Drawer'
,p_internal_name=>'DRAWER'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Drawer-page t-PageTemplate--drawer #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Drawer" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Drawer-header">#REGION_POSITION_01#</div>',
'  <div class="t-Drawer-bodyWrapperOut">',
'    <div class="t-Drawer-bodyWrapperIn">',
'      <div class="t-Drawer-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Drawer-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>11
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Drawer-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1659739787629394056
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708930278543723337)
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708930546347723337)
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708930821237723337)
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708932849070723341)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim t-PageTemplate--leftCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main class="t-Body-mainContent" id="main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708933142612723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708933486028723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708933707414723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708934084256723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708934398727723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708934669413723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708934950610723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708935203888723342)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708935570270723343)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708935892405723343)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708936198460723343)
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708936591521723343)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim t-PageTemplate--leftRightCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708936881531723343)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708937149657723343)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708937448286723343)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708937786587723343)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708938079005723343)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708938321013723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708938695684723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708938956181723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708939207900723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708939548028723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708939827230723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708940148870723344)
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708940573435723344)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login t-PageTemplate--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#',
'<div class="t-Login-bg">',
'  #BACKGROUND_IMAGE#',
'  <div class="t-Login-bgImg"></div>',
'</div>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708940847516723345)
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_name=>'Background Image'
,p_placeholder=>'BACKGROUND_IMAGE'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708941103006723345)
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708941448261723345)
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708941796595723345)
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708943169326723346)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim t-PageTemplate--marquee #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708943480920723346)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708943705309723346)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708944007406723346)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708944361111723346)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708944637574723346)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708944915957723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708945265982723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708945502784723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708945892009723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708946100723723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708946475245723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708946736275723347)
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708947118753723348)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav t-PageTemplate--minimal" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708947460014723348)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708947756553723348)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708948000372723348)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708948316603723348)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708948654554723348)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708948919543723349)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708949244414723349)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708949554051723349)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708949814389723349)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708950127748723349)
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708950515092723350)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard t-PageTemplate--dialog #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMEN'
||'T#)'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708950889502723350)
,p_page_template_id=>wwv_flow_imp.id(64708950515092723350)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708951185452723350)
,p_page_template_id=>wwv_flow_imp.id(64708950515092723350)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708951406104723350)
,p_page_template_id=>wwv_flow_imp.id(64708950515092723350)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708952061289723350)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim t-PageTemplate--rightSideCol #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>(sessionStorage.getItem("ORA_WWV_apex.toggleCore.right.&APP_ID..&APP_PAGE_ID..preferenceForExpanded") === "true") ? document.getElementById(''t_PageBody'').classList.add(''js-rightExpanded'') : document.getElementById('''
||'t_PageBody'').classList.add(''js-rightCollapsed'')</script>',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708952346984723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708952627944723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708952976857723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708953233419723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708953539473723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708953846305723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708954199922723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708954417866723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708954718649723351)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708955037642723352)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708955312758723352)
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708955782694723352)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708956017280723352)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708956393022723352)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708956694038723352)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708956971636723352)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708957258768723353)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708957516065723353)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708957874000723353)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708958166792723353)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708958434525723356)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708958752677723356)
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(64708959166963723356)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard t-PageTemplate--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_js_init_code=>'apex.theme42.dialog(#PAGE_URL#,{title:#TITLE#,h:#DIALOG_HEIGHT#,w:#DIALOG_WIDTH#,mxw:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,dlgCls:''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#DIALOG_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#'
||')'
,p_dialog_js_close_code=>'apex.theme42.dialog.close(#IS_MODAL#,#TARGET#)'
,p_dialog_js_cancel_code=>'apex.theme42.dialog.cancel(#IS_MODAL#)'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708959433348723356)
,p_page_template_id=>wwv_flow_imp.id(64708959166963723356)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708959738899723356)
,p_page_template_id=>wwv_flow_imp.id(64708959166963723356)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708960033158723357)
,p_page_template_id=>wwv_flow_imp.id(64708959166963723356)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64709505371453723420)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel  t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></s'
||'pan></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidd'
||'en="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64709506018637723420)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# #ONCLICK# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# #ONCLICK# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(64709506186603723421)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#</span><span '
||'class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# #ONCLICK# type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL'
||'#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconLeft'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708960660810723357)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY##SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708960926557723357)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708961299715723357)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708961540522723357)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708961862692723358)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708962160370723358)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708962497952723358)
,p_plug_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708965890919723359)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708966104303723360)
,p_plug_template_id=>wwv_flow_imp.id(64708965890919723359)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708966428697723360)
,p_plug_template_id=>wwv_flow_imp.id(64708965890919723359)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708966765411723360)
,p_plug_template_id=>wwv_flow_imp.id(64708965890919723359)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708967001585723360)
,p_plug_template_id=>wwv_flow_imp.id(64708965890919723359)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708967239567723360)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708967590760723360)
,p_plug_template_id=>wwv_flow_imp.id(64708967239567723360)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708967817171723360)
,p_plug_template_id=>wwv_flow_imp.id(64708967239567723360)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708968100594723360)
,p_plug_template_id=>wwv_flow_imp.id(64708967239567723360)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708968419943723360)
,p_plug_template_id=>wwv_flow_imp.id(64708967239567723360)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708968650228723360)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'      #SUB_REGIONS#',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708968947502723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708969264852723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708969518585723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708969812985723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708970186740723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708970427528723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708970797084723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708971006205723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708971363509723361)
,p_plug_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/cards_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708972915555723362)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-CardsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Cards Container'
,p_internal_name=>'CARDS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2071277712695139743
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708973293884723362)
,p_plug_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708973524489723362)
,p_plug_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708973818252723362)
,p_plug_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708974836759723363)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Region-header">',
'    <div class="t-Region-headerItems t-Region-headerItems--title">',
'      <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
'  </div>',
'  <div role="region" aria-label="#TITLE#" class="t-Region-bodyWrap">',
'    <div class="t-Region-buttons t-Region-buttons--top">',
'      <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'      <div class="t-Region-buttons-right">#NEXT#</div>',
'    </div>',
'    <div class="t-Region-body">',
'      #BODY#',
'      <div class="t-Region-carouselRegions">#SUB_REGIONS#</div>',
'    </div>',
'    <div class="t-Region-buttons t-Region-buttons--bottom">',
'      <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'      <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'    </div>',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#APEX_FILES#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708975132209723363)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708975448558723363)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708975734592723363)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708976051931723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708976330667723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708976679136723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708976928677723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708977222249723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708977587158723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708977867188723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708978192250723364)
,p_plug_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708984756291723367)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" data-region-id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--controls"><span class="t-Button t-Button--icon t-Button--hideShow"><span class="a-Icon _a-Collapsible-icon" aria-hidden="true"></span></span></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 id="#REGION_STATIC_ID#_heading" class="t-Region-title" data-apex-heading><button class="t-Region-titleButton" type="button">#TITLE#</button></h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>',
'    (() => {',
'        const region = document.getElementById(''#REGION_STATIC_ID#'').classList;',
'        const pref = sessionStorage.getItem(''ORA_WWV_apex.toggleCore.a_Collapsible_#REGION_ID#.&APP_ID..&APP_PAGE_ID..preferenceForExpanded'');',
'        if (region.contains(''js-useLocalStorage'')) { region.toggle(''is-collapsed'', pref === ''false'' || region.contains(''is-collapsed'')); }',
'    })();',
'</script>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708985006386723367)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708985314998723367)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708985621096723367)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708985989350723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708986278788723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708986590645723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708986822904723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708987129246723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708987429853723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708987724641723368)
,p_plug_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708994560116723371)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h2 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY##SUB_REGIONS#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708994819788723371)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708995120373723372)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708995435595723372)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708995738027723372)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708996063781723372)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708996346531723372)
,p_plug_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64708999151451723373)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-top">',
'    <div class="t-HeroRegion-wrap">',
'      <div class="t-HeroRegion-col t-HeroRegion-col--beforeIcon">#UP#</div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--left">#REGION_IMAGE#<span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-HeroRegion-title" data-apex-heading>#TITLE#</h1>',
'        #BODY#',
'      </div>',
'      <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'    </div>',
'  </div>',
'  <div class="t-HeroRegion-bottom">#SMART_FILTERS#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_image_template=>'<img class="t-HeroRegion-icon" src="#REGION_IMAGE_URL#" alt="" />'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708999457348723373)
,p_plug_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64708999710961723373)
,p_plug_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709000065775723374)
,p_plug_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709400310257723374)
,p_plug_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709400649995723374)
,p_plug_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/image
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709402691127723375)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="t-ImageRegion #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#><img src="#REGION_IMAGE_URL#" alt="#REGION_IMAGE_ALT_TEXT#" #REGION_IMAGE_ATTRIBUTES# /></div>'
,p_page_plug_template_name=>'Image'
,p_internal_name=>'IMAGE'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ImageRegion--auto:t-ImageRegion--cover:t-ImageRegion--square:t-ImageRegion--noFilter'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1673953645642781634
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709402922022723375)
,p_plug_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709403293079723376)
,p_plug_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709408023100723378)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709408343790723378)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709408653450723378)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709408997848723378)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709409210212723378)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709409571143723378)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709409848699723379)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709410173694723379)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709410474402723379)
,p_plug_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_drawer
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709412680939723380)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'  <div id="#REGION_STATIC_ID#" class="t-DrawerRegion js-dialog-class-ui-dialog--drawer #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'    <div class="t-DrawerRegion-wrap">',
'      <div class="t-DrawerRegion-bodyWrapperOut">',
'        <div class="t-DrawerRegion-bodyWrapperIn">',
'          <div class="t-DrawerRegion-body">#BODY##SUB_REGIONS#</div>',
'        </div>',
'      </div>',
'      <div class="t-DrawerRegion-buttons">',
'        <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'          <div class="t-ButtonRegion-wrap">',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--left">',
'              <div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div>',
'            </div>',
'            <div class="t-ButtonRegion-col t-ButtonRegion-col--right">',
'              <div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Inline Drawer'
,p_internal_name=>'INLINE_DRAWER'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal'
,p_preset_template_options=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1659526333647509386
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709412943015723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709413215640723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709413569861723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709413820422723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709414161253723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709414441337723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709414793238723380)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709415025731723381)
,p_plug_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709417218998723381)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709417572603723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709417839428723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709418112309723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709418492030723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709418798568723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709419072035723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709419325217723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709419648702723382)
,p_plug_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709422626403723384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'    <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'    #PREVIOUS#',
'    #BODY#',
'    #SUB_REGIONS#',
'    #NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709422948973723384)
,p_plug_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709423215881723384)
,p_plug_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709423521352723384)
,p_plug_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709423812367723384)
,p_plug_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709424116813723384)
,p_plug_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/item_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709424791586723384)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ItemContainer #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ItemContainer-start">#BUTTON_START#</div>',
'  <div class="t-ItemContainer-item">#BODY#</div>',
'  <div class="t-ItemContainer-end">#BUTTON_END#</div>',
'</div>'))
,p_page_plug_template_name=>'Item Container'
,p_internal_name=>'ITEM_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1568547778806319863
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709425068921723384)
,p_plug_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_name=>'Item'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709425379486723385)
,p_plug_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_name=>'Button End'
,p_placeholder=>'BUTTON_END'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709425667713723385)
,p_plug_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_name=>'Button Start'
,p_placeholder=>'BUTTON_START'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709427241641723385)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    #REGION_IMAGE#',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <h2 class="t-Login-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_image_template=>'<img class="t-Login-logo" src="#REGION_IMAGE_URL#" alt="" data-app-icon />'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709427505566723386)
,p_plug_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709427820056723386)
,p_plug_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709428193653723386)
,p_plug_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709428419702723386)
,p_plug_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709428703156723386)
,p_plug_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_results_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709429738336723386)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ResultsRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-ResultsRegion-search">#SEARCH_FIELD#</div>',
'  #BODY#',
'  #SUB_REGIONS#',
'</div>',
''))
,p_page_plug_template_name=>'Search Results Container'
,p_internal_name=>'SEARCH_RESULTS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>11
,p_default_template_options=>'u-colors'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>1554292095258992441
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709430088251723387)
,p_plug_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_name=>'Search Results'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709430335673723387)
,p_plug_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_name=>'Search Field'
,p_placeholder=>'SEARCH_FIELD'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709430694342723387)
,p_plug_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709432400707723387)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709432713955723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709433049771723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709433310758723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709433671770723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709433956318723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709434295336723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709434523831723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709434878016723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709435142906723388)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709435436506723389)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709435756587723389)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709436017502723389)
,p_plug_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709442280785723392)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">#SUB_REGIONS#</div>',
'</div>'))
,p_sub_plug_template=>'<div data-label="#SUB_REGION_TITLE!ATTR#" id="SR_#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709442503708723392)
,p_plug_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709442879740723392)
,p_plug_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709444813843723393)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#">',
'  <div class="t-BreadcrumbRegion-top">',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--start">#UP#</div>',
'    <div class="t-BreadcrumbRegion-body">',
'      <div class="t-BreadcrumbRegion-breadcrumb">#BODY#</div>',
'        <div class="t-BreadcrumbRegion-title">',
'        <h1 id="#REGION_STATIC_ID#_heading" class="t-BreadcrumbRegion-titleText" data-apex-heading>#TITLE#</h1>',
'      </div>',
'    </div>',
'    <div class="t-BreadcrumbRegion-buttons t-BreadcrumbRegion-buttons--end">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-bottom">#SMART_FILTERS#</div>',
'</nav>',
''))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'navigation'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709445196782723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709445460580723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709445767300723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709446010192723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709446352430723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709446652466723393)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709446908869723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709447282770723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709447511391723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709447857100723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709448175434723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Search Field and Smart Filters'
,p_placeholder=>'SMART_FILTERS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709448424427723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709448753666723394)
,p_plug_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_name=>'Up'
,p_placeholder=>'UP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(64709449991494723395)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">#BODY#</div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709450261836723395)
,p_plug_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709450564763723395)
,p_plug_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709450830447723395)
,p_plug_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709451153447723395)
,p_plug_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(64709451442678723395)
,p_plug_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709477833222723407)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02# is-current" aria-current="page">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'    <span class="t-BadgeList-label">#TEXT#</span>',
'    <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709481895011723409)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#" aria-current="page">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap">',
'        <h3 class="t-Card-title">#TEXT#</h3>',
'        <h4 class="t-Card-subtitle">#A07#</h4>',
'      </div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#" aria-hidden="true"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709487435220723411)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-LinksList-item #A03#">',
'  <a href="#LINK#" class="t-LinksList-link" #A02#>',
'    <span class="t-LinksList-icon" aria-hidden="true"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span>',
'    <span class="t-LinksList-label">#TEXT#</span>',
'    <span class="t-LinksList-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709489096849723412)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title" aria-current="page">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#TEXT#</h3>',
'      <p class="t-MediaList-desc">#A01#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#A02#</span>',
'    </div>',
'  </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709491845134723413)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709492801793723414)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" #APEX_CSP_DISPLAY_NONE#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut'
,p_a06_label=>'Link Target'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709493427880723414)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" title="#A04#" target="#A06#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" #APEX_CSP_DISPLAY_NONE# id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#" aria-current="page">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#" title="#A04#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true" #IMAGE_ATTR#></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow" aria-hidden="true"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li class="#A02#" data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="#A02#" data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_a04_label=>'Title Attribute'
,p_a06_label=>'Link Target'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709493836847723414)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
'</li>'))
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_default_template_options=>'js-defaultCollapsed'
,p_preset_template_options=>'t-TreeNav--styleA:js-navCollapsed--hidden'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&"APP_TEXT$APEX.TEMPLATE.APPLICATION".">',
'  <div class="a-TreeView t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL".">',
'    <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </ul>',
'  </div>',
'</div>',
'<script #APEX_CSP_NONCE_ATTRIBUTE#>',
'(() => {',
'  const pref = "ORA_WWV_apex.toggleCore.nav.&APP_ID..preferenceForExpanded",',
'        nav  = document.getElementById(''t_TreeNav'').classList,',
'        body = document.getElementById(''t_PageBody'');',
'  if ( !sessionStorage.getItem( pref ) ) { sessionStorage.setItem( pref, !nav.contains(''js-defaultCollapsed'') ); }',
'  if ( nav.contains(''js-navCollapsed--default'') ) {',
'      body?.classList.add(''js-navCollapsed--icons'');',
'      if ( sessionStorage.getItem( pref ) === "false" ) { body?.classList.add(''js-navCollapsed''); }',
'  }',
'  if ( sessionStorage.getItem( pref ) === "true" && window.matchMedia("(min-width: " + getComputedStyle(document.documentElement).getPropertyValue("--js-mq-lg") + ")").matches) { body?.classList.add(''js-navExpanded''); }',
'  for (const label of document.querySelectorAll(".a-TreeView .a-TreeView-label")) {',
'      label.textContent = label.textContent.replaceAll(/\[(.*?)\]/ig, '''');',
'  }',
'})();',
'</script>'))
,p_before_sub_list=>'<ul #APEX_CSP_DISPLAY_NONE#>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="false" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#">',
'  <a href="#LINK#" title="#A04#" #APEX_CSP_DISPLAY_NONE# target="#A06#">#TEXT_ESC_SC#</a>',
'  <div class="a-TreeView-node a-TreeView-node--topLevel" aria-hidden="true">',
'    <div role="none" class="a-TreeView-row"></div>',
'    <div role="none" class="a-TreeView-content">',
'      <span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>',
'      <span class="a-TreeView-label">#TEXT_ESC_SC#</span>',
'    </div>',
'  </div>',
''))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#" data-shortcut="#A05#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709495685030723415)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item is-active #A03#" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Tabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-Tabs-link #A04#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-Tabs-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_mega_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709497248753723416)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--noSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_list_template_name=>'Top Navigation Mega Menu'
,p_internal_name=>'TOP_NAVIGATION_MEGA_MENU'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-MegaMenu #COMPONENT_CSS_CLASSES#" id="t_MenuNav" #APEX_CSP_DISPLAY_NONE#>',
'  <div class="a-Menu-content t-MegaMenu-container">',
'    <div class="t-MegaMenu-body">',
'    <ul class="t-MegaMenu-list t-MegaMenu-list--top">'))
,p_list_template_after_rows=>' </ul></div></div></div>'
,p_before_sub_list=>'<ul class="t-MegaMenu-list t-MegaMenu-list--sub">'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item t-MegaMenu-item--top t-MegaMenu-item--hasSub #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item is-active #A04#" data-current="true" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MegaMenu-item #A04#" data-current="false" data-id="#A01#" data-shortcut="#A05#">',
'  <span class="a-Menu-item t-MegaMenu-itemBody #A08#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    <a class="a-Menu-label t-MegaMenu-labelWrap" href="#LINK#" target="#A06#">',
'      <span class="t-MegaMenu-label">#TEXT_ESC_SC#</span>',
'      <span class="t-MegaMenu-desc">#A03#</span>',
'    </a>',
'    <span class="t-MegaMenu-badge #A07#">#A02#</span>',
'  </span>'))
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Description'
,p_a04_label=>'List Item Class'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_a07_label=>'Badge Class'
,p_a08_label=>'Menu Item Class'
,p_reference_id=>1665447133514362075
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709499270001723417)
,p_list_template_current=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a></li>'
,p_list_template_noncurrent=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul #APEX_CSP_DISPLAY_NONE#>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li class="a-MenuBar-item a-Menu--current" data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ES'
||'C_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li class="a-MenuBar-item" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a class="a-MenuBar-label" href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Menu Item ID / Action Name'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute (Used By Actions Only)'
,p_a05_label=>'Shortcut Key'
,p_a06_label=>'Link Target'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709500206344723417)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03# is-active" aria-current="page" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavTabs-item #A03#" id="#A01#">',
'  <a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    <span class="t-NavTabs-label">#TEXT_ESC_SC#</span>',
'    <span class="t-NavTabs-badge #A05#">#A02#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(64709501814377723418)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" aria-current="step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#">',
'  <div class="t-WizardSteps-wrap" data-link="#LINK#">',
'    <span class="t-WizardSteps-marker" aria-hidden="true"></span>',
'    <span class="t-WizardSteps-label">#TEXT# <span aria-hidden="true" class="t-WizardSteps-labelState"></span></span>',
'  </div>',
'</li>'))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>'<ul aria-label="#CURRENT_PROGRESS#" class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709452482286723396)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" aria-hidden="true"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709452618579723396)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-wrap u-color">',
'    <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'    <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709456661105723398)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709462077605723400)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'  <div class="t-Comments-icon">',
'    <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'  </div>',
'  <div class="t-Comments-body">',
'    <div class="t-Comments-info">',
'      #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'    </div>',
'    <div class="t-Comments-comment">',
'      #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709463253580723401)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/contextual_info
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709466499562723402)
,p_row_template_name=>'Contextual Info'
,p_internal_name=>'CONTEXTUAL_INFO'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContextualInfo-item">',
'  <span class="t-ContextualInfo-label">#COLUMN_HEADER#</span>',
'  <span class="t-ContextualInfo-value">#COLUMN_VALUE#</span>',
'</div>'))
,p_row_template_before_rows=>' <div class="t-ContextualInfo #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_reference_id=>2114325881116323585
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709467680661723403)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </a>',
'</li>',
''))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'  <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'    <div class="t-MediaList-iconWrap" aria-hidden="true">',
'      <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'    </div>',
'    <div class="t-MediaList-body">',
'      <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'      <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'    </div>',
'    <div class="t-MediaList-badgeWrap">',
'      <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'    </div>',
'  </div>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709470699760723404)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709470830640723404)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" id="report_table_#REGION_STATIC_ID#" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ARIA_SORT# #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709473446354723405)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#" role="presentation">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709473895217723405)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">#COLUMN_HEADER#</dt>',
'<dd class="t-AVPList-value">#COLUMN_VALUE#</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(64709476088486723406)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow" aria-hidden="true"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow" aria-hidden="true"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709503218475723419)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709503370093723419)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709503469135723419)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709503555183723419)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709503661176723419)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709504352907723420)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT#</div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>',
''))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(64709504837227723420)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-inputContainer">',
'  <div class="t-Form-itemRequired-marker" aria-hidden="true"></div>',
'  <div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'))
,p_after_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ITEM_POST_TEXT##HELP_TEMPLATE#',
'  </div>',
'  <div class="t-Form-itemAssistance">',
'    #ERROR_TEMPLATE#',
'    <div class="t-Form-itemRequired" aria-hidden="true">#REQUIRED#</div>',
'  </div>',
'  #INLINE_HELP_TEMPLATE#',
'</div>'))
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<div class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</div>'
,p_error_template=>'<div class="t-Form-error">#ERROR_MESSAGE#</div>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(64709507607921723421)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active" aria-current="page"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(64709507853287723421)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text" autofocus'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(64709507727412723421)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(64709596213139723533)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(64708955782694723352)
,p_default_dialog_template=>wwv_flow_imp.id(64708950515092723350)
,p_error_template=>wwv_flow_imp.id(64708940573435723344)
,p_printer_friendly_template=>wwv_flow_imp.id(64708955782694723352)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(64708940573435723344)
,p_default_button_template=>wwv_flow_imp.id(64709506018637723420)
,p_default_region_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_chart_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_form_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_reportr_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_tabform_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_wizard_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_menur_template=>wwv_flow_imp.id(64709444813843723393)
,p_default_listr_template=>wwv_flow_imp.id(64709432400707723387)
,p_default_irr_template=>wwv_flow_imp.id(64709422626403723384)
,p_default_report_template=>wwv_flow_imp.id(64709470830640723404)
,p_default_label_template=>wwv_flow_imp.id(64709503555183723419)
,p_default_menu_template=>wwv_flow_imp.id(64709507607921723421)
,p_default_calendar_template=>wwv_flow_imp.id(64709507727412723421)
,p_default_list_template=>wwv_flow_imp.id(64709487435220723411)
,p_default_nav_list_template=>wwv_flow_imp.id(64709499270001723417)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(64709499270001723417)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(64709493836847723414)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(64708968650228723360)
,p_default_dialogr_template=>wwv_flow_imp.id(64708965890919723359)
,p_default_option_label=>wwv_flow_imp.id(64709503555183723419)
,p_default_required_label=>wwv_flow_imp.id(64709504837227723420)
,p_default_navbar_list_template=>wwv_flow_imp.id(64709493427880723414)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64709595280069723532)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64709595427848723532)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64709595669902723532)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64709595811612723532)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(64709596041000723533)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708931100294723338)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708932103433723341)
,p_theme_id=>42
,p_name=>'PAGE_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the position of the page.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708942001742723345)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708942807466723345)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708962959251723358)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708963322270723358)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708963924940723359)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708964395140723359)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708971616042723362)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708972071982723362)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708978499224723365)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708979213320723365)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708980486263723365)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708981623039723366)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708982033173723366)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708984091293723367)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708991894088723370)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708992287248723370)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708993086225723371)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708996865557723372)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708997607403723373)
,p_theme_id=>42
,p_name=>'HEADING_FONT'
,p_display_name=>'Heading Font'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the font-family of the heading for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64708998420767723373)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709400952569723374)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709401728053723374)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709403537154723376)
,p_theme_id=>42
,p_name=>'IMAGE_FILTER'
,p_display_name=>'Filter'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709405165321723377)
,p_theme_id=>42
,p_name=>'IMAGE_RATIO'
,p_display_name=>'Ratio'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709406323331723377)
,p_theme_id=>42
,p_name=>'IMAGE_SCALE'
,p_display_name=>'Scale'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709407355856723377)
,p_theme_id=>42
,p_name=>'IMAGE_SHAPE'
,p_display_name=>'Shape'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709411172091723379)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709416541781723381)
,p_theme_id=>42
,p_name=>'REGION_POSITION'
,p_display_name=>'Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709419994565723382)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709425991334723385)
,p_theme_id=>42
,p_name=>'ALIGNMENT'
,p_display_name=>'Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'This sets the vertical alignment of the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709429075887723386)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709431125307723387)
,p_theme_id=>42
,p_name=>'ICON_SIZE'
,p_display_name=>'Icon Size'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_null_text=>'Initial'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709431910228723387)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE'
,p_display_name=>'Result Appearance'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709443182472723392)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709443557358723392)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709444332980723393)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709451751360723395)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709452900623723396)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709453329700723396)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709455391823723397)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709457184292723398)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709458978024723399)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709459760507723399)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709461165591723400)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709462374909723400)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709463597248723401)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709463939882723401)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709464381993723401)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709464712473723401)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709465128287723402)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709465580973723402)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709466141890723402)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709466724393723402)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS'
,p_display_name=>'Display Items'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709467133702723402)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS'
,p_display_name=>'Display Labels'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_null_text=>'Inline (Default)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709469355203723403)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709471124615723404)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709471732064723404)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709472123409723405)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709474152602723406)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709478121094723407)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709479335932723408)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709480547869723408)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709482318426723409)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709484359785723410)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709484985357723410)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709486384355723411)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709488555450723412)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709490783077723413)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709494566438723415)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709500500311723418)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709501197001723418)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709502180826723418)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709503876142723419)
,p_theme_id=>42
,p_name=>'REQUIRED_INDICATOR'
,p_display_name=>'Required Indicator'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709505569313723420)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709506713691723421)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709596420715723533)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709597856877723534)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709598204323723534)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709599852050723535)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709600260984723535)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709601893021723535)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709602272270723536)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709603894288723536)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709604283276723537)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709605894244723537)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709606228777723537)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709606661762723537)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709607063057723538)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709607465442723538)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709607844561723538)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709608202856723538)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709609628628723539)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709611052187723539)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709612263271723540)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709612699911723540)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709613044927723540)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709613488946723540)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Spacing'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709614298543723541)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709614843620723541)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE'
,p_display_name=>'Display Text Style'
,p_display_sequence=>400
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for Display Only & Read Only display items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709615203293723541)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709615819011723541)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709616240397723541)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709616694579723542)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709617417325723542)
,p_theme_id=>42
,p_name=>'CONTENT_PADDING'
,p_display_name=>'Content Padding'
,p_display_sequence=>1
,p_template_types=>'PAGE'
,p_help_text=>'Sets the Content Body padding for the page.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709617842015723542)
,p_theme_id=>42
,p_name=>'SORT_ORDER_ALIGNMENT'
,p_display_name=>'Sort Order Alignment'
,p_display_sequence=>145
,p_template_types=>'REGION'
,p_help_text=>'Sets the alignment of the sort order item.'
,p_null_text=>'Default (Start)'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(64709618483025723542)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708931398914723338)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(64708931100294723338)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708931536441723338)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(64708931100294723338)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708931790387723341)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(64708931100294723338)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708931900505723341)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(64708931100294723338)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708932381380723341)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(64708932103433723341)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708932552434723341)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(64708932103433723341)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708932729544723341)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708929923411723337)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708936497953723343)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708932849070723341)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708940441931723344)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708936591521723343)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708942282860723345)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_imp.id(64708942001742723345)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708942418505723345)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_imp.id(64708942001742723345)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708942696523723345)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>30
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_imp.id(64708942001742723345)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708943033637723346)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(64708940573435723344)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_imp.id(64708942807466723345)
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708947004009723348)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708943169326723346)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708950437782723350)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708947118753723348)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708951790187723350)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708950515092723350)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708951915720723350)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_imp.id(64708950515092723350)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708955699431723352)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708952061289723350)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708959032804723356)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(64708955782694723352)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708960308023723357)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_imp.id(64708959166963723356)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708960555586723357)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_imp.id(64708959166963723356)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708962776437723358)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708963162868723358)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_imp.id(64708962959251723358)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708963581453723358)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_imp.id(64708963322270723358)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708963738680723358)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--removeHeading js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64708963322270723358)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708964152379723359)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_imp.id(64708963924940723359)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708964599940723359)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(64708964395140723359)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708964740358723359)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_imp.id(64708962959251723358)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708964985032723359)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_imp.id(64708963924940723359)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708965146441723359)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_imp.id(64708962959251723358)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708965371132723359)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_imp.id(64708963924940723359)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708965538856723359)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_imp.id(64708962959251723358)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708965736969723359)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708960660810723357)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(64708964395140723359)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708971822610723362)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708972254038723362)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(64708972071982723362)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708972424902723362)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708972683343723362)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(64708972071982723362)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708972884872723362)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708968650228723360)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708974166735723363)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708974301224723363)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_css_classes=>'t-CardsRegion--styleA'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708974504943723363)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_css_classes=>'t-CardsRegion--styleB'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708974734351723363)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Style C'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708972915555723362)
,p_css_classes=>'t-CardsRegion--styleC'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708978616804723365)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_imp.id(64708978499224723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708978867046723365)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_imp.id(64708978499224723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708979093084723365)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_imp.id(64708978499224723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708979497804723365)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708979606430723365)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708979831631723365)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708980039432723365)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_imp.id(64708978499224723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708980207743723365)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708980669888723366)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708980830707723366)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708981067960723366)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708981283014723366)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708981462722723366)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708981881646723366)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708982272174723366)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708982478277723366)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708982635423723366)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708982850269723366)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708983092541723366)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708983284663723367)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708983404676723367)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708983634975723367)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708983811904723367)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708984217499723367)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_imp.id(64708984091293723367)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708984479207723367)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_imp.id(64708984091293723367)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708984607707723367)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708974836759723363)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708988034550723368)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708988249138723369)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708988498577723369)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708988601398723369)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708988882185723369)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708989065743723369)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708989266520723369)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708989400207723369)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708989664467723369)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708989819752723369)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708990064638723369)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708990284668723370)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708990481569723370)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708990666267723370)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708990886564723370)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708991087182723370)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708991268173723370)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708991451004723370)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708991629260723370)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708992081510723370)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(64708991894088723370)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708992467080723370)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_imp.id(64708992287248723370)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708992632927723371)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(64708991894088723370)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708992877615723371)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708993247468723371)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_imp.id(64708993086225723371)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708993468702723371)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708993650948723371)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708993853478723371)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708994044231723371)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708994252188723371)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708994476327723371)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708984756291723367)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708996677641723372)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708997061317723372)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_imp.id(64708996865557723372)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708997249896723372)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_imp.id(64708996865557723372)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708997464677723373)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Small'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_imp.id(64708996865557723372)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708997812223723373)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64708997607403723373)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708998037692723373)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708998299169723373)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--hideHeader'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708998670703723373)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_imp.id(64708998420767723373)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708998803254723373)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_imp.id(64708998420767723373)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64708999004702723373)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64708994560116723371)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709401186720723374)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_imp.id(64709400952569723374)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709401371842723374)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709401514695723374)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64708997607403723373)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709401970090723375)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_imp.id(64709401728053723374)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709402140237723375)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709401728053723374)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709402350492723375)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709402534471723375)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64708999151451723373)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709403764233723376)
,p_theme_id=>42
,p_name=>'FILTER_BLUR'
,p_display_name=>'Blur'
,p_display_sequence=>430
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--blur'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709403934482723376)
,p_theme_id=>42
,p_name=>'FILTER_GRAYSCALE'
,p_display_name=>'Grayscale'
,p_display_sequence=>410
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--grayscale'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709404186884723376)
,p_theme_id=>42
,p_name=>'FILTER_INVERT'
,p_display_name=>'Invert'
,p_display_sequence=>440
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--invert'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709404391862723376)
,p_theme_id=>42
,p_name=>'FILTER_NONE'
,p_display_name=>'None'
,p_display_sequence=>400
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--noFilter'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709404578019723376)
,p_theme_id=>42
,p_name=>'FILTER_SATURATE'
,p_display_name=>'Saturate'
,p_display_sequence=>450
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--saturate'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709404754362723376)
,p_theme_id=>42
,p_name=>'FILTER_SEPIA'
,p_display_name=>'Sepia'
,p_display_sequence=>420
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--sepia'
,p_group_id=>wwv_flow_imp.id(64709403537154723376)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709404967610723376)
,p_theme_id=>42
,p_name=>'IMAGE_STRETCH'
,p_display_name=>'Image Stretch'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--stretch'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709405366614723377)
,p_theme_id=>42
,p_name=>'RATIO_16_9'
,p_display_name=>'16:9 (Widescreen)'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--16x9'
,p_group_id=>wwv_flow_imp.id(64709405165321723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709405556970723377)
,p_theme_id=>42
,p_name=>'RATIO_1_1'
,p_display_name=>'1:1 (Square)'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--1x1'
,p_group_id=>wwv_flow_imp.id(64709405165321723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709405701858723377)
,p_theme_id=>42
,p_name=>'RATIO_2_1'
,p_display_name=>'2:1 (Univisium)'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--2x1'
,p_group_id=>wwv_flow_imp.id(64709405165321723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709405986780723377)
,p_theme_id=>42
,p_name=>'RATIO_4_3'
,p_display_name=>'4:3 (Standard)'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--4x3'
,p_group_id=>wwv_flow_imp.id(64709405165321723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709406181723723377)
,p_theme_id=>42
,p_name=>'RATIO_AUTO'
,p_display_name=>'Auto'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--auto'
,p_group_id=>wwv_flow_imp.id(64709405165321723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709406550867723377)
,p_theme_id=>42
,p_name=>'SCALE_CONTAIN'
,p_display_name=>'Contain'
,p_display_sequence=>200
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--contain'
,p_group_id=>wwv_flow_imp.id(64709406323331723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709406755505723377)
,p_theme_id=>42
,p_name=>'SCALE_COVER'
,p_display_name=>'Cover'
,p_display_sequence=>210
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--cover'
,p_group_id=>wwv_flow_imp.id(64709406323331723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709406952367723377)
,p_theme_id=>42
,p_name=>'SCALE_DOWN'
,p_display_name=>'Scale Down'
,p_display_sequence=>230
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--scale-down'
,p_group_id=>wwv_flow_imp.id(64709406323331723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709407177822723377)
,p_theme_id=>42
,p_name=>'SCALE_FILL'
,p_display_name=>'Fill'
,p_display_sequence=>220
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--fill'
,p_group_id=>wwv_flow_imp.id(64709406323331723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709407593728723378)
,p_theme_id=>42
,p_name=>'SHAPE_CIRCLE'
,p_display_name=>'Circle'
,p_display_sequence=>320
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--circle'
,p_group_id=>wwv_flow_imp.id(64709407355856723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709407700772723378)
,p_theme_id=>42
,p_name=>'SHAPE_ROUNDED'
,p_display_name=>'Rounded'
,p_display_sequence=>310
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--rounded'
,p_group_id=>wwv_flow_imp.id(64709407355856723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709407974883723378)
,p_theme_id=>42
,p_name=>'SHAPE_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>300
,p_region_template_id=>wwv_flow_imp.id(64709402691127723375)
,p_css_classes=>'t-ImageRegion--square'
,p_group_id=>wwv_flow_imp.id(64709407355856723377)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709410744518723379)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709410951472723379)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709411349082723379)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709411526161723379)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709411703997723379)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709411983312723379)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709412175355723379)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709412375911723380)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709412511670723380)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709408023100723378)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709415334261723381)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_EXTRA_LARGE'
,p_display_name=>'Extra Large'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--xl'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709415507585723381)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--lg'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709415764163723381)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--md'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709415913202723381)
,p_theme_id=>42
,p_name=>'DRAWER_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--sm'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709416113762723381)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709416386412723381)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None (Auto)'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709416734177723381)
,p_theme_id=>42
,p_name=>'POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutEnd'
,p_group_id=>wwv_flow_imp.id(64709416541781723381)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709416926123723381)
,p_theme_id=>42
,p_name=>'POSITION_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'js-dialog-class-t-Drawer--pullOutStart'
,p_group_id=>wwv_flow_imp.id(64709416541781723381)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709417138441723381)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_imp.id(64709412680939723380)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709420186104723382)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_imp.id(64709419994565723382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709420389632723383)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_imp.id(64709419994565723382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709420505982723383)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709420752182723383)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_imp.id(64709419994565723382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709420995377723383)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_imp.id(64709419994565723382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709421147139723383)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709421385551723383)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_imp.id(64709419994565723382)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709421553255723383)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709421762277723383)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709421981241723383)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709422115034723383)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709422383996723383)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709422544237723383)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709417218998723381)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_imp.id(64709411172091723379)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709424479551723384)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709424630080723384)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709422626403723384)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709426136672723385)
,p_theme_id=>42
,p_name=>'ALIGNMENT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>11
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--alignCenter'
,p_group_id=>wwv_flow_imp.id(64709425991334723385)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709426351346723385)
,p_theme_id=>42
,p_name=>'ALIGNMENT_END'
,p_display_name=>'End'
,p_display_sequence=>12
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--alignEnd'
,p_group_id=>wwv_flow_imp.id(64709425991334723385)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709426569735723385)
,p_theme_id=>42
,p_name=>'ALIGNMENT_START'
,p_display_name=>'Start'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--alignStart'
,p_group_id=>wwv_flow_imp.id(64709425991334723385)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709426700075723385)
,p_theme_id=>42
,p_name=>'ALIGNMENT_STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>13
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--alignStretch'
,p_group_id=>wwv_flow_imp.id(64709425991334723385)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709426943342723385)
,p_theme_id=>42
,p_name=>'STACK_MOBILE'
,p_display_name=>'Stack on Mobile'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--stackMobile'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709427194372723385)
,p_theme_id=>42
,p_name=>'WRAP_ITEMS'
,p_display_name=>'Wrap Items'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64709424791586723384)
,p_css_classes=>'t-ItemContainer--wrap'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709429239409723386)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_imp.id(64709429075887723386)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709429453064723386)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_css_classes=>'t-Login-region--headerTitle js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64709429075887723386)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709429615199723386)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709427241641723385)
,p_css_classes=>'t-Login-region--headerHidden js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64709429075887723386)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709430984715723387)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'u-colors'
,p_template_types=>'REGION'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within search results.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709431343405723387)
,p_theme_id=>42
,p_name=>'ICON_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'t-ResultsRegion--iconLg'
,p_group_id=>wwv_flow_imp.id(64709431125307723387)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to large (64px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709431590549723387)
,p_theme_id=>42
,p_name=>'ICON_SIZE_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'t-ResultsRegion--iconMd'
,p_group_id=>wwv_flow_imp.id(64709431125307723387)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to medium (32px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709431754067723387)
,p_theme_id=>42
,p_name=>'ICON_SIZE_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'t-ResultsRegion--iconSm'
,p_group_id=>wwv_flow_imp.id(64709431125307723387)
,p_template_types=>'REGION'
,p_help_text=>'Sets the icon size to small (16px).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709432131715723387)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_BOXED'
,p_display_name=>'Boxed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'t-ResultsRegion--boxed'
,p_group_id=>wwv_flow_imp.id(64709431910228723387)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709432359017723387)
,p_theme_id=>42
,p_name=>'RESULT_APPEARANCE_FLAT'
,p_display_name=>'Flat'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(64709429738336723386)
,p_css_classes=>'t-ResultsRegion--flat'
,p_group_id=>wwv_flow_imp.id(64709431910228723387)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709436372712723389)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709436530635723389)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709436719389723389)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709436931124723390)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_imp.id(64708979213320723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709437104159723390)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709437399418723390)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709437550171723390)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709437775951723390)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709437994493723390)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709438142494723390)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709438318247723390)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709438576550723390)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709438759012723390)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709438907347723390)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709439141065723391)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709439379793723391)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709439588125723391)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709439778879723391)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709439988226723391)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_imp.id(64708980486263723365)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709440183343723391)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--removeHeader js-removeLandmark'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709440343592723391)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709440574117723391)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(64708981623039723366)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709440735000723391)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709440948864723391)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709441128911723391)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709441346971723391)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_imp.id(64708982033173723366)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709441554412723391)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709441787020723392)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709441949954723392)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709442129549723392)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_imp.id(64709432400707723387)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_imp.id(64708971616042723362)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709443323924723392)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_imp.id(64709443182472723392)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709443733891723392)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_imp.id(64709443557358723392)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709443995647723392)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709444100598723392)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_imp.id(64709443557358723392)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709444540539723393)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_imp.id(64709444332980723393)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709444731574723393)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709442280785723392)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_imp.id(64709444332980723393)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709449004319723394)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_imp.id(64708996865557723372)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709449246547723395)
,p_theme_id=>42
,p_name=>'HEADING_FONT_ALTERNATIVE'
,p_display_name=>'Alternative'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_css_classes=>'t-BreadcrumbRegion--headingFontAlt'
,p_group_id=>wwv_flow_imp.id(64708997607403723373)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709449424410723395)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709449666858723395)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_imp.id(64708996865557723372)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709449829415723395)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709444813843723393)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709451930689723395)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_imp.id(64709451751360723395)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709452187692723396)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_imp.id(64709451751360723395)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709452324913723396)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(64709449991494723395)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709453147242723396)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(64709452900623723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709453592304723396)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709453740434723397)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(64709452900623723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709453938024723397)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709454117365723397)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(64709452900623723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709454366724723397)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709454597699723397)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709454713818723397)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(64709452900623723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709454987876723397)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(64709452900623723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709455173979723397)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709455515481723397)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709455718791723397)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709455979860723397)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709456146730723398)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709456335405723398)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709456529922723398)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709452618579723396)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709456903321723398)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709457369797723398)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(64709457184292723398)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709457540378723398)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709457705625723398)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(64709457184292723398)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709457902858723398)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709458142133723398)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(64709457184292723398)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709458388962723399)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709458558389723399)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709458765321723399)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709459128799723399)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(64709458978024723399)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709459371457723399)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(64709458978024723399)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709459594868723399)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709459999641723399)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(64709459760507723399)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709460130516723399)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(64709459760507723399)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709460364737723399)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709460518971723399)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709460791662723400)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709460971870723400)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(64709457184292723398)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709461324676723400)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709461505882723400)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709461787668723400)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709461917936723400)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709456661105723398)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709462568768723400)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709462077605723400)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_imp.id(64709462374909723400)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709462749892723401)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709462077605723400)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709462957790723401)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709462077605723400)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709463169603723401)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709462077605723400)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_imp.id(64709462374909723400)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709463701270723401)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_imp.id(64709463597248723401)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709464152764723401)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_imp.id(64709463939882723401)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709464524595723401)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_imp.id(64709464381993723401)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709464937438723402)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_imp.id(64709464712473723401)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709465312276723402)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_imp.id(64709465128287723402)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709465724298723402)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_imp.id(64709465580973723402)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709465927133723402)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709466376783723402)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709463253580723401)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_imp.id(64709466141890723402)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709466942737723402)
,p_theme_id=>42
,p_name=>'DISPLAY_ITEMS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64709466499562723402)
,p_css_classes=>'t-ContextualInfo-item--stacked'
,p_group_id=>wwv_flow_imp.id(64709466724393723402)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709467341833723402)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64709466499562723402)
,p_css_classes=>'t-ContextualInfo-label--stacked'
,p_group_id=>wwv_flow_imp.id(64709467133702723402)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709467585115723403)
,p_theme_id=>42
,p_name=>'HIDE_EMPTY_VALUES'
,p_display_name=>'Hide Empty Values'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64709466499562723402)
,p_css_classes=>'t-ContextualInfo--hideNulls'
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the null rows. Note: This only works in browsers that supports :has() pseudo-class.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709467974368723403)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709468197575723403)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709468355945723403)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709468524883723403)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709468797240723403)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709468908480723403)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709469193856723403)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709461165591723400)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709469516033723404)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709469355203723403)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709469742986723404)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709469900157723404)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709470139869723404)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709470382708723404)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709470543664723404)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_imp.id(64709467680661723403)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709471335629723404)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(64709471124615723404)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709471562341723404)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_imp.id(64709471124615723404)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709471942234723405)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(64709471732064723404)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709472315676723405)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(64709472123409723405)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709472598515723405)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(64709472123409723405)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709472713677723405)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_imp.id(64709472123409723405)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709472934259723405)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_imp.id(64709471732064723404)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709473197236723405)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709473394423723405)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709470830640723404)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(64709472123409723405)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709473725267723405)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(64709473446354723405)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_imp.id(64709455391823723397)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709474348079723406)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709474512411723406)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709474791272723406)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709474916984723406)
,p_theme_id=>42
,p_name=>'HIDE_EMPTY_VALUES'
,p_display_name=>'Hide Empty Values'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--hideNulls'
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the null rows. Note: This only works in browsers that supports :has() pseudo-class.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709475143794723406)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709475329857723406)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709475543155723406)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709475792198723406)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709475912561723406)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709473895217723405)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709476302002723407)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709476535041723407)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709476764534723407)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709476911797723407)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709477197857723407)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_imp.id(64709453329700723396)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709477360431723407)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709477515790723407)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709477733272723407)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_imp.id(64709476088486723406)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_imp.id(64709474152602723406)
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709478306407723408)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709478523306723408)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709478741321723408)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709478953349723408)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709479107546723408)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709479564612723408)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709479707373723408)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709479943671723408)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709480138663723408)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709480396173723408)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709480732528723409)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(64709480547869723408)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709480969207723409)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(64709480547869723408)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709481152722723409)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(64709480547869723408)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709481370119723409)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709481528074723409)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(64709480547869723408)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709481774766723409)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709477833222723407)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(64709480547869723408)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709482159570723409)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709482581487723409)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_imp.id(64709482318426723409)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709482730057723410)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709482998598723410)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_imp.id(64709482318426723409)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709483198524723410)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709483360788723410)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_imp.id(64709482318426723409)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709483567499723410)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709483772350723410)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709483994027723410)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709484196203723410)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709484507850723410)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_imp.id(64709484359785723410)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709484757487723410)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709485188901723411)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_imp.id(64709484985357723410)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709485386619723411)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_imp.id(64709484985357723410)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709485598076723411)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709485750747723411)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709485960133723411)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709486169224723411)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_imp.id(64709482318426723409)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709486524373723411)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64709486384355723411)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709486702749723411)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709486384355723411)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709486973619723411)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_imp.id(64709484359785723410)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709487198559723411)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709487321682723411)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709481895011723409)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709487713370723412)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709487985874723412)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709488164885723412)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709488356979723412)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709488742028723412)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(64709488555450723412)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709488994930723412)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709487435220723411)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(64709488555450723412)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709489322304723412)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709489520439723412)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709489706650723412)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709489935542723412)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709490184015723413)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709490359487723413)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_imp.id(64709486384355723411)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709490544188723413)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_imp.id(64709486384355723411)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709490929796723413)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_imp.id(64709490783077723413)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709491132526723413)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709491311673723413)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709491548975723413)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709491755191723413)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709492111023723414)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709491845134723413)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709492377427723414)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709491845134723413)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709492583369723414)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709491845134723413)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709492745418723414)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709491845134723413)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709493144134723414)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709492801793723414)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709493358318723414)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709492801793723414)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709493776528723414)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709493427880723414)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709494136775723414)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709494335071723415)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709494717526723415)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_imp.id(64709494566438723415)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709494910200723415)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_imp.id(64709494566438723415)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709495144445723415)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709495310361723415)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709495557701723415)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709495936796723415)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_imp.id(64709484985357723410)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709496169101723415)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709496374189723415)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_imp.id(64709484985357723410)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709496560123723415)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_imp.id(64709490783077723413)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709496730653723416)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709496967307723416)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_imp.id(64709479335932723408)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709497167263723416)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_imp.id(64709495685030723415)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_imp.id(64709490783077723413)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709497555628723416)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layout2Cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709497759324723416)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layout3Cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709497900235723416)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layout4Cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709498155288723416)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layout5Cols'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709498338798723416)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709498502546723416)
,p_theme_id=>42
,p_name=>'CUSTOM'
,p_display_name=>'Custom'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layoutCustom'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709498707372723416)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Displays a callout arrow that points to where the menu was activated from.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709498999987723417)
,p_theme_id=>42
,p_name=>'FULL_WIDTH'
,p_display_name=>'Full Width'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--fullWidth'
,p_template_types=>'LIST'
,p_help_text=>'Stretches the menu to fill the width of the screen.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709499109910723417)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_imp.id(64709497248753723416)
,p_css_classes=>'t-MegaMenu--layoutStacked'
,p_group_id=>wwv_flow_imp.id(64709478121094723407)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709499540696723417)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709499270001723417)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709499735484723417)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709499270001723417)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709499994572723417)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709499270001723417)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709500141625723417)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(64709499270001723417)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709500769773723418)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709500206344723417)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_imp.id(64709500500311723418)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709500952483723418)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_imp.id(64709500206344723417)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_imp.id(64709500500311723418)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709501373281723418)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709500206344723417)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_imp.id(64709501197001723418)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709501509079723418)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709500206344723417)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_imp.id(64709501197001723418)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709501782319723418)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709500206344723417)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_imp.id(64709501197001723418)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709502357461723418)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709501814377723418)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_imp.id(64709502180826723418)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709502574961723419)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_imp.id(64709501814377723418)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_imp.id(64709502180826723418)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709502753128723419)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_imp.id(64709501814377723418)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_imp.id(64709502180826723418)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709502935187723419)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_imp.id(64709501814377723418)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709503191060723419)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_imp.id(64709501814377723418)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709504082687723419)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64709503661176723419)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709504238377723419)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64709503661176723419)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709504547773723420)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64709504352907723420)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709504775126723420)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64709504352907723420)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709505077103723420)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(64709504837227723420)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709505296943723420)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(64709504837227723420)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(64709503876142723419)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709505709971723420)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64709505371453723420)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(64709505569313723420)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709505937685723420)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64709505371453723420)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(64709505569313723420)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709506383252723421)
,p_theme_id=>42
,p_name=>'HIDE_ICON_ON_DESKTOP'
,p_display_name=>'Hide Icon on Desktop'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--desktopHideIcon'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button icon on large screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709506587056723421)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709506922160723421)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(64709506713691723421)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709507127678723421)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_imp.id(64709505569313723420)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709507313372723421)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_imp.id(64709506713691723421)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709507585951723421)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_imp.id(64709505569313723420)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709596677756723533)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709596810452723533)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709597055647723533)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709597222698723534)
,p_theme_id=>42
,p_name=>'H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709597469887723534)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709597629420723534)
,p_theme_id=>42
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(64709596420715723533)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709598058269723534)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(64709597856877723534)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709598426967723534)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_imp.id(64709598204323723534)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709598659454723534)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(64709597856877723534)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709598886508723534)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_imp.id(64709598204323723534)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709599009491723534)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(64709597856877723534)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709599206722723534)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_imp.id(64709598204323723534)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709599439259723534)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(64709597856877723534)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709599675593723534)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_imp.id(64709598204323723534)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709600097418723535)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(64709599852050723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709600438221723535)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_imp.id(64709600260984723535)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709600610500723535)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(64709599852050723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709600891096723535)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_imp.id(64709600260984723535)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709601029931723535)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(64709599852050723535)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709601251168723535)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_imp.id(64709600260984723535)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709601442521723535)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(64709599852050723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709601610044723535)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_imp.id(64709600260984723535)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709602046968723536)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(64709601893021723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709602415358723536)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_imp.id(64709602272270723536)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709602659498723536)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(64709601893021723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709602822926723536)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_imp.id(64709602272270723536)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709603083426723536)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(64709601893021723535)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709603243426723536)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_imp.id(64709602272270723536)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709603477537723536)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(64709601893021723535)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709603630899723536)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_imp.id(64709602272270723536)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709604027570723536)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(64709603894288723536)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709604423088723537)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_imp.id(64709604283276723537)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709604609406723537)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(64709603894288723536)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709604813596723537)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_imp.id(64709604283276723537)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709605008826723537)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(64709603894288723536)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709605296415723537)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_imp.id(64709604283276723537)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709605427194723537)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(64709603894288723536)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709605692206723537)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_imp.id(64709604283276723537)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709606098039723537)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_imp.id(64709605894244723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709606440381723537)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_imp.id(64709606228777723537)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709606881177723537)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(64709606661762723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709607240653723538)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(64709607063057723538)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709607623458723538)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_imp.id(64709607465442723538)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709608092889723538)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_imp.id(64709607844561723538)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709608442433723538)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_imp.id(64709608202856723538)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709608649285723538)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_imp.id(64709608202856723538)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709608873260723538)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_imp.id(64709606228777723537)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709609056709723538)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(64709606661762723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709609227328723538)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_imp.id(64709607063057723538)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709609402967723539)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_imp.id(64709607465442723538)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709609894829723539)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_imp.id(64709609628628723539)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709610025711723539)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(64709609628628723539)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709610249846723539)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(64709609628628723539)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709610456583723539)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_imp.id(64709605894244723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709610651571723539)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_imp.id(64709608202856723538)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709610826260723539)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_imp.id(64709607844561723538)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709611281037723539)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_imp.id(64709611052187723539)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709611453461723539)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_imp.id(64709605894244723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709611631463723539)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_imp.id(64709607844561723538)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709611832172723540)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_imp.id(64709605894244723537)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709612049484723540)
,p_theme_id=>42
,p_name=>'DEFERRED_PAGE_RENDERING'
,p_display_name=>'Deferred Page Rendering'
,p_display_sequence=>1
,p_css_classes=>'t-DeferredRendering'
,p_template_types=>'PAGE'
,p_help_text=>'Defer page rendering until all page components have finished loading.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709612420168723540)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(64709612263271723540)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709612893597723540)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_imp.id(64709612699911723540)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709613263964723540)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(64709613044927723540)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709613665746723540)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'None'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_imp.id(64709613488946723540)
,p_template_types=>'REGION'
,p_help_text=>'Removes spacing between items.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709613829646723540)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_imp.id(64709613488946723540)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item spacing.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709614007955723541)
,p_theme_id=>42
,p_name=>'FORMSTANDARDPADDING'
,p_display_name=>'Standard'
,p_display_sequence=>5
,p_css_classes=>'t-Form--standardPadding'
,p_group_id=>wwv_flow_imp.id(64709613488946723540)
,p_template_types=>'REGION'
,p_help_text=>'Uses the standard spacing between items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709614419708723541)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_imp.id(64709614298543723541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709614662973723541)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_imp.id(64709612699911723540)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709615092448723541)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_BOLD'
,p_display_name=>'Bold'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--boldDisplay'
,p_group_id=>wwv_flow_imp.id(64709614843620723541)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709615482531723541)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_imp.id(64709615203293723541)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709615639303723541)
,p_theme_id=>42
,p_name=>'DISPLAY_TEXT_STYLE_NORMAL'
,p_display_name=>'Normal'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--normalDisplay'
,p_group_id=>wwv_flow_imp.id(64709614843620723541)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709616029308723541)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_imp.id(64709615819011723541)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709616420972723541)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_imp.id(64709616240397723541)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709616820990723542)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_imp.id(64709616694579723542)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709617059001723542)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709617233830723542)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_imp.id(64709615203293723541)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709617652975723542)
,p_theme_id=>42
,p_name=>'REMOVE_PADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>1
,p_css_classes=>'t-PageBody--noContentPadding'
,p_group_id=>wwv_flow_imp.id(64709617417325723542)
,p_template_types=>'PAGE'
,p_help_text=>'Removes padding from the content region.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709618056647723542)
,p_theme_id=>42
,p_name=>'SORT_CENTER'
,p_display_name=>'Center'
,p_display_sequence=>10
,p_css_classes=>'t-Region-orderBy--center'
,p_group_id=>wwv_flow_imp.id(64709617842015723542)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709618229129723542)
,p_theme_id=>42
,p_name=>'SORT_END'
,p_display_name=>'End'
,p_display_sequence=>20
,p_css_classes=>'t-Region-orderBy--end'
,p_group_id=>wwv_flow_imp.id(64709617842015723542)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(64709618670188723542)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_imp.id(64709618483025723542)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(64708928528722723335)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15585861230583
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(64786162445113875978)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15585899005542
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(64843738835837183866)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15585921425976
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(64843739191622183867)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15585921425978
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/apex_account
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64708928885544723335)
,p_name=>'Apex Account'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15585891832316
);
end;
/
prompt --application/shared_components/security/authentications/registros_nuevos
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64768115332090381526)
,p_name=>'Registros_Nuevos'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15585891899445
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_avatar
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709508085624723422)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$AVATAR'
,p_display_name=>'Avatar'
,p_supported_component_types=>'PARTIAL'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$AVATAR'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Avatar is-placeholder{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Avatar{if ?TYPE/} t-Avatar--{if ?IMAGE/}image{else/}{if ?INITIALS/}initials{else/}icon{endif/}{endif/}{endif/}{if ?SHAPE/} #SHAPE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?ICON/} #IC'
||'ON#{else/} fa fa-user{endif/}{if ?CSS_CLASSES/} #CSS_CLASSES#{endif/} u-color" {if !IMAGE/}{if DESCRIPTION/} role="img" aria-label="#DESCRIPTION#" title="#DESCRIPTION#"{else/} role="presentation"{endif/}{endif/}>{if IMAGE/}<img src="#IMAGE#" alt="#DE'
||'SCRIPTION#"{if ?DESCRIPTION/} title="#DESCRIPTION#"{endif/} loading="lazy" />{else/}{if ?INITIALS/}#INITIALS#{endif/}{endif/}{if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564363394689414260
,p_version_scn=>133929266
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display an image, icon, or initials. Available as a partial template to display a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709508312184723424)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'IMAGE'
,p_demo_value=>'IMAGE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709508692220723425)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'IMAGE'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709509040884723426)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'INITIALS'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709509418056723426)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'ICON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709509836922723426)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_demo_value=>'#APEX_FILES#apex_ui/img/favicons/app-artwork-catalog.png'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'IMAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709510125792723427)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>55
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709510413799723427)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'INITIALS'
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709510745508723427)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709508312184723424)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ICON'
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709511033090723428)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709511384197723428)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709511033090723428)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709511704703723428)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709511033090723428)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709512168468723429)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709511033090723428)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709512571800723429)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709511033090723428)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709512943778723430)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709513246624723430)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709513620673723430)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709514082430723431)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709514479936723431)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709514883042723431)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709515211276723432)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709515691199723432)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709512943778723430)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709516098829723432)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter classes to add to this component. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66509558883788837176)
,p_plugin_id=>wwv_flow_imp.id(64709508085624723422)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_is_quick_pick=>true
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709517107802723434)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Badge{if ?STATE/} t-Badge--#STATE#{endif/}{if ?STYLE/} #STYLE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}" role="status" aria-label="#LABEL!STRIPHTML# #VALUE#" '
||'title="#LABEL!STRIPHTML# #VALUE#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE#</span>',
'  {if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_version_scn=>133929097
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709517495557723436)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709517768037723436)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709518022947723437)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709518361339723437)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709518688277723437)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709518926317723437)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709519220389723438)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709518926317723437)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709519663072723438)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709518926317723437)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709520036287723438)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709520393484723438)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709520036287723438)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709520702971723439)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709520036287723438)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709521105772723439)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709520036287723438)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709521585060723439)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709521856090723439)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709521585060723439)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709522257351723440)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709521585060723439)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709522697840723440)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709521585060723439)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66220999367833825625)
,p_plugin_id=>wwv_flow_imp.id(64709517107802723434)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709523216973723441)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BUTTON'
,p_display_name=>'Button'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BUTTON'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if MENU_ID/}<button type="button" data-menu="#MENU_ID#"{else/}<a href="#LINK_URL#" #LINK_ATTR#{endif/} class="t-Button{if IS_HOT/} t-Button--hot{endif/}{if IS_ICON_ONLY/} t-Button--noLabel t-Button--icon{else/}{if ICON_CLASSES/} t-Button--iconLeft{e'
||'ndif/}{endif/} #CSS_CLASSES#" title="#LABEL!STRIPHTML#" {if IS_DISABLED/} disabled{endif/}>',
'  {if ?ICON_CLASSES/}<span class="t-Icon t-Icon--left #ICON_CLASSES#" aria-hidden="true"></span>{endif/}<span class="t-Button-label">#LABEL#</span>',
'{if MENU_ID/}</button>{else/}</a>{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_substitute_attributes=>true
,p_reference_id=>1568467215199837453
,p_version_scn=>76331028
,p_subscribe_plugin_settings=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709523570464723442)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709523816181723442)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LINK_URL'
,p_prompt=>'Link URL'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709524157033723442)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'LINK_ATTR'
,p_prompt=>'Link Attribute'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709524408828723443)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON_CLASSES'
,p_prompt=>'Icon Classes'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709524759427723443)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709525010343723443)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'IS_DISABLED'
,p_prompt=>'Is Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709525314975723443)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'IS_HOT'
,p_prompt=>'Is Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709525689472723444)
,p_plugin_id=>wwv_flow_imp.id(64709523216973723441)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'IS_ICON_ONLY'
,p_prompt=>'Is Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_comments
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709525973462723444)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$COMMENTS'
,p_display_name=>'Comments'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$COMMENTS'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR%assigned/}',
'      <div class="t-Comments-icon">',
'        {if ?APEX$SELECTOR%assigned/}<div class="t-Comments-selection is-placeholder"></div>{endif/}',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user is-placeholder"></span>',
'      </div>',
'      <div class="t-Comments-comment is-placeholder"></div>',
'    </div>',
'  </div>',
'{else/}',
'  <div class="t-Comments-item{if ?COMMENT_CLASS/} #COMMENT_CLASS#{endif/}">',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-Comments-icon">',
'        {if ?APEX$SELECTOR%assigned/}<div class="t-Comments-selection">#APEX$SELECTOR#</div>{endif/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'          CSS_CLASSES:=u-color',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-Comments-body">',
'      <div class="t-Comments-info">',
'        <span class="t-Comments-user">{if USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if USER_NAME_LINK/}</a>{endif/}</span>',
'        {if COMMENT_DATE/}<span class="t-Comments-date">#COMMENT_DATE#</span>{endif/}',
'        {if ACTIONS/}<span class="t-Comments-actions">#ACTIONS#</span>{endif/}',
'      </div>',
'      <div class="t-Comments-comment">',
'        #COMMENT_TEXT#',
'        {if ATTRIBUTES/}<div class="t-Comments-attributes">#ATTRIBUTES#</div>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Comments{if ?STYLE/} #STYLE#{endif/} {if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564386865908414285
,p_version_scn=>75159091
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display user comments and status updates. Supports avatars. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66509411403368755162)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_title=>'Avatar'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709526455393723447)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COMMENT_TEXT'
,p_prompt=>'Comment Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Praesent vel felis rutrum erat elementum viverra sit amet non odio. Cras vel auctor eros, in malesuada dolor. Nulla tellus magna, ornare consectetur purus id, volutpat egestas felis. Proin lobortis risus massa, nec faucibus arcu malesuada a. Nunc sed'
||' gravida urna. Fusce at ligula sed erat consequat pharetra.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing text for user comments.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709526742431723447)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Joel'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a comment.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709527060958723448)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'COMMENT_DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'5 minutes ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:DATE'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709527320535723448)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ATTRIBUTES'
,p_prompt=>'Attributes'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the comment attributes.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709527621928723448)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'initials'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709532229002723452)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709527909741723449)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709528387706723449)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709528773325723449)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709529128559723450)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709529437572723450)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709529778724723450)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'JK'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709530077074723451)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709527621928723448)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709530338269723451)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709532229002723452)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509411403368755162)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709530695775723451)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709530338269723451)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709531015521723451)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709530338269723451)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709531448520723452)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709530338269723451)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709531855267723452)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709530338269723451)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709532229002723452)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709532537717723453)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>45
,p_static_id=>'COMMENT_CLASS'
,p_prompt=>'Comment Class'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Allows you to pass a class onto individual comments. Example using is-active will highlight the specific comment with a different shade.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709532893305723453)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Comments--basic'
,p_demo_value=>'t-Comments--chat'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Set the style of the comments.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709533161685723453)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709532893305723453)
,p_display_sequence=>10
,p_display_value=>'Basic'
,p_return_value=>'t-Comments--basic'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709533526819723454)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709532893305723453)
,p_display_sequence=>20
,p_display_value=>'Chat (Speech Bubbles)'
,p_return_value=>'t-Comments--chat'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709533982881723454)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66509544070801856665)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_name=>'Link'
,p_type=>'BUTTON'
,p_template=>'{if !IS_DISABLED/}<a {if CSS_CLASSES/}class="#CSS_CLASSES#"{endif/} href="#LINK_URL#" #LINK_ATTR#>#LABEL#</a>{endif/}'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66509543479296849208)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_name=>'Actions'
,p_static_id=>'ACTIONS'
,p_display_sequence=>10
,p_type=>'TEMPLATE'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66509599102966831087)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>20
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66509751320679701858)
,p_plugin_id=>wwv_flow_imp.id(64709525973462723444)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709536017270723458)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK#" #FULL_ROW_LINK_ATTR#></a>{endif/}',
'  <div class="t-ContentRow-wrap #ITEM_CSS_CLASSES#">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection">#APEX$SELECTOR#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'          LINK:=#BADGE_LINK#',
'          LINK_ATTR:=#BADGE_LINK_ATTR#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          CSS_CLASSES:=#AVATAR_CSS_CLASSES#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE#{endif/}{if REMOVE_PADDING/} t-ContentRow--removePadding{endif/}{if HIDE_BORDERS/} t-ContentRow--hideBorders{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_version_scn=>76107179
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66636773912160795156)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66636773357148795155)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66379881293418521642)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_title=>'Appearance'
,p_display_sequence=>30
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709536955469723463)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709537284445723463)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709537580806723463)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709538012518723464)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709538385539723464)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709538691917723465)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709538939485723465)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538385539723464)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709539275264723465)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709539677854723466)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709540070848723466)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709540458687723466)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709540735568723467)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709541013906723467)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709541351766723467)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538939485723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709541622243723468)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538385539723464)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709541985911723468)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709541622243723468)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709542315195723468)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709541622243723468)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709542702336723469)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709541622243723468)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709543153393723469)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709541622243723468)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709543591329723469)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709543863817723470)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709544131708723470)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709544448715723470)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709544708179723471)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709545036454723471)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709545373301723471)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709545036454723471)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709545763057723472)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709545036454723471)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709546128128723472)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709546426126723472)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709546128128723472)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709546857474723473)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709546128128723472)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709547290502723473)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709546128128723472)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709547615833723473)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709546128128723472)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709548048517723474)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538385539723464)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709548384667723474)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709548760710723474)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709549165900723475)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709549513075723475)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709549909903723475)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709550385399723476)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709550734032723476)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709548048517723474)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709551124054723476)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709551438780723477)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709551124054723476)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709551895757723477)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709551124054723476)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709552299914723477)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709551124054723476)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709552683731723478)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709552973279723478)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709552683731723478)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709553347344723479)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709552683731723478)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709553742712723479)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709552683731723478)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709554128691723479)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709552683731723478)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709554530073723479)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'BADGE_POS'
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Start'
,p_help_text=>'Positions the Badge column to either the "Start" or "End" of the row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709554886281723480)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709554530073723479)
,p_display_sequence=>10
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--posEnd'
,p_help_text=>'Positions the Badge column to the "end" of the row.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709555280762723480)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'BADGE_ALIGNMENT'
,p_prompt=>'Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538691917723465)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66636773357148795155)
,p_null_text=>'Start'
,p_help_text=>'Changes the alignment of the badge within its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709555575637723480)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709555280762723480)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'t-ContentRow-badge--alignCenter'
,p_help_text=>'Aligns the badge to the "center" of its column.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709555985095723481)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709555280762723480)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--alignEnd'
,p_help_text=>'Aligns the badge to the "end" of its column.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709556374638723481)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>31
,p_display_sequence=>310
,p_static_id=>'ITEM_CSS_CLASSES'
,p_prompt=>'Item CSS Classes'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709556677643723481)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>32
,p_display_sequence=>320
,p_static_id=>'AVATAR_CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709538385539723464)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66636773912160795156)
,p_help_text=>'Enter CSS classes to add to the visual. You may add multiple classes by separating them with a space.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709556980755723482)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66379881293418521642)
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709557245697723482)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>27
,p_display_sequence=>270
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66379881293418521642)
,p_null_text=>'Default'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709557500333723482)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709557245697723482)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-ContentRow--styleCompact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709557963766723483)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>28
,p_display_sequence=>280
,p_static_id=>'HIDE_BORDERS'
,p_prompt=>'Hide Borders'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66379881293418521642)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709558283644723483)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>30
,p_display_sequence=>300
,p_static_id=>'REMOVE_PADDING'
,p_prompt=>'Remove Padding'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(66379881293418521642)
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66517987802376616770)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(66517989061896620918)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66221036287480858340)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Badge Link'
,p_static_id=>'BADGE_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66504394173702210037)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66505073474432293141)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66517985867309571784)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66517987200699585641)
,p_plugin_id=>wwv_flow_imp.id(64709536017270723458)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_media_list
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709563594986723491)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$MEDIA_LIST'
,p_display_name=>'Media List'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$MEDIA_LIST'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-MediaList-itemWrap">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-MediaList-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          SIZE:=t-Avatar--xs',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE%assigned/}<div class="t-MediaList-title is-placeholder"></div>{endif/}',
'      {if ?DESCRIPTION%assigned/}<div class="t-MediaList-desc is-placeholder"></div>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE%assigned/}',
'      {with/}',
'        LABEL:=',
'        VALUE:=',
'        SHAPE:=#BADGE_SHAPE#',
'        STYLE:=#BADGE_STYLE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  </div>',
'{else/}',
'  {if LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<div{endif/} class="t-MediaList-itemWrap{if ?DESCRIPTION/} t-MediaList-itemWrap--showDesc{endif/}">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-MediaList-selection">#APEX$SELECTOR#</div>{endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-MediaList-iconWrap" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          ICON:=#AVATAR_ICON#',
'          INITIALS:=#AVATAR_INITIALS#',
'          CSS_CLASSES:=u-color',
'          SHAPE:=#AVATAR_SHAPE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-MediaList-body">',
'      {if ?TITLE/}<h3 class="t-MediaList-title">#TITLE#</h3>{endif/}',
'      {if ?DESCRIPTION/}<p class="t-MediaList-desc">#DESCRIPTION#</p>{endif/}',
'    </div>',
'    {if DISPLAY_BADGE/}',
'      {with/}',
'        LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'        LABEL:=#BADGE_LABEL#',
'        VALUE:=#BADGE_VALUE#',
'        ICON:=#BADGE_ICON#',
'        STATE:=#BADGE_STATE#',
'        SIZE:=t-Badge--md',
'        STYLE:=#BADGE_STYLE#',
'        SHAPE:=#BADGE_SHAPE#',
'      {apply THEME$BADGE/}',
'    {endif/}',
'  {if LINK/}</a>{else/}</div>{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-MediaList t-MediaList--showIcons{if ?LAYOUT/} #LAYOUT!ATTR#{endif/}{if ?SIZE/} #SIZE!ATTR#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-MediaList-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564403634518414297
,p_version_scn=>76083243
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display report content in a formatted media list. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66509581892357607143)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66509581337345607142)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709564202713723495)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709564564332723495)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709564876414723495)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709565153922723496)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709565431989723496)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709564876414723495)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709565794841723496)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709566184242723497)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709566545120723497)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709566923483723497)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709567256346723498)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>95
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709567594769723498)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709567881244723498)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565431989723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709568147246723498)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709564876414723495)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509581892357607143)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709568451505723499)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709568147246723498)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709568831716723499)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709568147246723498)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709569255403723499)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709568147246723498)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709569625621723500)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709568147246723498)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709570082068723500)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709570317411723500)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709570654191723500)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709570921907723501)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709571238636723501)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709571537343723501)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709571888121723501)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709571537343723501)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709572233056723502)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709571537343723501)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709572632288723504)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709565153922723496)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66509581337345607142)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709572949279723504)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709572632288723504)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709573301271723505)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709572632288723504)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709573714345723505)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709572632288723504)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709574104604723505)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'LAYOUT'
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the number of grid columns the media list content will display in. Horizontal Span will display all columns in a single horizontal row.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709574495439723505)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709574104604723505)
,p_display_sequence=>10
,p_display_value=>'2 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--2cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709574824392723506)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709574104604723505)
,p_display_sequence=>20
,p_display_value=>'3 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--3cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709575251450723506)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709574104604723505)
,p_display_sequence=>30
,p_display_value=>'4 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--4cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709575665158723506)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709574104604723505)
,p_display_sequence=>40
,p_display_value=>'5 Column Grid'
,p_return_value=>'t-MediaList--cols t-MediaList--5cols'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709576017062723507)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709574104604723505)
,p_display_sequence=>50
,p_display_value=>'Horizontal Span'
,p_return_value=>'t-MediaList--horizontal'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709576482824723507)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of media list items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709576772286723507)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709576482824723507)
,p_display_sequence=>10
,p_display_value=>'Large'
,p_return_value=>'t-MediaList--large force-fa-lg'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709577184337723508)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66509784944514753771)
,p_plugin_id=>wwv_flow_imp.id(64709563594986723491)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/shared_components/plugins/template_component/theme_42_timeline
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(64709580025024723512)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$TIMELINE'
,p_display_name=>'Timeline'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$TIMELINE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div{if ?CSS_CLASSES/} class="#CSS_CLASSES#"{endif/}>',
'  <div class="t-Timeline-wrap">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-Timeline-selection">#APEX$SELECTOR#</div>{endif/}',
'    <div class="t-Timeline-user">',
'      {if DISPLAY_AVATAR/}',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      {endif/}',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">{if ?USER_NAME_LINK/}<a href="#USER_NAME_LINK#" #USER_NAME_LINK_ATTR#>{endif/}#USER_NAME#{if ?USER_NAME_LINK/}</a>{endif/}</span>',
'        <span class="t-Timeline-date">#DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      {if DISPLAY_BADGE/}',
'        <div class="t-Timeline-typeWrap">',
'          {with/}',
'            LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'            LABEL:=#BADGE_LABEL#',
'            VALUE:=#BADGE_VALUE#',
'            ICON:=#BADGE_ICON#',
'            STATE:=#BADGE_STATE#',
'          {apply THEME$BADGE/}',
'        </div>',
'      {endif/}',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>',
'        {if ?DESCRIPTION/}<p class="t-Timeline-desc">#DESCRIPTION#</p>{endif/}',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline{if ?STYLE/} #STYLE#{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
''))
,p_report_row_template=>'<li class="t-Timeline-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1601817836543095628
,p_version_scn=>76584807
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display a series of events. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66856663591557830466)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_title=>'Avatar'
,p_display_sequence=>10
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(66856663036545830465)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_title=>'Badge'
,p_display_sequence=>20
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709580710970723514)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'USER_NAME'
,p_prompt=>'User Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'User'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be displayed as the user name associated with a timeline event.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709581041565723515)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'DATE'
,p_prompt=>'Date'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'1 hour ago'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column containing a date, date range, or time.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709581317962723515)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used as the title.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709581669523723515)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select a source column to be used for the row description.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709581986094723515)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709582223177723516)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709582511985723516)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709581986094723515)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709582840974723516)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709583234789723517)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709583681240723517)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709584078549723517)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709584362907723518)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>'Enter a short description of the image/icon or select a source column from the quick pick options. This will be used as title & alt text for the avatar image/icon.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709584661426723518)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709584953872723518)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582511985723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709585211914723518)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--circle'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709581986094723515)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66856663591557830466)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709585531142723519)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709585211914723518)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709585900027723519)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709585211914723518)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709586341993723519)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709585211914723518)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709586728166723520)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709585211914723518)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709587189416723520)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709587454310723520)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_demo_value=>'Closed'
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_help_text=>'Select a source column for the badge value.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709587711649723521)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_demo_value=>'is-removed'
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709588016481723521)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_demo_value=>'fa-check-circle-o'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709588337436723521)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709588646836723522)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709588912020723522)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709588646836723522)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709589310465723522)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709588646836723522)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709589774791723523)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(64709582223177723516)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(66856663036545830465)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709590007420723523)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709589774791723523)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709590474729723523)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709589774791723523)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709590868503723525)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709589774791723523)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709591207527723526)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the style of timeline items.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(64709591561320723526)
,p_plugin_attribute_id=>wwv_flow_imp.id(64709591207527723526)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-Timeline--compact'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(64709591920953723526)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_demo_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66504432936744039052)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>25
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66618844299732302653)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_name=>'User Name Link'
,p_static_id=>'USER_NAME_LINK'
,p_display_sequence=>15
,p_type=>'LINK'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(66737875546706607094)
,p_plugin_id=>wwv_flow_imp.id(64709580025024723512)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'PAGINA_DE_INICIO'
,p_step_title=>'Tech-TonIQ'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function redirectToPage(page) {',
'    window.location.href = page;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614706793789608614)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Tech-TonIQ - Democratizando la Educaci\00F3n STEM</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        header {',
'            background-color: #0073e6;',
'            color: white;',
'            padding: 20px 0;',
'            text-align: center;',
'        }',
'        header h1 {',
'            margin: 0;',
'            font-size: 2.5em;',
'        }',
'        nav {',
'            background-color: #005bb5;',
'            padding: 10px 0;',
'            text-align: center;',
'        }',
'        nav a {',
'            color: white;',
'            text-decoration: none;',
'            margin: 0 15px;',
'            font-size: 1.2em;',
'        }',
'        section {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        section h2 {',
'            font-size: 2em;',
'            color: #0073e6;',
'            margin-bottom: 15px;',
'            text-align: center;',
'        }',
'        section p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            text-align: justify;',
'        }',
'        img {',
'            display: block;',
'            margin: 20px auto;',
'            max-width: 100%;',
'            height: auto;',
'        }',
'        em {',
'            color: #0073e6;',
'            font-style: italic;',
'        }',
'        strong {',
'            font-weight: bold;',
'        }',
'        footer {',
'            background-color: #0073e6;',
'            color: white;',
'            text-align: center;',
'            padding: 15px 0;',
'            margin-top: 20px;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<header>',
'    <h1>Tech-TonIQ</h1>',
unistr('    <p>Democratizando la Educaci\00F3n STEM para Todos</p>'),
'</header>',
'',
'<nav>',
unistr('    <a href="#quienes-somos">Qui\00E9nes Somos</a>'),
'    <a href="#objetivo">Nuestro Objetivo</a>',
'    <a href="#caracteristicas">Lo que nos distingue</a>',
'    <a href="#contacto">Contacto</a>',
'</nav>',
'',
'<section id="quienes-somos">',
unistr('    <h2>\00BFQui\00E9nes Somos?</h2>'),
unistr('    <p>Somos una iniciativa comprometida con la misi\00F3n de disminuir la brecha de <em>rezago educativo</em> en M\00E9xico. Nuestro enfoque se centra en la <em>democratizaci\00F3n tecnol\00F3gica</em>, proporcionando acceso a recursos y herramientas innovadoras qu')
||unistr('e optimizan y mejoran el proceso de aprendizaje. Creemos que cada estudiante, sin importar su contexto, merece la oportunidad de alcanzar su m\00E1ximo <em>potencial</em>. Es a trav\00E9s de soluciones tecnol\00F3gicas accesibles y personalizadas, que trabajamos')
||' para empoderar a los educadores y estudiantes, fomentando un entorno de <em>aprendizaje inclusivo</em> y enriquecedor.</p>',
unistr('    <img src="https://trainify.ca/images/Image%202.jpg" alt="Imagen sobre qui\00E9nes somos">'),
'</section>',
'',
'<section id="objetivo">',
'    <h2>Nuestro Objetivo</h2>',
unistr('    <p>Nos proponemos <em>transformar</em> la educaci\00F3n en nuestro pa\00EDs, construyendo un <em>futuro equitativo</em> y prometedor para todos. A trav\00E9s del fomento del conocimiento en las mentes j\00F3venes, aspiramos a formar profesionales y especialistas')
||unistr(' bien informados que se conviertan en <em>l\00EDderes</em> de impacto positivo que contribuyan activamente a una sociedad m\00E1s justa y a un futuro lleno de oportunidades para todos.</p>'),
'    <img src="https://www.taalhammer.com/wp-content/uploads/2024/04/Distance-Language-Learning.jpeg" alt="Imagen sobre nuestro objetivo">',
'</section>',
'',
'<section id="caracteristicas">',
'    <h2>Lo que nos distingue</h2>',
unistr('    <p><strong><em>Acceso Igualitario:</em></strong> Utilizamos IA para ofrecer una educaci\00F3n personalizada que se adapta al progreso de cada estudiante, garantizando igualdad de oportunidades.</p>'),
unistr('    <p><strong><em>Contenido Adaptativo:</em></strong> Creamos trayectorias de aprendizaje \00FAnicas que ajustan el contenido seg\00FAn las habilidades y conocimientos de cada alumno.</p>'),
unistr('    <p><strong><em>Inspiraci\00F3n y Motivaci\00F3n:</em></strong> No solo se trata de aprender, sino de inspirar a los estudiantes para que alcancen su m\00E1ximo potencial y se conviertan en los innovadores del ma\00F1ana.</p>'),
'    <img src="https://media.freemalaysiatoday.com/wp-content/uploads/2024/05/b1d40740-ai-artificial-intelligence-resize-190524.webp" alt="Imagen sobre lo que nos distingue">',
'</section>',
'',
'<footer id="contacto">',
unistr('    <p>Contacta con nosotros: info@techtoniq.com | Tel\00E9fono: +52 55 1234 5678</p>'),
'</footer>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64709630571803723555)
,p_plug_name=>'Tech-TonIQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708999151451723373)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587881208015105112)
,p_button_sequence=>10
,p_button_name=>'Iniciar_Sesion'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Iniciar Sesion'
,p_button_position=>'AFTER_NAVIGATION_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_button_condition=>':NOMBRE IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587881301524105113)
,p_button_sequence=>20
,p_button_name=>'Registro'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Registro'
,p_button_position=>'AFTER_NAVIGATION_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_button_condition=>'NVL(:NOMBRE, ''EMPTY'') = ''EMPTY'''
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64724856237860883448)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64587881208015105112)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64724856337352883449)
,p_event_id=>wwv_flow_imp.id(64724856237860883448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64587881208015105112)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64724856489617883450)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64587881301524105113)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64928758782047711501)
,p_event_id=>wwv_flow_imp.id(64724856489617883450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64587881301524105113)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Hoja En Blanco'
,p_alias=>'PERFIL-DE-USUARIO'
,p_step_title=>'Perfil de Usuario'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64726611940404204323)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Registros'
,p_alias=>'REGISTROS'
,p_step_title=>'Registros'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64734847357769332929)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64734848238537333059)
,p_plug_name=>'Registros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'REGISTRO_USUARIOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64734853031380333062)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64734852096215333062)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64734853475576333063)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64734852683449333062)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64734853775777333063)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64734848574795333059)
,p_name=>'P9_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_source_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64734848955784333060)
,p_name=>'P9_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_source_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_default=>'P9_NOMBRE'
,p_item_default_type=>'ITEM'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64734849317954333060)
,p_name=>'P9_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_source_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_default=>'P9_APELLIDO'
,p_item_default_type=>'ITEM'
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64734849701788333060)
,p_name=>'P9_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_source_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_default=>'P9_EMAIL'
,p_item_default_type=>'ITEM'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64734850111058333061)
,p_name=>unistr('P9_CONTRASE\00D1A')
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_source_plug_id=>wwv_flow_imp.id(64734848238537333059)
,p_item_default=>unistr('P9_CONTRASE\00D1A')
,p_item_default_type=>'ITEM'
,p_prompt=>unistr('Contrase\00F1a')
,p_source=>unistr('CONTRASE\00D1A')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64734854685929333065)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(64734848238537333059)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registros'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64734854685929333065
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64734854242047333064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(64734848238537333059)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registros'
,p_internal_uid=>64734854242047333064
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Test de estilos de aprendizaje'
,p_alias=>'TEST-DE-ESTILOS-DE-APRENDIZAJE'
,p_step_title=>'Test de estilos de aprendizaje'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function enviarResultados(porcentajes) {',
'    const xhr = new XMLHttpRequest();',
'    xhr.open(''POST'', ''URL_DEL_SERVICIO_AJAX'', true); // Reemplaza con la URL de tu servicio',
'    xhr.setRequestHeader(''Content-Type'', ''application/json'');',
'',
'    xhr.onreadystatechange = function () {',
'        if (xhr.readyState === 4) {',
'            if (xhr.status === 200) {',
'                console.log(''Datos enviados correctamente'');',
'            } else {',
'                console.error(''Error al enviar datos:'', xhr.statusText);',
'            }',
'        }',
'    };',
'',
'    const data = {',
'        visual: porcentajes[0],',
'        auditivo: porcentajes[1],',
'        lectura_escritura: porcentajes[2],',
'        kinestesico: porcentajes[3]',
'    };',
'',
'    xhr.send(JSON.stringify(data));',
'}',
'',
'function calcularResultados() {',
unistr('    // ... C\00F3digo existente para calcular los porcentajes ...'),
'',
'    const porcentajes = conteo.map(count => (count / total_respuestas) * 100);',
unistr('    enviarResultados(porcentajes); // Env\00EDa los resultados'),
'',
unistr('    // ... C\00F3digo existente para mostrar resultados ...'),
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614707389610608620)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Descripci\00F3n del Test</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .centered-italic {',
'            text-align: center;',
'            font-style: italic;',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        strong {',
'            font-weight: bold;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section id="introduccion-test">',
'    <p class="centered-italic">',
unistr('        Este test te ayudar\00E1 a descubrir cu\00E1l es tu estilo de aprendizaje predominante y as\00ED mejorar tu experiencia educativa. <br><br>'),
unistr('        <strong>Es una gu\00EDa</strong> para ayudarte a conocer tu estilo de aprendizaje.<br><br>'),
unistr('        Una vez terminado el test, selecciona el resultado con el que m\00E1s te identificas.'),
'    </p>',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614707519532608622)
,p_plug_name=>unistr('\00A1Selecciona tu estilo!')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>40
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614708090770608627)
,p_plug_name=>'Descrpcion'
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Estilos de Aprendizaje</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h2 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        h3 {',
'            color: #0073e6;',
'            text-align: left;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: left;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
'    <h2>Estilos de Aprendizaje</h2>',
'',
'    <h3>Visual</h3>',
unistr('    <p>Te gusta aprender viendo im\00E1genes, dibujos o videos. Entiendes mejor las cosas cuando las puedes ver.</p>'),
'',
'    <h3>Auditivo</h3>',
'    <p>Te gusta aprender escuchando. Prefieres que te expliquen las cosas en voz alta y recuerdas mejor lo que escuchas.</p>',
'',
unistr('    <h3>Kinest\00E9sico</h3>'),
unistr('    <p>Aprendes mejor haciendo actividades f\00EDsicas. Te gusta moverte, tocar cosas y aprender con las manos.</p>'),
'',
'    <h3>Lectura y Escritura</h3>',
unistr('    <p>Te gusta leer y escribir para aprender. Prefieres escribir notas y leer informaci\00F3n para entender mejor.</p>'),
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64724852271479883408)
,p_plug_name=>'Test'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709422626403723384)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Test de Estilo de Aprendizaje</title>',
'    <style>',
'        body { font-family: Arial, sans-serif; }',
'        .question { display: none; margin-bottom: 20px; }',
'        #quiz-container {',
'            max-height: 500px; ',
'            overflow-y: auto; ',
'            border: 1px solid #ccc; ',
'            padding: 10px; ',
'            margin-bottom: 20px; ',
'        }',
'    </style>',
'</head>',
'<body>',
'    <h1>Bienvenido al Test de Estilo de Aprendizaje</h1>',
'    <div id="quiz-container">',
'        <form id="quiz-form">',
'            <div class="question" id="question1">',
unistr('                <p>1. Si vas a cocinar algo especial para tu familia, \00BFqu\00E9 har\00EDas?</p>'),
unistr('                <label><input type="radio" name="q1" value="a"> a. Preguntar\00EDa a mis amigos qu\00E9 me recomiendan.</label><br>'),
unistr('                <label><input type="radio" name="q1" value="b"> b. Mirar\00EDa recetas en un libro para ver las fotos.</label><br>'),
unistr('                <label><input type="radio" name="q1" value="c"> c. Usar\00EDa un libro de cocina porque s\00E9 que hay una buena receta.</label><br>'),
unistr('                <label><input type="radio" name="q1" value="d"> d. Cocinar\00EDa algo que ya s\00E9 hacer sin mirar instrucciones.</label>'),
'            </div>',
'            <div class="question" id="question2">',
unistr('                <p>2. Cuando eliges comida en un lugar para comer, \00BFqu\00E9 har\00EDas?</p>'),
unistr('                <label><input type="radio" name="q2" value="a"> a. Escuchar\00EDa al mesero o le pedir\00EDa a mis amigos que me recomienden.</label><br>'),
unistr('                <label><input type="radio" name="q2" value="b"> b. Mirar\00EDa lo que otros est\00E1n comiendo o ver\00EDa dibujos de los platillos.</label><br>'),
unistr('                <label><input type="radio" name="q2" value="c"> c. Escoger\00EDa algo bas\00E1ndome en lo que dice el men\00FA.</label><br>'),
unistr('                <label><input type="radio" name="q2" value="d"> d. Elegir\00EDa algo que ya he probado antes.</label>'),
'            </div>',
'            <div class="question" id="question3">',
unistr('                <p>3. Si te ofrecen una nueva actividad, \00BFc\00F3mo reaccionas?</p>'),
'                <label><input type="radio" name="q3" value="a"> a. Pregunto a otros sobre su experiencia.</label><br>',
unistr('                <label><input type="radio" name="q3" value="b"> b. Me gustar\00EDa ver un video o im\00E1genes antes de decidir.</label><br>'),
'                <label><input type="radio" name="q3" value="c"> c. Leo sobre la actividad y sus beneficios.</label><br>',
'                <label><input type="radio" name="q3" value="d"> d. Me lanzo a probarlo directamente.</label>',
'            </div>',
'            <div class="question" id="question4">',
unistr('                <p>4. Cuando aprendes algo nuevo, \00BFqu\00E9 prefieres?</p>'),
'                <label><input type="radio" name="q4" value="a"> a. Discutirlo con amigos o colegas.</label><br>',
unistr('                <label><input type="radio" name="q4" value="b"> b. Ver tutoriales en l\00EDnea.</label><br>'),
unistr('                <label><input type="radio" name="q4" value="c"> c. Leer libros o art\00EDculos al respecto.</label><br>'),
unistr('                <label><input type="radio" name="q4" value="d"> d. Aprenderlo a trav\00E9s de la pr\00E1ctica.</label>'),
'            </div>',
'            <div class="question" id="question5">',
unistr('                <p>5. \00BFC\00F3mo prefieres recibir retroalimentaci\00F3n sobre tu trabajo?</p>'),
'                <label><input type="radio" name="q5" value="a"> a. En persona y cara a cara.</label><br>',
unistr('                <label><input type="radio" name="q5" value="b"> b. A trav\00E9s de un informe escrito.</label><br>'),
unistr('                <label><input type="radio" name="q5" value="c"> c. Mediante gr\00E1ficos o visualizaciones.</label><br>'),
unistr('                <label><input type="radio" name="q5" value="d"> d. A trav\00E9s de ejemplos pr\00E1cticos.</label>'),
'            </div>',
'            <div class="question" id="question6">',
unistr('                <p>6. En un grupo de trabajo, \00BFqu\00E9 rol prefieres?</p>'),
unistr('                <label><input type="radio" name="q6" value="a"> a. El que se encarga de la comunicaci\00F3n.</label><br>'),
unistr('                <label><input type="radio" name="q6" value="b"> b. El que busca informaci\00F3n visual.</label><br>'),
'                <label><input type="radio" name="q6" value="c"> c. El que investiga y analiza datos.</label><br>',
unistr('                <label><input type="radio" name="q6" value="d"> d. El que realiza tareas pr\00E1cticas.</label>'),
'            </div>',
'            <div class="question" id="question7">',
unistr('                <p>7. Si tienes que aprender un nuevo idioma, \00BFc\00F3mo lo har\00EDas?</p>'),
unistr('                <label><input type="radio" name="q7" value="a"> a. Practicar\00EDa con hablantes nativos.</label><br>'),
unistr('                <label><input type="radio" name="q7" value="b"> b. Ver\00EDa pel\00EDculas o series en ese idioma.</label><br>'),
unistr('                <label><input type="radio" name="q7" value="c"> c. Usar\00EDa aplicaciones educativas.</label><br>'),
unistr('                <label><input type="radio" name="q7" value="d"> d. Leer\00EDa libros en ese idioma.</label>'),
'            </div>',
'            <div class="question" id="question8">',
unistr('                <p>8. \00BFQu\00E9 prefieres hacer en tu tiempo libre?</p>'),
'                <label><input type="radio" name="q8" value="a"> a. Salir con amigos y socializar.</label><br>',
'                <label><input type="radio" name="q8" value="b"> b. Ver documentales o series educativas.</label><br>',
'                <label><input type="radio" name="q8" value="c"> c. Leer libros sobre diferentes temas.</label><br>',
unistr('                <label><input type="radio" name="q8" value="d"> d. Hacer manualidades o proyectos pr\00E1cticos.</label>'),
'            </div>',
'            <div class="question" id="question9">',
unistr('                <p>9. Si necesitas resolver un problema, \00BFqu\00E9 haces primero?</p>'),
'                <label><input type="radio" name="q9" value="a"> a. Pido consejo a otros.</label><br>',
'                <label><input type="radio" name="q9" value="b"> b. Busco ejemplos visuales.</label><br>',
unistr('                <label><input type="radio" name="q9" value="c"> c. Analizo la situaci\00F3n detenidamente.</label><br>'),
unistr('                <label><input type="radio" name="q9" value="d"> d. Intento encontrar una soluci\00F3n pr\00E1ctica.</label>'),
'            </div>',
'            <div class="question" id="question10">',
unistr('                <p>10. \00BFC\00F3mo prefieres estudiar para un examen?</p>'),
'                <label><input type="radio" name="q10" value="a"> a. Haciendo grupos de estudio.</label><br>',
'                <label><input type="radio" name="q10" value="b"> b. Creando presentaciones visuales.</label><br>',
'                <label><input type="radio" name="q10" value="c"> c. Leyendo libros y apuntes.</label><br>',
unistr('                <label><input type="radio" name="q10" value="d"> d. Realizando ejercicios pr\00E1cticos.</label>'),
'            </div>',
'            <div class="question" id="question11">',
unistr('                <p>11. Si asistes a una charla, \00BFqu\00E9 te gusta hacer?</p>'),
'                <label><input type="radio" name="q11" value="a"> a. Hacer preguntas al ponente.</label><br>',
'                <label><input type="radio" name="q11" value="b"> b. Tomar notas y hacer esquemas.</label><br>',
unistr('                <label><input type="radio" name="q11" value="c"> c. Prestar atenci\00F3n a los gr\00E1ficos y diagramas.</label><br>'),
'                <label><input type="radio" name="q11" value="d"> d. Relacionar lo que se dice con experiencias previas.</label>',
'            </div>',
'            <div class="question" id="question12">',
unistr('                <p>12. Al escuchar m\00FAsica, \00BFqu\00E9 prefieres?</p>'),
'                <label><input type="radio" name="q12" value="a"> a. Hablar sobre las letras y el significado.</label><br>',
'                <label><input type="radio" name="q12" value="b"> b. Ver videos de los artistas.</label><br>',
unistr('                <label><input type="radio" name="q12" value="c"> c. Escuchar los instrumentos y la producci\00F3n.</label><br>'),
unistr('                <label><input type="radio" name="q12" value="d"> d. Disfrutar de la m\00FAsica sin pensar demasiado.</label>'),
'            </div>',
'            <div class="question" id="question13">',
unistr('                <p>13. \00BFQu\00E9 prefieres hacer al viajar?</p>'),
'                <label><input type="radio" name="q13" value="a"> a. Hablar con los locales y conocer sus historias.</label><br>',
'                <label><input type="radio" name="q13" value="b"> b. Tomar fotos y capturar momentos.</label><br>',
'                <label><input type="radio" name="q13" value="c"> c. Investigar sobre la cultura del lugar.</label><br>',
unistr('                <label><input type="radio" name="q13" value="d"> d. Hacer actividades pr\00E1cticas, como clases de cocina.</label>'),
'            </div>',
'            <div class="question" id="question14">',
unistr('                <p>14. \00BFC\00F3mo prefieres trabajar en un proyecto?</p>'),
unistr('                <label><input type="radio" name="q14" value="a"> a. Colaborando y comunic\00E1ndome con los dem\00E1s.</label><br>'),
'                <label><input type="radio" name="q14" value="b"> b. Creando presentaciones visuales.</label><br>',
unistr('                <label><input type="radio" name="q14" value="c"> c. Haciendo investigaci\00F3n y an\00E1lisis de datos.</label><br>'),
unistr('                <label><input type="radio" name="q14" value="d"> d. Llevando a cabo las tareas pr\00E1cticas.</label>'),
'            </div>',
'            <div class="question" id="question15">',
unistr('                <p>15. Si tienes que presentar un proyecto, \00BFc\00F3mo lo har\00EDas?</p>'),
'                <label><input type="radio" name="q15" value="a"> a. Discutiendo y recibiendo feedback.</label><br>',
unistr('                <label><input type="radio" name="q15" value="b"> b. Usando gr\00E1ficos y presentaciones.</label><br>'),
'                <label><input type="radio" name="q15" value="c"> c. Escribiendo un informe detallado.</label><br>',
unistr('                <label><input type="radio" name="q15" value="d"> d. Mostrando un ejemplo pr\00E1ctico.</label>'),
'            </div>',
'            <div class="question" id="question16">',
unistr('                <p>16. \00BFQu\00E9 prefieres hacer al final del d\00EDa?</p>'),
'                <label><input type="radio" name="q16" value="a"> a. Compartir lo que hice con alguien.</label><br>',
unistr('                <label><input type="radio" name="q16" value="b"> b. Ver una pel\00EDcula o serie.</label><br>'),
'                <label><input type="radio" name="q16" value="c"> c. Leer un libro.</label><br>',
unistr('                <label><input type="radio" name="q16" value="d"> d. Hacer algo pr\00E1ctico, como organizar mi espacio.</label>'),
'            </div>',
'        </form>',
'    </div>',
'    <button type="button" id="next-button" onclick="nextQuestion()">Siguiente</button>',
'    <button type="button" id="finalizar-button" style="display:none;" onclick="calcularResultados()">Finalizar Test</button>',
'',
'    <div id="resultados" style="display:none;">',
'        <h2>Resultados:</h2>',
'        <div id="resultadoEstilos"></div>',
'    </div>',
'',
'    <script>',
'        let currentQuestion = 0;',
'        const totalQuestions = 16;',
'        const banco_respuestas = [',
'            [''b'', ''a'', ''c'', ''d''],',
'            [''b'', ''a'', ''c'', ''d''],',
'            [''d'', ''a'', ''c'', ''b''],',
'            [''c'', ''d'', ''a'', ''b''],',
'            [''d'', ''c'', ''b'', ''a''],',
'            [''b'', ''d'', ''c'', ''a''],',
'            [''d'', ''b'', ''c'', ''a''],',
'            [''b'', ''d'', ''a'', ''c''],',
'            [''a'', ''b'', ''c'', ''d''],',
'            [''b'', ''a'', ''d'', ''c''],',
'            [''c'', ''a'', ''b'', ''d''],',
'            [''d'', ''c'', ''b'', ''a''],',
'            [''d'', ''c'', ''b'', ''a''],',
'            [''c'', ''d'', ''b'', ''a''],',
'            [''d'', ''c'', ''b'', ''a''],',
'            [''d'', ''c'', ''a'', ''b'']',
'        ];',
'',
'        const estilos = [''V'', ''A'', ''R'', ''K''];',
unistr('        const estilos1 = [''Visual'', ''Auditivo'', ''Lectura y escritura'', ''Kinest\00E9sico''];'),
'        const conteo = [0, 0, 0, 0];',
'',
'        function showQuestion(index) {',
'            const questions = document.querySelectorAll(''.question'');',
'            questions.forEach((q, i) => {',
'                q.style.display = (i === index) ? ''block'' : ''none'';',
'            });',
'        }',
'',
'        function nextQuestion() {',
'            const selectedOption = document.querySelector(`input[name="q${currentQuestion + 1}"]:checked`);',
'            if (!selectedOption) {',
'                alert(`Por favor, responde la pregunta ${currentQuestion + 1}.`);',
'                return;',
'            }',
'',
'            currentQuestion++;',
'            if (currentQuestion < totalQuestions - 1) {',
'                showQuestion(currentQuestion);',
'            } else {',
'                document.getElementById(''next-button'').style.display = ''none'';',
'                document.getElementById(''finalizar-button'').style.display = ''block'';',
'                showQuestion(currentQuestion);',
'            }',
'        }',
'',
'        function calcularResultados() {',
'            const respuestas = [];',
'            for (let i = 1; i <= totalQuestions; i++) {',
'                const respuesta = document.querySelector(`input[name="q${i}"]:checked`);',
'                if (respuesta) {',
'                    respuestas.push(respuesta.value);',
'                }',
'            }',
'',
'            const conteo = [0, 0, 0, 0];',
'',
'            respuestas.forEach((respuesta, i) => {',
'                banco_respuestas[i].forEach((res, j) => {',
'                    if (respuesta === res) conteo[j]++;',
'                });',
'            });',
'',
'            const porcentajes = conteo.map(count => (count / totalQuestions) * 100);',
'            const estilo_predominante = estilos1[conteo.indexOf(Math.max(...conteo))];',
'',
'            const resultadoEstilos = document.getElementById(''resultadoEstilos'');',
'            resultadoEstilos.innerHTML = estilos.map((estilo, index) => ',
'                `Estilo ${estilo}: ${porcentajes[index].toFixed(2)}%`',
'            ).join(''<br>'') + `<br>Estilo predominante: ${estilo_predominante}`;',
'            document.getElementById(''resultados'').style.display = ''block'';',
'            document.getElementById(''quiz-container'').style.display = ''none'';',
'        }',
'',
'        showQuestion(currentQuestion);',
'    </script>',
'</body>',
'</html>',
'',
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64735027386534648787)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614707614834608623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64614707519532608622)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Visual'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614707747293608624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(64614707519532608622)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Auditivo'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614707887783608625)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(64614707519532608622)
,p_button_name=>'New_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>unistr('Kinest\00E9sico')
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614707964063608626)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64614707519532608622)
,p_button_name=>'New_1_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Lectura y Escritura'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Test'
,p_alias=>'TEST'
,p_step_title=>'Test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64587882390164105123)
,p_plug_name=>'New'
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>\00A1Hagamos una prueba!</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        section {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        section h2 {',
'            font-size: 2em;',
'            color: #0073e6;',
'            margin-bottom: 15px;',
'            text-align: center;',
'        }',
'        .centered {',
'            text-align: center;',
'            font-style: italic;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section id="prueba">',
unistr('    <h2>\00A1Hagamos una prueba!</h2>'),
unistr('    <p class="centered">...para descubrir cu\00E1l es la mejor forma de aprender para ti y hacer que tu experiencia sea a\00FAn m\00E1s emocionante</p>'),
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587882061058105120)
,p_button_sequence=>40
,p_button_name=>'Test'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--pillStart:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'TEST'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Grupos'
,p_alias=>'GRUPOS'
,p_step_title=>'Grupos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64708943169326723346)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614706877359608615)
,p_plug_name=>'New'
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Descripci\00F3n de Cursos</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .centered-italic {',
'            text-align: center;',
'            font-style: italic;',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        .keyword {',
'            color: #0073e6; /* Azul para las palabras clave */',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section id="introduccion-cursos">',
'    <p class="centered-italic">',
unistr('        A continuaci\00F3n se presentan los m\00FAltiples <span class="keyword">cursos</span> a los que tienes acceso, dise\00F1ados para proporcionarte las <span class="keyword">habilidades</span> y <span class="keyword">conocimientos</span> necesarios en el \00E1m')
||'bito STEM.<br><br>',
unistr('        Estos <span class="keyword">cursos</span> est\00E1n orientados a ofrecer una <span class="keyword">experiencia de aprendizaje personalizada</span> y accesible, independientemente de tu nivel de experiencia. Nuestro objetivo es ayudarte a alcanzar')
||unistr(' tu m\00E1ximo <span class="keyword">potencial</span> a trav\00E9s de <span class="keyword">contenido adaptativo</span> y <span class="keyword">tecnolog\00EDa de vanguardia</span>.'),
'    </p>',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64776253558307613173)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587882464606105124)
,p_button_sequence=>30
,p_button_name=>unistr('Matem\00E1ticas')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>unistr('Matem\00E1ticas')
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Curso Matematicas'
,p_alias=>'CURSO-MATEMATICAS'
,p_step_title=>'Curso Matematicas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'SIDE'
,p_navigation_list_id=>wwv_flow_imp.id(64708929639490723336)
,p_navigation_list_template_id=>wwv_flow_imp.id(64709493836847723414)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614709148690608638)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>La Importancia de las Matem\00E1ticas</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: justify;',
'        }',
'        .highlight-blue {',
'            color: #0073e6;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
unistr('    <h1>La Importancia de las Matem\00E1ticas</h1>'),
'',
unistr('    <p>Las <span class="highlight-blue">matem\00E1ticas</span> son fundamentales para entender y resolver muchos de los problemas que enfrentamos a diario. Nos permiten tomar decisiones m\00E1s informadas, ya sea para calcular el cambio al comprar algo o par')
||'a entender mejor el mundo que nos rodea.</p>',
'',
unistr('    <p>Adem\00E1s, las matem\00E1ticas nos ense\00F1an a pensar de forma <span class="highlight-blue">l\00F3gica</span> y a analizar las situaciones desde diferentes perspectivas. Con ellas, aprendemos a resolver problemas de manera m\00E1s eficiente y a encontrar soluc')
||unistr('iones a retos que pueden parecer dif\00EDciles.</p>'),
'',
unistr('    <p>Sin importar lo que decidas hacer en el futuro, las <span class="highlight-blue">matem\00E1ticas</span> estar\00E1n presentes, ya sea en la tecnolog\00EDa, la ciencia o incluso en las actividades m\00E1s cotidianas.</p>'),
'',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614709278260608639)
,p_plug_name=>unistr('M\00F3dulos')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64724855656206883442)
,p_plug_name=>'Progreso_Algebra'
,p_title=>unistr('Progreso \00C1lgebra')
,p_parent_plug_id=>wwv_flow_imp.id(64614709278260608639)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .progress-container {',
'        width: 100%;',
'        background-color: #f3f3f3;',
'        border-radius: 5px;',
'    }',
'',
'    .progress-bar {',
'        width: 0%;',
'        height: 30px;',
'        background-color: #4caf50;',
'        text-align: center;',
'        line-height: 30px;',
'        color: black; /* Color del texto en negro */',
'        border-radius: 5px;',
'    }',
'</style>',
'',
'<div class="progress-container">',
'    <div class="progress-bar" id="myBar">0%</div>',
'</div>',
'',
'<script>',
'    function move() {',
'        var elem = document.getElementById("myBar");',
'        var width = 0;',
'        var id = setInterval(frame, 100); // Intervalo de 100 ms',
'        function frame() {',
'            if (width >= 100) {',
'                clearInterval(id);',
'            } else {',
'                width++;',
'                elem.style.width = width + ''%'';',
'                elem.innerHTML = width + ''%'';',
'            }',
'        }',
'    }',
unistr('    move(); // Llamar a la funci\00F3n para iniciar'),
'</script>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64724855731376883443)
,p_plug_name=>'Progreso_Geometria'
,p_title=>unistr('Progreso Geometr\00EDa')
,p_parent_plug_id=>wwv_flow_imp.id(64614709278260608639)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .progress-container {',
'        width: 100%;',
'        background-color: #f3f3f3;',
'        border-radius: 5px;',
'    }',
'',
'    .progress-bar {',
'        width: 0%;',
'        height: 30px;',
'        background-color: #4caf50;',
'        text-align: center;',
'        line-height: 30px;',
'        color: black; /* Color del texto en negro */',
'        border-radius: 5px;',
'    }',
'</style>',
'',
'<div class="progress-container">',
'    <div class="progress-bar" id="myBar">0%</div>',
'</div>',
'',
'<script>',
unistr('    // No hay funci\00F3n de movimiento, se mantiene en 0%'),
'</script>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64778228456215972928)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64724855591389883441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64614709278260608639)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>unistr('Geometr\00EDa')
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614709364111608640)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64614709278260608639)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>unistr('\00C1lgebra')
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64724855863181883444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64614709278260608639)
,p_button_name=>'Eliminar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Eliminar curso'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>unistr('\00BFConfirmas que deseas borrar este curso? ')
,p_confirm_style=>'danger'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64724855958452883445)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(64724855863181883444)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64724856065109883446)
,p_event_id=>wwv_flow_imp.id(64724855958452883445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(64724855591389883441)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64724856168671883447)
,p_event_id=>wwv_flow_imp.id(64724855958452883445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(64724855731376883443)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Algebra'
,p_alias=>'ALGEBRA'
,p_step_title=>'Algebra'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64724853137669883417)
,p_plug_name=>'Test'
,p_title=>'Test'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Quiz de \00C1lgebra</title>'),
'    <style>',
'        body { font-family: Arial, sans-serif; }',
'        .question { display: none; margin-bottom: 20px; }',
'        #quiz-container {',
'            max-width: 600px; ',
'            margin: auto; ',
'            padding: 20px; ',
'            border: 1px solid #ccc; ',
'            border-radius: 5px; ',
'            background-color: #f9f9f9;',
'        }',
'    </style>',
'</head>',
'<body>',
unistr('    <h1 style="text-align: center;">Quiz de \00C1lgebra</h1>'),
'    <div id="quiz-container">',
'        <form id="quiz-form">',
'            <div class="question" id="question1">',
unistr('                <p>1. \00BFCu\00E1l es el resultado de (2x + 3x)?</p>'),
'                <label><input type="radio" name="q1" value="a"> a. (5x)</label><br>',
'                <label><input type="radio" name="q1" value="b"> b. (6x)</label><br>',
'                <label><input type="radio" name="q1" value="c"> c. (x)</label><br>',
'                <label><input type="radio" name="q1" value="d"> d. (x^2)</label>',
'            </div>',
'            <div class="question" id="question2">',
unistr('                <p>2. \00BFQu\00E9 es x^2 - 4?</p>'),
'                <label><input type="radio" name="q2" value="a"> a. Un trinomio</label><br>',
'                <label><input type="radio" name="q2" value="b"> b. Un cuadrado perfecto</label><br>',
'                <label><input type="radio" name="q2" value="c"> c. Una diferencia de cuadrados</label><br>',
'                <label><input type="radio" name="q2" value="d"> d. Un binomio</label>',
'            </div>',
'            <div class="question" id="question3">',
unistr('                <p>3. \00BFCu\00E1l es la soluci\00F3n de la ecuaci\00F3n 3x - 6 = 0?</p>'),
'                <label><input type="radio" name="q3" value="a"> a. 2</label><br>',
'                <label><input type="radio" name="q3" value="b"> b. 3</label><br>',
'                <label><input type="radio" name="q3" value="c"> c. 0</label><br>',
'                <label><input type="radio" name="q3" value="d"> d. -2</label>',
'            </div>',
'            <div class="question" id="question4">',
unistr('                <p>4. Si y = 2x + 1, \00BFcu\00E1l es el valor de y cuando x = 3?</p>'),
'                <label><input type="radio" name="q4" value="a"> a. 7</label><br>',
'                <label><input type="radio" name="q4" value="b"> b. 6</label><br>',
'                <label><input type="radio" name="q4" value="c"> c. 8</label><br>',
'                <label><input type="radio" name="q4" value="d"> d. 5</label>',
'            </div>',
'            <div class="question" id="question5">',
unistr('                <p>5. \00BFQu\00E9 se obtiene al factorizar x^2 - 9?</p>'),
'                <label><input type="radio" name="q5" value="a"> a. (x - 3)(x + 3)</label><br>',
'                <label><input type="radio" name="q5" value="b"> b. (x - 9)(x + 1)</label><br>',
'                <label><input type="radio" name="q5" value="c"> c. (x - 3)^2</label><br>',
'                <label><input type="radio" name="q5" value="d"> d. x^2 + 9</label>',
'            </div>',
'            <div class="question" id="question6">',
unistr('                <p>6. \00BFCu\00E1l es el valor de 2x^2 + 3x - 2 cuando x = 1?</p>'),
'                <label><input type="radio" name="q6" value="a"> a. 3</label><br>',
'                <label><input type="radio" name="q6" value="b"> b. 1</label><br>',
'                <label><input type="radio" name="q6" value="c"> c. 0</label><br>',
'                <label><input type="radio" name="q6" value="d"> d. 2</label>',
'            </div>',
'            <div class="question" id="question7">',
unistr('                <p>7. \00BFQu\00E9 representa la pendiente en la ecuaci\00F3n de la recta y = mx + b?</p>'),
unistr('                <label><input type="radio" name="q7" value="a"> a. La intersecci\00F3n con el eje y</label><br>'),
'                <label><input type="radio" name="q7" value="b"> b. El valor de y cuando x es 0</label><br>',
'                <label><input type="radio" name="q7" value="c"> c. La tasa de cambio de y respecto a x</label><br>',
'                <label><input type="radio" name="q7" value="d"> d. La suma de las variables</label>',
'            </div>',
'            <div class="question" id="question8">',
unistr('                <p>8. \00BFC\00F3mo se llama la forma ax^2 + bx + c = 0?</p>'),
'                <label><input type="radio" name="q8" value="a"> a. Forma general</label><br>',
unistr('                <label><input type="radio" name="q8" value="b"> b. Forma can\00F3nica</label><br>'),
'                <label><input type="radio" name="q8" value="c"> c. Forma factorizada</label><br>',
unistr('                <label><input type="radio" name="q8" value="d"> d. Forma polin\00F3mica</label>'),
'            </div>',
'            <div class="question" id="question9">',
unistr('                <p>9. \00BFCu\00E1l es el resultado de 5x - 3x + 4?</p>'),
'                <label><input type="radio" name="q9" value="a"> a. 2x + 4</label><br>',
'                <label><input type="radio" name="q9" value="b"> b. 8x</label><br>',
'                <label><input type="radio" name="q9" value="c"> c. 2x - 4</label><br>',
'                <label><input type="radio" name="q9" value="d"> d. 2x + 3</label>',
'            </div>',
'            <div class="question" id="question10">',
unistr('                <p>10. \00BFCu\00E1l es la f\00F3rmula del cuadrado de la suma (a + b)^2?</p>'),
'                <label><input type="radio" name="q10" value="a"> a. a^2 + 2ab + b^2</label><br>',
'                <label><input type="radio" name="q10" value="b"> b. a^2 - 2ab + b^2</label><br>',
'                <label><input type="radio" name="q10" value="c"> c. a^2 + b^2</label><br>',
'                <label><input type="radio" name="q10" value="d"> d. ab</label>',
'            </div>',
'            <button type="button" onclick="nextQuestion()">Siguiente</button>',
'            <button type="button" id="finalizar-button" style="display:none;" onclick="calcularResultados()">Finalizar Test</button>',
'        </form>',
'    </div>',
'    ',
'    <div id="resultados" style="display:none;">',
'        <h2>Resultados:</h2>',
'        <p id="resultadoEstilos"></p>',
'        <p id="sugerencias"></p>',
'    </div>',
'',
'    <script>',
'        let currentQuestion = 0;',
'        const totalQuestions = 10;',
'',
'        function showQuestion(index) {',
'            const questions = document.querySelectorAll(''.question'');',
'            questions.forEach((q, i) => {',
'                q.style.display = (i === index) ? ''block'' : ''none'';',
'            });',
'        }',
'',
'        function nextQuestion() {',
'            const selectedOption = document.querySelector(`input[name="q${currentQuestion + 1}"]:checked`);',
'',
'            if (!selectedOption) {',
'                alert(`Por favor, responde la pregunta ${currentQuestion + 1}.`);',
'                return;',
'            }',
'',
'            currentQuestion++;',
'            if (currentQuestion < totalQuestions) {',
'                showQuestion(currentQuestion);',
'            } else {',
unistr('                document.getElementById(''finalizar-button'').style.display = ''block''; // Mostrar el bot\00F3n "Finalizar Test"'),
'            }',
'        }',
'',
'        function calcularResultados() {',
'            const respuestas = [',
'                ''a'', ''c'', ''a'', ''a'', ''a'', ''a'', ''c'', ''a'', ''a'', ''a'' // Respuestas correctas',
'            ];',
'            let aciertos = 0;',
'',
'            for (let i = 1; i <= totalQuestions; i++) {',
'                const respuesta = document.querySelector(`input[name="q${i}"]:checked`);',
'                if (respuesta && respuesta.value === respuestas[i - 1]) {',
'                    aciertos++;',
'                }',
'            }',
'',
'            const resultadosDiv = document.getElementById(''resultados'');',
'            const resultadoEstilos = document.getElementById(''resultadoEstilos'');',
'            resultadoEstilos.innerHTML = `Aciertos: ${aciertos} de ${totalQuestions}`;',
'',
'            let sugerencias = "";',
'            if (aciertos <= 3) {',
unistr('                sugerencias = "Te sugerimos practicar las operaciones b\00E1sicas, la factorizaci\00F3n y las ecuaciones lineales.";'),
'            } else if (aciertos <= 6) {',
unistr('                sugerencias = "Puedes mejorar en la factorizaci\00F3n y las funciones. Intenta resolver m\00E1s problemas de estos temas.";'),
'            } else {',
unistr('                sugerencias = "\00A1Buen trabajo! Mantente practicando para consolidar tus conocimientos y enfrentar problemas m\00E1s complejos.";'),
'            }',
'            document.getElementById(''sugerencias'').innerText = sugerencias;',
'',
'            resultadosDiv.style.display = ''block'';',
'            document.getElementById(''quiz-container'').style.display = ''none''; // Ocultar el contenedor de preguntas',
'        }',
'',
unistr('        // Mostrar la primera pregunta al cargar la p\00E1gina'),
'        showQuestion(currentQuestion);',
'    </script>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64785874071998187077)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64858693270465038031)
,p_plug_name=>'Chat'
,p_title=>unistr('\00A1Hazme una pregunta!')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708972915555723362)
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64930864286216420042)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64858693385858038032)
,p_region_id=>wwv_flow_imp.id(64858693270465038031)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CONTENT_ROLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CONTENT_PARTS'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64858693490109038033)
,p_page_id=>21
,p_web_src_param_id=>wwv_flow_imp.id(64930864876447420043)
,p_page_plug_id=>wwv_flow_imp.id(64858693270465038031)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64858693566360038034)
,p_page_id=>21
,p_web_src_param_id=>wwv_flow_imp.id(64930900571516423288)
,p_page_plug_id=>wwv_flow_imp.id(64858693270465038031)
,p_value_type=>'ITEM'
,p_value=>'P21_NEW'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64858693759517038036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64858693270465038031)
,p_button_name=>'Thonny_Bot'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Thonny_Bot'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64858693604102038035)
,p_name=>'P21_NEW'
,p_item_sequence=>20
,p_prompt=>unistr('Env\00EDa un mensaje a Thonny')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64858694211020038041)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64858694348488038042)
,p_event_id=>wwv_flow_imp.id(64858694211020038041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var text = document.querySelector(".a-CardView-subTitle");',
'var inner = text.innerHTML;',
'var new_text = JSON.parse(inner);',
'console.log(new_text)',
'text.innerText = new_text[0].text;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64858694489754038043)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64858693270465038031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64858694542004038044)
,p_event_id=>wwv_flow_imp.id(64858694489754038043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var text = document.querySelector(".a-CardView-subTitle");',
'var inner = text.innerHTML;',
'var new_text = JSON.parse(inner);',
'text.innerText = new_text[0].text;'))
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'Trigonometria'
,p_alias=>'TRIGONOMETRIA'
,p_step_title=>'Trigonometria'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64788379437401966284)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64788380108843966285)
,p_plug_name=>'Trigonometria'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708972915555723362)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CURSOS'
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P22_ORDER_BY", "orderBys": [{"key":"NOMBRE","expr":"\"NOMBRE\" asc"},{"key":"DESCRIPCION","expr":"\"DESCRIPCION\" asc"},{"key":"ENLACE","expr":"\"ENLACE\" asc"}]}'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64788380682596966285)
,p_region_id=>wwv_flow_imp.id(64788380108843966285)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOMBRE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'DESCRIPCION'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'ID'
,p_badge_column_name=>'ENLACE'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587882731669105127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64788380108843966285)
,p_button_name=>'Info'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Info'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64788381111050966286)
,p_name=>'P22_ORDER_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64788380108843966285)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NOMBRE'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'VisualPage'
,p_alias=>'VISUALPAGE'
,p_step_title=>'VisualPage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614708105484608628)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Estilo Visual</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        h3 {',
'            color: #0073e6;',
'            text-align: left;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: left;',
'        }',
'        ul {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            text-align: left;',
'            margin-bottom: 15px;',
'        }',
'        .centered-image {',
'            display: block;',
'            margin: 20px auto;',
'            max-width: 100%;',
'            height: auto;',
'        }',
'        .highlight-blue {',
'            color: #0073e6;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
'    <h1>Estilo Visual</h1>',
'',
unistr('    <p>El estilo de aprendizaje <span class="highlight-blue">visual</span> se caracteriza porque las personas que aprenden de esta manera prefieren recibir informaci\00F3n a trav\00E9s de <span class="highlight-blue">im\00E1genes</span>, <span class="highlight-b')
||unistr('lue">colores</span>, gr\00E1ficos y diagramas. Les gusta observar y recuerdan mejor las cosas cuando las pueden <span class="highlight-blue">ver</span> en lugar de escucharlas. Si tienes este estilo de aprendizaje, es probable que disfrutes de ver <span ')
||'class="highlight-blue">videos</span>, <span class="highlight-blue">dibujos</span> y esquemas para entender mejor los conceptos.</p>',
'',
unistr('    <!-- Imagen agregada justo despu\00E9s de "mejor los conceptos" -->'),
'    <img class="centered-image" src="https://educowebmedia.blob.core.windows.net/educowebmedia/educospain/media/images/blog/2020/visual-thinking-educacion.jpg" alt="Estilo Visual">',
'',
'    <h3>Estrategias de aprendizaje para el estilo visual</h3>',
'    <p>Si tu estilo es <span class="highlight-blue">visual</span>, puedes usar las siguientes estrategias para mejorar tu aprendizaje:</p>',
'    <ul>',
'        <li>Usa <span class="highlight-blue">colores</span> diferentes para subrayar o resaltar partes importantes de tus notas.</li>',
unistr('        <li>Crea <span class="highlight-blue">mapas mentales</span> o esquemas que te ayuden a organizar la informaci\00F3n de forma visual.</li>'),
unistr('        <li>Intenta estudiar con gr\00E1ficos, <span class="highlight-blue">im\00E1genes</span>, presentaciones o <span class="highlight-blue">videos</span> que expliquen los temas que est\00E1s viendo.</li>'),
unistr('        <li>Escribe res\00FAmenes en forma de listas o <span class="highlight-blue">diagramas</span> para ayudarte a recordar los conceptos.</li>'),
unistr('        <li>Si est\00E1s en una clase, observa los gestos del profesor, las presentaciones o cualquier material <span class="highlight-blue">visual</span> que se muestre.</li>'),
'    </ul>',
'',
unistr('    <h3>Tips para estudiar de manera m\00E1s efectiva</h3>'),
unistr('    <p>Aqu\00ED tienes algunos consejos adicionales para aprovechar al m\00E1ximo tu estilo <span class="highlight-blue">visual</span>:</p>'),
'    <ul>',
'        <li>Usa aplicaciones o herramientas digitales que te permitan crear <span class="highlight-blue">diagramas</span> o presentaciones visuales.</li>',
unistr('        <li>Trata de convertir la informaci\00F3n que lees en tu libro de texto en <span class="highlight-blue">im\00E1genes</span>, <span class="highlight-blue">s\00EDmbolos</span> o gr\00E1ficos que puedas recordar f\00E1cilmente.</li>'),
unistr('        <li>Si te cuesta memorizar informaci\00F3n, intenta hacer tarjetas <span class="highlight-blue">visuales</span> (flashcards) con palabras clave o im\00E1genes que representen lo que necesitas aprender.</li>'),
unistr('        <li>Dedica tiempo a ver <span class="highlight-blue">videos educativos</span> o tutoriales que expliquen los temas de forma gr\00E1fica.</li>'),
unistr('        <li>Cuando repases tus apuntes, dibuja peque\00F1os <span class="highlight-blue">diagramas</span> o bocetos al margen para asociar ideas con im\00E1genes.</li>'),
'    </ul>',
'',
unistr('    <h3>\00BFPor qu\00E9 este estilo puede ayudarte?</h3>'),
unistr('    <p>Aprender de manera <span class="highlight-blue">visual</span> te permite tener una <span class="highlight-blue">representaci\00F3n clara</span> y memorable de la informaci\00F3n que necesitas recordar. Al observar <span class="highlight-blue">im\00E1genes')
||unistr('</span>, <span class="highlight-blue">diagramas</span> o gr\00E1ficos, tu cerebro puede crear conexiones m\00E1s r\00E1pidas y duraderas. Este estilo tambi\00E9n te ayuda a <span class="highlight-blue">organizar mejor las ideas</span>, ya que puedes ver c\00F3mo se rela')
||'cionan unas con otras de forma estructurada.</p>',
'',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64852427674720756522)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Regresar'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'AuditivoPage'
,p_alias=>'AUDITIVOPAGE'
,p_step_title=>'AuditivoPage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614708202017608629)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Estilo Auditivo</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        h3 {',
'            color: #0073e6;',
'            text-align: left;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: left;',
'        }',
'        ul {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            text-align: left;',
'            margin-bottom: 15px;',
'        }',
'        .centered-image {',
'            display: block;',
'            margin: 20px auto;',
'            max-width: 100%;',
'            height: auto;',
'        }',
'        .highlight-blue {',
'            color: #0073e6;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
'    <h1>Estilo Auditivo</h1>',
'',
unistr('    <p>El estilo de aprendizaje <span class="highlight-blue">auditivo</span> se caracteriza porque las personas que aprenden de esta manera prefieren recibir informaci\00F3n a trav\00E9s del <span class="highlight-blue">sonido</span>. Les gusta <span class="')
||'highlight-blue">escuchar</span> explicaciones, debates o grabaciones para aprender. Si tienes este estilo de aprendizaje, probablemente disfrutes de <span class="highlight-blue">escuchar</span> a tus profesores, podcasts educativos o grabaciones que '
||'te ayuden a comprender mejor los temas.</p>',
'',
unistr('    <!-- Imagen agregada justo despu\00E9s de la descripci\00F3n -->'),
'    <img class="centered-image" src="https://www.crauditiva.com/wp-content/uploads/2022/10/Por-que-es-importante-la-revision-auditiva-en-los-ninos-head.jpg" alt="Estilo Auditivo">',
'',
'    <h3>Estrategias de aprendizaje para el estilo auditivo</h3>',
'    <p>Si tu estilo es <span class="highlight-blue">auditivo</span>, puedes usar las siguientes estrategias para mejorar tu aprendizaje:</p>',
'    <ul>',
unistr('        <li>Escucha <span class="highlight-blue">podcasts</span> o grabaciones sobre los temas que est\00E1s estudiando.</li>'),
unistr('        <li>Graba tus clases o explicaciones y <span class="highlight-blue">esc\00FAchalas</span> despu\00E9s para reforzar lo que aprendiste.</li>'),
unistr('        <li><span class="highlight-blue">Lee en voz alta</span> para ayudarte a procesar la informaci\00F3n de manera auditiva.</li>'),
unistr('        <li>Participa en <span class="highlight-blue">discusiones</span> o debates con tus compa\00F1eros para intercambiar ideas verbalmente.</li>'),
unistr('        <li>Usa canciones o rimas para <span class="highlight-blue">memorizar informaci\00F3n</span> de manera divertida.</li>'),
'    </ul>',
'',
unistr('    <h3>Tips para estudiar de manera m\00E1s efectiva</h3>'),
unistr('    <p>Aqu\00ED tienes algunos consejos adicionales para aprovechar al m\00E1ximo tu estilo <span class="highlight-blue">auditivo</span>:</p>'),
'    <ul>',
unistr('        <li>Utiliza <span class="highlight-blue">aud\00EDfonos</span> para concentrarte mejor mientras escuchas tus grabaciones o explicaciones.</li>'),
'        <li>Si tienes que estudiar solo, trata de <span class="highlight-blue">explicarte a ti mismo</span> los conceptos en voz alta.</li>',
'        <li>Busca <span class="highlight-blue">videos educativos</span> con explicaciones claras o voces que te ayuden a entender mejor los temas.</li>',
'        <li>Trata de estudiar en un ambiente donde no haya <span class="highlight-blue">ruidos</span> que te distraigan y puedas concentrarte en escuchar.</li>',
'    </ul>',
'',
unistr('    <h3>\00BFPor qu\00E9 este estilo puede ayudarte?</h3>'),
unistr('    <p>El estilo <span class="highlight-blue">auditivo</span> puede ayudarte porque al <span class="highlight-blue">escuchar</span> la informaci\00F3n, tu cerebro puede procesarla de una manera m\00E1s directa. <span class="highlight-blue">Escuchar</span> un')
||unistr('a explicaci\00F3n te permite captar detalles importantes que pueden pasar desapercibidos al leer. Adem\00E1s, escuchar las cosas varias veces puede hacer que las <span class="highlight-blue">recuerdes</span> m\00E1s f\00E1cilmente.</p>'),
'',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64614709438195608641)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Regresar'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'KinePage'
,p_alias=>'KINEPAGE'
,p_step_title=>'KinePage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614708318872608630)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('    <title>Estilo Kinest\00E9sico</title>'),
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        h3 {',
'            color: #0073e6;',
'            text-align: left;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: left;',
'        }',
'        ul {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            text-align: left;',
'            margin-bottom: 15px;',
'        }',
'        .centered-image {',
'            display: block;',
'            margin: 20px auto;',
'            max-width: 100%;',
'            height: auto;',
'        }',
'        .highlight-blue {',
'            color: #0073e6;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
unistr('    <h1>Estilo Kinest\00E9sico</h1>'),
'',
unistr('    <p>El estilo de aprendizaje <span class="highlight-blue">kinest\00E9sico</span> se caracteriza porque las personas que lo tienen prefieren <span class="highlight-blue">aprender haciendo</span>. Les gusta moverse, tocar y participar en actividades pr\00E1')
||unistr('cticas. Si tienes este estilo de aprendizaje, disfrutas cuando puedes <span class="highlight-blue">interactuar f\00EDsicamente</span> con el material, como en experimentos o juegos, ya que aprendes mejor a trav\00E9s de la <span class="highlight-blue">experi')
||'encia</span> directa.</p>',
'',
unistr('    <!-- Imagen agregada justo despu\00E9s de la primera descripci\00F3n -->'),
unistr('    <img class="centered-image" src="https://uvn-brightspot.s3.amazonaws.com/assets/vixes/imj/entrepadres/L/La%20inteligencia%20kinist%C3%A9sica,%20hablar%20con%20el%20cuerpo%20y%20aprender%20con%20la%20experiencia_2.jpg" alt="Estilo Kinest\00E9sico">'),
'',
unistr('    <h3>Estrategias de aprendizaje para el estilo kinest\00E9sico</h3>'),
unistr('    <p>Si tu estilo es <span class="highlight-blue">kinest\00E9sico</span>, puedes usar las siguientes estrategias para mejorar tu aprendizaje:</p>'),
'    <ul>',
unistr('        <li>Participa en <span class="highlight-blue">actividades f\00EDsicas</span> mientras estudias, como dramatizaciones o juegos de rol.</li>'),
'        <li>Utiliza objetos o materiales que puedas <span class="highlight-blue">manipular</span> mientras aprendes, como bloques, modelos o herramientas.</li>',
'        <li>Haz <span class="highlight-blue">pausas frecuentes</span> durante el estudio para moverte y mantenerte activo.</li>',
unistr('        <li>Aprende mejor al practicar, as\00ED que busca <span class="highlight-blue">simulaciones</span> o actividades pr\00E1cticas que te permitan aplicar lo que est\00E1s estudiando.</li>'),
unistr('        <li>Toma notas durante tus actividades o mientras te mueves para ayudar a reforzar lo que est\00E1s aprendiendo.</li>'),
'    </ul>',
'',
unistr('    <h3>Tips para estudiar de manera m\00E1s efectiva</h3>'),
unistr('    <p>Aqu\00ED tienes algunos consejos adicionales para aprovechar al m\00E1ximo tu estilo <span class="highlight-blue">kinest\00E9sico</span>:</p>'),
'    <ul>',
'        <li>Estudia de pie o caminando, en lugar de quedarte sentado todo el tiempo.</li>',
'        <li>Haz uso de <span class="highlight-blue">actividades manuales</span> como construir modelos o hacer experimentos para aprender conceptos abstractos.</li>',
'        <li>Utiliza juegos educativos que involucren el movimiento para repasar los temas importantes.</li>',
'        <li>Cuando estudies, repite el material en voz alta mientras te mueves o haces gestos que te ayuden a recordarlo.</li>',
unistr('        <li>Realiza ejercicios de respiraci\00F3n o estiramientos cuando necesites una pausa mental durante el estudio.</li>'),
'    </ul>',
'',
unistr('    <h3>\00BFPor qu\00E9 este estilo puede ayudarte?</h3>'),
unistr('    <p>El estilo <span class="highlight-blue">kinest\00E9sico</span> puede ayudarte porque te permite <span class="highlight-blue">aprender a trav\00E9s de la acci\00F3n</span>. Al moverte y realizar actividades, tu cuerpo y mente se mantienen activos, lo que fa')
||unistr('cilita la <span class="highlight-blue">comprensi\00F3n</span> y el <span class="highlight-blue">recordatorio</span> de la informaci\00F3n. Este estilo tambi\00E9n te permite aprender haciendo <span class="highlight-blue">conexiones f\00EDsicas</span> con los concept')
||unistr('os, lo que refuerza tu comprensi\00F3n.</p>'),
'',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64852445187119762132)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Regresar'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'LecPage'
,p_alias=>'LECPAGE'
,p_step_title=>'LecPage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64614708466159608631)
,p_plug_name=>'New'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="es">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Estilo Lectura y Escritura</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            background-color: #f4f4f4;',
'            margin: 0;',
'            padding: 0;',
'            color: #333;',
'        }',
'        .content {',
'            max-width: 1000px;',
'            margin: 20px auto;',
'            padding: 20px;',
'            background-color: #fff;',
'            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            color: #0073e6;',
'            text-align: center;',
'        }',
'        h3 {',
'            color: #0073e6;',
'            text-align: left;',
'        }',
'        p {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            margin-bottom: 15px;',
'            text-align: left;',
'        }',
'        ul {',
'            font-size: 1.2em;',
'            line-height: 1.6;',
'            text-align: left;',
'            margin-bottom: 15px;',
'        }',
'        .centered-image {',
'            display: block;',
'            margin: 20px auto;',
'            max-width: 100%;',
'            height: auto;',
'        }',
'        .highlight-blue {',
'            color: #0073e6;',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<section class="content">',
'    <h1>Estilo Lectura y Escritura</h1>',
'',
'    <p>El estilo de aprendizaje <span class="highlight-blue">lectura y escritura</span> se caracteriza porque las personas que lo prefieren disfrutan de <span class="highlight-blue">leer</span> y <span class="highlight-blue">escribir</span> para apre'
||unistr('nder. Prefieren estudiar tomando <span class="highlight-blue">notas</span>, haciendo res\00FAmenes y leyendo libros o art\00EDculos. Si tienes este estilo de aprendizaje, probablemente disfrutes de leer y de <span class="highlight-blue">escribir tus ideas</s')
||'pan> para entender mejor los conceptos.</p>',
'',
unistr('    <!-- Imagen agregada justo despu\00E9s de la primera descripci\00F3n -->'),
'    <img class="centered-image" src="https://cloudfront-us-east-1.images.arcpublishing.com/infobae/7ZFLEI6IN5FLRPBTHED6XNPNSQ.jpg" alt="Estilo Lectura y Escritura">',
'',
'    <h3>Estrategias de aprendizaje para el estilo lectura y escritura</h3>',
'    <p>Si tu estilo es <span class="highlight-blue">lectura y escritura</span>, puedes usar las siguientes estrategias para mejorar tu aprendizaje:</p>',
'    <ul>',
unistr('        <li>Escribe <span class="highlight-blue">res\00FAmenes</span> o par\00E1frasis de lo que est\00E1s estudiando para recordarlo mejor.</li>'),
unistr('        <li>Haz listas o tablas para organizar la informaci\00F3n de manera clara.</li>'),
unistr('        <li>Lee textos o art\00EDculos relacionados con los temas que est\00E1s aprendiendo.</li>'),
unistr('        <li>Utiliza <span class="highlight-blue">diccionarios</span> o enciclopedias para investigar m\00E1s a fondo sobre los temas.</li>'),
unistr('        <li>Toma notas mientras lees o escuchas las explicaciones para ayudar a retener la informaci\00F3n.</li>'),
'    </ul>',
'',
unistr('    <h3>Tips para estudiar de manera m\00E1s efectiva</h3>'),
unistr('    <p>Aqu\00ED tienes algunos consejos adicionales para aprovechar al m\00E1ximo tu estilo <span class="highlight-blue">lectura y escritura</span>:</p>'),
'    <ul>',
unistr('        <li>Subraya o resalta partes importantes de los textos que lees para identificar lo m\00E1s relevante.</li>'),
unistr('        <li>Reescribe tus notas a mano o en computadora para fijar mejor la informaci\00F3n.</li>'),
unistr('        <li>Lee en voz alta lo que est\00E1s estudiando para procesarlo de manera auditiva y visual al mismo tiempo.</li>'),
unistr('        <li>Busca textos adicionales o art\00EDculos que complementen lo que est\00E1s aprendiendo en clase.</li>'),
unistr('        <li>Haz preguntas por escrito sobre los temas que est\00E1s estudiando y luego responde por escrito.</li>'),
'    </ul>',
'',
unistr('    <h3>\00BFPor qu\00E9 este estilo puede ayudarte?</h3>'),
unistr('    <p>El estilo <span class="highlight-blue">lectura y escritura</span> te puede ayudar a <span class="highlight-blue">organizar</span> y <span class="highlight-blue">procesar</span> la informaci\00F3n de forma clara y estructurada. Al escribir tus idea')
||unistr('s o hacer res\00FAmenes, logras comprender mejor los conceptos y recordar m\00E1s f\00E1cilmente. Adem\00E1s, la lectura te permite acceder a fuentes de informaci\00F3n m\00E1s detalladas y completas.</p>'),
'',
'</section>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64852394161927466619)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_image_alt=>'Regresar'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'Inteligencia Artificial'
,p_alias=>'INTELIGENCIA-ARTIFICIAL'
,p_step_title=>'Inteligencia Artificial'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(64587882901800105129)
,p_name=>'New'
,p_template=>wwv_flow_imp.id(64709432400707723387)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64835434984397264457)
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(64709470830640723404)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587883747787105137)
,p_query_column_id=>1
,p_column_alias=>'INDEX_'
,p_column_display_sequence=>10
,p_column_heading=>'Index'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587883876604105138)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE_ROLE'
,p_column_display_sequence=>20
,p_column_heading=>'Message Role'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587883913091105139)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_CONTENT'
,p_column_display_sequence=>30
,p_column_heading=>'Message Content'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587884038459105140)
,p_query_column_id=>4
,p_column_alias=>'MESSAGE_REFUSAL'
,p_column_display_sequence=>40
,p_column_heading=>'Message Refusal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587884164719105141)
,p_query_column_id=>5
,p_column_alias=>'LOGPROBS'
,p_column_display_sequence=>50
,p_column_heading=>'Logprobs'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(64587884275531105142)
,p_query_column_id=>6
,p_column_alias=>'FINISH_REASON'
,p_column_display_sequence=>60
,p_column_heading=>'Finish Reason'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64587884680368105146)
,p_page_id=>30
,p_web_src_param_id=>wwv_flow_imp.id(64835355623994968691)
,p_page_plug_id=>wwv_flow_imp.id(64587882901800105129)
,p_value_type=>'NULL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64823927930543896746)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709444813843723393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(64708929199517723336)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(64709507607921723421)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587884530592105145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64587882901800105129)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709505371453723420)
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64587883651776105136)
,p_name=>'P30_NEW'
,p_item_sequence=>20
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Table'
,p_alias=>'TABLE'
,p_step_title=>'Table'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64838409350476360918)
,p_plug_name=>unistr('Ejercicios resuletos por d\00EDa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(64838409796689360918)
,p_region_id=>wwv_flow_imp.id(64838409350476360918)
,p_chart_type=>'area'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(64838411451089360919)
,p_chart_id=>wwv_flow_imp.id(64838409796689360918)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Lunes'' label, 30 value from sys.dual',
'union all',
'select ''Martes'' label, 20 value from sys.dual',
'union all',
unistr('select ''Mi\00E9rcoles'' label, 34 value from sys.dual'),
'union all',
'select ''Jueves'' label, 6  value from sys.dual',
'union all',
'select ''Viernes'' label, 10 value from sys.dual'))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(64838410296383360919)
,p_chart_id=>wwv_flow_imp.id(64838409796689360918)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>unistr('D\00EDa')
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(64838410843182360919)
,p_chart_id=>wwv_flow_imp.id(64838409796689360918)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Ejercicios resueltos'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64838412052153360920)
,p_plug_name=>unistr('M\00F3dulos m\00E1s Visitados')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(64838412431387360920)
,p_region_id=>wwv_flow_imp.id(64838412052153360920)
,p_chart_type=>'pie'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(64838412958918360921)
,p_chart_id=>wwv_flow_imp.id(64838412431387360920)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''F\00EDsica'' label, 30 value from sys.dual'),
'union all',
unistr('select ''Qu\00EDmica'' label, 20 value from sys.dual'),
'union all',
unistr('select ''Matem\00E1ticas'' label, 34 value from sys.dual'),
'union all',
unistr('select ''Programaci\00F3n'' label, 6  value from sys.dual'),
'union all',
unistr('select ''Biolog\00EDa'' label, 10 value from sys.dual')))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64838413588212360921)
,p_plug_name=>unistr('Tiempo total dedicado al d\00EDa [min]')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(64838413985258360921)
,p_region_id=>wwv_flow_imp.id(64838413588212360921)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(64838415691020360922)
,p_chart_id=>wwv_flow_imp.id(64838413985258360921)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Lunes'' label, 30 value from sys.dual',
'union all',
'select ''Martes'' label, 20 value from sys.dual',
'union all',
unistr('select ''Mi\00E9rcoles'' label, 34 value from sys.dual'),
'union all',
'select ''Jueves'' label, 6  value from sys.dual',
'union all',
'select ''Viernes'' label, 10 value from sys.dual'))
,p_max_row_count=>20
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(64838414417993360921)
,p_chart_id=>wwv_flow_imp.id(64838413985258360921)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>unistr('D\00EDa')
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(64838415056454360922)
,p_chart_id=>wwv_flow_imp.id(64838413985258360921)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Minutos dedicados'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64858691123595038010)
,p_plug_name=>'Chat'
,p_title=>unistr('\00A1Hazme una pregunta!')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708972915555723362)
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(64930864286216420042)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64858692348719038022)
,p_region_id=>wwv_flow_imp.id(64858691123595038010)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CONTENT_ROLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CONTENT_PARTS'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64858692936591038028)
,p_page_id=>38
,p_web_src_param_id=>wwv_flow_imp.id(64930864876447420043)
,p_page_plug_id=>wwv_flow_imp.id(64858691123595038010)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(64858693054744038029)
,p_page_id=>38
,p_web_src_param_id=>wwv_flow_imp.id(64930900571516423288)
,p_page_plug_id=>wwv_flow_imp.id(64858691123595038010)
,p_value_type=>'ITEM'
,p_value=>'P38_NEW'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64858691964019038018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(64858691123595038010)
,p_button_name=>'Thonny_Bot'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Thonny Bot'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64858692004782038019)
,p_name=>'P38_NEW'
,p_item_sequence=>50
,p_prompt=>unistr('Env\00EDa un mensaje a Thonny')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>unistr('Configuraci\00F3n')
,p_alias=>unistr('CONFIGURACI\00D3N')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Configuraci\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64708929923411723337)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129749217031120819701)
,p_plug_name=>'User Info'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708972915555723362)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( :P11_NAME, :APP_USER ) USER_NAME,',
'       nvl( :P11_EMAIL, :APP_USER || ''@domain.com'' ) EMAIL',
'  from sys.dual'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from apex_application_temp_files',
' where name = :P11_PROFILE_PIC'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64857353340525987795)
,p_region_id=>wwv_flow_imp.id(129749217031120819701)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<h3 class="a-CardView-title">&USER_NAME.</h3>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'<h4 class="a-CardView-subTitle u-textLower">&EMAIL.</h4>'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-user fa-2x'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(129834636295832784885)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'t-MediaList--showIcons:t-MediaList--showBadges:u-colors'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(64709489096849723412)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130307254604124379797)
,p_plug_name=>'Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(131534720847017256494)
,p_plug_name=>'User Info'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64708972915555723362)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from apex_application_temp_files',
' where name = :P11_PROFILE_PIC'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from apex_application_temp_files',
' where name = :P11_PROFILE_PIC'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(64857355471441987798)
,p_region_id=>wwv_flow_imp.id(131534720847017256494)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>true
,p_title_html_expr=>'<h3 class="a-CardView-title">&P11_NAME.</h3>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'<h4 class="a-CardView-subTitle u-textLower">&P11_EMAIL.</h4>'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'BLOB'
,p_icon_blob_column_name=>'BLOB_CONTENT'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64857354614445987797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(130307254604124379797)
,p_button_name=>'SIGN_OUT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_button_image_alt=>'Sign Out'
,p_icon_css_classes=>'fa-sign-out'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64857356231415987798)
,p_branch_name=>'Go To Page &LOGOUT_URL.'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(64857354614445987797)
,p_branch_sequence=>10
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_imp_page.create_page(
 p_id=>47
,p_name=>'Administrar cuenta'
,p_alias=>'ADMINISTRAR-CUENTA'
,p_page_mode=>'MODAL'
,p_step_title=>'Administrar cuenta'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(64708929923411723337)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64724855407698883440)
,p_button_sequence=>70
,p_button_name=>'Guardar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Guardar'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_NEW:&P47_NEW.'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(64857696842425709037)
,p_branch_name=>'Go To Page 20000'
,p_branch_action=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64724855267016883438)
,p_name=>'P47_NEW'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_item_default=>'P47_NEW'
,p_item_default_type=>'ITEM'
,p_source=>'APEX_APPLICATION_TEXT_FILES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_ICON'
,p_attribute_18=>'N'
,p_attribute_23=>'AUTO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131634252369958570356)
,p_name=>'P47_NAME'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_prompt=>'First Name'
,p_source=>'P47_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131634252609397570358)
,p_name=>'P47_EMAIL'
,p_item_sequence=>60
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.@domain.com'
,p_prompt=>'Email'
,p_source=>'P47_EMAIL'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131634252675801570359)
,p_name=>'P47_LASTNAME'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_prompt=>'Last Name'
,p_source=>'P47_LASTNAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(64862923583300164909)
,p_computation_sequence=>10
,p_computation_item=>'P47_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Nombre',
'FROM REGISTRO_USUARIOS;',
''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(64862923658598164910)
,p_computation_sequence=>20
,p_computation_item=>'P47_LASTNAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APELLIDO',
'FROM REGISTRO_USUARIOS;',
''))
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(64862923764913164911)
,p_computation_sequence=>30
,p_computation_item=>'P47_EMAIL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMAIL',
'FROM REGISTRO_USUARIOS;',
''))
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Thonny-Bot'
,p_alias=>'THONNY-BOT'
,p_step_title=>'Thonny-Bot'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64928759067478711504)
,p_plug_name=>'New'
,p_title=>'Thonny-Bot'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(64709432400707723387)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64928759305747711507)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64928759067478711504)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64928759439236711508)
,p_event_id=>wwv_flow_imp.id(64928759305747711507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Thonny-Bot'
,p_action=>'NATIVE_OPEN_AI_ASSISTANT'
,p_attribute_01=>'DIALOG'
,p_ai_remote_server_id=>wwv_flow_imp.id(64950287462922081744)
,p_ai_welcome_message=>unistr('Hola, soy Thonny-Bot, tu asistente virtual, \00BFEn qu\00E9 puedo ayudarte el d\00EDa de hoy?')
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Tech-ToniQ - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(64708940573435723344)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64709623558058723549)
,p_plug_name=>'Tech-ToniQ'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(64709427241641723385)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64587880552737105105)
,p_button_sequence=>20
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709505371453723420)
,p_button_image_alt=>'New'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64709625292483723551)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64709623558058723549)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(64709506018637723420)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64709624061052723550)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64709623558058723549)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64709503218475723419)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64709624453352723550)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(64709623558058723549)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(64709503218475723419)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64709624827174723551)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(64709623558058723549)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(64709503218475723419)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64709627456974723553)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64709627456974723553
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64709627975701723553)
,p_page_process_id=>wwv_flow_imp.id(64709627456974723553)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64709628475133723553)
,p_page_process_id=>wwv_flow_imp.id(64709627456974723553)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64709625542562723551)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64709625542562723551
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64709626089755723552)
,p_page_process_id=>wwv_flow_imp.id(64709625542562723551)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64709626520095723552)
,p_page_process_id=>wwv_flow_imp.id(64709625542562723551)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(64709627017330723553)
,p_page_process_id=>wwv_flow_imp.id(64709625542562723551)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64709629392746723554)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>64709629392746723554
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(64709628950748723554)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>64709628950748723554
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(64843738778928183866)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>wwv_flow_imp.id(64708929923411723337)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(64843738835837183866)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64843740191374183868)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'style="display:none;"'
,p_plug_template=>wwv_flow_imp.id(64708960660810723357)
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64843740573277183869)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(64708960660810723357)
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(64843739885853183868)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(64709506186603723421)
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(64843741026787183870)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(64843740573277183869)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(64709503555183723419)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(64843741301567183870)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64843741808003183870)
,p_event_id=>wwv_flow_imp.id(64843741301567183870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64843742363754183871)
,p_event_id=>wwv_flow_imp.id(64843741301567183870)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(64727576099034003969)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done

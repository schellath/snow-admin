CREATE DATABASE APP_INTEGRATION;
CREATE SCHEMA APP_INTEGRATION.DEV;

CREATE SECRET APP_INTEGRATION.DEV.git_repo_secret
  TYPE = PASSWORD
  USERNAME = 'schellath'
  PASSWORD = ''
 COMMENT = 'Thi is git repo' ;

CREATE OR REPLACE API INTEGRATION  git_api_int
    API_PROVIDER = git_https_api
    API_ALLOWED_PREFIXES = ('')
    ALLOWED_AUTHENTICATION_SECRETS = (APP_INTEGRATION.DEV.git_repo_secret)
    ENABLED = TRUE;
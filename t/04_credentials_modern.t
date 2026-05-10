#!/usr/bin/env perl

use strict;
use warnings;
use lib 't/lib';
use Test::More;
use Test::Exception;
use Test::Warnings;
use File::Temp qw(tempfile tempdir);

use Paws::Credential::WebIdentity;
use Paws::Credential::SSO;
use Test04::MockSTSWebIdentity;
use Test04::MockSSOService;

delete @ENV{qw(
  AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY
  AWS_ACCESS_KEY
  AWS_SECRET_KEY
  AWS_DEFAULT_PROFILE
  AWS_PROFILE
  AWS_CONFIG_FILE
  AWS_WEB_IDENTITY_TOKEN_FILE
  AWS_ROLE_ARN
  AWS_ROLE_SESSION_NAME
)};

##
## WebIdentity provider tests
##

# Missing environment variables should die on attribute access
{
  my $creds = Paws::Credential::WebIdentity->new(
    sts => Test04::MockSTS::WebIdentity->new,
  );
  dies_ok { $creds->RoleArn } 'WebIdentity: dies when AWS_ROLE_ARN not set and RoleArn not passed';
}

{
  local $ENV{AWS_ROLE_ARN} = 'arn:aws:iam::123456789012:role/test';
  my $creds = Paws::Credential::WebIdentity->new(
    sts => Test04::MockSTS::WebIdentity->new,
  );
  dies_ok { $creds->WebIdentityTokenFile } 'WebIdentity: dies when AWS_WEB_IDENTITY_TOKEN_FILE not set and WebIdentityTokenFile not passed';
}

# Missing token file should die
{
  my $creds = Paws::Credential::WebIdentity->new(
    sts => Test04::MockSTS::WebIdentity->new,
    RoleArn => 'arn:aws:iam::123456789012:role/test',
    RoleSessionName => 'test-session',
    WebIdentityTokenFile => '/nonexistent/path/token',
  );
  dies_ok { $creds->refresh } 'WebIdentity: dies when token file does not exist';
}

# Successful credential retrieval with explicit parameters
{
  my ($fh, $token_file) = tempfile(UNLINK => 1);
  print $fh "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.test-token-content\n";
  close $fh;

  my $mock_sts = Test04::MockSTS::WebIdentity->new;
  my $creds = Paws::Credential::WebIdentity->new(
    sts => $mock_sts,
    RoleArn => 'arn:aws:iam::123456789012:role/test-role',
    RoleSessionName => 'test-session',
    WebIdentityTokenFile => $token_file,
  );

  ok($creds->are_set, 'WebIdentity: credentials are set with valid token file');

  my $a = $creds->refresh;
  ok($a, 'WebIdentity: refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'WIAK1', 'WebIdentity: access key from first call');
  cmp_ok($a->secret_key, 'eq', 'WISK1', 'WebIdentity: secret key from first call');
  cmp_ok($a->session_token, 'eq', 'WITK1', 'WebIdentity: session token from first call');
  cmp_ok($mock_sts->call_count, '==', 1, 'WebIdentity: STS called once');
}

# Credential caching: second refresh returns cached creds without calling STS again
{
  my ($fh, $token_file) = tempfile(UNLINK => 1);
  print $fh "test-token\n";
  close $fh;

  my $mock_sts = Test04::MockSTS::WebIdentity->new;
  my $creds = Paws::Credential::WebIdentity->new(
    sts => $mock_sts,
    RoleArn => 'arn:aws:iam::123456789012:role/test-role',
    RoleSessionName => 'test-session',
    WebIdentityTokenFile => $token_file,
  );

  my $first = $creds->refresh;
  my $second = $creds->refresh;
  cmp_ok($mock_sts->call_count, '==', 1, 'WebIdentity: cached credentials avoid second STS call');
  cmp_ok($first->access_key, 'eq', $second->access_key, 'WebIdentity: cached access key is identical');
}

# Expired credentials trigger a refresh
{
  my ($fh, $token_file) = tempfile(UNLINK => 1);
  print $fh "test-token\n";
  close $fh;

  my $mock_sts = Test04::MockSTS::WebIdentityExpiring->new;
  my $creds = Paws::Credential::WebIdentity->new(
    sts => $mock_sts,
    RoleArn => 'arn:aws:iam::123456789012:role/test-role',
    RoleSessionName => 'test-session',
    WebIdentityTokenFile => $token_file,
  );

  my $first = $creds->refresh;
  cmp_ok($first->access_key, 'eq', 'WIAK1', 'WebIdentity: first access key');

  my $second = $creds->refresh;
  cmp_ok($second->access_key, 'eq', 'WIAK2', 'WebIdentity: expired credentials trigger re-fetch');
  cmp_ok($mock_sts->call_count, '==', 2, 'WebIdentity: STS called twice for expired credentials');
}

# Environment variable defaults
{
  my ($fh, $token_file) = tempfile(UNLINK => 1);
  print $fh "env-token\n";
  close $fh;

  local $ENV{AWS_ROLE_ARN} = 'arn:aws:iam::999999999999:role/env-role';
  local $ENV{AWS_ROLE_SESSION_NAME} = 'env-session';
  local $ENV{AWS_WEB_IDENTITY_TOKEN_FILE} = $token_file;

  my $mock_sts = Test04::MockSTS::WebIdentity->new;
  my $creds = Paws::Credential::WebIdentity->new(
    sts => $mock_sts,
  );

  cmp_ok($creds->RoleArn, 'eq', 'arn:aws:iam::999999999999:role/env-role',
    'WebIdentity: RoleArn defaults to AWS_ROLE_ARN');
  cmp_ok($creds->RoleSessionName, 'eq', 'env-session',
    'WebIdentity: RoleSessionName defaults to AWS_ROLE_SESSION_NAME');
  cmp_ok($creds->WebIdentityTokenFile, 'eq', $token_file,
    'WebIdentity: WebIdentityTokenFile defaults to AWS_WEB_IDENTITY_TOKEN_FILE');

  ok($creds->are_set, 'WebIdentity: credentials set from environment variables');
}

# Default session name when env var not set
{
  my ($fh, $token_file) = tempfile(UNLINK => 1);
  print $fh "token\n";
  close $fh;

  my $creds = Paws::Credential::WebIdentity->new(
    sts => Test04::MockSTS::WebIdentity->new,
    RoleArn => 'arn:aws:iam::123456789012:role/test',
    WebIdentityTokenFile => $token_file,
  );
  cmp_ok($creds->RoleSessionName, 'eq', 'paws-web-identity-session',
    'WebIdentity: default session name when AWS_ROLE_SESSION_NAME not set');
}

##
## SSO provider tests
##

# SSO with config file and mock service
{
  my $mock_sso = Test04::MockSSO::Service->new;
  my $creds = Paws::Credential::SSO->new(
    sso => $mock_sso,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
    profile => 'test-sso',
  );

  ok($creds->are_set, 'SSO: credentials are set with valid config and cache');

  my $a = $creds->refresh;
  ok($a, 'SSO: refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'SSOAK1', 'SSO: access key from first call');
  cmp_ok($a->secret_key, 'eq', 'SSOSK1', 'SSO: secret key from first call');
  cmp_ok($a->session_token, 'eq', 'SSOTK1', 'SSO: session token from first call');
  cmp_ok($mock_sso->call_count, '==', 1, 'SSO: service called once');
}

# SSO credential caching
{
  my $mock_sso = Test04::MockSSO::Service->new;
  my $creds = Paws::Credential::SSO->new(
    sso => $mock_sso,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
    profile => 'test-sso',
  );

  my $first = $creds->refresh;
  my $second = $creds->refresh;
  cmp_ok($mock_sso->call_count, '==', 1, 'SSO: cached credentials avoid second service call');
  cmp_ok($first->access_key, 'eq', $second->access_key, 'SSO: cached access key is identical');
}

# SSO expired credentials trigger refresh
{
  my $mock_sso = Test04::MockSSO::ServiceExpiring->new;
  my $creds = Paws::Credential::SSO->new(
    sso => $mock_sso,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
    profile => 'test-sso',
  );

  my $first = $creds->refresh;
  cmp_ok($first->access_key, 'eq', 'SSOAK1', 'SSO: first access key');

  my $second = $creds->refresh;
  cmp_ok($second->access_key, 'eq', 'SSOAK2', 'SSO: expired credentials trigger re-fetch');
  cmp_ok($mock_sso->call_count, '==', 2, 'SSO: service called twice for expired credentials');
}

# SSO config file reading
{
  my $creds = Paws::Credential::SSO->new(
    sso => Test04::MockSSO::Service->new,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
    profile => 'test-sso',
  );

  cmp_ok($creds->sso_start_url, 'eq', 'https://test-portal.awsapps.com/start',
    'SSO: sso_start_url read from config');
  cmp_ok($creds->sso_region, 'eq', 'us-west-2',
    'SSO: sso_region read from config');
  cmp_ok($creds->sso_account_id, 'eq', '123456789012',
    'SSO: sso_account_id read from config');
  cmp_ok($creds->sso_role_name, 'eq', 'TestRole',
    'SSO: sso_role_name read from config');
}

# SSO missing account_id in config should die on refresh
{
  my $creds = Paws::Credential::SSO->new(
    sso => Test04::MockSSO::Service->new,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
    profile => 'incomplete-sso',
  );

  dies_ok { $creds->refresh } 'SSO: dies when sso_account_id missing from config';
}

# SSO missing cache file should die
{
  my $creds = Paws::Credential::SSO->new(
    sso => Test04::MockSSO::Service->new,
    sso_start_url => 'https://nonexistent-portal.awsapps.com/start',
    sso_region => 'us-east-1',
    sso_account_id => '123456789012',
    sso_role_name => 'TestRole',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
  );

  dies_ok { $creds->refresh } 'SSO: dies when cache file does not exist';
}

# SSO with explicit parameters (no config file)
{
  my $mock_sso = Test04::MockSSO::Service->new;
  my $creds = Paws::Credential::SSO->new(
    sso => $mock_sso,
    sso_start_url => 'https://test-portal.awsapps.com/start',
    sso_region => 'us-west-2',
    sso_account_id => '555555555555',
    sso_role_name => 'ExplicitRole',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
  );

  ok($creds->are_set, 'SSO: credentials set with explicit parameters');
  my $a = $creds->refresh;
  cmp_ok($a->access_key, 'eq', 'SSOAK1', 'SSO: explicit params produce credentials');
}

# SSO profile defaults from environment
{
  local $ENV{AWS_PROFILE} = 'test-sso';
  my $creds = Paws::Credential::SSO->new(
    sso => Test04::MockSSO::Service->new,
    config_file => 't/04_credentials_modern/config',
    sso_cache_dir => 't/04_credentials_modern/sso_cache',
  );

  cmp_ok($creds->profile, 'eq', 'test-sso', 'SSO: profile defaults to AWS_PROFILE');
  ok($creds->are_set, 'SSO: credentials set via AWS_PROFILE env var');
}

done_testing;

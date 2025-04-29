#!/usr/bin/env perl

use strict;
use warnings;
use lib 't/lib';
use Paws;
use Paws::Credential::Explicit;
use Paws::Credential::Environment;
use Paws::Credential::InstanceProfile;
use Paws::Credential::InstanceProfileV2;
use Paws::Credential::ECSContainerProfile;
use Paws::Credential::ProviderChain;
use Paws::Credential::File;
use Test::More;
use Test::Exception;
use Test::Warnings;
use Test04::StubUAForMetadata;
use Test04::StubUANoMetadata;
use Test04::StubUAForECSMetadata;

delete @ENV{qw(
  AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY
  AWS_ACCESS_KEY
  AWS_SECRET_KEY
  AWS_DEFAULT_PROFILE
  CONTAINER_CREDENTIALS_RELATIVE_URI
  AWS_CONFIG_FILE
)};

## File provider testing

{
  my $creds = Paws::Credential::Explicit->new(
    access_key => 'AK',
    secret_key => 'SK',
  );
  ok($creds->are_set, 'Creds are set');
  dies_ok { Paws::Credential::Explicit->new(secret_key => 'SK') } 'Access Key is required';
  dies_ok { Paws::Credential::Explicit->new(access_key => 'AK') } 'Secret Key is required';
}

## Environment provider testing

{
  my $creds = Paws::Credential::Environment->new;
  ok(not($creds->are_set), 'No creds when no ENV');
}

{
  local $ENV{'AWS_ACCESS_KEY_ID'} = 'botoAK';
  local $ENV{'AWS_SECRET_ACCESS_KEY'} = 'botoSK';

  my $creds = Paws::Credential::Environment->new;
  ok($creds->are_set, 'Creds are set');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'botoAK', 'Access Key boto style');
  cmp_ok($a->secret_key, 'eq', 'botoSK', 'Secret Key boto style');
}

{
  local $ENV{'AWS_ACCESS_KEY'} = 'AK';
  local $ENV{'AWS_SECRET_KEY'} = 'SK';

  my $creds = Paws::Credential::Environment->new;
  ok($creds->are_set, 'Creds are set');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK', 'Access Key short style');
  cmp_ok($a->secret_key, 'eq', 'SK', 'Secret Key short style');
}

{
  my $creds = Paws::Credential::InstanceProfile->new(ua => Test04::StubUAForMetadata->new);

  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK1', 'Access Key 1');
  cmp_ok($a->secret_key, 'eq', 'SK1', 'Secret Key 1');
  cmp_ok($a->session_token, 'eq', 'TK1', 'Token 1');

  sleep 2;

  $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK2', 'Access Key 2');
  cmp_ok($a->secret_key, 'eq', 'SK2', 'Secret Key 2');
  cmp_ok($a->session_token, 'eq', 'TK2', 'Token 2');

  sleep 2;

  dies_ok { $creds->refresh }, 'Exception thrown when garbage arrives';
}

{
  my $creds = Paws::Credential::InstanceProfileV2->new(ua => Test04::StubUAForMetadata->new(check_header => 1));
  
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK1', 'Access Key 1 (IMDSv2)');
  cmp_ok($a->secret_key, 'eq', 'SK1', 'Secret Key 1 (IMDSv2)');
  cmp_ok($a->session_token, 'eq', 'TK1', 'Token 1 (IMDSv2)');

  sleep 2;

  $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK2', 'Access Key 2 (IMDSv2)');
  cmp_ok($a->secret_key, 'eq', 'SK2', 'Secret Key 2 (IMDSv2)');
  cmp_ok($a->session_token, 'eq', 'TK2', 'Token 2 (IMDSv2)');

  sleep 2;

  dies_ok { $creds->refresh }, 'Exception thrown when garbage arrives (IMDSv2)';
}

{
  my $creds = Paws::Credential::InstanceProfile->new(ua => Test04::StubUANoMetadata->new);

  ok(not($creds->are_set), 'No Creds for no Role');
}

{
  my $creds = Paws::Credential::InstanceProfileV2->new(ua => Test04::StubUANoMetadata->new);

  ok(not($creds->are_set), 'No Creds for no Role (IMDSv2)');
}

{
  my $creds = Paws::Credential::ECSContainerProfile->new(container_local_uri => undef);
  ok(not($creds->are_set), 'Credentials are not set with no ENV var');
}

{
  my $creds = Paws::Credential::ECSContainerProfile->new(container_local_uri => '/metadata', ua => Test04::StubUAForECSMetadata->new);
  cmp_ok($creds->metadata_url, 'eq', "http://169.254.170.2/metadata");  

  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK1', 'ECS Access Key 1');
  cmp_ok($a->secret_key, 'eq', 'SK1', 'ECS Secret Key 1');
  cmp_ok($a->session_token, 'eq', 'TK1', 'ECS Token 1');

  sleep 2;

  $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'AK2', 'ECS Access Key 2');
  cmp_ok($a->secret_key, 'eq', 'SK2', 'ECS Secret Key 2');
  cmp_ok($a->session_token, 'eq', 'TK2', 'ECS Token 2');

  sleep 2;

  dies_ok { $creds->refresh }, 'Exception thrown when garbage arrives to ECS Provider';
}

{
  my $creds = Paws::Credential::ProviderChain->new(providers => [ 'Test::CustomCredentials', 'Paws::Credentail::Environment' ]);
  ok($creds->are_set, 'Creds are set');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'CustomAK', 'Access Key short style');
  cmp_ok($a->secret_key, 'eq', 'CustomSK', 'Secret Key short style');
}

## File provider testing

{
  my $creds = Paws::Credential::File->new(
    path => 't/'
  );
  ok(not($creds->are_set), 'No creds when no file is present');
}

# Test for users not having HOME
{
  local $ENV{'HOME'} = undef;

  my $creds = Paws::Credential::File->new(
    file_name => 'non_existant_file',
  );
  ok(not($creds->are_set), 'File: no credentials if no $HOME');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/'
  );
  ok($creds->are_set, 'File: Attribute path works correctly');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'defaultAK', 'File: default Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'defaultSK', 'File: default Secret Key loaded correctly');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    profile => 'testprofile'
  );
  ok($creds->are_set, 'File: Attributes path and profile work correctly');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'testAK', 'File: named profile Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'testSK', 'File: named profile Secret Key loaded correctly');
}

{
  my $creds = Paws::Credential::File->new(
    credentials_file => 't/04_credentials/credentials.alternate',
  );
  ok($creds->are_set, 'File: credentials_file attribute works correctly');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'alternateAK', 'File: alternate Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'alternateSK', 'File: alternate Secret Key loaded correctly');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    file_name => 'credentials.alternate',
  );
  ok($creds->are_set, 'File: file_name attribute works correctly');
  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'alternateAK', 'File: alternate Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'alternateSK', 'File: alternate Secret Key loaded correctly');
}

{
  local $ENV{AWS_DEFAULT_PROFILE} = 'alternate';
  local $ENV{AWS_CONFIG_FILE} = 't/04_credentials/credentials.alternate';
  my $creds = Paws::Credential::File->new;

  ok($creds->are_set, 'File: Attributes from environment variables');

  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'alternateprofileAK',
    'File: alternate using ENV variables Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'alternateprofileSK',
    'File: alternate using ENV variables Secret Key loaded correctly');
}

{
  my $creds = Paws::Credential::CredProcess->new(
    credential_process => 't/04_credentials/test_cred_process',
  );
  ok($creds->are_set, 'CredProcess: creds are set');

  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'PCAccessKey', 'process: Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'PCSecretKey', 'process: Secret Key loaded correctly');
  cmp_ok($a->session_token, 'eq', 'PCSessionToken', 'process: Session Token loaded correctly');
  ok(not(defined $creds->expiration), 'Creds don\'t expire');
}

{
  my $creds = Paws::Credential::CredProcess->new(
    credential_process => 't/04_credentials/test_cred_process.fail',
  );
  throws_ok(sub { $creds->are_set }, 'Paws::Exception::CredentialProcess', 'CredentialProcess throws a Paws exception');
}

{
  my $creds = Paws::Credential::CredProcess->new(
    credential_process => 't/04_credentials/test_cred_process.noversion',
  );
  throws_ok(sub { $creds->are_set }, 'Paws::Exception::CredentialProcess', 'CredentialProcess throws a Paws exception');
}

{
  my $creds = Paws::Credential::CredProcess->new(
    credential_process => 't/04_credentials/test_cred_process.expiry',
  );

  my $first_execution = $creds->refresh->access_key; # the test suite returns the timestamp of execution in the AK
  sleep 1;
  my $second_execution = $creds->refresh->access_key; # the test suite returns the timestamp of execution in the AK
  cmp_ok($first_execution, 'ne', $second_execution, 'Expiring credentials have been refreshed');
}

# return to testing the file provider, this time with credential_process

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    file_name => 'credentials.process',
  );
  ok($creds->are_set, 'File with credentials_process');

  my $a = $creds->refresh;
  ok($a, 'Refresh returns a value');
  cmp_ok($a->access_key, 'eq', 'PCAccessKey', 'process: Access Key loaded correctly');
  cmp_ok($a->secret_key, 'eq', 'PCSecretKey', 'process: Secret Key loaded correctly');
  cmp_ok($a->session_token, 'eq', 'PCSessionToken', 'process: Session Token loaded correctly');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    file_name => 'credentials.process',
    profile => 'fail',
  );
  throws_ok(sub { $creds->are_set }, 'Paws::Exception::CredentialProcess', 'CredentialProcess throws a Paws exception');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    file_name => 'credentials.process',
    profile => 'noversion',
  );
  throws_ok(sub { $creds->are_set }, 'Paws::Exception::CredentialProcess', 'CredentialProcess throws a Paws exception');
}

{
  my $creds = Paws::Credential::File->new(
    path => 't/04_credentials/',
    file_name => 'credentials.process',
    profile => 'expiry',
  );

  my $first_execution = $creds->refresh->access_key; # the test suite returns the timestamp of execution in the AK
  sleep 1;
  my $second_execution = $creds->refresh->access_key; # the test suite returns the timestamp of execution in the AK
  cmp_ok($first_execution, 'ne', $second_execution, 'Expiring credentials have been refreshed');
}

done_testing;

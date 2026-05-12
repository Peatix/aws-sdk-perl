#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws        = paws_client();
my $sm          = $paws->service('SecretsManager');
my $secret_name = unique_name('paws-integ-secret');
my $secret_val  = 'super-secret-value-12345';
my $updated_val = 'updated-secret-value-67890';
my $secret_arn;

my @cleanup;

END {
  if (@cleanup) {
    diag "cleanup: removing test resources";
    for my $step (reverse @cleanup) {
      eval { $step->() };
      warn "cleanup error: $@" if $@;
    }
  }
}

subtest 'CreateSecret' => sub {
  my $result = $sm->CreateSecret(
    Name         => $secret_name,
    SecretString => $secret_val,
  );
  $secret_arn = $result->ARN;
  ok($secret_arn, "created secret name=$secret_name arn=$secret_arn");
  push @cleanup, sub {
    $sm->DeleteSecret(
      SecretId                 => $secret_arn,
      ForceDeleteWithoutRecovery => 1,
    );
  };
};

subtest 'GetSecretValue roundtrip' => sub {
  my $result = $sm->GetSecretValue(SecretId => $secret_arn);
  is($result->SecretString, $secret_val, 'secret value matches created value');
  is($result->Name, $secret_name, 'secret name matches');
};

subtest 'UpdateSecret' => sub {
  my $result = $sm->UpdateSecret(
    SecretId     => $secret_arn,
    SecretString => $updated_val,
  );
  ok($result->ARN, 'UpdateSecret returned ARN');

  my $get = $sm->GetSecretValue(SecretId => $secret_arn);
  is($get->SecretString, $updated_val, 'updated secret value roundtrips');
};

subtest 'DeleteSecret' => sub {
  my $result = $sm->DeleteSecret(
    SecretId                 => $secret_arn,
    ForceDeleteWithoutRecovery => 1,
  );
  ok($result->DeletionDate, 'DeleteSecret returned DeletionDate');
  @cleanup = ();
};

done_testing();

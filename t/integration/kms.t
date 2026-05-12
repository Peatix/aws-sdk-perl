#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use MIME::Base64;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws   = paws_client();
my $kms    = $paws->service('KMS');

my $env_key_id = $ENV{KMS_TEST_KEY_ID};
my $key_id;

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

if ($env_key_id) {
  $key_id = $env_key_id;
  diag "using pre-provisioned KMS key id=$key_id from KMS_TEST_KEY_ID";
} else {
  subtest 'CreateKey' => sub {
    my $result = $kms->CreateKey(
      Description => 'Paws integration test key - safe to delete',
      KeyUsage    => 'ENCRYPT_DECRYPT',
    );
    $key_id = $result->KeyMetadata->KeyId;
    ok($key_id, "created KMS key id=$key_id");
    push @cleanup, sub {
      $kms->ScheduleKeyDeletion(
        KeyId               => $key_id,
        PendingWindowInDays => 7,
      );
    };
  };
}

subtest 'Encrypt and Decrypt roundtrip' => sub {
  plan skip_all => 'no key available' unless $key_id;

  my $plaintext = 'Paws KMS integration test plaintext';

  my $enc_result = $kms->Encrypt(
    KeyId     => $key_id,
    Plaintext => $plaintext,
  );
  ok($enc_result->CiphertextBlob, 'Encrypt returned CiphertextBlob');
  isnt($enc_result->CiphertextBlob, $plaintext, 'ciphertext differs from plaintext');

  my $dec_result = $kms->Decrypt(
    CiphertextBlob => $enc_result->CiphertextBlob,
  );
  is($dec_result->Plaintext, $plaintext, 'decrypted plaintext matches original');
  is($dec_result->KeyId, $enc_result->KeyId, 'decrypt reports same KeyId');
};

unless ($env_key_id) {
  subtest 'ScheduleKeyDeletion' => sub {
    plan skip_all => 'no key to delete' unless $key_id;
    my $result = $kms->ScheduleKeyDeletion(
      KeyId               => $key_id,
      PendingWindowInDays => 7,
    );
    ok($result->DeletionDate, 'ScheduleKeyDeletion returned DeletionDate');
    @cleanup = ();
  };
}

done_testing();

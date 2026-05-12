#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws   = paws_client();
my $ses    = $paws->service('SES');

# Use a test domain identity — no actual email sending involved.
# SES identity verification for domains just creates a pending TXT record check.
my $test_domain = unique_name('paws-integ') . '.example.test';

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

subtest 'VerifyDomainIdentity' => sub {
  my $result = $ses->VerifyDomainIdentity(Domain => $test_domain);
  ok($result->VerificationToken, "domain verification token returned for domain=$test_domain");
  push @cleanup, sub { $ses->DeleteIdentity(Identity => $test_domain) };
};

subtest 'GetIdentityVerificationAttributes' => sub {
  my $result = $ses->GetIdentityVerificationAttributes(
    Identities => [$test_domain],
  );
  my $attrs = $result->VerificationAttributes;
  ok($attrs, 'GetIdentityVerificationAttributes returned attributes');

  SKIP: {
    skip 'no attributes returned', 1 unless $attrs && $attrs->{$test_domain};
    my $status = $attrs->{$test_domain}->VerificationStatus;
    ok($status, "verification status=$status for $test_domain");
    diag "identity verification status=$status (expected Pending for test domain)";
  }
};

subtest 'DeleteIdentity' => sub {
  $ses->DeleteIdentity(Identity => $test_domain);
  ok(1, "deleted identity=$test_domain");
  @cleanup = ();
};

done_testing();

#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/..";
use integration::helpers qw(skip_unless_integration paws_client unique_name);

skip_unless_integration();

my $paws       = paws_client();
my $ssm        = $paws->service('SSM');
my $param_name = '/' . unique_name('paws-integ-ssm');
my $param_val  = 'test-parameter-value-12345';

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

subtest 'PutParameter' => sub {
  my $result = $ssm->PutParameter(
    Name  => $param_name,
    Value => $param_val,
    Type  => 'String',
  );
  ok($result->Version, "created parameter name=$param_name version=" . $result->Version);
  push @cleanup, sub { $ssm->DeleteParameter(Name => $param_name) };
};

subtest 'GetParameter roundtrip' => sub {
  my $result = $ssm->GetParameter(Name => $param_name);
  my $param  = $result->Parameter;
  is($param->Value, $param_val, 'parameter value matches');
  is($param->Name, $param_name, 'parameter name matches');
  is($param->Type, 'String', 'parameter type is String');
};

subtest 'PutParameter overwrite' => sub {
  my $new_val = 'updated-parameter-value-67890';
  my $result = $ssm->PutParameter(
    Name      => $param_name,
    Value     => $new_val,
    Type      => 'String',
    Overwrite => 1,
  );
  ok($result->Version >= 2, 'overwrite incremented version');

  my $get = $ssm->GetParameter(Name => $param_name);
  is($get->Parameter->Value, $new_val, 'overwritten value roundtrips');
};

subtest 'DeleteParameter' => sub {
  $ssm->DeleteParameter(Name => $param_name);
  ok(1, "deleted parameter=$param_name");
  @cleanup = ();
};

done_testing();

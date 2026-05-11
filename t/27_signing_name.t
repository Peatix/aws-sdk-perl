use lib qw(t/lib);
use Paws::Test::MaterialiseServices;


use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Test::CustomCredentials;

my $paws = Paws->new(config => { caller => 'Test05Caller', credentials => 'Test::CustomCredentials' } );

# test with which service name we sign. Expectations track the
# signingName/endpointPrefix in the pinned upstream botocore data; AWS has
# changed some of these over time (e.g. IoT moved from execute-api to iot).
my $services = {
  LexRuntime => { 'us-east-1' => 'lex', },
  IoT => { 'us-east-1' => 'iot' },
  EC2 => { 'us-east-1' => 'ec2' },
  DynamoDB => { 'eu-west-1' => 'dynamodb' },
  AppStream => { 'us-east-1' => 'appstream' },
  Pricing => { 'us-east-1' => 'pricing' },
};

# Pinpoint cannot currently be generated (see service_skip_list in
# Paws::API::Builder::Paws); only assert its signing name when the
# class is available.
if (eval { Paws->load_class('Paws::Pinpoint'); 1 }) {
  $services->{ Pinpoint } = { 'us-east-1' => 'mobiletargeting' };
}

foreach my $service (sort keys %$services) {
  foreach my $region (sort keys %{ $services->{ $service } }) {
    my $svc = $paws->service($service, region => $region);

    cmp_ok(
      $svc->signing_name,
      'eq',
      $services->{ $service }->{ $region },
      "Will sign $service with $services->{ $service }->{ $region }"
    );
  }
}

done_testing;

use Paws::GlacierParamsService::Method1Return;
use Paws::SerDes;

package Paws::GlacierParamsService::Method1;
  use Moo;
  use Types::Standard qw(Str Int Bool);

  has AccountId => (is => 'ro', isa => Str,
                    required => 1);

  # Test injection fields - consumed by t/lib/TestGivenResponse.pm.
  # Optional so that TestRequestCaller-driven request-side tests don't
  # have to supply them.
  has response      => (isa => Str,  is => 'ro');
  has status        => (isa => Int,  is => 'ro', default => 200);
  has dup_requestid => (isa => Bool, is => 'ro', default => 0);

  use MooX::ClassAttribute;

  class_has _api_call    => (isa => Str, is => 'ro', default => 'Method1');
  class_has _api_uri     => (isa => Str, is => 'ro', default => '/{accountId}/vaults');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns     => (isa => Str, is => 'ro', default => 'Paws::GlacierParamsService::Method1Return');
  class_has _result_key  => (isa => Str, is => 'ro');

Paws::SerDes->register('Paws::GlacierParamsService::Method1', [
  { name => 'AccountId', type => 'Str', wire_key => 'accountId', location => 'uri',
    location_name => 'accountId', traits => { ParamInURI => 1 }, is_required => 1 },
  { name => 'response', type => 'Str', wire_key => 'response', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'status', type => 'Int', wire_key => 'status', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'dup_requestid', type => 'Bool', wire_key => 'dup_requestid', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

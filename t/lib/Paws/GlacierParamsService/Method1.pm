use Paws::GlacierParamsService::Method1Return;

package Paws::GlacierParamsService::Method1;
  use Moose;

  has AccountId => (is => 'ro', isa => 'Str',
                    traits => ['ParamInURI'], uri_name => 'accountId',
                    required => 1);

  # Test injection fields - consumed by t/lib/TestGivenResponse.pm.
  # Optional so that TestRequestCaller-driven request-side tests don't
  # have to supply them.
  has response      => (isa => 'Str',  is => 'ro');
  has status        => (isa => 'Int',  is => 'ro', default => 200);
  has dup_requestid => (isa => 'Bool', is => 'ro', default => 0);

  use MooseX::ClassAttribute;

  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'Method1');
  class_has _api_uri     => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns     => (isa => 'Str', is => 'ro', default => 'Paws::GlacierParamsService::Method1Return');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

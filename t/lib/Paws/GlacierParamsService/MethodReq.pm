# Operation purpose-built for request-side wire fixture testing of
# the Glacier protocol caller. Glacier sits on top of RestJsonCaller
# and adds the x-amz-glacier-version header.

package Paws::GlacierParamsService::MethodReq;
  use Moose;

  has AccountId => (is => 'ro', isa => 'Str',
                    traits => ['ParamInURI'], uri_name => 'accountId',
                    required => 1);
  has VaultName => (is => 'ro', isa => 'Str',
                    traits => ['ParamInURI'], uri_name => 'vaultName',
                    required => 1);

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _api_uri     => (isa => 'Str', is => 'ro',
                             default => '/{accountId}/vaults/{vaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

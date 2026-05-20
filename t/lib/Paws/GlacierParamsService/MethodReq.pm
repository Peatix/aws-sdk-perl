# Operation purpose-built for request-side wire fixture testing of
# the Glacier protocol caller. Glacier sits on top of RestJsonCaller
# and adds the x-amz-glacier-version header.

use Paws::SerDes;

package Paws::GlacierParamsService::MethodReq;
  use Moo;
  use Types::Standard qw(Str);

  has AccountId => (is => 'ro', isa => Str,
                    required => 1);
  has VaultName => (is => 'ro', isa => Str,
                    required => 1);

  use MooX::ClassAttribute;
  class_has _api_call    => (isa => Str, is => 'ro', default => 'MethodReq');
  class_has _api_uri     => (isa => Str, is => 'ro',
                             default => '/{accountId}/vaults/{vaultName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns     => (isa => Str, is => 'ro');
  class_has _result_key  => (isa => Str, is => 'ro');

Paws::SerDes->register('Paws::GlacierParamsService::MethodReq', [
  { name => 'AccountId', type => 'Str', wire_key => 'accountId', location => 'uri',
    location_name => 'accountId', traits => { ParamInURI => 1 }, is_required => 1 },
  { name => 'VaultName', type => 'Str', wire_key => 'vaultName', location => 'uri',
    location_name => 'vaultName', traits => { ParamInURI => 1 }, is_required => 1 },
]);
1;

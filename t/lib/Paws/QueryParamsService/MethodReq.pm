# Operation purpose-built for request-side wire fixture testing
# of the Query protocol caller. Query bodies are
# application/x-www-form-urlencoded.

package Paws::QueryParamsService::MethodReq;
  use Moose;

  has Name        => (is => 'ro', isa => 'Str');
  has Renamed     => (is => 'ro', isa => 'Str',
                      request_name => 'RenamedOnWire',
                      traits => ['NameInRequest']);
  has Number      => (is => 'ro', isa => 'Int');
  has Items       => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

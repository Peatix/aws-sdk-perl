# Operation purpose-built for request-side wire fixture testing
# of the RestJSON protocol caller. Each parameter carries one trait
# that affects wire location.

package Paws::RestJsonParamsService::MethodReq;
  use Moose;

  has Resource => (is => 'ro', isa => 'Str',
                   traits => ['ParamInURI'], uri_name => 'resourceId',
                   required => 1);

  has Filter   => (is => 'ro', isa => 'Str',
                   traits => ['ParamInQuery'], query_name => 'filter');

  has Marker   => (is => 'ro', isa => 'Str',
                   traits => ['ParamInHeader'], header_name => 'X-Marker');

  has Body     => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _api_uri     => (isa => 'Str', is => 'ro', default => '/things/{resourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

# Operation purpose-built for request-side wire fixture testing of
# the RestXML protocol caller. RestXML carries body data as XML (with
# alphabetical element ordering, per the existing _to_xml impl) and
# routes other parameters via traits to header / query / URI label.

package Paws::RestXmlParamsService::MethodReq;
  use Moose;

  has Resource => (is => 'ro', isa => 'Str',
                   traits => ['ParamInURI'], uri_name => 'resourceId',
                   required => 1);

  has Filter   => (is => 'ro', isa => 'Str',
                   traits => ['ParamInQuery'], query_name => 'filter');

  has Marker   => (is => 'ro', isa => 'Str',
                   traits => ['ParamInHeader'], header_name => 'X-Marker');

  has Title    => (is => 'ro', isa => 'Str');
  has Body     => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _api_uri     => (isa => 'Str', is => 'ro', default => '/things/{resourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

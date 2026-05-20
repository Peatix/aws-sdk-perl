# Operation purpose-built for request-side wire fixture testing of
# the RestXML protocol caller. RestXML carries body data as XML (with
# alphabetical element ordering, per the existing _to_xml impl) and
# routes other parameters via traits to header / query / URI label.

use Paws::SerDes;

package Paws::RestXmlParamsService::MethodReq;
  use Moo;
  use Types::Standard qw(Str);

  has Resource => (is => 'ro', isa => Str,
                   required => 1);

  has Filter   => (is => 'ro', isa => Str);

  has Marker   => (is => 'ro', isa => Str);

  has Title    => (is => 'ro', isa => Str);
  has Body     => (is => 'ro', isa => Str);

  use MooX::ClassAttribute;
  class_has _api_call    => (isa => Str, is => 'ro', default => 'MethodReq');
  class_has _api_uri     => (isa => Str, is => 'ro', default => '/things/{resourceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns     => (isa => Str, is => 'ro');
  class_has _result_key  => (isa => Str, is => 'ro');

Paws::SerDes->register('Paws::RestXmlParamsService::MethodReq', [
  { name => 'Resource', type => 'Str', wire_key => 'resourceId', location => 'uri',
    location_name => 'resourceId', traits => { ParamInURI => 1 }, is_required => 1 },
  { name => 'Filter', type => 'Str', wire_key => 'filter', location => 'querystring',
    location_name => 'filter', traits => { ParamInQuery => 1 }, is_required => 0 },
  { name => 'Marker', type => 'Str', wire_key => 'X-Marker', location => 'header',
    location_name => 'X-Marker', traits => { ParamInHeader => 1 }, is_required => 0 },
  { name => 'Title', type => 'Str', wire_key => 'Title', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Body', type => 'Str', wire_key => 'Body', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

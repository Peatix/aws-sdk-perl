# Operation purpose-built for request-side wire fixture testing of
# the EC2 protocol caller. EC2 uses application/x-www-form-urlencoded
# bodies like Query, but with two quirks:
#
#   - the wire key's first character is upcased (PascalCase, not the
#     attribute name as-is or the request_name as-is),
#   - lists flatten differently (Items.1, Items.2, ... when
#     flattened_arrays is on; Items.member.1, Items.member.2 when off).
#
# The EC2ParamsService sets flattened_arrays => 1 so we exercise the
# EC2-style flattening here.

package Paws::EC2ParamsService::MethodReq;
  use Moose;

  has Name        => (is => 'ro', isa => 'Str');
  has Renamed     => (is => 'ro', isa => 'Str',
                      request_name => 'renamedOnWire',
                      traits => ['NameInRequest']);
  has Number      => (is => 'ro', isa => 'Int');
  has Items       => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;
  class_has _api_call    => (isa => 'Str', is => 'ro', default => 'MethodReq');
  class_has _returns     => (isa => 'Str', is => 'ro');
  class_has _result_key  => (isa => 'Str', is => 'ro');
1;

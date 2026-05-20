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

use Paws::SerDes;

package Paws::EC2ParamsService::MethodReq;
  use Moo;
  use Types::Standard qw(Str Int ArrayRef);

  has Name        => (is => 'ro', isa => Str);
  has Renamed     => (is => 'ro', isa => Str);
  has Number      => (is => 'ro', isa => Int);
  has Items       => (is => 'ro', isa => ArrayRef[Str]);

  use MooX::ClassAttribute;
  class_has _api_call    => (isa => Str, is => 'ro', default => 'MethodReq');
  class_has _returns     => (isa => Str, is => 'ro');
  class_has _result_key  => (isa => Str, is => 'ro');

Paws::SerDes->register('Paws::EC2ParamsService::MethodReq', [
  { name => 'Name', type => 'Str', wire_key => 'Name', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Renamed', type => 'Str', wire_key => 'renamedOnWire', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'Number', type => 'Int', wire_key => 'Number', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Items', type => 'ArrayRef[Str]', wire_key => 'Items', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

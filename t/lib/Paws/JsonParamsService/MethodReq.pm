use Paws::JsonParamsService::Object;
use Paws::SerDes;

# Operation purpose-built for request-side wire fixture testing.
# Carries one parameter per trait we want to exercise. The
# corresponding fixture under t/wire/fixtures/json/ documents
# what bytes should go on the wire.

package Paws::JsonParamsService::MethodReq;
  use Moo;
  use Types::Standard qw(Str Int Bool ArrayRef InstanceOf);

  has Name        => (is => 'ro', isa => Str);
  has Renamed     => (is => 'ro', isa => Str);
  has Number      => (is => 'ro', isa => Int);
  has Flag        => (is => 'ro', isa => Bool);
  has Items       => (is => 'ro', isa => ArrayRef[Str]);
  has Object      => (is => 'ro', isa => InstanceOf['Paws::JsonParamsService::Object']);

  use MooX::ClassAttribute;
  class_has _api_call    => (isa => Str, is => 'ro', default => 'MethodReq');
  class_has _returns     => (isa => Str, is => 'ro');
  class_has _result_key  => (isa => Str, is => 'ro');

Paws::SerDes->register('Paws::JsonParamsService::MethodReq', [
  { name => 'Name', type => 'Str', wire_key => 'Name', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Renamed', type => 'Str', wire_key => 'renamed_on_wire', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'Number', type => 'Int', wire_key => 'Number', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Flag', type => 'Bool', wire_key => 'Flag', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Items', type => 'ArrayRef[Str]', wire_key => 'Items', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Object', type => 'Paws::JsonParamsService::Object', wire_key => 'Object', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

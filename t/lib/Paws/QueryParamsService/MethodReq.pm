# Operation purpose-built for request-side wire fixture testing
# of the Query protocol caller. Query bodies are
# application/x-www-form-urlencoded.

use Paws::SerDes;

package Paws::QueryParamsService::MethodReq;
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

Paws::SerDes->register('Paws::QueryParamsService::MethodReq', [
  { name => 'Name', type => 'Str', wire_key => 'Name', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Renamed', type => 'Str', wire_key => 'RenamedOnWire', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'Number', type => 'Int', wire_key => 'Number', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
  { name => 'Items', type => 'ArrayRef[Str]', wire_key => 'Items', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

use Paws::EC2ParamsService::Object;
use Paws::SerDes;

package Paws::EC2ParamsService::Method1Return;
  use Moo;
  use Types::Standard qw(Str Int Bool InstanceOf);

  has StringAttribute  => (is => 'ro', isa => Str);
  has IntegerAttribute => (is => 'ro', isa => Int);
  has BooleanAttribute => (is => 'ro', isa => Bool);

  has ObjectAttribute => (is => 'ro',
                          isa => InstanceOf['Paws::EC2ParamsService::Object']);

  has _request_id => (is => 'ro', isa => Str);

Paws::SerDes->register('Paws::EC2ParamsService::Method1Return', [
  { name => 'StringAttribute', type => 'Str', wire_key => 'stringAttribute', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'IntegerAttribute', type => 'Int', wire_key => 'integerAttribute', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'BooleanAttribute', type => 'Bool', wire_key => 'booleanAttribute', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'ObjectAttribute', type => 'Paws::EC2ParamsService::Object', wire_key => 'objectAttribute', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => '_request_id', type => 'Str', wire_key => '_request_id', location => 'body',
    location_name => undef, traits => {}, is_required => 0 },
]);
1;

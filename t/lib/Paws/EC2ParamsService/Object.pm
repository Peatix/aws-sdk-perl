use Paws::SerDes;

package Paws::EC2ParamsService::Object;
  use Moo;
  use Types::Standard qw(Str);
  has Att1 => (is => 'ro', isa => Str);
  has Att2 => (is => 'ro', isa => Str);

Paws::SerDes->register('Paws::EC2ParamsService::Object', [
  { name => 'Att1', type => 'Str', wire_key => 'att1', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
  { name => 'Att2', type => 'Str', wire_key => 'att2', location => 'body',
    location_name => undef, traits => { NameInRequest => 1 }, is_required => 0 },
]);
1;

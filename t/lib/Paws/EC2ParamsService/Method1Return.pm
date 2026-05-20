use Paws::EC2ParamsService::Object;

package Paws::EC2ParamsService::Method1Return;
  use Moo;
  use Types::Standard qw(Str Int Bool InstanceOf);

  has StringAttribute  => (is => 'ro', isa => Str);
  has IntegerAttribute => (is => 'ro', isa => Int);
  has BooleanAttribute => (is => 'ro', isa => Bool);

  has ObjectAttribute => (is => 'ro',
                          isa => InstanceOf['Paws::EC2ParamsService::Object']);

  has _request_id => (is => 'ro', isa => Str);
1;

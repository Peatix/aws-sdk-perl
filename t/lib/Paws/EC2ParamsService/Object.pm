package Paws::EC2ParamsService::Object;
  use Moose;
  has Att1 => (is => 'ro', isa => 'Str', request_name => 'att1', traits => ['NameInRequest']);
  has Att2 => (is => 'ro', isa => 'Str', request_name => 'att2', traits => ['NameInRequest']);
1;

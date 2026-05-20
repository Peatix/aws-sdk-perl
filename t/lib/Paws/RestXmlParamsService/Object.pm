package Paws::RestXmlParamsService::Object;
  use Moo;
  use Types::Standard qw(Str);
  has Att1 => (is => 'ro', isa => Str);
  has Att2 => (is => 'ro', isa => Str);
1;

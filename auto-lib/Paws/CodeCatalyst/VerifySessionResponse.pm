
package Paws::CodeCatalyst::VerifySessionResponse;
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::VerifySessionResponse

=head1 ATTRIBUTES


=head2 Identity => Str

The system-generated unique ID of the user in Amazon CodeCatalyst.


=head2 _request_id => Str


=cut


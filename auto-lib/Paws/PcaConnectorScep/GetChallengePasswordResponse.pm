
package Paws::PcaConnectorScep::GetChallengePasswordResponse;
  use Moose;
  has Password => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::GetChallengePasswordResponse

=head1 ATTRIBUTES


=head2 Password => Str

The SCEP challenge password.


=head2 _request_id => Str


=cut


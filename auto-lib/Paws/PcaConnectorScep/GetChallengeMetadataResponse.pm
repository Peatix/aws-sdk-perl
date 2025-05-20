
package Paws::PcaConnectorScep::GetChallengeMetadataResponse;
  use Moose;
  has ChallengeMetadata => (is => 'ro', isa => 'Paws::PcaConnectorScep::ChallengeMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::GetChallengeMetadataResponse

=head1 ATTRIBUTES


=head2 ChallengeMetadata => L<Paws::PcaConnectorScep::ChallengeMetadata>

The metadata for the challenge.


=head2 _request_id => Str


=cut


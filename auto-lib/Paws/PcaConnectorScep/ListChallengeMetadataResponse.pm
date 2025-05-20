
package Paws::PcaConnectorScep::ListChallengeMetadataResponse;
  use Moose;
  has Challenges => (is => 'ro', isa => 'ArrayRef[Paws::PcaConnectorScep::ChallengeMetadataSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::ListChallengeMetadataResponse

=head1 ATTRIBUTES


=head2 Challenges => ArrayRef[L<Paws::PcaConnectorScep::ChallengeMetadataSummary>]

The challenge metadata for the challenges belonging to your Amazon Web
Services account.


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Connector for SCEP returns a C<NextToken> value
in the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 _request_id => Str


=cut


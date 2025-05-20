
package Paws::VoiceID::ListSpeakersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SpeakerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::VoiceID::SpeakerSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::ListSpeakersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours.


=head2 SpeakerSummaries => ArrayRef[L<Paws::VoiceID::SpeakerSummary>]

A list containing details about each speaker in the Amazon Web Services
account.


=head2 _request_id => Str


=cut

1;
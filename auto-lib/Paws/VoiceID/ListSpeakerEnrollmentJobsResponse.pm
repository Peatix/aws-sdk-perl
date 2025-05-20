
package Paws::VoiceID::ListSpeakerEnrollmentJobsResponse;
  use Moose;
  has JobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::VoiceID::SpeakerEnrollmentJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::ListSpeakerEnrollmentJobsResponse

=head1 ATTRIBUTES


=head2 JobSummaries => ArrayRef[L<Paws::VoiceID::SpeakerEnrollmentJobSummary>]

A list containing details about each specified speaker enrollment job.


=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours.


=head2 _request_id => Str


=cut

1;
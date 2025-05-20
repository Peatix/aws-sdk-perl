
package Paws::Transcribe::GetCallAnalyticsJobResponse;
  use Moose;
  has CallAnalyticsJob => (is => 'ro', isa => 'Paws::Transcribe::CallAnalyticsJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetCallAnalyticsJobResponse

=head1 ATTRIBUTES


=head2 CallAnalyticsJob => L<Paws::Transcribe::CallAnalyticsJob>

Provides detailed information about the specified Call Analytics job,
including job status and, if applicable, failure reason.


=head2 _request_id => Str


=cut

1;
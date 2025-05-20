
package Paws::Transcribe::GetTranscriptionJobResponse;
  use Moose;
  has TranscriptionJob => (is => 'ro', isa => 'Paws::Transcribe::TranscriptionJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 TranscriptionJob => L<Paws::Transcribe::TranscriptionJob>

Provides detailed information about the specified transcription job,
including job status and, if applicable, failure reason.


=head2 _request_id => Str


=cut

1;
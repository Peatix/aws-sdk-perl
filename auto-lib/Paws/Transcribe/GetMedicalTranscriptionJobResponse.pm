
package Paws::Transcribe::GetMedicalTranscriptionJobResponse;
  use Moose;
  has MedicalTranscriptionJob => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetMedicalTranscriptionJobResponse

=head1 ATTRIBUTES


=head2 MedicalTranscriptionJob => L<Paws::Transcribe::MedicalTranscriptionJob>

Provides detailed information about the specified medical transcription
job, including job status and, if applicable, failure reason.


=head2 _request_id => Str


=cut

1;
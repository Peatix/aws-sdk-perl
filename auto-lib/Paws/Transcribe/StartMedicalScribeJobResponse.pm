
package Paws::Transcribe::StartMedicalScribeJobResponse;
  use Moose;
  has MedicalScribeJob => (is => 'ro', isa => 'Paws::Transcribe::MedicalScribeJob');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::StartMedicalScribeJobResponse

=head1 ATTRIBUTES


=head2 MedicalScribeJob => L<Paws::Transcribe::MedicalScribeJob>

Provides detailed information about the current Medical Scribe job,
including job status and, if applicable, failure reason.


=head2 _request_id => Str


=cut

1;
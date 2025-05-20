
package Paws::Rekognition::GetMediaAnalysisJobResponse;
  use Moose;
  has CompletionTimestamp => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has FailureDetails => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisJobFailureDetails');
  has Input => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisInput', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ManifestSummary => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisManifestSummary');
  has OperationsConfig => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisOperationsConfig', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisOutputConfig', required => 1);
  has Results => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisResults');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetMediaAnalysisJobResponse

=head1 ATTRIBUTES


=head2 CompletionTimestamp => Str

The Unix date and time when the job finished.


=head2 B<REQUIRED> CreationTimestamp => Str

The Unix date and time when the job was started.


=head2 FailureDetails => L<Paws::Rekognition::MediaAnalysisJobFailureDetails>

Details about the error that resulted in failure of the job.


=head2 B<REQUIRED> Input => L<Paws::Rekognition::MediaAnalysisInput>

Reference to the input manifest that was provided in the job creation
request.


=head2 B<REQUIRED> JobId => Str

The identifier for the media analysis job.


=head2 JobName => Str

The name of the media analysis job.


=head2 KmsKeyId => Str

KMS Key that was provided in the creation request.


=head2 ManifestSummary => L<Paws::Rekognition::MediaAnalysisManifestSummary>

The summary manifest provides statistics on input manifest and errors
identified in the input manifest.


=head2 B<REQUIRED> OperationsConfig => L<Paws::Rekognition::MediaAnalysisOperationsConfig>

Operation configurations that were provided during job creation.


=head2 B<REQUIRED> OutputConfig => L<Paws::Rekognition::MediaAnalysisOutputConfig>

Output configuration that was provided in the creation request.


=head2 Results => L<Paws::Rekognition::MediaAnalysisResults>

Output manifest that contains prediction results.


=head2 B<REQUIRED> Status => Str

The current status of the media analysis job.

Valid values are: C<"CREATED">, C<"QUEUED">, C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
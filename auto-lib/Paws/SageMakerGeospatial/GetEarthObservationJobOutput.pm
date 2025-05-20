
package Paws::SageMakerGeospatial::GetEarthObservationJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has ErrorDetails => (is => 'ro', isa => 'Paws::SageMakerGeospatial::EarthObservationJobErrorDetails');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has ExportErrorDetails => (is => 'ro', isa => 'Paws::SageMakerGeospatial::ExportErrorDetails');
  has ExportStatus => (is => 'ro', isa => 'Str');
  has InputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::InputConfigOutput', required => 1);
  has JobConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::JobConfigInput', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputBands => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::OutputBand]');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetEarthObservationJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Earth Observation job.


=head2 B<REQUIRED> CreationTime => Str

The creation time of the initiated Earth Observation job.


=head2 B<REQUIRED> DurationInSeconds => Int

The duration of Earth Observation job, in seconds.


=head2 ErrorDetails => L<Paws::SageMakerGeospatial::EarthObservationJobErrorDetails>

Details about the errors generated during the Earth Observation job.


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.


=head2 ExportErrorDetails => L<Paws::SageMakerGeospatial::ExportErrorDetails>

Details about the errors generated during ExportEarthObservationJob.


=head2 ExportStatus => Str

The status of the Earth Observation job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 B<REQUIRED> InputConfig => L<Paws::SageMakerGeospatial::InputConfigOutput>

Input data for the Earth Observation job.


=head2 B<REQUIRED> JobConfig => L<Paws::SageMakerGeospatial::JobConfigInput>

An object containing information about the job configuration.


=head2 KmsKeyId => Str

The Key Management Service key ID for server-side encryption.


=head2 B<REQUIRED> Name => Str

The name of the Earth Observation job.


=head2 OutputBands => ArrayRef[L<Paws::SageMakerGeospatial::OutputBand>]

Bands available in the output of an operation.


=head2 B<REQUIRED> Status => Str

The status of a previously initiated Earth Observation job.

Valid values are: C<"INITIALIZING">, C<"IN_PROGRESS">, C<"STOPPING">, C<"COMPLETED">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.


=head2 _request_id => Str


=cut


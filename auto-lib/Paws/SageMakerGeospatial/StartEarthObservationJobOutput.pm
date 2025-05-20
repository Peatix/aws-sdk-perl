
package Paws::SageMakerGeospatial::StartEarthObservationJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DurationInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::InputConfigOutput');
  has JobConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::JobConfigInput', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::StartEarthObservationJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Earth Observation job.


=head2 B<REQUIRED> CreationTime => Str

The creation time.


=head2 B<REQUIRED> DurationInSeconds => Int

The duration of the session, in seconds.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.


=head2 InputConfig => L<Paws::SageMakerGeospatial::InputConfigOutput>

Input configuration information for the Earth Observation job.


=head2 B<REQUIRED> JobConfig => L<Paws::SageMakerGeospatial::JobConfigInput>

An object containing information about the job configuration.


=head2 KmsKeyId => Str

The Key Management Service key ID for server-side encryption.


=head2 B<REQUIRED> Name => Str

The name of the Earth Observation job.


=head2 B<REQUIRED> Status => Str

The status of the Earth Observation job.

Valid values are: C<"INITIALIZING">, C<"IN_PROGRESS">, C<"STOPPING">, C<"COMPLETED">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.


=head2 _request_id => Str


=cut


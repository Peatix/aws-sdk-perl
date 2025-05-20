
package Paws::SageMakerGeospatial::ExportEarthObservationJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ExportSourceImages => (is => 'ro', isa => 'Bool');
  has ExportStatus => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::OutputConfigInput', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ExportEarthObservationJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The output Amazon Resource Name (ARN) of the Earth Observation job
being exported.


=head2 B<REQUIRED> CreationTime => Str

The creation time.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.


=head2 ExportSourceImages => Bool

The source images provided to the Earth Observation job being exported.


=head2 B<REQUIRED> ExportStatus => Str

The status of the results of the Earth Observation job being exported.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 B<REQUIRED> OutputConfig => L<Paws::SageMakerGeospatial::OutputConfigInput>

An object containing information about the output file.


=head2 _request_id => Str


=cut


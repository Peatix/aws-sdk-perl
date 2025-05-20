
package Paws::SageMakerGeospatial::ExportEarthObservationJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ExportSourceImages => (is => 'ro', isa => 'Bool');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::OutputConfigInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportEarthObservationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export-earth-observation-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::ExportEarthObservationJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ExportEarthObservationJob - Arguments for method ExportEarthObservationJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportEarthObservationJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method ExportEarthObservationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportEarthObservationJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $ExportEarthObservationJobOutput =
      $sagemaker -geospatial->ExportEarthObservationJob(
      Arn              => 'MyEarthObservationJobArn',
      ExecutionRoleArn => 'MyExecutionRoleArn',
      OutputConfig     => {
        S3Data => {
          S3Uri    => 'MyS3Uri',
          KmsKeyId => 'MyKmsKey',    # max: 2048; OPTIONAL
        },

      },
      ClientToken =>
        'MyExportEarthObservationJobInputClientTokenString',    # OPTIONAL
      ExportSourceImages => 1,                                  # OPTIONAL
      );

    # Results:
    my $Arn              = $ExportEarthObservationJobOutput->Arn;
    my $CreationTime     = $ExportEarthObservationJobOutput->CreationTime;
    my $ExecutionRoleArn = $ExportEarthObservationJobOutput->ExecutionRoleArn;
    my $ExportSourceImages =
      $ExportEarthObservationJobOutput->ExportSourceImages;
    my $ExportStatus = $ExportEarthObservationJobOutput->ExportStatus;
    my $OutputConfig = $ExportEarthObservationJobOutput->OutputConfig;

# Returns a L<Paws::SageMakerGeospatial::ExportEarthObservationJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/ExportEarthObservationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The input Amazon Resource Name (ARN) of the Earth Observation job being
exported.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.



=head2 ExportSourceImages => Bool

The source images provided to the Earth Observation job being exported.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMakerGeospatial::OutputConfigInput>

An object containing information about the output file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportEarthObservationJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


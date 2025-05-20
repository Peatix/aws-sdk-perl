
package Paws::SageMakerGeospatial::ExportVectorEnrichmentJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutputConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportVectorEnrichmentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/export-vector-enrichment-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ExportVectorEnrichmentJob - Arguments for method ExportVectorEnrichmentJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportVectorEnrichmentJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method ExportVectorEnrichmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportVectorEnrichmentJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $ExportVectorEnrichmentJobOutput =
      $sagemaker -geospatial->ExportVectorEnrichmentJob(
      Arn              => 'MyVectorEnrichmentJobArn',
      ExecutionRoleArn => 'MyExecutionRoleArn',
      OutputConfig     => {
        S3Data => {
          S3Uri    => 'MyS3Uri',
          KmsKeyId => 'MyKmsKey',    # max: 2048; OPTIONAL
        },

      },
      ClientToken =>
        'MyExportVectorEnrichmentJobInputClientTokenString',    # OPTIONAL
      );

    # Results:
    my $Arn              = $ExportVectorEnrichmentJobOutput->Arn;
    my $CreationTime     = $ExportVectorEnrichmentJobOutput->CreationTime;
    my $ExecutionRoleArn = $ExportVectorEnrichmentJobOutput->ExecutionRoleArn;
    my $ExportStatus     = $ExportVectorEnrichmentJobOutput->ExportStatus;
    my $OutputConfig     = $ExportVectorEnrichmentJobOutput->OutputConfig;

# Returns a L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/ExportVectorEnrichmentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Vector Enrichment job.



=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM rolewith permission to upload
to the location in OutputConfig.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutputConfig>

Output location information for exporting Vector Enrichment Job
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportVectorEnrichmentJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


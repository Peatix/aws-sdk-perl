
package Paws::SageMakerGeospatial::GetVectorEnrichmentJob;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVectorEnrichmentJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vector-enrichment-jobs/{Arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::GetVectorEnrichmentJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::GetVectorEnrichmentJob - Arguments for method GetVectorEnrichmentJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVectorEnrichmentJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method GetVectorEnrichmentJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVectorEnrichmentJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $GetVectorEnrichmentJobOutput =
      $sagemaker -geospatial->GetVectorEnrichmentJob(
      Arn => 'MyVectorEnrichmentJobArn',

      );

    # Results:
    my $Arn                = $GetVectorEnrichmentJobOutput->Arn;
    my $CreationTime       = $GetVectorEnrichmentJobOutput->CreationTime;
    my $DurationInSeconds  = $GetVectorEnrichmentJobOutput->DurationInSeconds;
    my $ErrorDetails       = $GetVectorEnrichmentJobOutput->ErrorDetails;
    my $ExecutionRoleArn   = $GetVectorEnrichmentJobOutput->ExecutionRoleArn;
    my $ExportErrorDetails = $GetVectorEnrichmentJobOutput->ExportErrorDetails;
    my $ExportStatus       = $GetVectorEnrichmentJobOutput->ExportStatus;
    my $InputConfig        = $GetVectorEnrichmentJobOutput->InputConfig;
    my $JobConfig          = $GetVectorEnrichmentJobOutput->JobConfig;
    my $KmsKeyId           = $GetVectorEnrichmentJobOutput->KmsKeyId;
    my $Name               = $GetVectorEnrichmentJobOutput->Name;
    my $Status             = $GetVectorEnrichmentJobOutput->Status;
    my $Tags               = $GetVectorEnrichmentJobOutput->Tags;
    my $Type               = $GetVectorEnrichmentJobOutput->Type;

  # Returns a L<Paws::SageMakerGeospatial::GetVectorEnrichmentJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/GetVectorEnrichmentJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Vector Enrichment job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVectorEnrichmentJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


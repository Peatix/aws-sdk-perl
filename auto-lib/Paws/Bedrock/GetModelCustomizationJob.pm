
package Paws::Bedrock::GetModelCustomizationJob;
  use Moose;
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelCustomizationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-customization-jobs/{jobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetModelCustomizationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelCustomizationJob - Arguments for method GetModelCustomizationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelCustomizationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetModelCustomizationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelCustomizationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetModelCustomizationJobResponse = $bedrock->GetModelCustomizationJob(
      JobIdentifier => 'MyModelCustomizationJobIdentifier',

    );

    # Results:
    my $BaseModelArn = $GetModelCustomizationJobResponse->BaseModelArn;
    my $ClientRequestToken =
      $GetModelCustomizationJobResponse->ClientRequestToken;
    my $CreationTime = $GetModelCustomizationJobResponse->CreationTime;
    my $CustomizationConfig =
      $GetModelCustomizationJobResponse->CustomizationConfig;
    my $CustomizationType =
      $GetModelCustomizationJobResponse->CustomizationType;
    my $EndTime          = $GetModelCustomizationJobResponse->EndTime;
    my $FailureMessage   = $GetModelCustomizationJobResponse->FailureMessage;
    my $HyperParameters  = $GetModelCustomizationJobResponse->HyperParameters;
    my $JobArn           = $GetModelCustomizationJobResponse->JobArn;
    my $JobName          = $GetModelCustomizationJobResponse->JobName;
    my $LastModifiedTime = $GetModelCustomizationJobResponse->LastModifiedTime;
    my $OutputDataConfig = $GetModelCustomizationJobResponse->OutputDataConfig;
    my $OutputModelArn   = $GetModelCustomizationJobResponse->OutputModelArn;
    my $OutputModelKmsKeyArn =
      $GetModelCustomizationJobResponse->OutputModelKmsKeyArn;
    my $OutputModelName = $GetModelCustomizationJobResponse->OutputModelName;
    my $RoleArn         = $GetModelCustomizationJobResponse->RoleArn;
    my $Status          = $GetModelCustomizationJobResponse->Status;
    my $StatusDetails   = $GetModelCustomizationJobResponse->StatusDetails;
    my $TrainingDataConfig =
      $GetModelCustomizationJobResponse->TrainingDataConfig;
    my $TrainingMetrics = $GetModelCustomizationJobResponse->TrainingMetrics;
    my $ValidationDataConfig =
      $GetModelCustomizationJobResponse->ValidationDataConfig;
    my $ValidationMetrics =
      $GetModelCustomizationJobResponse->ValidationMetrics;
    my $VpcConfig = $GetModelCustomizationJobResponse->VpcConfig;

    # Returns a L<Paws::Bedrock::GetModelCustomizationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetModelCustomizationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifier => Str

Identifier for the customization job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelCustomizationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::SageMaker::DescribeInferenceExperiment;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInferenceExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeInferenceExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeInferenceExperiment - Arguments for method DescribeInferenceExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInferenceExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeInferenceExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInferenceExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeInferenceExperimentResponse =
      $api . sagemaker->DescribeInferenceExperiment(
      Name => 'MyInferenceExperimentName',

      );

    # Results:
    my $Arn            = $DescribeInferenceExperimentResponse->Arn;
    my $CompletionTime = $DescribeInferenceExperimentResponse->CompletionTime;
    my $CreationTime   = $DescribeInferenceExperimentResponse->CreationTime;
    my $DataStorageConfig =
      $DescribeInferenceExperimentResponse->DataStorageConfig;
    my $Description = $DescribeInferenceExperimentResponse->Description;
    my $EndpointMetadata =
      $DescribeInferenceExperimentResponse->EndpointMetadata;
    my $KmsKey = $DescribeInferenceExperimentResponse->KmsKey;
    my $LastModifiedTime =
      $DescribeInferenceExperimentResponse->LastModifiedTime;
    my $ModelVariants = $DescribeInferenceExperimentResponse->ModelVariants;
    my $Name          = $DescribeInferenceExperimentResponse->Name;
    my $RoleArn       = $DescribeInferenceExperimentResponse->RoleArn;
    my $Schedule      = $DescribeInferenceExperimentResponse->Schedule;
    my $ShadowModeConfig =
      $DescribeInferenceExperimentResponse->ShadowModeConfig;
    my $Status       = $DescribeInferenceExperimentResponse->Status;
    my $StatusReason = $DescribeInferenceExperimentResponse->StatusReason;
    my $Type         = $DescribeInferenceExperimentResponse->Type;

    # Returns a L<Paws::SageMaker::DescribeInferenceExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeInferenceExperiment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the inference experiment to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInferenceExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


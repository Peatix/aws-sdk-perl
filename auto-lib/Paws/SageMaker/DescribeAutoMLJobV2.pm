
package Paws::SageMaker::DescribeAutoMLJobV2;
  use Moose;
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoMLJobV2');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeAutoMLJobV2Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAutoMLJobV2 - Arguments for method DescribeAutoMLJobV2 on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoMLJobV2 on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeAutoMLJobV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoMLJobV2.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeAutoMLJobV2Response = $api . sagemaker->DescribeAutoMLJobV2(
      AutoMLJobName => 'MyAutoMLJobName',

    );

    # Results:
    my $AutoMLComputeConfig = $DescribeAutoMLJobV2Response->AutoMLComputeConfig;
    my $AutoMLJobArn        = $DescribeAutoMLJobV2Response->AutoMLJobArn;
    my $AutoMLJobArtifacts  = $DescribeAutoMLJobV2Response->AutoMLJobArtifacts;
    my $AutoMLJobInputDataConfig =
      $DescribeAutoMLJobV2Response->AutoMLJobInputDataConfig;
    my $AutoMLJobName      = $DescribeAutoMLJobV2Response->AutoMLJobName;
    my $AutoMLJobObjective = $DescribeAutoMLJobV2Response->AutoMLJobObjective;
    my $AutoMLJobSecondaryStatus =
      $DescribeAutoMLJobV2Response->AutoMLJobSecondaryStatus;
    my $AutoMLJobStatus = $DescribeAutoMLJobV2Response->AutoMLJobStatus;
    my $AutoMLProblemTypeConfig =
      $DescribeAutoMLJobV2Response->AutoMLProblemTypeConfig;
    my $AutoMLProblemTypeConfigName =
      $DescribeAutoMLJobV2Response->AutoMLProblemTypeConfigName;
    my $BestCandidate     = $DescribeAutoMLJobV2Response->BestCandidate;
    my $CreationTime      = $DescribeAutoMLJobV2Response->CreationTime;
    my $DataSplitConfig   = $DescribeAutoMLJobV2Response->DataSplitConfig;
    my $EndTime           = $DescribeAutoMLJobV2Response->EndTime;
    my $FailureReason     = $DescribeAutoMLJobV2Response->FailureReason;
    my $LastModifiedTime  = $DescribeAutoMLJobV2Response->LastModifiedTime;
    my $ModelDeployConfig = $DescribeAutoMLJobV2Response->ModelDeployConfig;
    my $ModelDeployResult = $DescribeAutoMLJobV2Response->ModelDeployResult;
    my $OutputDataConfig  = $DescribeAutoMLJobV2Response->OutputDataConfig;
    my $PartialFailureReasons =
      $DescribeAutoMLJobV2Response->PartialFailureReasons;
    my $ResolvedAttributes = $DescribeAutoMLJobV2Response->ResolvedAttributes;
    my $RoleArn            = $DescribeAutoMLJobV2Response->RoleArn;
    my $SecurityConfig     = $DescribeAutoMLJobV2Response->SecurityConfig;

    # Returns a L<Paws::SageMaker::DescribeAutoMLJobV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeAutoMLJobV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobName => Str

Requests information about an AutoML job V2 using its unique name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoMLJobV2 in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


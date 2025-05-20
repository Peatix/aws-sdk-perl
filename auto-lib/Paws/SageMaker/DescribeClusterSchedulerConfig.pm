
package Paws::SageMaker::DescribeClusterSchedulerConfig;
  use Moose;
  has ClusterSchedulerConfigId => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSchedulerConfigVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSchedulerConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeClusterSchedulerConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeClusterSchedulerConfig - Arguments for method DescribeClusterSchedulerConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterSchedulerConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeClusterSchedulerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterSchedulerConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeClusterSchedulerConfigResponse =
      $api . sagemaker->DescribeClusterSchedulerConfig(
      ClusterSchedulerConfigId      => 'MyClusterSchedulerConfigId',
      ClusterSchedulerConfigVersion => 1,                             # OPTIONAL
      );

    # Results:
    my $ClusterArn = $DescribeClusterSchedulerConfigResponse->ClusterArn;
    my $ClusterSchedulerConfigArn =
      $DescribeClusterSchedulerConfigResponse->ClusterSchedulerConfigArn;
    my $ClusterSchedulerConfigId =
      $DescribeClusterSchedulerConfigResponse->ClusterSchedulerConfigId;
    my $ClusterSchedulerConfigVersion =
      $DescribeClusterSchedulerConfigResponse->ClusterSchedulerConfigVersion;
    my $CreatedBy     = $DescribeClusterSchedulerConfigResponse->CreatedBy;
    my $CreationTime  = $DescribeClusterSchedulerConfigResponse->CreationTime;
    my $Description   = $DescribeClusterSchedulerConfigResponse->Description;
    my $FailureReason = $DescribeClusterSchedulerConfigResponse->FailureReason;
    my $LastModifiedBy =
      $DescribeClusterSchedulerConfigResponse->LastModifiedBy;
    my $LastModifiedTime =
      $DescribeClusterSchedulerConfigResponse->LastModifiedTime;
    my $Name = $DescribeClusterSchedulerConfigResponse->Name;
    my $SchedulerConfig =
      $DescribeClusterSchedulerConfigResponse->SchedulerConfig;
    my $Status = $DescribeClusterSchedulerConfigResponse->Status;

  # Returns a L<Paws::SageMaker::DescribeClusterSchedulerConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeClusterSchedulerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSchedulerConfigId => Str

ID of the cluster policy.



=head2 ClusterSchedulerConfigVersion => Int

Version of the cluster policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterSchedulerConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


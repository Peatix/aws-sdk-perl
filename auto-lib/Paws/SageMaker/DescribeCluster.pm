
package Paws::SageMaker::DescribeCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCluster - Arguments for method DescribeCluster on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCluster on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCluster.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeClusterResponse = $api . sagemaker->DescribeCluster(
      ClusterName => 'MyClusterNameOrArn',

    );

    # Results:
    my $ClusterArn     = $DescribeClusterResponse->ClusterArn;
    my $ClusterName    = $DescribeClusterResponse->ClusterName;
    my $ClusterStatus  = $DescribeClusterResponse->ClusterStatus;
    my $CreationTime   = $DescribeClusterResponse->CreationTime;
    my $FailureMessage = $DescribeClusterResponse->FailureMessage;
    my $InstanceGroups = $DescribeClusterResponse->InstanceGroups;
    my $NodeRecovery   = $DescribeClusterResponse->NodeRecovery;
    my $Orchestrator   = $DescribeClusterResponse->Orchestrator;
    my $VpcConfig      = $DescribeClusterResponse->VpcConfig;

    # Returns a L<Paws::SageMaker::DescribeClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The string name or the Amazon Resource Name (ARN) of the SageMaker
HyperPod cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCluster in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


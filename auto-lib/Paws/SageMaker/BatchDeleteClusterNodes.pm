
package Paws::SageMaker::BatchDeleteClusterNodes;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NodeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteClusterNodes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::BatchDeleteClusterNodesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::BatchDeleteClusterNodes - Arguments for method BatchDeleteClusterNodes on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteClusterNodes on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method BatchDeleteClusterNodes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteClusterNodes.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $BatchDeleteClusterNodesResponse =
      $api . sagemaker->BatchDeleteClusterNodes(
      ClusterName => 'MyClusterNameOrArn',
      NodeIds     => [
        'MyClusterNodeId', ...    # min: 1, max: 256
      ],

      );

    # Results:
    my $Failed     = $BatchDeleteClusterNodesResponse->Failed;
    my $Successful = $BatchDeleteClusterNodesResponse->Successful;

    # Returns a L<Paws::SageMaker::BatchDeleteClusterNodesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/BatchDeleteClusterNodes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the SageMaker HyperPod cluster from which to delete the
specified nodes.



=head2 B<REQUIRED> NodeIds => ArrayRef[Str|Undef]

A list of node IDs to be deleted from the specified cluster.

=over

=item *

For SageMaker HyperPod clusters using the Slurm workload manager, you
cannot remove instances that are configured as Slurm controller nodes.

=item *

If you need to delete more than 99 instances, contact Support
(http://aws.amazon.com/contact-us/) for assistance.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteClusterNodes in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


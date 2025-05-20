
package Paws::PCS::GetComputeNodeGroup;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);
  has ComputeNodeGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeNodeGroupIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComputeNodeGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::GetComputeNodeGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::GetComputeNodeGroup - Arguments for method GetComputeNodeGroup on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComputeNodeGroup on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method GetComputeNodeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComputeNodeGroup.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $GetComputeNodeGroupResponse = $pcs->GetComputeNodeGroup(
      ClusterIdentifier          => 'MyClusterIdentifier',
      ComputeNodeGroupIdentifier => 'MyComputeNodeGroupIdentifier',

    );

    # Results:
    my $ComputeNodeGroup = $GetComputeNodeGroupResponse->ComputeNodeGroup;

    # Returns a L<Paws::PCS::GetComputeNodeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/GetComputeNodeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The name or ID of the cluster.



=head2 B<REQUIRED> ComputeNodeGroupIdentifier => Str

The name or ID of the compute node group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComputeNodeGroup in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


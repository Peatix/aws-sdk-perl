
package Paws::PCS::RegisterComputeNodeGroupInstance;
  use Moose;
  has BootstrapId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapId' , required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterComputeNodeGroupInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::RegisterComputeNodeGroupInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::RegisterComputeNodeGroupInstance - Arguments for method RegisterComputeNodeGroupInstance on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterComputeNodeGroupInstance on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method RegisterComputeNodeGroupInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterComputeNodeGroupInstance.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $RegisterComputeNodeGroupInstanceResponse =
      $pcs->RegisterComputeNodeGroupInstance(
      BootstrapId       => 'MyBootstrapId',
      ClusterIdentifier => 'MyClusterIdentifier',

      );

    # Results:
    my $Endpoints    = $RegisterComputeNodeGroupInstanceResponse->Endpoints;
    my $NodeID       = $RegisterComputeNodeGroupInstanceResponse->NodeID;
    my $SharedSecret = $RegisterComputeNodeGroupInstanceResponse->SharedSecret;

    # Returns a L<Paws::PCS::RegisterComputeNodeGroupInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/RegisterComputeNodeGroupInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BootstrapId => Str

The client-generated token to allow for retries.



=head2 B<REQUIRED> ClusterIdentifier => Str

The name or ID of the cluster to register the compute node group
instance in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterComputeNodeGroupInstance in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


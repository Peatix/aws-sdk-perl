
package Paws::PCS::GetCluster;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::GetClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::GetCluster - Arguments for method GetCluster on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCluster on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method GetCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCluster.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $GetClusterResponse = $pcs->GetCluster(
      ClusterIdentifier => 'MyClusterIdentifier',

    );

    # Results:
    my $Cluster = $GetClusterResponse->Cluster;

    # Returns a L<Paws::PCS::GetClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/GetCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The name or ID of the cluster of the queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCluster in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


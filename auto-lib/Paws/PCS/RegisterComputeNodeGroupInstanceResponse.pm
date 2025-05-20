
package Paws::PCS::RegisterComputeNodeGroupInstanceResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::PCS::Endpoint]', traits => ['NameInRequest'], request_name => 'endpoints' , required => 1);
  has NodeID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nodeID' , required => 1);
  has SharedSecret => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sharedSecret' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::RegisterComputeNodeGroupInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::PCS::Endpoint>]

The list of endpoints available for interaction with the scheduler.


=head2 B<REQUIRED> NodeID => Str

The scheduler node ID for this instance.


=head2 B<REQUIRED> SharedSecret => Str

For the Slurm scheduler, this is the shared Munge key the scheduler
uses to authenticate compute node group instances.


=head2 _request_id => Str


=cut

1;
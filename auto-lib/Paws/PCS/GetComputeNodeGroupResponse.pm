
package Paws::PCS::GetComputeNodeGroupResponse;
  use Moose;
  has ComputeNodeGroup => (is => 'ro', isa => 'Paws::PCS::ComputeNodeGroup', traits => ['NameInRequest'], request_name => 'computeNodeGroup' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PCS::GetComputeNodeGroupResponse

=head1 ATTRIBUTES


=head2 ComputeNodeGroup => L<Paws::PCS::ComputeNodeGroup>




=head2 _request_id => Str


=cut

1;
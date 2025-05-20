
package Paws::VPCLattice::DeregisterTargetsResponse;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::Target]', traits => ['NameInRequest'], request_name => 'successful');
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::TargetFailure]', traits => ['NameInRequest'], request_name => 'unsuccessful');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeregisterTargetsResponse

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[L<Paws::VPCLattice::Target>]

The targets that were successfully deregistered.


=head2 Unsuccessful => ArrayRef[L<Paws::VPCLattice::TargetFailure>]

The targets that the operation couldn't deregister.


=head2 _request_id => Str


=cut


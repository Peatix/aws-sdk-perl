
package Paws::VPCLattice::RegisterTargetsResponse;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::Target]', traits => ['NameInRequest'], request_name => 'successful');
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::TargetFailure]', traits => ['NameInRequest'], request_name => 'unsuccessful');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::RegisterTargetsResponse

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[L<Paws::VPCLattice::Target>]

The targets that were successfully registered.


=head2 Unsuccessful => ArrayRef[L<Paws::VPCLattice::TargetFailure>]

The targets that were not registered.


=head2 _request_id => Str


=cut


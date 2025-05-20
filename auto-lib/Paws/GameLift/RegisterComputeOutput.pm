
package Paws::GameLift::RegisterComputeOutput;
  use Moose;
  has Compute => (is => 'ro', isa => 'Paws::GameLift::Compute');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RegisterComputeOutput

=head1 ATTRIBUTES


=head2 Compute => L<Paws::GameLift::Compute>

The details of the compute resource you registered.


=head2 _request_id => Str


=cut

1;
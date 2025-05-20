
package Paws::Athena::GetCapacityAssignmentConfigurationOutput;
  use Moose;
  has CapacityAssignmentConfiguration => (is => 'ro', isa => 'Paws::Athena::CapacityAssignmentConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCapacityAssignmentConfigurationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityAssignmentConfiguration => L<Paws::Athena::CapacityAssignmentConfiguration>

The requested capacity assignment configuration for the specified
capacity reservation.


=head2 _request_id => Str


=cut

1;
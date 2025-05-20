
package Paws::ControlTower::DeleteLandingZoneOutput;
  use Moose;
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::DeleteLandingZoneOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationIdentifier => Str

E<gt>A unique identifier assigned to a C<DeleteLandingZone> operation.
You can use this identifier as an input parameter of
C<GetLandingZoneOperation> to check the operation's status.


=head2 _request_id => Str


=cut


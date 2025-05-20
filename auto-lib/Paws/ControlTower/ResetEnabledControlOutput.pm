
package Paws::ControlTower::ResetEnabledControlOutput;
  use Moose;
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ResetEnabledControlOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationIdentifier => Str

The operation identifier for this C<ResetEnabledControl> operation.


=head2 _request_id => Str


=cut


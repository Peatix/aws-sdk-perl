
package Paws::ControlTower::EnableControlOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::EnableControlOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the C<EnabledControl> resource.


=head2 B<REQUIRED> OperationIdentifier => Str

The ID of the asynchronous operation, which is used to track status.
The operation is available for 90 days.


=head2 _request_id => Str


=cut


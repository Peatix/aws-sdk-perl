
package Paws::ControlTower::CreateLandingZoneOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::CreateLandingZoneOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the landing zone resource.


=head2 B<REQUIRED> OperationIdentifier => Str

A unique identifier assigned to a C<CreateLandingZone> operation. You
can use this identifier as an input of C<GetLandingZoneOperation> to
check the operation's status.


=head2 _request_id => Str


=cut


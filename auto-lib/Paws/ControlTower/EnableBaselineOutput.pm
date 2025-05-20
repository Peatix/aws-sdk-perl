
package Paws::ControlTower::EnableBaselineOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has OperationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationIdentifier', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::EnableBaselineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the C<EnabledBaseline> resource.


=head2 B<REQUIRED> OperationIdentifier => Str

The ID (in UUID format) of the asynchronous C<EnableBaseline>
operation. This C<operationIdentifier> is used to track status through
calls to the C<GetBaselineOperation> API.


=head2 _request_id => Str


=cut


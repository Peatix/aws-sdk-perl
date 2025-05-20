
package Paws::NetworkFirewall::StartFlowFlushResponse;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FlowOperationId => (is => 'ro', isa => 'Str');
  has FlowOperationStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::StartFlowFlushResponse

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 FlowOperationId => Str

A unique identifier for the flow operation. This ID is returned in the
responses to start and list commands. You provide to describe commands.


=head2 FlowOperationStatus => Str

Returns the status of the flow operation. This string is returned in
the responses to start, list, and describe commands.

If the status is C<COMPLETED_WITH_ERRORS>, results may be returned with
any number of C<Flows> missing from the response. If the status is
C<FAILED>, C<Flows> returned will be empty.

Valid values are: C<"COMPLETED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED_WITH_ERRORS">
=head2 _request_id => Str


=cut

1;
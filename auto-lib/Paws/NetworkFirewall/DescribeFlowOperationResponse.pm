
package Paws::NetworkFirewall::DescribeFlowOperationResponse;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FlowOperation => (is => 'ro', isa => 'Paws::NetworkFirewall::FlowOperation');
  has FlowOperationId => (is => 'ro', isa => 'Str');
  has FlowOperationStatus => (is => 'ro', isa => 'Str');
  has FlowOperationType => (is => 'ro', isa => 'Str');
  has FlowRequestTimestamp => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeFlowOperationResponse

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The ID of the Availability Zone where the firewall is located. For
example, C<us-east-2a>.

Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 FlowOperation => L<Paws::NetworkFirewall::FlowOperation>

Returns key information about a flow operation, such as related
statuses, unique identifiers, and all filters defined in the operation.


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
=head2 FlowOperationType => Str

Defines the type of C<FlowOperation>.

Valid values are: C<"FLOW_FLUSH">, C<"FLOW_CAPTURE">
=head2 FlowRequestTimestamp => Str

A timestamp indicating when the Suricata engine identified flows
impacted by an operation.


=head2 StatusMessage => Str

If the asynchronous operation fails, Network Firewall populates this
with the reason for the error or failure. Options include C<Flow
operation error> and C<Flow timeout>.


=head2 _request_id => Str


=cut

1;
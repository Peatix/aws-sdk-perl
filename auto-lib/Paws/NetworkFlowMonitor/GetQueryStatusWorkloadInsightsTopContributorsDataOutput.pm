
package Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsDataOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of a query for top contributors data.

=over

=item *

C<QUEUED>: The query is scheduled to run.

=item *

C<RUNNING>: The query is in progress but not complete.

=item *

C<SUCCEEDED>: The query completed sucessfully.

=item *

C<FAILED>: The query failed due to an error.

=item *

C<CANCELED>: The query was canceled.

=back


Valid values are: C<"QUEUED">, C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"CANCELED">
=head2 _request_id => Str


=cut


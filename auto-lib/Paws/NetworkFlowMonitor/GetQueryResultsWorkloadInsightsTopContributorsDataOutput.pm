
package Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsDataOutput;
  use Moose;
  has Datapoints => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFlowMonitor::WorkloadInsightsTopContributorsDataPoint]', traits => ['NameInRequest'], request_name => 'datapoints', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Unit => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'unit', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsDataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datapoints => ArrayRef[L<Paws::NetworkFlowMonitor::WorkloadInsightsTopContributorsDataPoint>]

The datapoints returned by the query.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 B<REQUIRED> Unit => Str

The units for a metric returned by the query.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">
=head2 _request_id => Str


=cut


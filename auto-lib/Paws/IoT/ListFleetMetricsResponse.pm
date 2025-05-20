
package Paws::IoT::ListFleetMetricsResponse;
  use Moose;
  has FleetMetrics => (is => 'ro', isa => 'ArrayRef[Paws::IoT::FleetMetricNameAndArn]', traits => ['NameInRequest'], request_name => 'fleetMetrics');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListFleetMetricsResponse

=head1 ATTRIBUTES


=head2 FleetMetrics => ArrayRef[L<Paws::IoT::FleetMetricNameAndArn>]

The list of fleet metrics objects.


=head2 NextToken => Str

The token for the next set of results. Will not be returned if the
operation has returned all results.


=head2 _request_id => Str


=cut


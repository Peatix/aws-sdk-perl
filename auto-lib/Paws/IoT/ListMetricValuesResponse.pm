
package Paws::IoT::ListMetricValuesResponse;
  use Moose;
  has MetricDatumList => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MetricDatum]', traits => ['NameInRequest'], request_name => 'metricDatumList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListMetricValuesResponse

=head1 ATTRIBUTES


=head2 MetricDatumList => ArrayRef[L<Paws::IoT::MetricDatum>]

The data the thing reports for the metric during the specified time
period.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 _request_id => Str


=cut


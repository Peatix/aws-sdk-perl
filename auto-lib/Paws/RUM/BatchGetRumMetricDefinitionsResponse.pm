
package Paws::RUM::BatchGetRumMetricDefinitionsResponse;
  use Moose;
  has MetricDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::RUM::MetricDefinition]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::BatchGetRumMetricDefinitionsResponse

=head1 ATTRIBUTES


=head2 MetricDefinitions => ArrayRef[L<Paws::RUM::MetricDefinition>]

An array of structures that display information about the metrics that
are sent by the specified app monitor to the specified destination.


=head2 NextToken => Str

A token that you can use in a subsequent operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut


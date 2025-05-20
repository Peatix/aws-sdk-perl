
package Paws::RUM::BatchCreateRumMetricDefinitionsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::RUM::BatchCreateRumMetricDefinitionsError]', required => 1);
  has MetricDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::RUM::MetricDefinition]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::BatchCreateRumMetricDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::RUM::BatchCreateRumMetricDefinitionsError>]

An array of error objects, if the operation caused any errors.


=head2 MetricDefinitions => ArrayRef[L<Paws::RUM::MetricDefinition>]

An array of structures that define the extended metrics.


=head2 _request_id => Str


=cut


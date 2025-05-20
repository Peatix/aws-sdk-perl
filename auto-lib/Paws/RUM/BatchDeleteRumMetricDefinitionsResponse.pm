
package Paws::RUM::BatchDeleteRumMetricDefinitionsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::RUM::BatchDeleteRumMetricDefinitionsError]', required => 1);
  has MetricDefinitionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::BatchDeleteRumMetricDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::RUM::BatchDeleteRumMetricDefinitionsError>]

An array of error objects, if the operation caused any errors.


=head2 MetricDefinitionIds => ArrayRef[Str|Undef]

The IDs of the metric definitions that were deleted.


=head2 _request_id => Str


=cut


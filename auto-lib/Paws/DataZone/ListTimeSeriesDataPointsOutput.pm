
package Paws::DataZone::ListTimeSeriesDataPointsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::TimeSeriesDataPointSummaryFormOutput]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListTimeSeriesDataPointsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointSummaryFormOutput>]

The results of the ListTimeSeriesDataPoints action.


=head2 NextToken => Str

When the number of data points is greater than the default value for
the MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of data points, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListTimeSeriesDataPoints to
list the next set of data points.


=head2 _request_id => Str


=cut


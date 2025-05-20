
package Paws::RedShift::DescribeDataSharesForConsumerResult;
  use Moose;
  has DataShares => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::DataShare]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeDataSharesForConsumerResult

=head1 ATTRIBUTES


=head2 DataShares => ArrayRef[L<Paws::RedShift::DataShare>]

Shows the results of datashares available for consumers.


=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a
DescribeDataSharesForConsumer request exceed the value specified in
C<MaxRecords>, Amazon Web Services returns a value in the C<Marker>
field of the response. You can retrieve the next set of response
records by providing the returned marker value in the C<Marker>
parameter and retrying the request.


=head2 _request_id => Str


=cut


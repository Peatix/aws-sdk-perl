
package Paws::Datasync::DescribeStorageSystemResourceMetricsResponse;
  use Moose;
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::ResourceMetrics]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystemResourceMetricsResponse

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[L<Paws::Datasync::ResourceMetrics>]

The details that your discovery job collected about your storage system
resource.


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 _request_id => Str


=cut

1;
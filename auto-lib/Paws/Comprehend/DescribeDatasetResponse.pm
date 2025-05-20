
package Paws::Comprehend::DescribeDatasetResponse;
  use Moose;
  has DatasetProperties => (is => 'ro', isa => 'Paws::Comprehend::DatasetProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetProperties => L<Paws::Comprehend::DatasetProperties>

The dataset properties.


=head2 _request_id => Str


=cut

1;
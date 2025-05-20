
package Paws::Rekognition::DescribeDatasetResponse;
  use Moose;
  has DatasetDescription => (is => 'ro', isa => 'Paws::Rekognition::DatasetDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetDescription => L<Paws::Rekognition::DatasetDescription>

The description for the dataset.


=head2 _request_id => Str


=cut

1;
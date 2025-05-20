
package Paws::Rekognition::ListDatasetLabelsResponse;
  use Moose;
  has DatasetLabelDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::DatasetLabelDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListDatasetLabelsResponse

=head1 ATTRIBUTES


=head2 DatasetLabelDescriptions => ArrayRef[L<Paws::Rekognition::DatasetLabelDescription>]

A list of the labels in the dataset.


=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.


=head2 _request_id => Str


=cut

1;
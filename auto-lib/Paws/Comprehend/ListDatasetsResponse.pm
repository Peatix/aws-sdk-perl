
package Paws::Comprehend::ListDatasetsResponse;
  use Moose;
  has DatasetPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DatasetProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 DatasetPropertiesList => ArrayRef[L<Paws::Comprehend::DatasetProperties>]

The dataset properties list.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;
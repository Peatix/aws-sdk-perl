
package Paws::Rekognition::ListDatasetEntriesResponse;
  use Moose;
  has DatasetEntries => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListDatasetEntriesResponse

=head1 ATTRIBUTES


=head2 DatasetEntries => ArrayRef[Str|Undef]

A list of entries (images) in the dataset.


=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.


=head2 _request_id => Str


=cut

1;
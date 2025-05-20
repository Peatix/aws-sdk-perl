
package Paws::Datasync::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

An array of tags applied to the specified resource.


=head2 _request_id => Str


=cut

1;

package Paws::BCMDataExports::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::ResourceTag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 ResourceTags => ArrayRef[L<Paws::BCMDataExports::ResourceTag>]

An optional list of tags to associate with the specified export. Each
tag consists of a key and a value, and each key must be unique for the
resource.


=head2 _request_id => Str


=cut

1;
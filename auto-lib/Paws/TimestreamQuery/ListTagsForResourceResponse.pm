
package Paws::TimestreamQuery::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token to resume pagination with a subsequent call to
C<ListTagsForResourceResponse>.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::TimestreamQuery::Tag>]

The tags currently associated with the Timestream resource.


=head2 _request_id => Str


=cut

1;
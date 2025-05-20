
package Paws::DataZone::ListAssetRevisionsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::AssetRevision]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListAssetRevisionsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::AssetRevision>]

The results of the C<ListAssetRevisions> action.


=head2 NextToken => Str

When the number of revisions is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of revisions, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListAssetRevisions> to
list the next set of revisions.


=head2 _request_id => Str


=cut


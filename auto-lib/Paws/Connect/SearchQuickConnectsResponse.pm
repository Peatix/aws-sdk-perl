
package Paws::Connect::SearchQuickConnectsResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QuickConnects => (is => 'ro', isa => 'ArrayRef[Paws::Connect::QuickConnect]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchQuickConnectsResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of quick connects which matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 QuickConnects => ArrayRef[L<Paws::Connect::QuickConnect>]

Information about the quick connects.


=head2 _request_id => Str


=cut


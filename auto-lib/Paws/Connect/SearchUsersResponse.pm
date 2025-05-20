
package Paws::Connect::SearchUsersResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UserSearchSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchUsersResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of users who matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Users => ArrayRef[L<Paws::Connect::UserSearchSummary>]

Information about the users.


=head2 _request_id => Str


=cut



package Paws::WorkSpaces::ListAccountLinksResult;
  use Moose;
  has AccountLinks => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::AccountLink]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ListAccountLinksResult

=head1 ATTRIBUTES


=head2 AccountLinks => ArrayRef[L<Paws::WorkSpaces::AccountLink>]

Information about the account links.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;
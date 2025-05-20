
package Paws::Connect::SearchContactsResponse;
  use Moose;
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ContactSearchSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContactsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Contacts => ArrayRef[L<Paws::Connect::ContactSearchSummary>]

Information about the contacts.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 TotalCount => Int

The total number of contacts which matched your search query.


=head2 _request_id => Str


=cut


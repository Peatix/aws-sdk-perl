
package Paws::Connect::ListAssociatedContactsResponse;
  use Moose;
  has ContactSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AssociatedContactSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListAssociatedContactsResponse

=head1 ATTRIBUTES


=head2 ContactSummaryList => ArrayRef[L<Paws::Connect::AssociatedContactSummary>]

List of the contact summary for all the contacts in contact tree
associated with unique identifier.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut


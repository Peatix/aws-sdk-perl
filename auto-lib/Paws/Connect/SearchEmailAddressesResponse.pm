
package Paws::Connect::SearchEmailAddressesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has EmailAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EmailAddressMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchEmailAddressesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of email addresses which matched your search query.


=head2 EmailAddresses => ArrayRef[L<Paws::Connect::EmailAddressMetadata>]

List of email addresses matching SearchFilter and SearchCriteria


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut


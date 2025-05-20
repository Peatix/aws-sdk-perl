
package Paws::Connect::SearchSecurityProfilesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityProfiles => (is => 'ro', isa => 'ArrayRef[Paws::Connect::SecurityProfileSearchSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchSecurityProfilesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of security profiles which matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 SecurityProfiles => ArrayRef[L<Paws::Connect::SecurityProfileSearchSummary>]

Information about the security profiles.


=head2 _request_id => Str


=cut


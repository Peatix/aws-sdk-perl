
package Paws::Route53Profiles::ListProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProfileSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Route53Profiles::ProfileSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ListProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> resource associations match the specified
criteria, you can submit another C<ListProfiles> request to get the
next group of results. In the next request, specify the value of
C<NextToken> from the previous response.


=head2 ProfileSummaries => ArrayRef[L<Paws::Route53Profiles::ProfileSummary>]

Summary information about the Profiles.


=head2 _request_id => Str


=cut


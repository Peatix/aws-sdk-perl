
package Paws::IVS::ListPlaybackRestrictionPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PlaybackRestrictionPolicies => (is => 'ro', isa => 'ArrayRef[Paws::IVS::PlaybackRestrictionPolicySummary]', traits => ['NameInRequest'], request_name => 'playbackRestrictionPolicies', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListPlaybackRestrictionPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more channels than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> PlaybackRestrictionPolicies => ArrayRef[L<Paws::IVS::PlaybackRestrictionPolicySummary>]

List of the matching policies.


=head2 _request_id => Str


=cut



package Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUserResponse;
  use Moose;
  has ChannelMemberships => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMessaging::ChannelMembershipForAppInstanceUserSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMessaging::ListChannelMembershipsForAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 ChannelMemberships => ArrayRef[L<Paws::ChimeSDKMessaging::ChannelMembershipForAppInstanceUserSummary>]

The information for the requested channel memberships.


=head2 NextToken => Str

The token passed by previous API calls until all requested users are
returned.


=head2 _request_id => Str


=cut


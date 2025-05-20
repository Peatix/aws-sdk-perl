
package Paws::ChimeSDKIdentity::ListAppInstanceBotsResponse;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str');
  has AppInstanceBots => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKIdentity::AppInstanceBotSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::ListAppInstanceBotsResponse

=head1 ATTRIBUTES


=head2 AppInstanceArn => Str

The ARN of the AppInstance.


=head2 AppInstanceBots => ArrayRef[L<Paws::ChimeSDKIdentity::AppInstanceBotSummary>]

The information for each requested C<AppInstanceBot>.


=head2 NextToken => Str

The token passed by previous API calls until all requested bots are
returned.


=head2 _request_id => Str


=cut


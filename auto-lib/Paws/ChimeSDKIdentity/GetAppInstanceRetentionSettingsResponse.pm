
package Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettingsResponse;
  use Moose;
  has AppInstanceRetentionSettings => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceRetentionSettings');
  has InitiateDeletionTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettingsResponse

=head1 ATTRIBUTES


=head2 AppInstanceRetentionSettings => L<Paws::ChimeSDKIdentity::AppInstanceRetentionSettings>

The retention settings for the C<AppInstance>.


=head2 InitiateDeletionTimestamp => Str

The timestamp representing the time at which the specified items are
retained, in Epoch Seconds.


=head2 _request_id => Str


=cut



package Paws::ChimeSDKIdentity::PutAppInstanceRetentionSettingsResponse;
  use Moose;
  has AppInstanceRetentionSettings => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceRetentionSettings');
  has InitiateDeletionTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::PutAppInstanceRetentionSettingsResponse

=head1 ATTRIBUTES


=head2 AppInstanceRetentionSettings => L<Paws::ChimeSDKIdentity::AppInstanceRetentionSettings>

The time in days to retain data. Data type: number.


=head2 InitiateDeletionTimestamp => Str

The time at which the API deletes data.


=head2 _request_id => Str


=cut


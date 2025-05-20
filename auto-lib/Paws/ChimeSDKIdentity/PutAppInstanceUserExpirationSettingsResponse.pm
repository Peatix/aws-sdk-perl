
package Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettingsResponse;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str');
  has ExpirationSettings => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::ExpirationSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettingsResponse

=head1 ATTRIBUTES


=head2 AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.


=head2 ExpirationSettings => L<Paws::ChimeSDKIdentity::ExpirationSettings>

Settings that control the interval after which an C<AppInstanceUser> is
automatically deleted.


=head2 _request_id => Str


=cut



package Paws::ChimeSDKIdentity::CreateAppInstanceAdminResponse;
  use Moose;
  has AppInstanceAdmin => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::Identity');
  has AppInstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::CreateAppInstanceAdminResponse

=head1 ATTRIBUTES


=head2 AppInstanceAdmin => L<Paws::ChimeSDKIdentity::Identity>

The ARN and name of the administrator, the ARN of the C<AppInstance>,
and the created and last-updated timestamps. All timestamps use epoch
milliseconds.


=head2 AppInstanceArn => Str

The ARN of the of the admin for the C<AppInstance>.


=head2 _request_id => Str


=cut


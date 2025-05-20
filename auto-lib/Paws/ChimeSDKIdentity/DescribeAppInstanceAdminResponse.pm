
package Paws::ChimeSDKIdentity::DescribeAppInstanceAdminResponse;
  use Moose;
  has AppInstanceAdmin => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceAdmin');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::DescribeAppInstanceAdminResponse

=head1 ATTRIBUTES


=head2 AppInstanceAdmin => L<Paws::ChimeSDKIdentity::AppInstanceAdmin>

The ARN and name of the C<AppInstanceUser>, the ARN of the
C<AppInstance>, and the created and last-updated timestamps. All
timestamps use epoch milliseconds.


=head2 _request_id => Str


=cut


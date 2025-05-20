
package Paws::ChimeSDKIdentity::DescribeAppInstanceUserResponse;
  use Moose;
  has AppInstanceUser => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceUser');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::DescribeAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 AppInstanceUser => L<Paws::ChimeSDKIdentity::AppInstanceUser>

The name of the C<AppInstanceUser>.


=head2 _request_id => Str


=cut


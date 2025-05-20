
package Paws::ChimeSDKIdentity::DescribeAppInstanceResponse;
  use Moose;
  has AppInstance => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstance');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::DescribeAppInstanceResponse

=head1 ATTRIBUTES


=head2 AppInstance => L<Paws::ChimeSDKIdentity::AppInstance>

The ARN, metadata, created and last-updated timestamps, and the name of
the C<AppInstance>. All timestamps use epoch milliseconds.


=head2 _request_id => Str


=cut


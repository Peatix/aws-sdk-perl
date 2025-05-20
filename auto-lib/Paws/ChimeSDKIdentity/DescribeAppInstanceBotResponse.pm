
package Paws::ChimeSDKIdentity::DescribeAppInstanceBotResponse;
  use Moose;
  has AppInstanceBot => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::AppInstanceBot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::DescribeAppInstanceBotResponse

=head1 ATTRIBUTES


=head2 AppInstanceBot => L<Paws::ChimeSDKIdentity::AppInstanceBot>

The detials of the C<AppInstanceBot>.


=head2 _request_id => Str


=cut


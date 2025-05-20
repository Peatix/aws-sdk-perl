
package Paws::ChimeSDKIdentity::UpdateAppInstanceBotResponse;
  use Moose;
  has AppInstanceBotArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::UpdateAppInstanceBotResponse

=head1 ATTRIBUTES


=head2 AppInstanceBotArn => Str

The ARN of the C<AppInstanceBot>.


=head2 _request_id => Str


=cut


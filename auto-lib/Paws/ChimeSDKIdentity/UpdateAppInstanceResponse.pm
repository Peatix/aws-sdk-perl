
package Paws::ChimeSDKIdentity::UpdateAppInstanceResponse;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::UpdateAppInstanceResponse

=head1 ATTRIBUTES


=head2 AppInstanceArn => Str

The ARN of the C<AppInstance>.


=head2 _request_id => Str


=cut


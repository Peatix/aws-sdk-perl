
package Paws::PinpointSMSVoiceV2::PutResourcePolicyResult;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutResourcePolicyResult

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time when the resource-based policy was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 Policy => Str

The JSON formatted Resource Policy.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and
Voice resource attached to the resource-based policy.


=head2 _request_id => Str


=cut

1;
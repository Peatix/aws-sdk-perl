
package Paws::PinpointSMSVoiceV2::CreateConfigurationSetResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str');
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateConfigurationSetResult

=head1 ATTRIBUTES


=head2 ConfigurationSetArn => Str

The Amazon Resource Name (ARN) of the newly created configuration set.


=head2 ConfigurationSetName => Str

The name of the new configuration set.


=head2 CreatedTimestamp => Str

The time when the configuration set was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of key and value pair tags that's associated with the
configuration set.


=head2 _request_id => Str


=cut

1;

package Paws::PinpointSMSVoiceV2::CreateProtectConfigurationResult;
  use Moose;
  has AccountDefault => (is => 'ro', isa => 'Bool', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateProtectConfigurationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountDefault => Bool

This is true if the protect configuration is set as your account
default protect configuration.


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the protect configuration was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DeletionProtectionEnabled => Bool

When set to true deletion protection is enabled. By default this is set
to false.


=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of key and value pair tags that are associated with the
resource.


=head2 _request_id => Str


=cut

1;

package Paws::PinpointSMSVoiceV2::AssociateProtectConfigurationResult;
  use Moose;
  has ConfigurationSetArn => (is => 'ro', isa => 'Str', required => 1);
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::AssociateProtectConfigurationResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetArn => Str

The Amazon Resource Name (ARN) of the configuration set.


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the ConfigurationSet.


=head2 B<REQUIRED> ProtectConfigurationArn => Str

The Amazon Resource Name (ARN) of the protect configuration.


=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.


=head2 _request_id => Str


=cut

1;
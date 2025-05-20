
package Paws::PinpointSMSVoiceV2::UpdateProtectConfiguration;
  use Moose;
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProtectConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdateProtectConfiguration - Arguments for method UpdateProtectConfiguration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProtectConfiguration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method UpdateProtectConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProtectConfiguration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $UpdateProtectConfigurationResult =
      $sms -voice->UpdateProtectConfiguration(
      ProtectConfigurationId    => 'MyProtectConfigurationIdOrArn',
      DeletionProtectionEnabled => 1,                                 # OPTIONAL
      );

    # Results:
    my $AccountDefault   = $UpdateProtectConfigurationResult->AccountDefault;
    my $CreatedTimestamp = $UpdateProtectConfigurationResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $UpdateProtectConfigurationResult->DeletionProtectionEnabled;
    my $ProtectConfigurationArn =
      $UpdateProtectConfigurationResult->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $UpdateProtectConfigurationResult->ProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::UpdateProtectConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/UpdateProtectConfiguration>

=head1 ATTRIBUTES


=head2 DeletionProtectionEnabled => Bool

When set to true deletion protection is enabled. By default this is set
to false.



=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProtectConfiguration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


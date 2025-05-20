
package Paws::PinpointSMSVoiceV2::CreateProtectConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProtectConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::CreateProtectConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::CreateProtectConfiguration - Arguments for method CreateProtectConfiguration on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProtectConfiguration on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method CreateProtectConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProtectConfiguration.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $CreateProtectConfigurationResult =
      $sms -voice->CreateProtectConfiguration(
      ClientToken               => 'MyClientToken',    # OPTIONAL
      DeletionProtectionEnabled => 1,                  # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AccountDefault   = $CreateProtectConfigurationResult->AccountDefault;
    my $CreatedTimestamp = $CreateProtectConfigurationResult->CreatedTimestamp;
    my $DeletionProtectionEnabled =
      $CreateProtectConfigurationResult->DeletionProtectionEnabled;
    my $ProtectConfigurationArn =
      $CreateProtectConfigurationResult->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $CreateProtectConfigurationResult->ProtectConfigurationId;
    my $Tags = $CreateProtectConfigurationResult->Tags;

# Returns a L<Paws::PinpointSMSVoiceV2::CreateProtectConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/CreateProtectConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 DeletionProtectionEnabled => Bool

When set to true deletion protection is enabled. By default this is set
to false.



=head2 Tags => ArrayRef[L<Paws::PinpointSMSVoiceV2::Tag>]

An array of key and value pair tags that are associated with the
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProtectConfiguration in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


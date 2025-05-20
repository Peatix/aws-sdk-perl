
package Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverride;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationTimestamp => (is => 'ro', isa => 'Str');
  has ProtectConfigurationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProtectConfigurationRuleSetNumberOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverrideResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverride - Arguments for method PutProtectConfigurationRuleSetNumberOverride on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProtectConfigurationRuleSetNumberOverride on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method PutProtectConfigurationRuleSetNumberOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProtectConfigurationRuleSetNumberOverride.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $PutProtectConfigurationRuleSetNumberOverrideResult =
      $sms -voice->PutProtectConfigurationRuleSetNumberOverride(
      Action                 => 'ALLOW',
      DestinationPhoneNumber => 'MyPhoneNumber',
      ProtectConfigurationId => 'MyProtectConfigurationIdOrArn',
      ClientToken            => 'MyClientToken',                   # OPTIONAL
      ExpirationTimestamp    => '1970-01-01T01:00:00',             # OPTIONAL
      );

    # Results:
    my $Action = $PutProtectConfigurationRuleSetNumberOverrideResult->Action;
    my $CreatedTimestamp =
      $PutProtectConfigurationRuleSetNumberOverrideResult->CreatedTimestamp;
    my $DestinationPhoneNumber =
      $PutProtectConfigurationRuleSetNumberOverrideResult
      ->DestinationPhoneNumber;
    my $ExpirationTimestamp =
      $PutProtectConfigurationRuleSetNumberOverrideResult->ExpirationTimestamp;
    my $IsoCountryCode =
      $PutProtectConfigurationRuleSetNumberOverrideResult->IsoCountryCode;
    my $ProtectConfigurationArn =
      $PutProtectConfigurationRuleSetNumberOverrideResult
      ->ProtectConfigurationArn;
    my $ProtectConfigurationId =
      $PutProtectConfigurationRuleSetNumberOverrideResult
      ->ProtectConfigurationId;

# Returns a L<Paws::PinpointSMSVoiceV2::PutProtectConfigurationRuleSetNumberOverrideResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/PutProtectConfigurationRuleSetNumberOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action for the rule to either block or allow messages to the
destination phone number.

Valid values are: C<"ALLOW">, C<"BLOCK">

=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure idempotency.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The destination phone number in E.164 format.



=head2 ExpirationTimestamp => Str

The time the rule will expire at. If C<ExpirationTimestamp> is not set
then the rule does not expire.



=head2 B<REQUIRED> ProtectConfigurationId => Str

The unique identifier for the protect configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProtectConfigurationRuleSetNumberOverride in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


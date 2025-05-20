
package Paws::ChimeSDKVoice::CreateSipRule;
  use Moose;
  has Disabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TargetApplications => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::SipRuleTargetApplication]');
  has TriggerType => (is => 'ro', isa => 'Str', required => 1);
  has TriggerValue => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSipRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateSipRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateSipRule - Arguments for method CreateSipRule on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSipRule on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateSipRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSipRule.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateSipRuleResponse = $voice -chime->CreateSipRule(
      Name               => 'MySipRuleName',
      TriggerType        => 'ToPhoneNumber',
      TriggerValue       => 'MyNonEmptyString',
      Disabled           => 1,                    # OPTIONAL
      TargetApplications => [
        {
          AwsRegion             => 'MyString',           # OPTIONAL
          Priority              => 1,                    # min: 1; OPTIONAL
          SipMediaApplicationId => 'MyNonEmptyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $SipRule = $CreateSipRuleResponse->SipRule;

    # Returns a L<Paws::ChimeSDKVoice::CreateSipRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateSipRule>

=head1 ATTRIBUTES


=head2 Disabled => Bool

Disables or enables a SIP rule. You must disable SIP rules before you
can delete them.



=head2 B<REQUIRED> Name => Str

The name of the SIP rule.



=head2 TargetApplications => ArrayRef[L<Paws::ChimeSDKVoice::SipRuleTargetApplication>]

List of SIP media applications, with priority and AWS Region. Only one
SIP application per AWS Region can be used.



=head2 B<REQUIRED> TriggerType => Str

The type of trigger assigned to the SIP rule in C<TriggerValue>,
currently C<RequestUriHostname> or C<ToPhoneNumber>.

Valid values are: C<"ToPhoneNumber">, C<"RequestUriHostname">

=head2 B<REQUIRED> TriggerValue => Str

If C<TriggerType> is C<RequestUriHostname>, the value can be the
outbound host name of a Voice Connector. If C<TriggerType> is
C<ToPhoneNumber>, the value can be a customer-owned phone number in the
E164 format. The C<SipMediaApplication> specified in the C<SipRule> is
triggered if the request URI in an incoming SIP request matches the
C<RequestUriHostname>, or if the C<To> header in the incoming SIP
request matches the C<ToPhoneNumber> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSipRule in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


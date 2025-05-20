
package Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfiguration;
  use Moose;
  has SipMediaApplicationAlexaSkillConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::SipMediaApplicationAlexaSkillConfiguration');
  has SipMediaApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sipMediaApplicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSipMediaApplicationAlexaSkillConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-media-applications/{sipMediaApplicationId}/alexa-skill-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfiguration - Arguments for method PutSipMediaApplicationAlexaSkillConfiguration on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSipMediaApplicationAlexaSkillConfiguration on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method PutSipMediaApplicationAlexaSkillConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSipMediaApplicationAlexaSkillConfiguration.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $PutSipMediaApplicationAlexaSkillConfigurationResponse =
      $voice -chime->PutSipMediaApplicationAlexaSkillConfiguration(
      SipMediaApplicationId                      => 'MyNonEmptyString',
      SipMediaApplicationAlexaSkillConfiguration => {
        AlexaSkillIds => [
          'MyAlexaSkillId', ...    # max: 64
        ],    # min: 1, max: 1
        AlexaSkillStatus => 'ACTIVE',    # values: ACTIVE, INACTIVE

      },    # OPTIONAL
      );

    # Results:
    my $SipMediaApplicationAlexaSkillConfiguration =
      $PutSipMediaApplicationAlexaSkillConfigurationResponse
      ->SipMediaApplicationAlexaSkillConfiguration;

# Returns a L<Paws::ChimeSDKVoice::PutSipMediaApplicationAlexaSkillConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/PutSipMediaApplicationAlexaSkillConfiguration>

=head1 ATTRIBUTES


=head2 SipMediaApplicationAlexaSkillConfiguration => L<Paws::ChimeSDKVoice::SipMediaApplicationAlexaSkillConfiguration>

The Alexa Skill configuration.



=head2 B<REQUIRED> SipMediaApplicationId => Str

The SIP media application ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSipMediaApplicationAlexaSkillConfiguration in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfiguration;
  use Moose;
  has StreamingConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKVoice::StreamingConfiguration', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVoiceConnectorStreamingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/streaming-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfiguration - Arguments for method PutVoiceConnectorStreamingConfiguration on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorStreamingConfiguration on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method PutVoiceConnectorStreamingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorStreamingConfiguration.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $PutVoiceConnectorStreamingConfigurationResponse =
      $voice -chime->PutVoiceConnectorStreamingConfiguration(
      StreamingConfiguration => {
        DataRetentionInHours       => 1,
        Disabled                   => 1,
        MediaInsightsConfiguration => {
          ConfigurationArn => 'MyArn',    # min: 1, max: 1024; OPTIONAL
          Disabled         => 1,
        },    # OPTIONAL
        StreamingNotificationTargets => [
          {
            NotificationTarget =>
              'EventBridge',    # values: EventBridge, SNS, SQS; OPTIONAL
          },
          ...
        ],    # min: 1, max: 3; OPTIONAL
      },
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $StreamingConfiguration =
      $PutVoiceConnectorStreamingConfigurationResponse->StreamingConfiguration;

# Returns a L<Paws::ChimeSDKVoice::PutVoiceConnectorStreamingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/PutVoiceConnectorStreamingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingConfiguration => L<Paws::ChimeSDKVoice::StreamingConfiguration>

The streaming settings being updated.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorStreamingConfiguration in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


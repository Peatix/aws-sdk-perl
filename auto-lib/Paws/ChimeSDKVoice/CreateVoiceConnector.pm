
package Paws::ChimeSDKVoice::CreateVoiceConnector;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str');
  has IntegrationType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RequireEncryption => (is => 'ro', isa => 'Bool', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateVoiceConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceConnector - Arguments for method CreateVoiceConnector on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceConnector on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateVoiceConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceConnector.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateVoiceConnectorResponse = $voice -chime->CreateVoiceConnector(
      Name              => 'MyVoiceConnectorName',
      RequireEncryption => 1,
      AwsRegion         => 'us-east-1',                          # OPTIONAL
      IntegrationType   => 'CONNECT_CALL_TRANSFER_CONNECTOR',    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $VoiceConnector = $CreateVoiceConnectorResponse->VoiceConnector;

    # Returns a L<Paws::ChimeSDKVoice::CreateVoiceConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateVoiceConnector>

=head1 ATTRIBUTES


=head2 AwsRegion => Str

The AWS Region in which the Amazon Chime SDK Voice Connector is
created. Default value: C<us-east-1> .

Valid values are: C<"us-east-1">, C<"us-west-2">, C<"ca-central-1">, C<"eu-central-1">, C<"eu-west-1">, C<"eu-west-2">, C<"ap-northeast-2">, C<"ap-northeast-1">, C<"ap-southeast-1">, C<"ap-southeast-2">

=head2 IntegrationType => Str

The connectors for use with Amazon Connect.

The following options are available:

=over

=item *

C<CONNECT_CALL_TRANSFER_CONNECTOR> - Enables enterprises to integrate
Amazon Connect with other voice systems to directly transfer voice
calls and metadata without using the public telephone network. They can
use Amazon Connect telephony and Interactive Voice Response (IVR) with
their existing voice systems to modernize the IVR experience of their
existing contact center and their enterprise and branch voice systems.
Additionally, enterprises migrating their contact center to Amazon
Connect can start with Connect telephony and IVR for immediate
modernization ahead of agent migration.

=item *

C<CONNECT_ANALYTICS_CONNECTOR> - Enables enterprises to integrate
Amazon Connect with other voice systems for real-time and post-call
analytics. They can use Amazon Connect Contact Lens with their existing
voice systems to provides call recordings, conversational analytics
(including contact transcript, sensitive data redaction, content
categorization, theme detection, sentiment analysis, real-time alerts,
and post-contact summary), and agent performance evaluations (including
evaluation forms, automated evaluation, supervisor review) with a rich
user experience to display, search and filter customer interactions,
and programmatic access to data streams and the data lake.
Additionally, enterprises migrating their contact center to Amazon
Connect can start with Contact Lens analytics and performance insights
ahead of agent migration.

=back


Valid values are: C<"CONNECT_CALL_TRANSFER_CONNECTOR">, C<"CONNECT_ANALYTICS_CONNECTOR">

=head2 B<REQUIRED> Name => Str

The name of the Voice Connector.



=head2 B<REQUIRED> RequireEncryption => Bool

Enables or disables encryption for the Voice Connector.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKVoice::Tag>]

The tags assigned to the Voice Connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceConnector in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


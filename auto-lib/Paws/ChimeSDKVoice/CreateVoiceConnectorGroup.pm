
package Paws::ChimeSDKVoice::CreateVoiceConnectorGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VoiceConnectorItems => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceConnectorItem]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceConnectorGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connector-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateVoiceConnectorGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceConnectorGroup - Arguments for method CreateVoiceConnectorGroup on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceConnectorGroup on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceConnectorGroup.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateVoiceConnectorGroupResponse =
      $voice -chime->CreateVoiceConnectorGroup(
      Name                => 'MyVoiceConnectorGroupName',
      VoiceConnectorItems => [
        {
          Priority         => 1,                    # min: 1, max: 99
          VoiceConnectorId => 'MyNonEmptyString',

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $VoiceConnectorGroup =
      $CreateVoiceConnectorGroupResponse->VoiceConnectorGroup;

   # Returns a L<Paws::ChimeSDKVoice::CreateVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the Voice Connector group.



=head2 VoiceConnectorItems => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnectorItem>]

Lists the Voice Connectors that inbound calls are routed to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceConnectorGroup in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


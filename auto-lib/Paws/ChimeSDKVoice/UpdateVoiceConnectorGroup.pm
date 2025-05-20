
package Paws::ChimeSDKVoice::UpdateVoiceConnectorGroup;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VoiceConnectorGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorGroupId', required => 1);
  has VoiceConnectorItems => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::VoiceConnectorItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVoiceConnectorGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connector-groups/{voiceConnectorGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::UpdateVoiceConnectorGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdateVoiceConnectorGroup - Arguments for method UpdateVoiceConnectorGroup on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVoiceConnectorGroup on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method UpdateVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVoiceConnectorGroup.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $UpdateVoiceConnectorGroupResponse =
      $voice -chime->UpdateVoiceConnectorGroup(
      Name                  => 'MyVoiceConnectorGroupName',
      VoiceConnectorGroupId => 'MyNonEmptyString',
      VoiceConnectorItems   => [
        {
          Priority         => 1,                    # min: 1, max: 99
          VoiceConnectorId => 'MyNonEmptyString',

        },
        ...
      ],

      );

    # Results:
    my $VoiceConnectorGroup =
      $UpdateVoiceConnectorGroupResponse->VoiceConnectorGroup;

   # Returns a L<Paws::ChimeSDKVoice::UpdateVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/UpdateVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the Voice Connector group.



=head2 B<REQUIRED> VoiceConnectorGroupId => Str

The Voice Connector ID.



=head2 B<REQUIRED> VoiceConnectorItems => ArrayRef[L<Paws::ChimeSDKVoice::VoiceConnectorItem>]

The C<VoiceConnectorItems> to associate with the Voice Connector group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVoiceConnectorGroup in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::ChimeSDKVoice::StartSpeakerSearchTask;
  use Moose;
  has CallLeg => (is => 'ro', isa => 'Str');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VoiceConnectorId', required => 1);
  has VoiceProfileDomainId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSpeakerSearchTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{VoiceConnectorId}/speaker-search-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::StartSpeakerSearchTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::StartSpeakerSearchTask - Arguments for method StartSpeakerSearchTask on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSpeakerSearchTask on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method StartSpeakerSearchTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSpeakerSearchTask.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $StartSpeakerSearchTaskResponse = $voice -chime->StartSpeakerSearchTask(
      TransactionId        => 'MyNonEmptyString256',
      VoiceConnectorId     => 'MyNonEmptyString128',
      VoiceProfileDomainId => 'MyNonEmptyString256',
      CallLeg              => 'Caller',                # OPTIONAL
      ClientRequestToken   => 'MyClientRequestId',     # OPTIONAL
    );

    # Results:
    my $SpeakerSearchTask = $StartSpeakerSearchTaskResponse->SpeakerSearchTask;

    # Returns a L<Paws::ChimeSDKVoice::StartSpeakerSearchTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/StartSpeakerSearchTask>

=head1 ATTRIBUTES


=head2 CallLeg => Str

Specifies which call leg to stream for speaker search.

Valid values are: C<"Caller">, C<"Callee">

=head2 ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different speaker search tasks.



=head2 B<REQUIRED> TransactionId => Str

The transaction ID of the call being analyzed.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.



=head2 B<REQUIRED> VoiceProfileDomainId => Str

The ID of the voice profile domain that will store the voice profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSpeakerSearchTask in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


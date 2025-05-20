
package Paws::ChimeSDKVoice::StartVoiceToneAnalysisTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VoiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartVoiceToneAnalysisTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::StartVoiceToneAnalysisTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::StartVoiceToneAnalysisTask - Arguments for method StartVoiceToneAnalysisTask on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartVoiceToneAnalysisTask on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method StartVoiceToneAnalysisTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartVoiceToneAnalysisTask.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $StartVoiceToneAnalysisTaskResponse =
      $voice -chime->StartVoiceToneAnalysisTask(
      LanguageCode       => 'en-US',
      TransactionId      => 'MyNonEmptyString256',
      VoiceConnectorId   => 'MyNonEmptyString128',
      ClientRequestToken => 'MyClientRequestId',     # OPTIONAL
      );

    # Results:
    my $VoiceToneAnalysisTask =
      $StartVoiceToneAnalysisTaskResponse->VoiceToneAnalysisTask;

  # Returns a L<Paws::ChimeSDKVoice::StartVoiceToneAnalysisTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/StartVoiceToneAnalysisTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different voice tone analysis tasks.



=head2 B<REQUIRED> LanguageCode => Str

The language code.

Valid values are: C<"en-US">

=head2 B<REQUIRED> TransactionId => Str

The transaction ID.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartVoiceToneAnalysisTask in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


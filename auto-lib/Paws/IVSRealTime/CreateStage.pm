
package Paws::IVSRealTime::CreateStage;
  use Moose;
  has AutoParticipantRecordingConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::AutoParticipantRecordingConfiguration', traits => ['NameInRequest'], request_name => 'autoParticipantRecordingConfiguration');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ParticipantTokenConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::ParticipantTokenConfiguration]', traits => ['NameInRequest'], request_name => 'participantTokenConfigurations');
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateStage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::CreateStageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateStage - Arguments for method CreateStage on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStage on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method CreateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStage.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $CreateStageResponse = $ivsrealtime->CreateStage(
      AutoParticipantRecordingConfiguration => {
        StorageConfigurationArn =>
          'MyAutoParticipantRecordingStorageConfigurationArn',    # max: 128
        HlsConfiguration => {
          TargetSegmentDurationSeconds => 1,    # min: 2, max: 10; OPTIONAL
        },    # OPTIONAL
        MediaTypes => [
          'AUDIO_VIDEO', ...    # values: AUDIO_VIDEO, AUDIO_ONLY, NONE
        ],    # max: 1; OPTIONAL
        RecordingReconnectWindowSeconds => 1,    # max: 300; OPTIONAL
        ThumbnailConfiguration          => {
          RecordingMode => 'INTERVAL',    # values: INTERVAL, DISABLED; OPTIONAL
          Storage       => [
            'SEQUENTIAL', ...             # values: SEQUENTIAL, LATEST
          ],    # max: 2; OPTIONAL
          TargetIntervalSeconds => 1,    # min: 1, max: 86400; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Name                           => 'MyStageName',    # OPTIONAL
      ParticipantTokenConfigurations => [
        {
          Attributes   => { 'MyString' => 'MyString', },    # OPTIONAL
          Capabilities => [
            'PUBLISH', ...    # values: PUBLISH, SUBSCRIBE
          ],    # max: 2; OPTIONAL
          Duration => 1,                          # min: 1, max: 20160; OPTIONAL
          UserId   => 'MyParticipantTokenUserId', # max: 128; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ParticipantTokens = $CreateStageResponse->ParticipantTokens;
    my $Stage             = $CreateStageResponse->Stage;

    # Returns a L<Paws::IVSRealTime::CreateStageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/CreateStage>

=head1 ATTRIBUTES


=head2 AutoParticipantRecordingConfiguration => L<Paws::IVSRealTime::AutoParticipantRecordingConfiguration>

Configuration object for individual participant recording, to attach to
the new stage.



=head2 Name => Str

Optional name that can be specified for the stage being created.



=head2 ParticipantTokenConfigurations => ArrayRef[L<Paws::IVSRealTime::ParticipantTokenConfiguration>]

Array of participant token configuration objects to attach to the new
stage.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStage in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


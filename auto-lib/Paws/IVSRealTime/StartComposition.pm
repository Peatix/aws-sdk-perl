
package Paws::IVSRealTime::StartComposition;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::DestinationConfiguration]', traits => ['NameInRequest'], request_name => 'destinations', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idempotencyToken');
  has Layout => (is => 'ro', isa => 'Paws::IVSRealTime::LayoutConfiguration', traits => ['NameInRequest'], request_name => 'layout');
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartComposition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartComposition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::StartCompositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::StartComposition - Arguments for method StartComposition on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartComposition on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method StartComposition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartComposition.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $StartCompositionResponse = $ivsrealtime->StartComposition(
      Destinations => [
        {
          Channel => {
            ChannelArn              => 'MyChannelArn',    # min: 1, max: 128
            EncoderConfigurationArn =>
              'MyEncoderConfigurationArn',    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          Name => 'MyDestinationConfigurationName',    # max: 128; OPTIONAL
          S3   => {
            EncoderConfigurationArns => [
              'MyEncoderConfigurationArn', ...    # min: 1, max: 128; OPTIONAL
            ],    # min: 1, max: 1
            StorageConfigurationArn =>
              'MyStorageConfigurationArn',    # min: 1, max: 128
            RecordingConfiguration => {
              Format           => 'HLS',      # values: HLS; OPTIONAL
              HlsConfiguration => {
                TargetSegmentDurationSeconds => 1,   # min: 2, max: 10; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            ThumbnailConfigurations => [
              {
                Storage => [
                  'SEQUENTIAL', ...    # values: SEQUENTIAL, LATEST
                ],    # max: 2; OPTIONAL
                TargetIntervalSeconds => 1,    # min: 1, max: 86400; OPTIONAL
              },
              ...
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      StageArn         => 'MyStageArn',
      IdempotencyToken => 'MyCompositionClientToken',    # OPTIONAL
      Layout           => {
        Grid => {
          FeaturedParticipantAttribute => 'MyAttributeKey', # max: 128; OPTIONAL
          GridGap                      => 1,                # OPTIONAL
          OmitStoppedVideo             => 1,                # OPTIONAL
          VideoAspectRatio             =>
            'AUTO',    # values: AUTO, VIDEO, SQUARE, PORTRAIT; OPTIONAL
          VideoFillMode => 'FILL',    # values: FILL, COVER, CONTAIN; OPTIONAL
        },    # OPTIONAL
        Pip => {
          FeaturedParticipantAttribute => 'MyAttributeKey', # max: 128; OPTIONAL
          GridGap                      => 1,                # OPTIONAL
          OmitStoppedVideo             => 1,                # OPTIONAL
          PipBehavior => 'STATIC',    # values: STATIC, DYNAMIC; OPTIONAL
          PipHeight   => 1,           # min: 1; OPTIONAL
          PipOffset   => 1,           # OPTIONAL
          PipParticipantAttribute => 'MyAttributeKey',    # max: 128; OPTIONAL
          PipPosition             => 'TOP_LEFT'
          ,   # values: TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT; OPTIONAL
          PipWidth      => 1,         # min: 1; OPTIONAL
          VideoFillMode => 'FILL',    # values: FILL, COVER, CONTAIN; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Composition = $StartCompositionResponse->Composition;

    # Returns a L<Paws::IVSRealTime::StartCompositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/StartComposition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destinations => ArrayRef[L<Paws::IVSRealTime::DestinationConfiguration>]

Array of destination configuration.



=head2 IdempotencyToken => Str

Idempotency token.



=head2 Layout => L<Paws::IVSRealTime::LayoutConfiguration>

Layout object to configure composition parameters.



=head2 B<REQUIRED> StageArn => Str

ARN of the stage to be used for compositing.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartComposition in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


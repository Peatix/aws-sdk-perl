
package Paws::BedrockDataAutomation::CreateDataAutomationProject;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomOutputConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomation::CustomOutputConfiguration', traits => ['NameInRequest'], request_name => 'customOutputConfiguration');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomation::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration');
  has OverrideConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomation::OverrideConfiguration', traits => ['NameInRequest'], request_name => 'overrideConfiguration');
  has ProjectDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectDescription');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has ProjectStage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectStage');
  has StandardOutputConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomation::StandardOutputConfiguration', traits => ['NameInRequest'], request_name => 'standardOutputConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomation::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataAutomationProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/data-automation-projects/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomation::CreateDataAutomationProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomation::CreateDataAutomationProject - Arguments for method CreateDataAutomationProject on L<Paws::BedrockDataAutomation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataAutomationProject on the
L<Data Automation for Amazon Bedrock|Paws::BedrockDataAutomation> service. Use the attributes of this class
as arguments to method CreateDataAutomationProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataAutomationProject.

=head1 SYNOPSIS

    my $bedrock-data-automation = Paws->service('BedrockDataAutomation');
    my $CreateDataAutomationProjectResponse =
      $bedrock -data-automation->CreateDataAutomationProject(
      ProjectName                 => 'MyDataAutomationProjectName',
      StandardOutputConfiguration => {
        Audio => {
          Extraction => {
            Category => {
              State => 'ENABLED',    # values: ENABLED, DISABLED
              Types => [
                'AUDIO_CONTENT_MODERATION',
                ... # values: AUDIO_CONTENT_MODERATION, TRANSCRIPT, TOPIC_CONTENT_MODERATION
              ],    # OPTIONAL
            },

          },    # OPTIONAL
          GenerativeField => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
            Types => [
              'AUDIO_SUMMARY', ...   # values: AUDIO_SUMMARY, IAB, TOPIC_SUMMARY
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Document => {
          Extraction => {
            BoundingBox => {
              State => 'ENABLED',    # values: ENABLED, DISABLED

            },
            Granularity => {
              Types => [
                'DOCUMENT', ...    # values: DOCUMENT, PAGE, ELEMENT, WORD, LINE
              ],    # OPTIONAL
            },

          },    # OPTIONAL
          GenerativeField => {
            State => 'ENABLED',    # values: ENABLED, DISABLED

          },    # OPTIONAL
          OutputFormat => {
            AdditionalFileFormat => {
              State => 'ENABLED',    # values: ENABLED, DISABLED

            },
            TextFormat => {
              Types => [
                'PLAIN_TEXT', ...    # values: PLAIN_TEXT, MARKDOWN, HTML, CSV
              ],    # OPTIONAL
            },

          },    # OPTIONAL
        },    # OPTIONAL
        Image => {
          Extraction => {
            BoundingBox => {
              State => 'ENABLED',    # values: ENABLED, DISABLED

            },
            Category => {
              State => 'ENABLED',    # values: ENABLED, DISABLED
              Types => [
                'CONTENT_MODERATION',
                ...    # values: CONTENT_MODERATION, TEXT_DETECTION, LOGOS
              ],    # OPTIONAL
            },

          },    # OPTIONAL
          GenerativeField => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
            Types => [
              'IMAGE_SUMMARY', ...    # values: IMAGE_SUMMARY, IAB
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Video => {
          Extraction => {
            BoundingBox => {
              State => 'ENABLED',    # values: ENABLED, DISABLED

            },
            Category => {
              State => 'ENABLED',    # values: ENABLED, DISABLED
              Types => [
                'CONTENT_MODERATION',
                ... # values: CONTENT_MODERATION, TEXT_DETECTION, TRANSCRIPT, LOGOS
              ],    # OPTIONAL
            },

          },    # OPTIONAL
          GenerativeField => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
            Types => [
              'VIDEO_SUMMARY', ... # values: VIDEO_SUMMARY, IAB, CHAPTER_SUMMARY
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ClientToken               => 'MyClientToken',    # OPTIONAL
      CustomOutputConfiguration => {
        Blueprints => [
          {
            BlueprintArn   => 'MyBlueprintArn',    # max: 128
            BlueprintStage =>
              'DEVELOPMENT',    # values: DEVELOPMENT, LIVE; OPTIONAL
            BlueprintVersion =>
              'MyBlueprintVersion',    # min: 1, max: 128; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      EncryptionConfiguration => {
        KmsKeyId             => 'MyKmsKeyId',    # min: 1, max: 2048
        KmsEncryptionContext => {
          'MyEncryptionContextKey' => 'MyEncryptionContextValue'
          ,    # key: min: 1, max: 2000, value: min: 1, max: 2000
        },    # min: 1; OPTIONAL
      },    # OPTIONAL
      OverrideConfiguration => {
        Audio => {
          ModalityProcessing => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
          },    # OPTIONAL
        },    # OPTIONAL
        Document => {
          ModalityProcessing => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
          },    # OPTIONAL
          Splitter => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
          },    # OPTIONAL
        },    # OPTIONAL
        Image => {
          ModalityProcessing => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
          },    # OPTIONAL
        },    # OPTIONAL
        ModalityRouting => {
          Jpeg => 'IMAGE',    # values: IMAGE, DOCUMENT, AUDIO, VIDEO; OPTIONAL
          Mov  => 'IMAGE',    # values: IMAGE, DOCUMENT, AUDIO, VIDEO; OPTIONAL
          Mp4  => 'IMAGE',    # values: IMAGE, DOCUMENT, AUDIO, VIDEO; OPTIONAL
          Png  => 'IMAGE',    # values: IMAGE, DOCUMENT, AUDIO, VIDEO; OPTIONAL
        },    # OPTIONAL
        Video => {
          ModalityProcessing => {
            State => 'ENABLED',    # values: ENABLED, DISABLED
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ProjectDescription => 'MyDataAutomationProjectDescription',    # OPTIONAL
      ProjectStage       => 'DEVELOPMENT',                           # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ProjectArn   = $CreateDataAutomationProjectResponse->ProjectArn;
    my $ProjectStage = $CreateDataAutomationProjectResponse->ProjectStage;
    my $Status       = $CreateDataAutomationProjectResponse->Status;

# Returns a L<Paws::BedrockDataAutomation::CreateDataAutomationProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation/CreateDataAutomationProject>

=head1 ATTRIBUTES


=head2 ClientToken => Str





=head2 CustomOutputConfiguration => L<Paws::BedrockDataAutomation::CustomOutputConfiguration>





=head2 EncryptionConfiguration => L<Paws::BedrockDataAutomation::EncryptionConfiguration>





=head2 OverrideConfiguration => L<Paws::BedrockDataAutomation::OverrideConfiguration>





=head2 ProjectDescription => Str





=head2 B<REQUIRED> ProjectName => Str





=head2 ProjectStage => Str



Valid values are: C<"DEVELOPMENT">, C<"LIVE">

=head2 B<REQUIRED> StandardOutputConfiguration => L<Paws::BedrockDataAutomation::StandardOutputConfiguration>





=head2 Tags => ArrayRef[L<Paws::BedrockDataAutomation::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataAutomationProject in L<Paws::BedrockDataAutomation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


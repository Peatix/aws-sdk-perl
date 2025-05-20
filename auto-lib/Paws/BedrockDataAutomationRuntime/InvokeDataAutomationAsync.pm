
package Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsync;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomationRuntime::Blueprint]', traits => ['NameInRequest'], request_name => 'blueprints' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DataAutomationConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::DataAutomationConfiguration', traits => ['NameInRequest'], request_name => 'dataAutomationConfiguration' );
  has DataAutomationProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataAutomationProfileArn' , required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration' );
  has InputConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::InputConfiguration', traits => ['NameInRequest'], request_name => 'inputConfiguration' , required => 1);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::NotificationConfiguration', traits => ['NameInRequest'], request_name => 'notificationConfiguration' );
  has OutputConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::OutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BedrockDataAutomationRuntime::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeDataAutomationAsync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsyncResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsync - Arguments for method InvokeDataAutomationAsync on L<Paws::BedrockDataAutomationRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeDataAutomationAsync on the
L<Runtime for Amazon Bedrock Data Automation|Paws::BedrockDataAutomationRuntime> service. Use the attributes of this class
as arguments to method InvokeDataAutomationAsync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeDataAutomationAsync.

=head1 SYNOPSIS

    my $bedrock-data-automation-runtime = Paws->service('BedrockDataAutomationRuntime');
    my $InvokeDataAutomationAsyncResponse =
      $bedrock -data-automation-runtime->InvokeDataAutomationAsync(
      DataAutomationProfileArn => 'MyDataAutomationProfileArn',
      InputConfiguration       => {
        S3Uri                        => 'MyS3Uri',    # min: 1, max: 1024
        AssetProcessingConfiguration => {
          Video => {
            SegmentConfiguration => {
              TimestampSegment => {
                EndTimeMillis   => 1,    # min: 300000
                StartTimeMillis => 1,

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      OutputConfiguration => {
        S3Uri => 'MyS3Uri',    # min: 1, max: 1024

      },
      Blueprints => [
        {
          BlueprintArn => 'MyBlueprintArn',    # max: 128
          Stage   => 'DEVELOPMENT',        # values: DEVELOPMENT, LIVE; OPTIONAL
          Version => 'MyBlueprintVersion', # min: 1, max: 128; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken                 => 'MyIdempotencyToken',    # OPTIONAL
      DataAutomationConfiguration => {
        DataAutomationProjectArn => 'MyDataAutomationArn',    # min: 1, max: 128
        Stage => 'LIVE',    # values: LIVE, DEVELOPMENT; OPTIONAL
      },    # OPTIONAL
      EncryptionConfiguration => {
        KmsKeyId             => 'MyKMSKeyId',    # min: 1, max: 2048
        KmsEncryptionContext => {
          'MyEncryptionContextKey' => 'MyEncryptionContextValue'
          ,    # key: min: 1, max: 2000, value: min: 1, max: 2000
        },    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      NotificationConfiguration => {
        EventBridgeConfiguration => {
          EventBridgeEnabled => 1,

        },

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $InvocationArn = $InvokeDataAutomationAsyncResponse->InvocationArn;

# Returns a L<Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsyncResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime/InvokeDataAutomationAsync>

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Blueprint>]

Blueprint list.



=head2 ClientToken => Str

Idempotency token.



=head2 DataAutomationConfiguration => L<Paws::BedrockDataAutomationRuntime::DataAutomationConfiguration>

Data automation configuration.



=head2 B<REQUIRED> DataAutomationProfileArn => Str

Data automation profile ARN



=head2 EncryptionConfiguration => L<Paws::BedrockDataAutomationRuntime::EncryptionConfiguration>

Encryption configuration.



=head2 B<REQUIRED> InputConfiguration => L<Paws::BedrockDataAutomationRuntime::InputConfiguration>

Input configuration.



=head2 NotificationConfiguration => L<Paws::BedrockDataAutomationRuntime::NotificationConfiguration>

Notification configuration.



=head2 B<REQUIRED> OutputConfiguration => L<Paws::BedrockDataAutomationRuntime::OutputConfiguration>

Output configuration.



=head2 Tags => ArrayRef[L<Paws::BedrockDataAutomationRuntime::Tag>]

List of tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeDataAutomationAsync in L<Paws::BedrockDataAutomationRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


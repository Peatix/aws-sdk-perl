
package Paws::PinpointSMSVoiceV2::UpdateEventDestination;
  use Moose;
  has CloudWatchLogsDestination => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::CloudWatchLogsDestination');
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventDestinationName => (is => 'ro', isa => 'Str', required => 1);
  has KinesisFirehoseDestination => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::KinesisFirehoseDestination');
  has MatchingEventTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnsDestination => (is => 'ro', isa => 'Paws::PinpointSMSVoiceV2::SnsDestination');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::UpdateEventDestinationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::UpdateEventDestination - Arguments for method UpdateEventDestination on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventDestination on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method UpdateEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventDestination.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $UpdateEventDestinationResult = $sms -voice->UpdateEventDestination(
      ConfigurationSetName      => 'MyConfigurationSetNameOrArn',
      EventDestinationName      => 'MyEventDestinationName',
      CloudWatchLogsDestination => {
        IamRoleArn  => 'MyIamRoleArn',     # min: 20, max: 2048
        LogGroupArn => 'MyLogGroupArn',    # min: 20, max: 2048

      },    # OPTIONAL
      Enabled                    => 1,    # OPTIONAL
      KinesisFirehoseDestination => {
        DeliveryStreamArn => 'MyDeliveryStreamArn',    # min: 20, max: 2048
        IamRoleArn        => 'MyIamRoleArn',           # min: 20, max: 2048

      },    # OPTIONAL
      MatchingEventTypes => [
        'ALL',
        ... # values: ALL, TEXT_ALL, TEXT_SENT, TEXT_PENDING, TEXT_QUEUED, TEXT_SUCCESSFUL, TEXT_DELIVERED, TEXT_INVALID, TEXT_INVALID_MESSAGE, TEXT_UNREACHABLE, TEXT_CARRIER_UNREACHABLE, TEXT_BLOCKED, TEXT_CARRIER_BLOCKED, TEXT_SPAM, TEXT_UNKNOWN, TEXT_TTL_EXPIRED, TEXT_PROTECT_BLOCKED, VOICE_ALL, VOICE_INITIATED, VOICE_RINGING, VOICE_ANSWERED, VOICE_COMPLETED, VOICE_BUSY, VOICE_NO_ANSWER, VOICE_FAILED, VOICE_TTL_EXPIRED, MEDIA_ALL, MEDIA_PENDING, MEDIA_QUEUED, MEDIA_SUCCESSFUL, MEDIA_DELIVERED, MEDIA_INVALID, MEDIA_INVALID_MESSAGE, MEDIA_UNREACHABLE, MEDIA_CARRIER_UNREACHABLE, MEDIA_BLOCKED, MEDIA_CARRIER_BLOCKED, MEDIA_SPAM, MEDIA_UNKNOWN, MEDIA_TTL_EXPIRED, MEDIA_FILE_INACCESSIBLE, MEDIA_FILE_TYPE_UNSUPPORTED, MEDIA_FILE_SIZE_EXCEEDED
      ],    # OPTIONAL
      SnsDestination => {
        TopicArn => 'MySnsTopicArn',    # min: 20, max: 2048

      },    # OPTIONAL
    );

    # Results:
    my $ConfigurationSetArn =
      $UpdateEventDestinationResult->ConfigurationSetArn;
    my $ConfigurationSetName =
      $UpdateEventDestinationResult->ConfigurationSetName;
    my $EventDestination = $UpdateEventDestinationResult->EventDestination;

   # Returns a L<Paws::PinpointSMSVoiceV2::UpdateEventDestinationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/UpdateEventDestination>

=head1 ATTRIBUTES


=head2 CloudWatchLogsDestination => L<Paws::PinpointSMSVoiceV2::CloudWatchLogsDestination>

An object that contains information about an event destination that
sends data to CloudWatch Logs.



=head2 B<REQUIRED> ConfigurationSetName => Str

The configuration set to update with the new event destination. Valid
values for this can be the ConfigurationSetName or ConfigurationSetArn.



=head2 Enabled => Bool

When set to true logging is enabled.



=head2 B<REQUIRED> EventDestinationName => Str

The name to use for the event destination.



=head2 KinesisFirehoseDestination => L<Paws::PinpointSMSVoiceV2::KinesisFirehoseDestination>

An object that contains information about an event destination for
logging to Firehose.



=head2 MatchingEventTypes => ArrayRef[Str|Undef]

An array of event types that determine which events to log.

The C<TEXT_SENT> event type is not supported.



=head2 SnsDestination => L<Paws::PinpointSMSVoiceV2::SnsDestination>

An object that contains information about an event destination that
sends data to Amazon SNS.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventDestination in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


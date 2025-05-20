
package Paws::PinpointSMSVoiceV2::PutMessageFeedback;
  use Moose;
  has MessageFeedbackStatus => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMessageFeedback');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::PutMessageFeedbackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutMessageFeedback - Arguments for method PutMessageFeedback on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMessageFeedback on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method PutMessageFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMessageFeedback.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $PutMessageFeedbackResult = $sms -voice->PutMessageFeedback(
      MessageFeedbackStatus => 'RECEIVED',
      MessageId             => 'MyMessageId',

    );

    # Results:
    my $MessageFeedbackStatus =
      $PutMessageFeedbackResult->MessageFeedbackStatus;
    my $MessageId = $PutMessageFeedbackResult->MessageId;

    # Returns a L<Paws::PinpointSMSVoiceV2::PutMessageFeedbackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/PutMessageFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageFeedbackStatus => Str

Set the message feedback to be either C<RECEIVED> or C<FAILED>.

Valid values are: C<"RECEIVED">, C<"FAILED">

=head2 B<REQUIRED> MessageId => Str

The unique identifier for the message.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMessageFeedback in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


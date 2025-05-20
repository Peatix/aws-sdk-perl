
package Paws::PinpointSMSVoiceV2::PutKeyword;
  use Moose;
  has Keyword => (is => 'ro', isa => 'Str', required => 1);
  has KeywordAction => (is => 'ro', isa => 'Str');
  has KeywordMessage => (is => 'ro', isa => 'Str', required => 1);
  has OriginationIdentity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutKeyword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::PutKeywordResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutKeyword - Arguments for method PutKeyword on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutKeyword on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method PutKeyword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutKeyword.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $PutKeywordResult = $sms -voice->PutKeyword(
      Keyword             => 'MyKeyword',
      KeywordMessage      => 'MyKeywordMessage',
      OriginationIdentity => 'MyPhoneOrPoolIdOrArn',
      KeywordAction       => 'AUTOMATIC_RESPONSE',     # OPTIONAL
    );

    # Results:
    my $Keyword                = $PutKeywordResult->Keyword;
    my $KeywordAction          = $PutKeywordResult->KeywordAction;
    my $KeywordMessage         = $PutKeywordResult->KeywordMessage;
    my $OriginationIdentity    = $PutKeywordResult->OriginationIdentity;
    my $OriginationIdentityArn = $PutKeywordResult->OriginationIdentityArn;

    # Returns a L<Paws::PinpointSMSVoiceV2::PutKeywordResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/PutKeyword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Keyword => Str

The new keyword to add.



=head2 KeywordAction => Str

The action to perform for the new keyword when it is received.

=over

=item *

AUTOMATIC_RESPONSE: A message is sent to the recipient.

=item *

OPT_OUT: Keeps the recipient from receiving future messages.

=item *

OPT_IN: The recipient wants to receive future messages.

=back


Valid values are: C<"AUTOMATIC_RESPONSE">, C<"OPT_OUT">, C<"OPT_IN">

=head2 B<REQUIRED> KeywordMessage => Str

The message associated with the keyword.



=head2 B<REQUIRED> OriginationIdentity => Str

The origination identity to use such as a PhoneNumberId,
PhoneNumberArn, SenderId or SenderIdArn. You can use
DescribePhoneNumbers get the values for PhoneNumberId and
PhoneNumberArn while DescribeSenderIds can be used to get the values
for SenderId and SenderIdArn.

If you are using a shared AWS End User Messaging SMS and Voice resource
then you must use the full Amazon Resource Name(ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutKeyword in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


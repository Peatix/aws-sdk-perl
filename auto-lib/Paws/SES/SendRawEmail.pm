
package Paws::SES::SendRawEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has FromArn => (is => 'ro', isa => 'Str');
  has RawMessage => (is => 'ro', isa => 'Paws::SES::RawMessage', required => 1);
  has ReturnPathArn => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SES::MessageTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SendRawEmailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendRawEmail - Arguments for method SendRawEmail on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendRawEmail on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SendRawEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendRawEmail.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SendRawEmail
    # The following example sends an email with an attachment:
    my $SendRawEmailResponse = $email->SendRawEmail(
      'Destinations' => [

      ],
      'FromArn'    => '',
      'RawMessage' => {
        'Data' =>
'From: sender@example.com\nTo: recipient@example.com\nSubject: Test email (contains an attachment)\nMIME-Version: 1.0\nContent-type: Multipart/Mixed; boundary="NextPart"\n\n--NextPart\nContent-Type: text/plain\n\nThis is the message body.\n\n--NextPart\nContent-Type: text/plain;\nContent-Disposition: attachment; filename="attachment.txt"\n\nThis is the text in the attachment.\n\n--NextPart--'
      },
      'ReturnPathArn' => '',
      'Source'        => '',
      'SourceArn'     => ''
    );

    # Results:
    my $MessageId = $SendRawEmailResponse->MessageId;

    # Returns a L<Paws::SES::SendRawEmailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set to use when you send an email using
C<SendRawEmail>.



=head2 Destinations => ArrayRef[Str|Undef]

A list of destinations for the message, consisting of To:, CC:, and
BCC: addresses.



=head2 FromArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to specify a particular "From" address in the header
of the raw email.

Instead of using this parameter, you can use the X-header
C<X-SES-FROM-ARN> in the raw message of the email. If you use both the
C<FromArn> parameter and the corresponding X-header, Amazon SES uses
the value of the C<FromArn> parameter.

For information about when to use this parameter, see the description
of C<SendRawEmail> in this guide, or see the Amazon SES Developer Guide
(https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html).



=head2 B<REQUIRED> RawMessage => L<Paws::SES::RawMessage>

The raw email message itself. The message has to meet the following
criteria:

=over

=item *

The message has to contain a header and a body, separated by a blank
line.

=item *

All of the required header fields must be present in the message.

=item *

Each part of a multipart MIME message must be formatted properly.

=item *

Attachments must be of a content type that Amazon SES supports. For a
list on unsupported content types, see Unsupported Attachment Types
(https://docs.aws.amazon.com/ses/latest/dg/mime-types.html) in the
I<Amazon SES Developer Guide>.

=item *

The entire message must be base64-encoded.

=item *

If any of the MIME parts in your message contain content that is
outside of the 7-bit ASCII character range, we highly recommend that
you encode that content. For more information, see Sending Raw Email
(https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html) in the
I<Amazon SES Developer Guide>.

=item *

Per RFC 5321 (https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6),
the maximum length of each line of text, including the E<lt>CRLFE<gt>,
must not exceed 1,000 characters.

=back




=head2 ReturnPathArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to use the email address specified in the
C<ReturnPath> parameter.

For example, if the owner of C<example.com> (which has ARN
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>) attaches a
policy to it that authorizes you to use C<feedback@example.com>, then
you would specify the C<ReturnPathArn> to be
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>, and the
C<ReturnPath> to be C<feedback@example.com>.

Instead of using this parameter, you can use the X-header
C<X-SES-RETURN-PATH-ARN> in the raw message of the email. If you use
both the C<ReturnPathArn> parameter and the corresponding X-header,
Amazon SES uses the value of the C<ReturnPathArn> parameter.

For information about when to use this parameter, see the description
of C<SendRawEmail> in this guide, or see the Amazon SES Developer Guide
(https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html).



=head2 Source => Str

The identity's email address. If you do not provide a value for this
parameter, you must specify a "From" address in the raw text of the
message. (You can also specify both.)

Amazon SES does not support the SMTPUTF8 extension, as described
inRFC6531 (https://tools.ietf.org/html/rfc6531). For this reason, the
email address string must be 7-bit ASCII. If you want to send to or
from email addresses that contain Unicode characters in the domain part
of an address, you must encode the domain using Punycode. Punycode is
not permitted in the local part of the email address (the part before
the @ sign) nor in the "friendly from" name. If you want to use Unicode
characters in the "friendly from" name, you must encode the "friendly
from" name using MIME encoded-word syntax, as described in Sending raw
email using the Amazon SES API
(https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html). For
more information about Punycode, see RFC 3492
(http://tools.ietf.org/html/rfc3492).

If you specify the C<Source> parameter and have feedback forwarding
enabled, then bounces and complaints are sent to this email address.
This takes precedence over any Return-Path header that you might
include in the raw text of the message.



=head2 SourceArn => Str

This parameter is used only for sending authorization. It is the ARN of
the identity that is associated with the sending authorization policy
that permits you to send for the email address specified in the
C<Source> parameter.

For example, if the owner of C<example.com> (which has ARN
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>) attaches a
policy to it that authorizes you to send from C<user@example.com>, then
you would specify the C<SourceArn> to be
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>, and the
C<Source> to be C<user@example.com>.

Instead of using this parameter, you can use the X-header
C<X-SES-SOURCE-ARN> in the raw message of the email. If you use both
the C<SourceArn> parameter and the corresponding X-header, Amazon SES
uses the value of the C<SourceArn> parameter.

For information about when to use this parameter, see the description
of C<SendRawEmail> in this guide, or see the Amazon SES Developer Guide
(https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html).



=head2 Tags => ArrayRef[L<Paws::SES::MessageTag>]

A list of tags, in the form of name/value pairs, to apply to an email
that you send using C<SendRawEmail>. Tags correspond to characteristics
of the email that you define, so that you can publish email sending
events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendRawEmail in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


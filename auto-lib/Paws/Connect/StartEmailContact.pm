
package Paws::Connect::StartEmailContact;
  use Moose;
  has AdditionalRecipients => (is => 'ro', isa => 'Paws::Connect::InboundAdditionalRecipients');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::Connect::EmailAttachment]');
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationEmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has EmailMessage => (is => 'ro', isa => 'Paws::Connect::InboundEmailContent', required => 1);
  has FromEmailAddress => (is => 'ro', isa => 'Paws::Connect::EmailAddressInfo', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEmailContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/email');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartEmailContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartEmailContact - Arguments for method StartEmailContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEmailContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartEmailContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEmailContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartEmailContactResponse = $connect->StartEmailContact(
      DestinationEmailAddress => 'MyEmailAddress',
      EmailMessage            => {
        MessageSourceType => 'RAW',    # values: RAW
        RawMessage        => {
          Body        => 'MyBody',                       # min: 1, max: 5242880
          ContentType => 'MyEmailMessageContentType',    # min: 1, max: 100
          Subject     => 'MyInboundSubject',             # max: 998
          Headers     => {
            'REFERENCES' => 'MyEmailHeaderValue'
            , # key: values: REFERENCES, MESSAGE_ID, IN_REPLY_TO, X_SES_SPAM_VERDICT, X_SES_VIRUS_VERDICT, value: min: 1, max: 20000
          },    # OPTIONAL
        },    # OPTIONAL
      },
      FromEmailAddress => {
        EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
        DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
      },
      InstanceId           => 'MyInstanceId',
      AdditionalRecipients => {
        CcAddresses => [
          {
            EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
            DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ToAddresses => [
          {
            EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
            DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      Attachments => [
        {
          FileName => 'MyFileName',                  # min: 1, max: 256
          S3Url    => 'MyPreSignedAttachmentUrl',    # min: 1, max: 2000

        },
        ...
      ],    # OPTIONAL
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken   => 'MyClientToken',      # OPTIONAL
      ContactFlowId => 'MyContactFlowId',    # OPTIONAL
      Description   => 'MyDescription',      # OPTIONAL
      Name          => 'MyName',             # OPTIONAL
      References    => {
        'MyReferenceKey' => {
          Type => 'URL'
          , # values: URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
          Arn    => 'MyReferenceArn',    # min: 20, max: 256; OPTIONAL
          Status => 'AVAILABLE'
          , # values: AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED; OPTIONAL
          StatusReason => 'MyReferenceStatusReason',    # max: 100; OPTIONAL
          Value        => 'MyReferenceValue',           # max: 4096; OPTIONAL
        },    # key: min: 1, max: 4096
      },    # OPTIONAL
      RelatedContactId  => 'MyContactId',    # OPTIONAL
      SegmentAttributes => {
        'MySegmentAttributeName' => {
          ValueInteger => 1,                 # OPTIONAL
          ValueMap     => {
            'MySegmentAttributeName' =>
              <SegmentAttributeValue>,       # key: min: 1, max: 128
          },    # OPTIONAL
          ValueString => 'MySegmentAttributeValueString',  # max: 1024; OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartEmailContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartEmailContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartEmailContact>

=head1 ATTRIBUTES


=head2 AdditionalRecipients => L<Paws::Connect::InboundAdditionalRecipients>

The addtional recipients address of the email.



=head2 Attachments => ArrayRef[L<Paws::Connect::EmailAttachment>]

List of S3 presigned URLs of email attachments and their file name.



=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 ContactFlowId => Str

The identifier of the flow for initiating the emails. To see the
ContactFlowId in the Amazon Connect admin website, on the navigation
menu go to B<Routing>, B<Flows>. Choose the flow. On the flow page,
under the name of the flow, choose B<Show additional flow information>.
The ContactFlowId is the last part of the ARN, shown here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 Description => Str

A description of the email contact.



=head2 B<REQUIRED> DestinationEmailAddress => Str

The email address associated with the instance.



=head2 B<REQUIRED> EmailMessage => L<Paws::Connect::InboundEmailContent>

The email message body to be sent to the newly created email.



=head2 B<REQUIRED> FromEmailAddress => L<Paws::Connect::EmailAddressInfo>

The email address of the customer.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of a email that is shown to an agent in the Contact Control
Panel (CCP).



=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP). Emails can have the following reference types at the time of
creation: C<URL> | C<NUMBER> | C<STRING> | C<DATE>. C<EMAIL> |
C<EMAIL_MESSAGE> |C<ATTACHMENT> are not a supported reference type
during email creation.



=head2 RelatedContactId => Str

The contactId that is related to this contact. Linking emails together
by using C<RelatedContactID> copies over contact attributes from the
related email contact to the new email contact. All updates to
user-defined attributes in the new email contact are limited to the
individual contact ID. There are no limits to the number of contacts
that can be linked by using C<RelatedContactId>.



=head2 SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments using an attribute map. The attributes are standard Amazon
Connect attributes. They can be accessed in flows.

Attribute keys can include only alphanumeric, -, and _.

This field can be used to show channel subtype, such as
C<connect:Guide>.

To set contact expiry, a C<ValueMap> must be specified containing the
integer number of minutes the contact will be active for before
expiring, with C<SegmentAttributes> like { C< "connect:ContactExpiry":
{"ValueMap" : { "ExpiryDuration": { "ValueInteger":135}}}}>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEmailContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


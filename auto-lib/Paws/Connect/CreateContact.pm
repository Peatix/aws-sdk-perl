
package Paws::Connect::CreateContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has Channel => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExpiryDurationInMinutes => (is => 'ro', isa => 'Int');
  has InitiateAs => (is => 'ro', isa => 'Str');
  has InitiationMethod => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has PreviousContactId => (is => 'ro', isa => 'Str');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes');
  has UserInfo => (is => 'ro', isa => 'Paws::Connect::UserInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/create-contact');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContact - Arguments for method CreateContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateContactResponse = $connect->CreateContact(
      Channel          => 'VOICE',
      InitiationMethod => 'INBOUND',
      InstanceId       => 'MyInstanceId',
      Attributes       => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken             => 'MyClientToken',        # OPTIONAL
      Description             => 'MyDescription',        # OPTIONAL
      ExpiryDurationInMinutes => 1,                      # OPTIONAL
      InitiateAs              => 'CONNECTED_TO_USER',    # OPTIONAL
      Name                    => 'MyName',               # OPTIONAL
      PreviousContactId       => 'MyContactId',          # OPTIONAL
      References              => {
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
      UserInfo => {
        UserId => 'MyAgentResourceId',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ContactArn = $CreateContactResponse->ContactArn;
    my $ContactId  = $CreateContactResponse->ContactId;

    # Returns a L<Paws::Connect::CreateContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateContact>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 B<REQUIRED> Channel => Str

The channel for the contact

CreateContact only supports the EMAIL and VOICE channels. The following
information that states other channels are supported is incorrect. We
are working to update this topic.

Valid values are: C<"VOICE">, C<"CHAT">, C<"TASK">, C<"EMAIL">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

A description of the contact.



=head2 ExpiryDurationInMinutes => Int

Number of minutes the contact will be active for before expiring



=head2 InitiateAs => Str

Initial state of the contact when it's created

Valid values are: C<"CONNECTED_TO_USER">

=head2 B<REQUIRED> InitiationMethod => Str

Indicates how the contact was initiated.

CreateContact only supports the following initiation methods:

=over

=item *

For EMAIL: OUTBOUND, AGENT_REPLY, and FLOW.

=item *

For VOICE: TRANSFER and the subtype connect:ExternalAudio.

=back

The following information that states other initiation methods are
supported is incorrect. We are working to update this topic.

Valid values are: C<"INBOUND">, C<"OUTBOUND">, C<"TRANSFER">, C<"QUEUE_TRANSFER">, C<"CALLBACK">, C<"API">, C<"DISCONNECT">, C<"MONITOR">, C<"EXTERNAL_OUTBOUND">, C<"WEBRTC_API">, C<"AGENT_REPLY">, C<"FLOW">

=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of a the contact.



=head2 PreviousContactId => Str

The ID of the previous contact when creating a transfer contact. This
value can be provided only for external audio contacts. For more
information, see Integrate Amazon Connect Contact Lens with external
voice systems
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html)
in the I<Amazon Connect Administrator Guide>.



=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP). Tasks can have the following reference types at the time of
creation: URL | NUMBER | STRING | DATE | EMAIL | ATTACHMENT.



=head2 RelatedContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments (unique contact ID) using an attribute map. The attributes are
standard Amazon Connect attributes. They can be accessed in flows.

Attribute keys can include only alphanumeric, -, and _.

This field can be used to set Segment Contact Expiry as a duration in
minutes.

To set contact expiry, a ValueMap must be specified containing the
integer number of minutes the contact will be active for before
expiring, with C<SegmentAttributes> like { C< "connect:ContactExpiry":
{"ValueMap" : { "ExpiryDuration": { "ValueInteger": 135}}}}>.



=head2 UserInfo => L<Paws::Connect::UserInfo>

User details for the contact




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


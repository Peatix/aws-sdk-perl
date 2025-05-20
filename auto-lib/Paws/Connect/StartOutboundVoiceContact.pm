
package Paws::Connect::StartOutboundVoiceContact;
  use Moose;
  has AnswerMachineDetectionConfig => (is => 'ro', isa => 'Paws::Connect::AnswerMachineDetectionConfig');
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has CampaignId => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has QueueId => (is => 'ro', isa => 'Str');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has SourcePhoneNumber => (is => 'ro', isa => 'Str');
  has TrafficType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartOutboundVoiceContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/outbound-voice');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartOutboundVoiceContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartOutboundVoiceContact - Arguments for method StartOutboundVoiceContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartOutboundVoiceContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartOutboundVoiceContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOutboundVoiceContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartOutboundVoiceContactResponse = $connect->StartOutboundVoiceContact(
      ContactFlowId                => 'MyContactFlowId',
      DestinationPhoneNumber       => 'MyPhoneNumber',
      InstanceId                   => 'MyInstanceId',
      AnswerMachineDetectionConfig => {
        AwaitAnswerMachinePrompt     => 1,    # OPTIONAL
        EnableAnswerMachineDetection => 1,    # OPTIONAL
      },    # OPTIONAL
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      CampaignId  => 'MyCampaignId',     # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyName',           # OPTIONAL
      QueueId     => 'MyQueueId',        # OPTIONAL
      References  => {
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
      RelatedContactId  => 'MyContactId',      # OPTIONAL
      SourcePhoneNumber => 'MyPhoneNumber',    # OPTIONAL
      TrafficType       => 'GENERAL',          # OPTIONAL
    );

    # Results:
    my $ContactId = $StartOutboundVoiceContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartOutboundVoiceContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartOutboundVoiceContact>

=head1 ATTRIBUTES


=head2 AnswerMachineDetectionConfig => L<Paws::Connect::AnswerMachineDetectionConfig>

Configuration of the answering machine detection for this outbound
call.



=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 CampaignId => Str

The campaign identifier of the outbound communication.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).
The token is valid for 7 days after creation. If a contact is already
started, the contact ID is returned.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow for the outbound call. To see the
ContactFlowId in the Amazon Connect admin website, on the navigation
menu go to B<Routing>, B<Contact Flows>. Choose the flow. On the flow
page, under the name of the flow, choose B<Show additional flow
information>. The ContactFlowId is the last part of the ARN, shown here
in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 Description => Str

A description of the voice contact that appears in the agent's snapshot
in the CCP logs. For more information about CCP logs, see Download and
review CCP logs
(https://docs.aws.amazon.com/connect/latest/adminguide/download-ccp-logs.html)
in the I<Amazon Connect Administrator Guide>.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The phone number of the customer, in E.164 format.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of a voice contact that is shown to an agent in the Contact
Control Panel (CCP).



=head2 QueueId => Str

The queue for the call. If you specify a queue, the phone displayed for
caller ID is the phone number specified in the queue. If you do not
specify a queue, the queue defined in the flow is used. If you do not
specify a queue, you must specify a source phone number.



=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP). Contacts can have the following reference types at the time of
creation: C<URL> | C<NUMBER> | C<STRING> | C<DATE> | C<EMAIL>.
C<ATTACHMENT> is not a supported reference type during voice contact
creation.



=head2 RelatedContactId => Str

The C<contactId> that is related to this contact. Linking voice, task,
or chat by using C<RelatedContactID> copies over contact attributes
from the related contact to the new contact. All updates to
user-defined attributes in the new contact are limited to the
individual contact ID. There are no limits to the number of contacts
that can be linked by using C<RelatedContactId>.



=head2 SourcePhoneNumber => Str

The phone number associated with the Amazon Connect instance, in E.164
format. If you do not specify a source phone number, you must specify a
queue.



=head2 TrafficType => Str

Denotes the class of traffic. Calls with different traffic types are
handled differently by Amazon Connect. The default value is C<GENERAL>.
Use C<CAMPAIGN> if C<EnableAnswerMachineDetection> is set to C<true>.
For all other cases, use C<GENERAL>.

Valid values are: C<"GENERAL">, C<"CAMPAIGN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOutboundVoiceContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


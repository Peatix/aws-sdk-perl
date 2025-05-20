
package Paws::Connect::StartTaskContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PreviousContactId => (is => 'ro', isa => 'Str');
  has QuickConnectId => (is => 'ro', isa => 'Str');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has RelatedContactId => (is => 'ro', isa => 'Str');
  has ScheduledTime => (is => 'ro', isa => 'Str');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes');
  has TaskTemplateId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTaskContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartTaskContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartTaskContact - Arguments for method StartTaskContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTaskContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartTaskContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTaskContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartTaskContactResponse = $connect->StartTaskContact(
      InstanceId => 'MyInstanceId',
      Name       => 'MyName',
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken       => 'MyClientToken',       # OPTIONAL
      ContactFlowId     => 'MyContactFlowId',     # OPTIONAL
      Description       => 'MyDescription',       # OPTIONAL
      PreviousContactId => 'MyContactId',         # OPTIONAL
      QuickConnectId    => 'MyQuickConnectId',    # OPTIONAL
      References        => {
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
      RelatedContactId  => 'MyContactId',            # OPTIONAL
      ScheduledTime     => '1970-01-01T01:00:00',    # OPTIONAL
      SegmentAttributes => {
        'MySegmentAttributeName' => {
          ValueInteger => 1,                         # OPTIONAL
          ValueMap     => {
            'MySegmentAttributeName' =>
              <SegmentAttributeValue>,               # key: min: 1, max: 128
          },    # OPTIONAL
          ValueString => 'MySegmentAttributeValueString',  # max: 1024; OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      TaskTemplateId => 'MyTaskTemplateId',    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartTaskContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartTaskContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartTaskContact>

=head1 ATTRIBUTES


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

The identifier of the flow for initiating the tasks. To see the
ContactFlowId in the Amazon Connect admin website, on the navigation
menu go to B<Routing>, B<Flows>. Choose the flow. On the flow page,
under the name of the flow, choose B<Show additional flow information>.
The ContactFlowId is the last part of the ARN, shown here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 Description => Str

A description of the task that is shown to an agent in the Contact
Control Panel (CCP).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of a task that is shown to an agent in the Contact Control
Panel (CCP).



=head2 PreviousContactId => Str

The identifier of the previous chat, voice, or task contact. Any
updates to user-defined attributes to task contacts linked using the
same C<PreviousContactID> will affect every contact in the chain. There
can be a maximum of 12 linked task contacts in a chain.



=head2 QuickConnectId => Str

The identifier for the quick connect. Tasks that are created by using
C<QuickConnectId> will use the flow that is defined on agent or queue
quick connect. For more information about quick connects, see Create
quick connects
(https://docs.aws.amazon.com/connect/latest/adminguide/quick-connects.html).



=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP). Tasks can have the following reference types at the time of
creation: C<URL> | C<NUMBER> | C<STRING> | C<DATE> | C<EMAIL>.
C<ATTACHMENT> is not a supported reference type during task creation.



=head2 RelatedContactId => Str

The contactId that is related
(https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks)
to this contact. Linking tasks together by using C<RelatedContactID>
copies over contact attributes from the related task contact to the new
task contact. All updates to user-defined attributes in the new task
contact are limited to the individual contact ID, unlike what happens
when tasks are linked by using C<PreviousContactID>. There are no
limits to the number of contacts that can be linked by using
C<RelatedContactId>.



=head2 ScheduledTime => Str

The timestamp, in Unix Epoch seconds format, at which to start running
the inbound flow. The scheduled time cannot be in the past. It must be
within up to 6 days in future.



=head2 SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments (unique contact ID) using an attribute map. The attributes are
standard Amazon Connect attributes. They can be accessed in flows.

Attribute keys can include only alphanumeric, -, and _.

This field can be used to set Contact Expiry as a duration in minutes
and set a UserId for the User who created a task.

To set contact expiry, a ValueMap must be specified containing the
integer number of minutes the contact will be active for before
expiring, with C<SegmentAttributes> like { C< "connect:ContactExpiry":
{"ValueMap" : { "ExpiryDuration": { "ValueInteger": 135}}}}>.

To set the created by user, a valid AgentResourceId must be supplied,
with C<SegmentAttributes> like { C<"connect:CreatedByUser" {
"ValueString":
"arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/agent/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"}}}>.



=head2 TaskTemplateId => Str

A unique identifier for the task template. For more information about
task templates, see Create task templates
(https://docs.aws.amazon.com/connect/latest/adminguide/task-templates.html)
in the I<Amazon Connect Administrator Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTaskContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


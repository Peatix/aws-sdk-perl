
package Paws::Connect::StartWebRTCContact;
  use Moose;
  has AllowedCapabilities => (is => 'ro', isa => 'Paws::Connect::AllowedCapabilities');
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ParticipantDetails => (is => 'ro', isa => 'Paws::Connect::ParticipantDetails', required => 1);
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has RelatedContactId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWebRTCContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/webrtc');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartWebRTCContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartWebRTCContact - Arguments for method StartWebRTCContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartWebRTCContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartWebRTCContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartWebRTCContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartWebRTCContactResponse = $connect->StartWebRTCContact(
      ContactFlowId      => 'MyContactFlowId',
      InstanceId         => 'MyInstanceId',
      ParticipantDetails => {
        DisplayName => 'MyDisplayName',    # min: 1, max: 256

      },
      AllowedCapabilities => {
        Agent => {
          ScreenShare => 'SEND',    # values: SEND; OPTIONAL
          Video       => 'SEND',    # values: SEND; OPTIONAL
        },    # OPTIONAL
        Customer => {
          ScreenShare => 'SEND',    # values: SEND; OPTIONAL
          Video       => 'SEND',    # values: SEND; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
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
      RelatedContactId => 'MyContactId',    # OPTIONAL
    );

    # Results:
    my $ConnectionData   = $StartWebRTCContactResponse->ConnectionData;
    my $ContactId        = $StartWebRTCContactResponse->ContactId;
    my $ParticipantId    = $StartWebRTCContactResponse->ParticipantId;
    my $ParticipantToken = $StartWebRTCContactResponse->ParticipantToken;

    # Returns a L<Paws::Connect::StartWebRTCContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartWebRTCContact>

=head1 ATTRIBUTES


=head2 AllowedCapabilities => L<Paws::Connect::AllowedCapabilities>

Information about the video sharing capabilities of the participants
(customer, agent).



=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, -, and _
characters.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).

The token is valid for 7 days after creation. If a contact is already
started, the contact ID is returned.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow for the call. To see the ContactFlowId in
the Amazon Connect admin website, on the navigation menu go to
B<Routing>, B<Flows>. Choose the flow. On the flow page, under the name
of the flow, choose B<Show additional flow information>. The
ContactFlowId is the last part of the ARN, shown here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 Description => Str

A description of the task that is shown to an agent in the Contact
Control Panel (CCP).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> ParticipantDetails => L<Paws::Connect::ParticipantDetails>





=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP). Tasks can have the following reference types at the time of
creation: C<URL> | C<NUMBER> | C<STRING> | C<DATE> | C<EMAIL>.
C<ATTACHMENT> is not a supported reference type during task creation.



=head2 RelatedContactId => Str

The unique identifier for an Amazon Connect contact. This identifier is
related to the contact starting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartWebRTCContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Connect::UpdateContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactId', required => 1);
  has CustomerEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has QueueInfo => (is => 'ro', isa => 'Paws::Connect::QueueInfoInput');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');
  has SegmentAttributes => (is => 'ro', isa => 'Paws::Connect::SegmentAttributes');
  has SystemEndpoint => (is => 'ro', isa => 'Paws::Connect::Endpoint');
  has UserInfo => (is => 'ro', isa => 'Paws::Connect::UserInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contacts/{InstanceId}/{ContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContact - Arguments for method UpdateContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateContactResponse = $connect->UpdateContact(
      ContactId        => 'MyContactId',
      InstanceId       => 'MyInstanceId',
      CustomerEndpoint => {
        Address => 'MyEndpointAddress',    # max: 256; OPTIONAL
        Type    => 'TELEPHONE_NUMBER'
        , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyName',           # OPTIONAL
      QueueInfo   => {
        Id => 'MyQueueId',               # OPTIONAL
      },    # OPTIONAL
      References => {
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
      SegmentAttributes => {
        'MySegmentAttributeName' => {
          ValueInteger => 1,    # OPTIONAL
          ValueMap     => {
            'MySegmentAttributeName' =>
              <SegmentAttributeValue>,    # key: min: 1, max: 128
          },    # OPTIONAL
          ValueString => 'MySegmentAttributeValueString',  # max: 1024; OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      SystemEndpoint => {
        Address => 'MyEndpointAddress',    # max: 256; OPTIONAL
        Type    => 'TELEPHONE_NUMBER'
        , # values: TELEPHONE_NUMBER, VOIP, CONTACT_FLOW, CONNECT_PHONENUMBER_ARN, EMAIL_ADDRESS; OPTIONAL
      },    # OPTIONAL
      UserInfo => {
        UserId => 'MyAgentResourceId',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact. This is the identifier of the contact
associated with the first interaction with your contact center.



=head2 CustomerEndpoint => L<Paws::Connect::Endpoint>

The endpoint of the customer for which the contact was initiated. For
external audio contacts, this is usually the end customer's phone
number. This value can only be updated for external audio contacts. For
more information, see Amazon Connect Contact Lens integration
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html)
in the I<Amazon Connect Administrator Guide>.



=head2 Description => Str

The description of the contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of the contact.



=head2 QueueInfo => L<Paws::Connect::QueueInfoInput>

Information about the queue associated with a contact. This parameter
can only be updated for external audio contacts. It is used when you
integrate third-party systems with Contact Lens for analytics. For more
information, see Amazon Connect Contact Lens integration
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html)
in the I< Amazon Connect Administrator Guide>.



=head2 References => L<Paws::Connect::ContactReferences>

Well-formed data on contact, shown to agents on Contact Control Panel
(CCP).



=head2 SegmentAttributes => L<Paws::Connect::SegmentAttributes>

A set of system defined key-value pairs stored on individual contact
segments (unique contact ID) using an attribute map. The attributes are
standard Amazon Connect attributes. They can be accessed in flows.

Attribute keys can include only alphanumeric, -, and _.

This field can be used to show channel subtype, such as
C<connect:Guide>.

Currently Contact Expiry is the only segment attribute which can be
updated by using the UpdateContact API.



=head2 SystemEndpoint => L<Paws::Connect::Endpoint>

External system endpoint for the contact was initiated. For external
audio contacts, this is the phone number of the external system such as
the contact center. This value can only be updated for external audio
contacts. For more information, see Amazon Connect Contact Lens
integration
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html)
in the I<Amazon Connect Administrator Guide>.



=head2 UserInfo => L<Paws::Connect::UserInfo>

Information about the agent associated with a contact. This parameter
can only be updated for external audio contacts. It is used when you
integrate third-party systems with Contact Lens for analytics. For more
information, see Amazon Connect Contact Lens integration
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html)
in the I< Amazon Connect Administrator Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


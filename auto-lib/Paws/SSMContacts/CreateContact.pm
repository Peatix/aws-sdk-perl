
package Paws::SSMContacts::CreateContact;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Plan => (is => 'ro', isa => 'Paws::SSMContacts::Plan', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::CreateContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateContact - Arguments for method CreateContact on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContact on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method CreateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContact.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
# To create a contact
# The following create-contact example creates a contact in your environment
# with a blank plan. The plan can be updated after creating contact channels.
# Use the create-contact-channel operation with the output ARN of this command.
# After you have created contact channels for this contact use update-contact to
# update the plan.
    my $CreateContactResult = $ssm -contacts->CreateContact(
      'Alias'       => 'akuam',
      'DisplayName' => 'Akua Mansa',
      'Plan'        => {
        'Stages' => [

        ]
      },
      'Type' => 'PERSONAL'
    );

    # Results:
    my $ContactArn = $CreateContactResult->ContactArn;

    # Returns a L<Paws::SSMContacts::CreateContactResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/CreateContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The short name to quickly identify a contact or escalation plan. The
contact alias must be unique and identifiable.



=head2 DisplayName => Str

The full name of the contact or escalation plan.



=head2 IdempotencyToken => Str

A token ensuring that the operation is called only once with the
specified details.



=head2 B<REQUIRED> Plan => L<Paws::SSMContacts::Plan>

A list of stages. A contact has an engagement plan with stages that
contact specified contact channels. An escalation plan uses stages that
contact specified contacts.



=head2 Tags => ArrayRef[L<Paws::SSMContacts::Tag>]

Adds a tag to the target. You can only tag resources created in the
first Region of your replication set.



=head2 B<REQUIRED> Type => Str

To create an escalation plan use C<ESCALATION>. To create a contact use
C<PERSONAL>.

Valid values are: C<"PERSONAL">, C<"ESCALATION">, C<"ONCALL_SCHEDULE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContact in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


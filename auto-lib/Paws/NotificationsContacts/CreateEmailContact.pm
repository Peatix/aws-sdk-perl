
package Paws::NotificationsContacts::CreateEmailContact;
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NotificationsContacts::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEmailContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-09-19/emailcontacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NotificationsContacts::CreateEmailContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::CreateEmailContact - Arguments for method CreateEmailContact on L<Paws::NotificationsContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailContact on the
L<AWS User Notifications Contacts|Paws::NotificationsContacts> service. Use the attributes of this class
as arguments to method CreateEmailContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailContact.

=head1 SYNOPSIS

    my $notifications-contacts = Paws->service('NotificationsContacts');
    my $CreateEmailContactResponse =
      $notifications -contacts->CreateEmailContact(
      EmailAddress => 'MyEmailContactAddress',
      Name         => 'MyEmailContactName',
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateEmailContactResponse->Arn;

  # Returns a L<Paws::NotificationsContacts::CreateEmailContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications-contacts/CreateEmailContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailAddress => Str

The email address this email contact points to. The activation email
and any subscribed emails are sent here.

This email address can't receive emails until it's activated.



=head2 B<REQUIRED> Name => Str

The name of the email contact.



=head2 Tags => L<Paws::NotificationsContacts::TagMap>

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailContact in L<Paws::NotificationsContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


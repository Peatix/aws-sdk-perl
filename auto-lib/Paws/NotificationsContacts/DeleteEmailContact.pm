
package Paws::NotificationsContacts::DeleteEmailContact;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEmailContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/emailcontacts/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NotificationsContacts::DeleteEmailContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::DeleteEmailContact - Arguments for method DeleteEmailContact on L<Paws::NotificationsContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEmailContact on the
L<AWS User Notifications Contacts|Paws::NotificationsContacts> service. Use the attributes of this class
as arguments to method DeleteEmailContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEmailContact.

=head1 SYNOPSIS

    my $notifications-contacts = Paws->service('NotificationsContacts');
    my $DeleteEmailContactResponse =
      $notifications -contacts->DeleteEmailContact(
      Arn => 'MyEmailContactArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications-contacts/DeleteEmailContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEmailContact in L<Paws::NotificationsContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


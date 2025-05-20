
package Paws::Notifications::DisassociateManagedNotificationAccountContact;
  use Moose;
  has ContactIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'contactIdentifier', required => 1);
  has ManagedNotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedNotificationConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateManagedNotificationAccountContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contacts/disassociate-managed-notification/{contactIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::DisassociateManagedNotificationAccountContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::DisassociateManagedNotificationAccountContact - Arguments for method DisassociateManagedNotificationAccountContact on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateManagedNotificationAccountContact on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method DisassociateManagedNotificationAccountContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateManagedNotificationAccountContact.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $DisassociateManagedNotificationAccountContactResponse =
      $notifications->DisassociateManagedNotificationAccountContact(
      ContactIdentifier                   => 'ACCOUNT_PRIMARY',
      ManagedNotificationConfigurationArn =>
        'MyManagedNotificationConfigurationOsArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/DisassociateManagedNotificationAccountContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactIdentifier => Str

The unique value of an Account Contact Type to associate with the
C<ManagedNotificationConfiguration>.

Valid values are: C<"ACCOUNT_PRIMARY">, C<"ACCOUNT_ALTERNATE_BILLING">, C<"ACCOUNT_ALTERNATE_OPERATIONS">, C<"ACCOUNT_ALTERNATE_SECURITY">

=head2 B<REQUIRED> ManagedNotificationConfigurationArn => Str

The Amazon Resource Name (ARN) of the
C<ManagedNotificationConfiguration> to associate with the Account
Contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateManagedNotificationAccountContact in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


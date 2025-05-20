
package Paws::Notifications::GetNotificationsAccessForOrganization;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNotificationsAccessForOrganization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/access');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::GetNotificationsAccessForOrganizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetNotificationsAccessForOrganization - Arguments for method GetNotificationsAccessForOrganization on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNotificationsAccessForOrganization on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method GetNotificationsAccessForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNotificationsAccessForOrganization.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $GetNotificationsAccessForOrganizationResponse =
      $notifications->GetNotificationsAccessForOrganization();

    # Results:
    my $NotificationsAccessForOrganization =
      $GetNotificationsAccessForOrganizationResponse
      ->NotificationsAccessForOrganization;

# Returns a L<Paws::Notifications::GetNotificationsAccessForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/GetNotificationsAccessForOrganization>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNotificationsAccessForOrganization in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


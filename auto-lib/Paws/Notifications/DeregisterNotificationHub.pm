
package Paws::Notifications::DeregisterNotificationHub;
  use Moose;
  has NotificationHubRegion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'notificationHubRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterNotificationHub');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-hubs/{notificationHubRegion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::DeregisterNotificationHubResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::DeregisterNotificationHub - Arguments for method DeregisterNotificationHub on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterNotificationHub on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method DeregisterNotificationHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterNotificationHub.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $DeregisterNotificationHubResponse =
      $notifications->DeregisterNotificationHub(
      NotificationHubRegion => 'MyRegion',

      );

    # Results:
    my $NotificationHubRegion =
      $DeregisterNotificationHubResponse->NotificationHubRegion;
    my $StatusSummary = $DeregisterNotificationHubResponse->StatusSummary;

   # Returns a L<Paws::Notifications::DeregisterNotificationHubResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/DeregisterNotificationHub>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationHubRegion => Str

The C<NotificationConfiguration> Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterNotificationHub in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


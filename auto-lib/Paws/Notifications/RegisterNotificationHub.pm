
package Paws::Notifications::RegisterNotificationHub;
  use Moose;
  has NotificationHubRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationHubRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterNotificationHub');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-hubs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::RegisterNotificationHubResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::RegisterNotificationHub - Arguments for method RegisterNotificationHub on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterNotificationHub on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method RegisterNotificationHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterNotificationHub.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $RegisterNotificationHubResponse =
      $notifications->RegisterNotificationHub(
      NotificationHubRegion => 'MyRegion',

      );

    # Results:
    my $CreationTime = $RegisterNotificationHubResponse->CreationTime;
    my $LastActivationTime =
      $RegisterNotificationHubResponse->LastActivationTime;
    my $NotificationHubRegion =
      $RegisterNotificationHubResponse->NotificationHubRegion;
    my $StatusSummary = $RegisterNotificationHubResponse->StatusSummary;

    # Returns a L<Paws::Notifications::RegisterNotificationHubResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/RegisterNotificationHub>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationHubRegion => Str

The Region of the C<NotificationHub>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterNotificationHub in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


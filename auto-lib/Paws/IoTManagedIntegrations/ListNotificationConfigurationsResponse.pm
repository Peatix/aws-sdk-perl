
package Paws::IoTManagedIntegrations::ListNotificationConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::NotificationConfigurationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListNotificationConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 NotificationConfigurationList => ArrayRef[L<Paws::IoTManagedIntegrations::NotificationConfigurationSummary>]

The list of notification configurations.


=head2 _request_id => Str


=cut


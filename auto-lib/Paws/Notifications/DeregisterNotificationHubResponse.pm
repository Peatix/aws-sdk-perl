
package Paws::Notifications::DeregisterNotificationHubResponse;
  use Moose;
  has NotificationHubRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationHubRegion', required => 1);
  has StatusSummary => (is => 'ro', isa => 'Paws::Notifications::NotificationHubStatusSummary', traits => ['NameInRequest'], request_name => 'statusSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::DeregisterNotificationHubResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationHubRegion => Str

The C<NotificationConfiguration> Region.


=head2 B<REQUIRED> StatusSummary => L<Paws::Notifications::NotificationHubStatusSummary>

C<NotificationConfiguration> status information.


=head2 _request_id => Str


=cut


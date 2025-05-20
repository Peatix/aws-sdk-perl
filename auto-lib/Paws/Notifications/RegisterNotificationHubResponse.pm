
package Paws::Notifications::RegisterNotificationHubResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has LastActivationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastActivationTime');
  has NotificationHubRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationHubRegion', required => 1);
  has StatusSummary => (is => 'ro', isa => 'Paws::Notifications::NotificationHubStatusSummary', traits => ['NameInRequest'], request_name => 'statusSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::RegisterNotificationHubResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The date the resource was created.


=head2 LastActivationTime => Str

The date the resource was last activated.


=head2 B<REQUIRED> NotificationHubRegion => Str

The Region of the C<NotificationHub>.


=head2 B<REQUIRED> StatusSummary => L<Paws::Notifications::NotificationHubStatusSummary>

Provides additional information about the current
C<NotificationConfiguration> status information.


=head2 _request_id => Str


=cut



package Paws::Notifications::ListNotificationEventsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has NotificationEvents => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::NotificationEventOverview]', traits => ['NameInRequest'], request_name => 'notificationEvents', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListNotificationEventsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 B<REQUIRED> NotificationEvents => ArrayRef[L<Paws::Notifications::NotificationEventOverview>]

The list of notification events.


=head2 _request_id => Str


=cut


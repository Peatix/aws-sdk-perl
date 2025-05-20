
package Paws::Notifications::ListManagedNotificationEventsResponse;
  use Moose;
  has ManagedNotificationEvents => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::ManagedNotificationEventOverview]', traits => ['NameInRequest'], request_name => 'managedNotificationEvents', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListManagedNotificationEventsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedNotificationEvents => ArrayRef[L<Paws::Notifications::ManagedNotificationEventOverview>]

A list of Managed Notification Events matching the request criteria.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut


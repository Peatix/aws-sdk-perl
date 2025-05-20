
package Paws::Notifications::ListNotificationHubsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has NotificationHubs => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::NotificationHubOverview]', traits => ['NameInRequest'], request_name => 'notificationHubs', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListNotificationHubsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 B<REQUIRED> NotificationHubs => ArrayRef[L<Paws::Notifications::NotificationHubOverview>]

The C<NotificationHubs> in the account.


=head2 _request_id => Str


=cut


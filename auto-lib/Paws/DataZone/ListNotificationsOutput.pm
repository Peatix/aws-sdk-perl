
package Paws::DataZone::ListNotificationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Notifications => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::NotificationOutput]', traits => ['NameInRequest'], request_name => 'notifications');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListNotificationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

When the number of notifications is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of notifications, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListNotifications> to list the next set of notifications.


=head2 Notifications => ArrayRef[L<Paws::DataZone::NotificationOutput>]

The results of the C<ListNotifications> action.


=head2 _request_id => Str


=cut


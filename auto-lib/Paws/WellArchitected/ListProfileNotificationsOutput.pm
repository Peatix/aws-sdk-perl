
package Paws::WellArchitected::ListProfileNotificationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ProfileNotificationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListProfileNotificationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NotificationSummaries => ArrayRef[L<Paws::WellArchitected::ProfileNotificationSummary>]

Notification summaries.


=head2 _request_id => Str


=cut


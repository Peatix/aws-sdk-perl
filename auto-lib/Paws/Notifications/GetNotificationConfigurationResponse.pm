
package Paws::Notifications::GetNotificationConfigurationResponse;
  use Moose;
  has AggregationDuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationDuration');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 AggregationDuration => Str

The aggregation preference of the C<NotificationConfiguration>.

=over

=item *

Values:

=over

=item *

C<LONG>

=over

=item *

Aggregate notifications for long periods of time (12 hours).

=back

=item *

C<SHORT>

=over

=item *

Aggregate notifications for short periods of time (5 minutes).

=back

=item *

C<NONE>

=over

=item *

Don't aggregate notifications.

=back

=back

=back


Valid values are: C<"LONG">, C<"SHORT">, C<"NONE">
=head2 B<REQUIRED> Arn => Str

The ARN of the resource.


=head2 B<REQUIRED> CreationTime => Str

The creation time of the C<NotificationConfiguration>.


=head2 B<REQUIRED> Description => Str

The description of the C<NotificationConfiguration>.


=head2 B<REQUIRED> Name => Str

The name of the C<NotificationConfiguration>.


=head2 B<REQUIRED> Status => Str

The status of this C<NotificationConfiguration>.

Valid values are: C<"ACTIVE">, C<"PARTIALLY_ACTIVE">, C<"INACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut


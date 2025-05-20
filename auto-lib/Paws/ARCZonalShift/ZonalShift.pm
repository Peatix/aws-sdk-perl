
package Paws::ARCZonalShift::ZonalShift;
  use Moose;
  has AwayFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awayFrom', required => 1);
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment', required => 1);
  has ExpiryTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiryTime', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has ZonalShiftId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalShiftId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::ZonalShift

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwayFrom => Str

The Availability Zone (for example, C<use1-az1>) that traffic is moved
away from for a resource when you start a zonal shift. Until the zonal
shift expires or you cancel it, traffic for the resource is instead
moved to other Availability Zones in the Amazon Web Services Region.


=head2 B<REQUIRED> Comment => Str

A comment that you enter about the zonal shift. Only the latest comment
is retained; no comment history is maintained. A new comment overwrites
any existing comment string.


=head2 B<REQUIRED> ExpiryTime => Str

The expiry time (expiration time) for a customer-initiated zonal shift.
A zonal shift is temporary and must be set to expire when you start the
zonal shift. You can initially set a zonal shift to expire in a maximum
of three days (72 hours). However, you can update a zonal shift to set
a new expiration at any time.

When you start a zonal shift, you specify how long you want it to be
active, which ARC converts to an expiry time (expiration time). You can
cancel a zonal shift when you're ready to restore traffic to the
Availability Zone, or just wait for it to expire. Or you can update the
zonal shift to specify another length of time to expire in.


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that Amazon Web Services shifts traffic
for. The identifier is the Amazon Resource Name (ARN) for the resource.

At this time, supported resources are Network Load Balancers and
Application Load Balancers with cross-zone load balancing turned off.


=head2 B<REQUIRED> StartTime => Str

The time (UTC) when the zonal shift starts.


=head2 B<REQUIRED> Status => Str

A status for a zonal shift.

The C<Status> for a zonal shift can have one of the following values:

=over

=item *

B<ACTIVE:> The zonal shift has been started and active.

=item *

B<EXPIRED:> The zonal shift has expired (the expiry time was exceeded).

=item *

B<CANCELED:> The zonal shift was canceled.

=back


Valid values are: C<"ACTIVE">, C<"EXPIRED">, C<"CANCELED">
=head2 B<REQUIRED> ZonalShiftId => Str

The identifier of a zonal shift.


=head2 _request_id => Str


=cut


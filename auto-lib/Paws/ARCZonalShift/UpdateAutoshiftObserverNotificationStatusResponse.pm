
package Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status for autoshift observer notification.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut


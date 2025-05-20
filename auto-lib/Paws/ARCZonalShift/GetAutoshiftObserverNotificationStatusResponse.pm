
package Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of autoshift observer notification. If the status is
C<ENABLED>, ARC includes all autoshift events when you use the Amazon
EventBridge pattern C<Autoshift In Progress>. When the status is
C<DISABLED>, ARC includes only autoshift events for autoshifts when one
or more of your resources is included in the autoshift.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut


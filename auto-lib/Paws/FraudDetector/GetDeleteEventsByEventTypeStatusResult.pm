
package Paws::FraudDetector::GetDeleteEventsByEventTypeStatusResult;
  use Moose;
  has EventsDeletionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventsDeletionStatus' );
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetDeleteEventsByEventTypeStatusResult

=head1 ATTRIBUTES


=head2 EventsDeletionStatus => Str

The deletion status.

Valid values are: C<"IN_PROGRESS_INITIALIZING">, C<"IN_PROGRESS">, C<"CANCEL_IN_PROGRESS">, C<"CANCELED">, C<"COMPLETE">, C<"FAILED">
=head2 EventTypeName => Str

The event type name.


=head2 _request_id => Str


=cut

1;
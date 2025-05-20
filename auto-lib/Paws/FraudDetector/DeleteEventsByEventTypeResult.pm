
package Paws::FraudDetector::DeleteEventsByEventTypeResult;
  use Moose;
  has EventsDeletionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventsDeletionStatus' );
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DeleteEventsByEventTypeResult

=head1 ATTRIBUTES


=head2 EventsDeletionStatus => Str

The status of the delete request.


=head2 EventTypeName => Str

Name of event type for which to delete the events.


=head2 _request_id => Str


=cut

1;

package Paws::FraudDetector::GetEventResult;
  use Moose;
  has Event => (is => 'ro', isa => 'Paws::FraudDetector::Event', traits => ['NameInRequest'], request_name => 'event' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventResult

=head1 ATTRIBUTES


=head2 Event => L<Paws::FraudDetector::Event>

The details of the event.


=head2 _request_id => Str


=cut

1;

package Paws::InternetMonitor::ListHealthEventsOutput;
  use Moose;
  has HealthEvents => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::HealthEvent]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListHealthEventsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthEvents => ArrayRef[L<Paws::InternetMonitor::HealthEvent>]

A list of health events.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut


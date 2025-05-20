
package Paws::InternetMonitor::ListInternetEventsOutput;
  use Moose;
  has InternetEvents => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::InternetEventSummary]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::ListInternetEventsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> InternetEvents => ArrayRef[L<Paws::InternetMonitor::InternetEventSummary>]

A set of internet events returned for the list operation.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut


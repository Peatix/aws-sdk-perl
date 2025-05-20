
package Paws::DataExchange::ListEventActionsResponse;
  use Moose;
  has EventActions => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::EventActionEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListEventActionsResponse

=head1 ATTRIBUTES


=head2 EventActions => ArrayRef[L<Paws::DataExchange::EventActionEntry>]

The event action objects listed by the request.


=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.


=head2 _request_id => Str


=cut


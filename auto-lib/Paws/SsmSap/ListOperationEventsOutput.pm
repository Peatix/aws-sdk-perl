
package Paws::SsmSap::ListOperationEventsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OperationEvents => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::OperationEvent]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListOperationEventsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 OperationEvents => ArrayRef[L<Paws::SsmSap::OperationEvent>]

A returned list of operation events that meet the filter criteria.


=head2 _request_id => Str


=cut


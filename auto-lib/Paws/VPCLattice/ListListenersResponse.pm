
package Paws::VPCLattice::ListListenersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::ListenerSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListListenersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::VPCLattice::ListenerSummary>]

Information about the listeners.


=head2 NextToken => Str

If there are additional results, a pagination token for the next page
of results.


=head2 _request_id => Str


=cut


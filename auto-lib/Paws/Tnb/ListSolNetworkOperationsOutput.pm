
package Paws::Tnb::ListSolNetworkOperationsOutput;
  use Moose;
  has NetworkOperations => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::ListSolNetworkOperationsInfo]', traits => ['NameInRequest'], request_name => 'networkOperations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolNetworkOperationsOutput

=head1 ATTRIBUTES


=head2 NetworkOperations => ArrayRef[L<Paws::Tnb::ListSolNetworkOperationsInfo>]

Lists network operation occurrences. Lifecycle management operations
are deploy, update, or delete operations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


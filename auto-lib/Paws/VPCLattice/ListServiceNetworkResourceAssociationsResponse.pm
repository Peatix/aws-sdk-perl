
package Paws::VPCLattice::ListServiceNetworkResourceAssociationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::ServiceNetworkResourceAssociationSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListServiceNetworkResourceAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::VPCLattice::ServiceNetworkResourceAssociationSummary>]

Information about the associations.


=head2 NextToken => Str

If there are additional results, a pagination token for the next page
of results.


=head2 _request_id => Str


=cut


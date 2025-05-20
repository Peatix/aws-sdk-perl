
package Paws::VPCLattice::ListResourceConfigurationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::ResourceConfigurationSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListResourceConfigurationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::VPCLattice::ResourceConfigurationSummary>]

Information about the resource configurations.


=head2 NextToken => Str

If there are additional results, a pagination token for the next page
of results.


=head2 _request_id => Str


=cut


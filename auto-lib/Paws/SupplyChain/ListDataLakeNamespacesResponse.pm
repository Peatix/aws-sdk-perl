
package Paws::SupplyChain::ListDataLakeNamespacesResponse;
  use Moose;
  has Namespaces => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataLakeNamespace]', traits => ['NameInRequest'], request_name => 'namespaces', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataLakeNamespacesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespaces => ArrayRef[L<Paws::SupplyChain::DataLakeNamespace>]

The list of fetched namespace details. Noted it only contains custom
namespaces, pre-defined namespaces are not included.


=head2 NextToken => Str

The pagination token to fetch next page of namespaces.


=head2 _request_id => Str


=cut


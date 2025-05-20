
package Paws::SupplyChain::UpdateDataLakeNamespaceResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::SupplyChain::DataLakeNamespace', traits => ['NameInRequest'], request_name => 'namespace', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::UpdateDataLakeNamespaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => L<Paws::SupplyChain::DataLakeNamespace>

The updated namespace details.


=head2 _request_id => Str


=cut


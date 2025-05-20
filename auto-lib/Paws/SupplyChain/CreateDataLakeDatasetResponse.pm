
package Paws::SupplyChain::CreateDataLakeDatasetResponse;
  use Moose;
  has Dataset => (is => 'ro', isa => 'Paws::SupplyChain::DataLakeDataset', traits => ['NameInRequest'], request_name => 'dataset', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateDataLakeDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Dataset => L<Paws::SupplyChain::DataLakeDataset>

The detail of created dataset.


=head2 _request_id => Str


=cut


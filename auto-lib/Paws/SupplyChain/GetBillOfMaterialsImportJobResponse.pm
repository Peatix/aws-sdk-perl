
package Paws::SupplyChain::GetBillOfMaterialsImportJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::SupplyChain::BillOfMaterialsImportJob', traits => ['NameInRequest'], request_name => 'job', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetBillOfMaterialsImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => L<Paws::SupplyChain::BillOfMaterialsImportJob>

The BillOfMaterialsImportJob.


=head2 _request_id => Str


=cut


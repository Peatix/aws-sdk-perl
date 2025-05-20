
package Paws::SupplyChain::CreateBillOfMaterialsImportJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateBillOfMaterialsImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The new BillOfMaterialsImportJob identifier.


=head2 _request_id => Str


=cut


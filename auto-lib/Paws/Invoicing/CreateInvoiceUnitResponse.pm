
package Paws::Invoicing::CreateInvoiceUnitResponse;
  use Moose;
  has InvoiceUnitArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::CreateInvoiceUnitResponse

=head1 ATTRIBUTES


=head2 InvoiceUnitArn => Str

The ARN to identify an invoice unit. This information can't be modified
or deleted.


=head2 _request_id => Str


=cut

1;

package Paws::Invoicing::ListInvoiceUnitsResponse;
  use Moose;
  has InvoiceUnits => (is => 'ro', isa => 'ArrayRef[Paws::Invoicing::InvoiceUnit]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::ListInvoiceUnitsResponse

=head1 ATTRIBUTES


=head2 InvoiceUnits => ArrayRef[L<Paws::Invoicing::InvoiceUnit>]

An invoice unit is a set of mutually exclusive accounts that correspond
to your business entity.


=head2 NextToken => Str

The next token used to indicate where the returned list should start
from.


=head2 _request_id => Str


=cut

1;
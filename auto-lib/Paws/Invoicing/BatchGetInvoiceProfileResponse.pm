
package Paws::Invoicing::BatchGetInvoiceProfileResponse;
  use Moose;
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::Invoicing::InvoiceProfile]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::BatchGetInvoiceProfileResponse

=head1 ATTRIBUTES


=head2 Profiles => ArrayRef[L<Paws::Invoicing::InvoiceProfile>]

A list of invoice profiles corresponding to the requested accounts.


=head2 _request_id => Str


=cut

1;
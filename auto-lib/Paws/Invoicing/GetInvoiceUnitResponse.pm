
package Paws::Invoicing::GetInvoiceUnitResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InvoiceReceiver => (is => 'ro', isa => 'Str');
  has InvoiceUnitArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::Invoicing::InvoiceUnitRule');
  has TaxInheritanceDisabled => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::GetInvoiceUnitResponse

=head1 ATTRIBUTES


=head2 Description => Str

The assigned description for an invoice unit.


=head2 InvoiceReceiver => Str

The Amazon Web Services account ID chosen to be the receiver of an
invoice unit. All invoices generated for that invoice unit will be sent
to this account ID.


=head2 InvoiceUnitArn => Str

The ARN to identify an invoice unit. This information can't be modified
or deleted.


=head2 LastModified => Str

The most recent date the invoice unit response was updated.


=head2 Name => Str

The unique name of the invoice unit that is shown on the generated
invoice.


=head2 Rule => L<Paws::Invoicing::InvoiceUnitRule>




=head2 TaxInheritanceDisabled => Bool

Whether the invoice unit based tax inheritance is/ should be enabled or
disabled.


=head2 _request_id => Str


=cut

1;
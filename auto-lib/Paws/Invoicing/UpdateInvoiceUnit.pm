
package Paws::Invoicing::UpdateInvoiceUnit;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InvoiceUnitArn => (is => 'ro', isa => 'Str', required => 1);
  has Rule => (is => 'ro', isa => 'Paws::Invoicing::InvoiceUnitRule');
  has TaxInheritanceDisabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInvoiceUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Invoicing::UpdateInvoiceUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::UpdateInvoiceUnit - Arguments for method UpdateInvoiceUnit on L<Paws::Invoicing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInvoiceUnit on the
L<AWS Invoicing|Paws::Invoicing> service. Use the attributes of this class
as arguments to method UpdateInvoiceUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInvoiceUnit.

=head1 SYNOPSIS

    my $invoicing = Paws->service('Invoicing');
    my $UpdateInvoiceUnitResponse = $invoicing->UpdateInvoiceUnit(
      InvoiceUnitArn => 'MyInvoiceUnitArnString',
      Description    => 'MyDescriptionString',      # OPTIONAL
      Rule           => {
        LinkedAccounts => [ 'MyAccountIdString', ... ]
        ,    # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
      TaxInheritanceDisabled => 1,    # OPTIONAL
    );

    # Results:
    my $InvoiceUnitArn = $UpdateInvoiceUnitResponse->InvoiceUnitArn;

    # Returns a L<Paws::Invoicing::UpdateInvoiceUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing/UpdateInvoiceUnit>

=head1 ATTRIBUTES


=head2 Description => Str

The assigned description for an invoice unit. This information can't be
modified or deleted.



=head2 B<REQUIRED> InvoiceUnitArn => Str

The ARN to identify an invoice unit. This information can't be modified
or deleted.



=head2 Rule => L<Paws::Invoicing::InvoiceUnitRule>

The C<InvoiceUnitRule> object used to update invoice units.



=head2 TaxInheritanceDisabled => Bool

Whether the invoice unit based tax inheritance is/ should be enabled or
disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInvoiceUnit in L<Paws::Invoicing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


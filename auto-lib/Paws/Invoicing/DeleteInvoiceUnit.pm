
package Paws::Invoicing::DeleteInvoiceUnit;
  use Moose;
  has InvoiceUnitArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInvoiceUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Invoicing::DeleteInvoiceUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::DeleteInvoiceUnit - Arguments for method DeleteInvoiceUnit on L<Paws::Invoicing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInvoiceUnit on the
L<AWS Invoicing|Paws::Invoicing> service. Use the attributes of this class
as arguments to method DeleteInvoiceUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInvoiceUnit.

=head1 SYNOPSIS

    my $invoicing = Paws->service('Invoicing');
    my $DeleteInvoiceUnitResponse = $invoicing->DeleteInvoiceUnit(
      InvoiceUnitArn => 'MyInvoiceUnitArnString',

    );

    # Results:
    my $InvoiceUnitArn = $DeleteInvoiceUnitResponse->InvoiceUnitArn;

    # Returns a L<Paws::Invoicing::DeleteInvoiceUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing/DeleteInvoiceUnit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvoiceUnitArn => Str

The ARN to identify an invoice unit. This information can't be modified
or deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInvoiceUnit in L<Paws::Invoicing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


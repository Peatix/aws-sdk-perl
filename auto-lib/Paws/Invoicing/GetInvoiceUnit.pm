
package Paws::Invoicing::GetInvoiceUnit;
  use Moose;
  has AsOf => (is => 'ro', isa => 'Str');
  has InvoiceUnitArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInvoiceUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Invoicing::GetInvoiceUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::GetInvoiceUnit - Arguments for method GetInvoiceUnit on L<Paws::Invoicing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInvoiceUnit on the
L<AWS Invoicing|Paws::Invoicing> service. Use the attributes of this class
as arguments to method GetInvoiceUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInvoiceUnit.

=head1 SYNOPSIS

    my $invoicing = Paws->service('Invoicing');
    my $GetInvoiceUnitResponse = $invoicing->GetInvoiceUnit(
      InvoiceUnitArn => 'MyInvoiceUnitArnString',
      AsOf           => '1970-01-01T01:00:00',      # OPTIONAL
    );

    # Results:
    my $Description     = $GetInvoiceUnitResponse->Description;
    my $InvoiceReceiver = $GetInvoiceUnitResponse->InvoiceReceiver;
    my $InvoiceUnitArn  = $GetInvoiceUnitResponse->InvoiceUnitArn;
    my $LastModified    = $GetInvoiceUnitResponse->LastModified;
    my $Name            = $GetInvoiceUnitResponse->Name;
    my $Rule            = $GetInvoiceUnitResponse->Rule;
    my $TaxInheritanceDisabled =
      $GetInvoiceUnitResponse->TaxInheritanceDisabled;

    # Returns a L<Paws::Invoicing::GetInvoiceUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing/GetInvoiceUnit>

=head1 ATTRIBUTES


=head2 AsOf => Str

The state of an invoice unit at a specified time. You can see legacy
invoice units that are currently deleted if the C<AsOf> time is set to
before it was deleted. If an C<AsOf> is not provided, the default value
is the current time.



=head2 B<REQUIRED> InvoiceUnitArn => Str

The ARN to identify an invoice unit. This information can't be modified
or deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInvoiceUnit in L<Paws::Invoicing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


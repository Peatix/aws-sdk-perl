
package Paws::Invoicing::ListInvoiceUnits;
  use Moose;
  has AsOf => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Invoicing::Filters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvoiceUnits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Invoicing::ListInvoiceUnitsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::ListInvoiceUnits - Arguments for method ListInvoiceUnits on L<Paws::Invoicing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInvoiceUnits on the
L<AWS Invoicing|Paws::Invoicing> service. Use the attributes of this class
as arguments to method ListInvoiceUnits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInvoiceUnits.

=head1 SYNOPSIS

    my $invoicing = Paws->service('Invoicing');
    my $ListInvoiceUnitsResponse = $invoicing->ListInvoiceUnits(
      AsOf    => '1970-01-01T01:00:00',    # OPTIONAL
      Filters => {
        Accounts => [ 'MyAccountIdString', ... ],  # min: 1, max: 1000; OPTIONAL
        InvoiceReceivers => [ 'MyAccountIdString', ... ]
        ,                                          # min: 1, max: 1000; OPTIONAL
        Names => [
          'MyInvoiceUnitName', ...                 # min: 1, max: 50
        ],    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextTokenString',    # OPTIONAL
    );

    # Results:
    my $InvoiceUnits = $ListInvoiceUnitsResponse->InvoiceUnits;
    my $NextToken    = $ListInvoiceUnitsResponse->NextToken;

    # Returns a L<Paws::Invoicing::ListInvoiceUnitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing/ListInvoiceUnits>

=head1 ATTRIBUTES


=head2 AsOf => Str

The state of an invoice unit at a specified time. You can see legacy
invoice units that are currently deleted if the C<AsOf> time is set to
before it was deleted. If an C<AsOf> is not provided, the default value
is the current time.



=head2 Filters => L<Paws::Invoicing::Filters>

An optional input to the list API. If multiple filters are specified,
the returned list will be a configuration that match all of the
provided filters. Supported filter types are C<InvoiceReceivers>,
C<Names>, and C<Accounts>.



=head2 MaxResults => Int

The maximum number of invoice units that can be returned.



=head2 NextToken => Str

The next token used to indicate where the returned list should start
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInvoiceUnits in L<Paws::Invoicing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


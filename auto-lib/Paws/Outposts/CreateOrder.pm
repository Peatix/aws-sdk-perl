
package Paws::Outposts::CreateOrder;
  use Moose;
  has LineItems => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::LineItemRequest]', required => 1);
  has OutpostIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PaymentOption => (is => 'ro', isa => 'Str', required => 1);
  has PaymentTerm => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOrder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/orders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::CreateOrderOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::CreateOrder - Arguments for method CreateOrder on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOrder on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method CreateOrder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOrder.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $CreateOrderOutput = $outposts->CreateOrder(
      LineItems => [
        {
          CatalogItemId => 'MySkuCode',    # min: 1, max: 10; OPTIONAL
          Quantity      => 1,              # min: 1; OPTIONAL
        },
        ...
      ],
      OutpostIdentifier => 'MyOutpostIdentifier',
      PaymentOption     => 'ALL_UPFRONT',
      PaymentTerm       => 'THREE_YEARS',           # OPTIONAL
    );

    # Results:
    my $Order = $CreateOrderOutput->Order;

    # Returns a L<Paws::Outposts::CreateOrderOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/CreateOrder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LineItems => ArrayRef[L<Paws::Outposts::LineItemRequest>]

The line items that make up the order.



=head2 B<REQUIRED> OutpostIdentifier => Str

The ID or the Amazon Resource Name (ARN) of the Outpost.



=head2 B<REQUIRED> PaymentOption => Str

The payment option.

Valid values are: C<"ALL_UPFRONT">, C<"NO_UPFRONT">, C<"PARTIAL_UPFRONT">

=head2 PaymentTerm => Str

The payment terms.

Valid values are: C<"THREE_YEARS">, C<"ONE_YEAR">, C<"FIVE_YEARS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOrder in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


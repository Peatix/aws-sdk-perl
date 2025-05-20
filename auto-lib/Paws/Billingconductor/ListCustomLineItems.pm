
package Paws::Billingconductor::ListCustomLineItems;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListCustomLineItemsFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomLineItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-custom-line-items');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListCustomLineItemsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListCustomLineItems - Arguments for method ListCustomLineItems on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomLineItems on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListCustomLineItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomLineItems.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListCustomLineItemsOutput = $billingconductor->ListCustomLineItems(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        AccountIds => [ 'MyAccountId', ... ],      # min: 1, max: 30; OPTIONAL
        Arns => [ 'MyCustomLineItemArn', ... ],    # min: 1, max: 100; OPTIONAL
        BillingGroups => [ 'MyBillingGroupArn', ... ]
        ,                                          # min: 1, max: 100; OPTIONAL
        Names => [
          'MyCustomLineItemName', ...              # min: 1, max: 128
        ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $CustomLineItems = $ListCustomLineItemsOutput->CustomLineItems;
    my $NextToken       = $ListCustomLineItemsOutput->NextToken;

    # Returns a L<Paws::Billingconductor::ListCustomLineItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListCustomLineItems>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period to get custom line items (FFLIs).



=head2 Filters => L<Paws::Billingconductor::ListCustomLineItemsFilter>

A C<ListCustomLineItemsFilter> that specifies the custom line item
names and/or billing group Amazon Resource Names (ARNs) to retrieve
FFLI information.



=head2 MaxResults => Int

The maximum number of billing groups to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent calls to get custom line
items (FFLIs).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomLineItems in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


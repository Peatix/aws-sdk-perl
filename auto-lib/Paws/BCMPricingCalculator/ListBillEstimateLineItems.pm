
package Paws::BCMPricingCalculator::ListBillEstimateLineItems;
  use Moose;
  has BillEstimateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billEstimateId' , required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::ListBillEstimateLineItemsFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillEstimateLineItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListBillEstimateLineItems - Arguments for method ListBillEstimateLineItems on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillEstimateLineItems on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method ListBillEstimateLineItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillEstimateLineItems.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $ListBillEstimateLineItemsResponse =
      $bcm -pricing-calculator->ListBillEstimateLineItems(
      BillEstimateId => 'MyResourceId',
      Filters        => [
        {
          Name => 'USAGE_ACCOUNT_ID'
          , # values: USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, LINE_ITEM_TYPE
          Values      => [ 'MyString', ... ],
          MatchOption =>
            'EQUALS',    # values: EQUALS, STARTS_WITH, CONTAINS; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListBillEstimateLineItemsResponse->Items;
    my $NextToken = $ListBillEstimateLineItemsResponse->NextToken;

# Returns a L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/ListBillEstimateLineItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillEstimateId => Str

The unique identifier of the bill estimate to list line items for.



=head2 Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsFilter>]

Filters to apply to the list of line items.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

A token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillEstimateLineItems in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::BCMPricingCalculator::ListBillScenarioUsageModifications;
  use Moose;
  has BillScenarioId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billScenarioId' , required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::ListUsageFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillScenarioUsageModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListBillScenarioUsageModifications - Arguments for method ListBillScenarioUsageModifications on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillScenarioUsageModifications on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method ListBillScenarioUsageModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillScenarioUsageModifications.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $ListBillScenarioUsageModificationsResponse =
      $bcm -pricing-calculator->ListBillScenarioUsageModifications(
      BillScenarioId => 'MyResourceId',
      Filters        => [
        {
          Name => 'USAGE_ACCOUNT_ID'
          , # values: USAGE_ACCOUNT_ID, SERVICE_CODE, USAGE_TYPE, OPERATION, LOCATION, USAGE_GROUP, HISTORICAL_USAGE_ACCOUNT_ID, HISTORICAL_SERVICE_CODE, HISTORICAL_USAGE_TYPE, HISTORICAL_OPERATION, HISTORICAL_LOCATION
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
    my $Items     = $ListBillScenarioUsageModificationsResponse->Items;
    my $NextToken = $ListBillScenarioUsageModificationsResponse->NextToken;

# Returns a L<Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/ListBillScenarioUsageModifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillScenarioId => Str

The unique identifier of the bill scenario to list usage modifications
for.



=head2 Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>]

Filters to apply to the list of usage modifications.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

A token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillScenarioUsageModifications in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


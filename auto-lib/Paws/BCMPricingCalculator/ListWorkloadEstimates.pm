
package Paws::BCMPricingCalculator::ListWorkloadEstimates;
  use Moose;
  has CreatedAtFilter => (is => 'ro', isa => 'Paws::BCMPricingCalculator::FilterTimestamp', traits => ['NameInRequest'], request_name => 'createdAtFilter' );
  has ExpiresAtFilter => (is => 'ro', isa => 'Paws::BCMPricingCalculator::FilterTimestamp', traits => ['NameInRequest'], request_name => 'expiresAtFilter' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::ListWorkloadEstimatesFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkloadEstimates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::ListWorkloadEstimatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListWorkloadEstimates - Arguments for method ListWorkloadEstimates on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkloadEstimates on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method ListWorkloadEstimates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkloadEstimates.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $ListWorkloadEstimatesResponse =
      $bcm -pricing-calculator->ListWorkloadEstimates(
      CreatedAtFilter => {
        AfterTimestamp  => '1970-01-01T01:00:00',    # OPTIONAL
        BeforeTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      ExpiresAtFilter => {
        AfterTimestamp  => '1970-01-01T01:00:00',    # OPTIONAL
        BeforeTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      Filters => [
        {
          Name        => 'STATUS',              # values: STATUS, NAME
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
    my $Items     = $ListWorkloadEstimatesResponse->Items;
    my $NextToken = $ListWorkloadEstimatesResponse->NextToken;

# Returns a L<Paws::BCMPricingCalculator::ListWorkloadEstimatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/ListWorkloadEstimates>

=head1 ATTRIBUTES


=head2 CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>

Filter workload estimates based on the creation date.



=head2 ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>

Filter workload estimates based on the expiration date.



=head2 Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListWorkloadEstimatesFilter>]

Filters to apply to the list of workload estimates.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

A token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkloadEstimates in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


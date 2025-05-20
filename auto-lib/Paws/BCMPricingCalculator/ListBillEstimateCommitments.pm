
package Paws::BCMPricingCalculator::ListBillEstimateCommitments;
  use Moose;
  has BillEstimateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billEstimateId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillEstimateCommitments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::ListBillEstimateCommitmentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListBillEstimateCommitments - Arguments for method ListBillEstimateCommitments on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillEstimateCommitments on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method ListBillEstimateCommitments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillEstimateCommitments.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $ListBillEstimateCommitmentsResponse =
      $bcm -pricing-calculator->ListBillEstimateCommitments(
      BillEstimateId => 'MyResourceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextPageToken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListBillEstimateCommitmentsResponse->Items;
    my $NextToken = $ListBillEstimateCommitmentsResponse->NextToken;

# Returns a L<Paws::BCMPricingCalculator::ListBillEstimateCommitmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/ListBillEstimateCommitments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillEstimateId => Str

The unique identifier of the bill estimate to list commitments for.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

A token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillEstimateCommitments in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


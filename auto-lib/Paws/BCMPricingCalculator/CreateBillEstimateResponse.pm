
package Paws::BCMPricingCalculator::CreateBillEstimateResponse;
  use Moose;
  has BillInterval => (is => 'ro', isa => 'Paws::BCMPricingCalculator::BillInterval', traits => ['NameInRequest'], request_name => 'billInterval' );
  has CostSummary => (is => 'ro', isa => 'Paws::BCMPricingCalculator::BillEstimateCostSummary', traits => ['NameInRequest'], request_name => 'costSummary' );
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' );
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::CreateBillEstimateResponse

=head1 ATTRIBUTES


=head2 BillInterval => L<Paws::BCMPricingCalculator::BillInterval>

The bill month start and end timestamp that was used to create the Bill
estimate. This is set to the last complete anniversary bill month start
and end timestamp.


=head2 CostSummary => L<Paws::BCMPricingCalculator::BillEstimateCostSummary>

Returns summary-level cost information once a Bill estimate is
successfully generated. This summary includes: 1) the total cost
difference, showing the pre-tax cost change for the consolidated
billing family between the completed anniversary bill and the estimated
bill, and 2) total cost differences per service, detailing the pre-tax
cost of each service, comparing the completed anniversary bill to the
estimated bill on a per-service basis.


=head2 CreatedAt => Str

The timestamp of when the Bill estimate create process was started (not
when it successfully completed or failed).


=head2 ExpiresAt => Str

The timestamp of when the Bill estimate will expire. A Bill estimate
becomes inaccessible after expiration.


=head2 FailureMessage => Str

This attribute provides the reason if a Bill estimate result generation
fails.


=head2 B<REQUIRED> Id => Str

The unique identifier of your newly created Bill estimate.


=head2 Name => Str

The name of your newly created Bill estimate.


=head2 Status => Str

The status of your newly created Bill estimate. Bill estimate creation
can take anywhere between 8 to 12 hours. The status will allow you to
identify when the Bill estimate is complete or has failed.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">
=head2 _request_id => Str


=cut

1;

package Paws::BCMPricingCalculator::CreateWorkloadEstimateResponse;
  use Moose;
  has CostCurrency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'costCurrency' );
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' );
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has RateTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rateTimestamp' );
  has RateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rateType' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TotalCost => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'totalCost' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::CreateWorkloadEstimateResponse

=head1 ATTRIBUTES


=head2 CostCurrency => Str

The currency of the estimated cost.

Valid values are: C<"USD">
=head2 CreatedAt => Str

The timestamp when the workload estimate was created.


=head2 ExpiresAt => Str

The timestamp when the workload estimate will expire.


=head2 FailureMessage => Str

An error message if the workload estimate creation failed.


=head2 B<REQUIRED> Id => Str

The unique identifier for the created workload estimate.


=head2 Name => Str

The name of the created workload estimate.


=head2 RateTimestamp => Str

The timestamp of the pricing rates used for the estimate.


=head2 RateType => Str

The type of pricing rates used for the estimate.

Valid values are: C<"BEFORE_DISCOUNTS">, C<"AFTER_DISCOUNTS">
=head2 Status => Str

The current status of the workload estimate.

Valid values are: C<"UPDATING">, C<"VALID">, C<"INVALID">, C<"ACTION_NEEDED">
=head2 TotalCost => Num

The total estimated cost for the workload.


=head2 _request_id => Str


=cut

1;
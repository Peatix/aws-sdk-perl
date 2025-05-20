
package Paws::BCMPricingCalculator::UpdateBillEstimateResponse;
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

Paws::BCMPricingCalculator::UpdateBillEstimateResponse

=head1 ATTRIBUTES


=head2 BillInterval => L<Paws::BCMPricingCalculator::BillInterval>

The time period covered by the updated bill estimate.


=head2 CostSummary => L<Paws::BCMPricingCalculator::BillEstimateCostSummary>

A summary of the updated estimated costs.


=head2 CreatedAt => Str

The timestamp when the bill estimate was originally created.


=head2 ExpiresAt => Str

The updated expiration timestamp for the bill estimate.


=head2 FailureMessage => Str

An error message if the bill estimate update failed.


=head2 B<REQUIRED> Id => Str

The unique identifier of the updated bill estimate.


=head2 Name => Str

The updated name of the bill estimate.


=head2 Status => Str

The current status of the updated bill estimate.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
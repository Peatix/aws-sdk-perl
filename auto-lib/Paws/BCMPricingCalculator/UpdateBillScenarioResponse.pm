
package Paws::BCMPricingCalculator::UpdateBillScenarioResponse;
  use Moose;
  has BillInterval => (is => 'ro', isa => 'Paws::BCMPricingCalculator::BillInterval', traits => ['NameInRequest'], request_name => 'billInterval' );
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' );
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt' );
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdateBillScenarioResponse

=head1 ATTRIBUTES


=head2 BillInterval => L<Paws::BCMPricingCalculator::BillInterval>

The time period covered by the updated bill scenario.


=head2 CreatedAt => Str

The timestamp when the bill scenario was originally created.


=head2 ExpiresAt => Str

The updated expiration timestamp for the bill scenario.


=head2 FailureMessage => Str

An error message if the bill scenario update failed.


=head2 B<REQUIRED> Id => Str

The unique identifier of the updated bill scenario.


=head2 Name => Str

The updated name of the bill scenario.


=head2 Status => Str

The current status of the updated bill scenario.

Valid values are: C<"READY">, C<"LOCKED">, C<"FAILED">, C<"STALE">
=head2 _request_id => Str


=cut

1;
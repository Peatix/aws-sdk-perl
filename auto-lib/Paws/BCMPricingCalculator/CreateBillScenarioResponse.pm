
package Paws::BCMPricingCalculator::CreateBillScenarioResponse;
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

Paws::BCMPricingCalculator::CreateBillScenarioResponse

=head1 ATTRIBUTES


=head2 BillInterval => L<Paws::BCMPricingCalculator::BillInterval>

The time period covered by the bill scenario.


=head2 CreatedAt => Str

The timestamp when the bill scenario was created.


=head2 ExpiresAt => Str

The timestamp when the bill scenario will expire.


=head2 FailureMessage => Str

An error message if the bill scenario creation failed.


=head2 B<REQUIRED> Id => Str

The unique identifier for the created bill scenario.


=head2 Name => Str

The name of the created bill scenario.


=head2 Status => Str

The current status of the bill scenario.

Valid values are: C<"READY">, C<"LOCKED">, C<"FAILED">, C<"STALE">
=head2 _request_id => Str


=cut

1;
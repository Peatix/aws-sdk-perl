
package Paws::CostOptimizationHub::GetPreferencesResponse;
  use Moose;
  has MemberAccountDiscountVisibility => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountDiscountVisibility' );
  has SavingsEstimationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsEstimationMode' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::GetPreferencesResponse

=head1 ATTRIBUTES


=head2 MemberAccountDiscountVisibility => Str

Retrieves the status of the "member account discount visibility"
preference.

Valid values are: C<"All">, C<"None">
=head2 SavingsEstimationMode => Str

Retrieves the status of the "savings estimation mode" preference.

Valid values are: C<"BeforeDiscounts">, C<"AfterDiscounts">
=head2 _request_id => Str


=cut

1;
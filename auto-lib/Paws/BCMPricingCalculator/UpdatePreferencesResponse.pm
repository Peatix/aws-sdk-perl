
package Paws::BCMPricingCalculator::UpdatePreferencesResponse;
  use Moose;
  has ManagementAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managementAccountRateTypeSelections' );
  has MemberAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'memberAccountRateTypeSelections' );
  has StandaloneAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'standaloneAccountRateTypeSelections' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdatePreferencesResponse

=head1 ATTRIBUTES


=head2 ManagementAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for the management account.


=head2 MemberAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for member accounts.


=head2 StandaloneAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for a standalone account.


=head2 _request_id => Str


=cut

1;
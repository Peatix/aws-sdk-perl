
package Paws::BCMPricingCalculator::UpdatePreferences;
  use Moose;
  has ManagementAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managementAccountRateTypeSelections' );
  has MemberAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'memberAccountRateTypeSelections' );
  has StandaloneAccountRateTypeSelections => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'standaloneAccountRateTypeSelections' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMPricingCalculator::UpdatePreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::UpdatePreferences - Arguments for method UpdatePreferences on L<Paws::BCMPricingCalculator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePreferences on the
L<AWS Billing and Cost Management Pricing Calculator|Paws::BCMPricingCalculator> service. Use the attributes of this class
as arguments to method UpdatePreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePreferences.

=head1 SYNOPSIS

    my $bcm-pricing-calculator = Paws->service('BCMPricingCalculator');
    my $UpdatePreferencesResponse = $bcm -pricing-calculator->UpdatePreferences(
      ManagementAccountRateTypeSelections => [
        'BEFORE_DISCOUNTS', ...    # values: BEFORE_DISCOUNTS, AFTER_DISCOUNTS
      ],    # OPTIONAL
      MemberAccountRateTypeSelections => [
        'BEFORE_DISCOUNTS', ...    # values: BEFORE_DISCOUNTS, AFTER_DISCOUNTS
      ],    # OPTIONAL
      StandaloneAccountRateTypeSelections => [
        'BEFORE_DISCOUNTS', ...    # values: BEFORE_DISCOUNTS, AFTER_DISCOUNTS
      ],    # OPTIONAL
    );

    # Results:
    my $ManagementAccountRateTypeSelections =
      $UpdatePreferencesResponse->ManagementAccountRateTypeSelections;
    my $MemberAccountRateTypeSelections =
      $UpdatePreferencesResponse->MemberAccountRateTypeSelections;
    my $StandaloneAccountRateTypeSelections =
      $UpdatePreferencesResponse->StandaloneAccountRateTypeSelections;

    # Returns a L<Paws::BCMPricingCalculator::UpdatePreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator/UpdatePreferences>

=head1 ATTRIBUTES


=head2 ManagementAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for the management account.



=head2 MemberAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for member accounts.



=head2 StandaloneAccountRateTypeSelections => ArrayRef[Str|Undef]

The updated preferred rate types for a standalone account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePreferences in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


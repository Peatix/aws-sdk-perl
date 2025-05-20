
package Paws::CostOptimizationHub::UpdatePreferences;
  use Moose;
  has MemberAccountDiscountVisibility => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountDiscountVisibility' );
  has SavingsEstimationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsEstimationMode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostOptimizationHub::UpdatePreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::UpdatePreferences - Arguments for method UpdatePreferences on L<Paws::CostOptimizationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePreferences on the
L<Cost Optimization Hub|Paws::CostOptimizationHub> service. Use the attributes of this class
as arguments to method UpdatePreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePreferences.

=head1 SYNOPSIS

    my $cost-optimization-hub = Paws->service('CostOptimizationHub');
    my $UpdatePreferencesResponse = $cost -optimization-hub->UpdatePreferences(
      MemberAccountDiscountVisibility => 'All',                # OPTIONAL
      SavingsEstimationMode           => 'BeforeDiscounts',    # OPTIONAL
    );

    # Results:
    my $MemberAccountDiscountVisibility =
      $UpdatePreferencesResponse->MemberAccountDiscountVisibility;
    my $SavingsEstimationMode =
      $UpdatePreferencesResponse->SavingsEstimationMode;

    # Returns a L<Paws::CostOptimizationHub::UpdatePreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub/UpdatePreferences>

=head1 ATTRIBUTES


=head2 MemberAccountDiscountVisibility => Str

Sets the "member account discount visibility" preference.

Valid values are: C<"All">, C<"None">

=head2 SavingsEstimationMode => Str

Sets the "savings estimation mode" preference.

Valid values are: C<"BeforeDiscounts">, C<"AfterDiscounts">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePreferences in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


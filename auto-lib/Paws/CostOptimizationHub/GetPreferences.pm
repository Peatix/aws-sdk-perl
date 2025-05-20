
package Paws::CostOptimizationHub::GetPreferences;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostOptimizationHub::GetPreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::GetPreferences - Arguments for method GetPreferences on L<Paws::CostOptimizationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPreferences on the
L<Cost Optimization Hub|Paws::CostOptimizationHub> service. Use the attributes of this class
as arguments to method GetPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPreferences.

=head1 SYNOPSIS

    my $cost-optimization-hub = Paws->service('CostOptimizationHub');
    my $GetPreferencesResponse = $cost -optimization-hub->GetPreferences();

    # Results:
    my $MemberAccountDiscountVisibility =
      $GetPreferencesResponse->MemberAccountDiscountVisibility;
    my $SavingsEstimationMode = $GetPreferencesResponse->SavingsEstimationMode;

    # Returns a L<Paws::CostOptimizationHub::GetPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub/GetPreferences>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPreferences in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTTwinMaker::GetPricingPlan;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pricingplan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetPricingPlanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetPricingPlan - Arguments for method GetPricingPlan on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPricingPlan on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetPricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPricingPlan.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetPricingPlanResponse = $iottwinmaker->GetPricingPlan();

    # Results:
    my $CurrentPricingPlan = $GetPricingPlanResponse->CurrentPricingPlan;
    my $PendingPricingPlan = $GetPricingPlanResponse->PendingPricingPlan;

    # Returns a L<Paws::IoTTwinMaker::GetPricingPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetPricingPlan>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPricingPlan in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


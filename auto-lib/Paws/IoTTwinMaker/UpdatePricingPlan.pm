
package Paws::IoTTwinMaker::UpdatePricingPlan;
  use Moose;
  has BundleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'bundleNames');
  has PricingMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pricingMode', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePricingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pricingplan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::UpdatePricingPlanResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdatePricingPlan - Arguments for method UpdatePricingPlan on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePricingPlan on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method UpdatePricingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePricingPlan.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $UpdatePricingPlanResponse = $iottwinmaker->UpdatePricingPlan(
      PricingMode => 'BASIC',
      BundleNames => [
        'MyBundleName', ...    # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $CurrentPricingPlan = $UpdatePricingPlanResponse->CurrentPricingPlan;
    my $PendingPricingPlan = $UpdatePricingPlanResponse->PendingPricingPlan;

    # Returns a L<Paws::IoTTwinMaker::UpdatePricingPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/UpdatePricingPlan>

=head1 ATTRIBUTES


=head2 BundleNames => ArrayRef[Str|Undef]

The bundle names.



=head2 B<REQUIRED> PricingMode => Str

The pricing mode.

Valid values are: C<"BASIC">, C<"STANDARD">, C<"TIERED_BUNDLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePricingPlan in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


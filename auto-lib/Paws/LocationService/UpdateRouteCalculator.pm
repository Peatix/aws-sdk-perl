
package Paws::LocationService::UpdateRouteCalculator;
  use Moose;
  has CalculatorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatorName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRouteCalculator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routes/v0/calculators/{CalculatorName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdateRouteCalculatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateRouteCalculator - Arguments for method UpdateRouteCalculator on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRouteCalculator on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdateRouteCalculator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRouteCalculator.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdateRouteCalculatorResponse = $geo->UpdateRouteCalculator(
      CalculatorName => 'MyResourceName',
      Description    => 'MyResourceDescription',    # OPTIONAL
      PricingPlan    => 'RequestBasedUsage',        # OPTIONAL
    );

    # Results:
    my $CalculatorArn  = $UpdateRouteCalculatorResponse->CalculatorArn;
    my $CalculatorName = $UpdateRouteCalculatorResponse->CalculatorName;
    my $UpdateTime     = $UpdateRouteCalculatorResponse->UpdateTime;

    # Returns a L<Paws::LocationService::UpdateRouteCalculatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdateRouteCalculator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource to update.



=head2 Description => Str

Updates the description for the route calculator resource.



=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRouteCalculator in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


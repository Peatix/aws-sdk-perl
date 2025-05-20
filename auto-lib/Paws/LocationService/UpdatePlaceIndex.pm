
package Paws::LocationService::UpdatePlaceIndex;
  use Moose;
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::LocationService::DataSourceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePlaceIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdatePlaceIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdatePlaceIndex - Arguments for method UpdatePlaceIndex on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePlaceIndex on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdatePlaceIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePlaceIndex.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdatePlaceIndexResponse = $geo->UpdatePlaceIndex(
      IndexName               => 'MyResourceName',
      DataSourceConfiguration => {
        IntendedUse => 'SingleUse',    # values: SingleUse, Storage; OPTIONAL
      },    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      PricingPlan => 'RequestBasedUsage',        # OPTIONAL
    );

    # Results:
    my $IndexArn   = $UpdatePlaceIndexResponse->IndexArn;
    my $IndexName  = $UpdatePlaceIndexResponse->IndexName;
    my $UpdateTime = $UpdatePlaceIndexResponse->UpdateTime;

    # Returns a L<Paws::LocationService::UpdatePlaceIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdatePlaceIndex>

=head1 ATTRIBUTES


=head2 DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>

Updates the data storage option for the place index resource.



=head2 Description => Str

Updates the description for the place index resource.



=head2 B<REQUIRED> IndexName => Str

The name of the place index resource to update.



=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePlaceIndex in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


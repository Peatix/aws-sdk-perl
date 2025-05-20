
package Paws::LocationService::UpdateMap;
  use Moose;
  has ConfigurationUpdate => (is => 'ro', isa => 'Paws::LocationService::MapConfigurationUpdate');
  has Description => (is => 'ro', isa => 'Str');
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMap');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdateMapResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateMap - Arguments for method UpdateMap on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMap on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdateMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMap.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdateMapResponse = $geo->UpdateMap(
      MapName             => 'MyResourceName',
      ConfigurationUpdate => {
        CustomLayers => [
          'MyCustomLayer', ...    # min: 1, max: 100
        ],    # max: 10; OPTIONAL
        PoliticalView => 'MyCountryCode3OrEmpty',    # max: 3; OPTIONAL
      },    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      PricingPlan => 'RequestBasedUsage',        # OPTIONAL
    );

    # Results:
    my $MapArn     = $UpdateMapResponse->MapArn;
    my $MapName    = $UpdateMapResponse->MapName;
    my $UpdateTime = $UpdateMapResponse->UpdateTime;

    # Returns a L<Paws::LocationService::UpdateMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdateMap>

=head1 ATTRIBUTES


=head2 ConfigurationUpdate => L<Paws::LocationService::MapConfigurationUpdate>

Updates the parts of the map configuration that can be updated,
including the political view.



=head2 Description => Str

Updates the description for the map resource.



=head2 B<REQUIRED> MapName => Str

The name of the map resource to update.



=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMap in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


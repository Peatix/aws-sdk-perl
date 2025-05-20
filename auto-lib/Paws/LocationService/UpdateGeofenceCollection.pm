
package Paws::LocationService::UpdateGeofenceCollection;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str');
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGeofenceCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdateGeofenceCollectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateGeofenceCollection - Arguments for method UpdateGeofenceCollection on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGeofenceCollection on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdateGeofenceCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGeofenceCollection.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdateGeofenceCollectionResponse = $geo->UpdateGeofenceCollection(
      CollectionName        => 'MyResourceName',
      Description           => 'MyResourceDescription',    # OPTIONAL
      PricingPlan           => 'RequestBasedUsage',        # OPTIONAL
      PricingPlanDataSource => 'MyString',                 # OPTIONAL
    );

    # Results:
    my $CollectionArn  = $UpdateGeofenceCollectionResponse->CollectionArn;
    my $CollectionName = $UpdateGeofenceCollectionResponse->CollectionName;
    my $UpdateTime     = $UpdateGeofenceCollectionResponse->UpdateTime;

  # Returns a L<Paws::LocationService::UpdateGeofenceCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdateGeofenceCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection to update.



=head2 Description => Str

Updates the description for the geofence collection.



=head2 PricingPlan => Str

No longer used. If included, the only allowed value is
C<RequestBasedUsage>.

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 PricingPlanDataSource => Str

This parameter is no longer used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGeofenceCollection in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


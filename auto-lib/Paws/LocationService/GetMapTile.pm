
package Paws::LocationService::GetMapTile;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key');
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);
  has X => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'X', required => 1);
  has Y => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Y', required => 1);
  has Z => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Z', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapTile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetMapTileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapTile - Arguments for method GetMapTile on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapTile on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetMapTile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapTile.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetMapTileResponse = $geo->GetMapTile(
      MapName => 'MyResourceName',
      X       => 'MyGetMapTileRequestXString',
      Y       => 'MyGetMapTileRequestYString',
      Z       => 'MyGetMapTileRequestZString',
      Key     => 'MyApiKey',                     # OPTIONAL
    );

    # Results:
    my $Blob         = $GetMapTileResponse->Blob;
    my $CacheControl = $GetMapTileResponse->CacheControl;
    my $ContentType  = $GetMapTileResponse->ContentType;

    # Returns a L<Paws::LocationService::GetMapTileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetMapTile>

=head1 ATTRIBUTES


=head2 Key => Str

The optional API key
(https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html)
to authorize the request.



=head2 B<REQUIRED> MapName => Str

The map resource to retrieve the map tiles from.



=head2 B<REQUIRED> X => Str

The X axis value for the map tile.



=head2 B<REQUIRED> Y => Str

The Y axis value for the map tile.



=head2 B<REQUIRED> Z => Str

The zoom value for the map tile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapTile in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


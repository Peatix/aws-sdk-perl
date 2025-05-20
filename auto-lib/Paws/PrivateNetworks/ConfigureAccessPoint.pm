
package Paws::PrivateNetworks::ConfigureAccessPoint;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPointArn', required => 1);
  has CpiSecretKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpiSecretKey');
  has CpiUserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpiUserId');
  has CpiUsername => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpiUsername');
  has CpiUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cpiUserPassword');
  has Position => (is => 'ro', isa => 'Paws::PrivateNetworks::Position', traits => ['NameInRequest'], request_name => 'position');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureAccessPoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-resources/configure');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::ConfigureAccessPointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ConfigureAccessPoint - Arguments for method ConfigureAccessPoint on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureAccessPoint on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method ConfigureAccessPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureAccessPoint.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $ConfigureAccessPointResponse = $private -networks->ConfigureAccessPoint(
      AccessPointArn => 'MyArn',
      CpiSecretKey   =>
        'MyConfigureAccessPointRequestCpiSecretKeyString',    # OPTIONAL
      CpiUserId => 'MyConfigureAccessPointRequestCpiUserIdString',    # OPTIONAL
      CpiUserPassword =>
        'MyConfigureAccessPointRequestCpiUserPasswordString',         # OPTIONAL
      CpiUsername =>
        'MyConfigureAccessPointRequestCpiUsernameString',             # OPTIONAL
      Position => {
        Elevation          => 1,         # OPTIONAL
        ElevationReference => 'AGL',     # values: AGL, AMSL; OPTIONAL
        ElevationUnit      => 'FEET',    # values: FEET; OPTIONAL
        Latitude           => 1,         # OPTIONAL
        Longitude          => 1,         # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AccessPoint = $ConfigureAccessPointResponse->AccessPoint;

    # Returns a L<Paws::PrivateNetworks::ConfigureAccessPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/ConfigureAccessPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPointArn => Str

The Amazon Resource Name (ARN) of the network resource.



=head2 CpiSecretKey => Str

A Base64 encoded string of the CPI certificate associated with the CPI
user who is certifying the coordinates of the network resource.



=head2 CpiUserId => Str

The CPI user ID of the CPI user who is certifying the coordinates of
the network resource.



=head2 CpiUsername => Str

The CPI user name of the CPI user who is certifying the coordinates of
the radio unit.



=head2 CpiUserPassword => Str

The CPI password associated with the CPI certificate in
C<cpiSecretKey>.



=head2 Position => L<Paws::PrivateNetworks::Position>

The position of the network resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfigureAccessPoint in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


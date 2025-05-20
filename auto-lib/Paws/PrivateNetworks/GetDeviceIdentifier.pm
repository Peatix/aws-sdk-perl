
package Paws::PrivateNetworks::GetDeviceIdentifier;
  use Moose;
  has DeviceIdentifierArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceIdentifierArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceIdentifier');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/device-identifiers/{deviceIdentifierArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::GetDeviceIdentifierResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::GetDeviceIdentifier - Arguments for method GetDeviceIdentifier on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceIdentifier on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method GetDeviceIdentifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceIdentifier.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $GetDeviceIdentifierResponse = $private -networks->GetDeviceIdentifier(
      DeviceIdentifierArn => 'MyArn',

    );

    # Results:
    my $DeviceIdentifier = $GetDeviceIdentifierResponse->DeviceIdentifier;
    my $Tags             = $GetDeviceIdentifierResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::GetDeviceIdentifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/GetDeviceIdentifier>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceIdentifierArn => Str

The Amazon Resource Name (ARN) of the device identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceIdentifier in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


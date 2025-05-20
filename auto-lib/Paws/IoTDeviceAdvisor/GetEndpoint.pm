
package Paws::IoTDeviceAdvisor::GetEndpoint;
  use Moose;
  has AuthenticationMethod => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'authenticationMethod');
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'certificateArn');
  has DeviceRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deviceRoleArn');
  has ThingArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::GetEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetEndpoint - Arguments for method GetEndpoint on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEndpoint on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method GetEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEndpoint.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $GetEndpointResponse = $api . iotdeviceadvisor->GetEndpoint(
      AuthenticationMethod => 'X509ClientCertificate',    # OPTIONAL
      CertificateArn       => 'MyAmazonResourceName',     # OPTIONAL
      DeviceRoleArn        => 'MyAmazonResourceName',     # OPTIONAL
      ThingArn             => 'MyAmazonResourceName',     # OPTIONAL
    );

    # Results:
    my $Endpoint = $GetEndpointResponse->Endpoint;

    # Returns a L<Paws::IoTDeviceAdvisor::GetEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/GetEndpoint>

=head1 ATTRIBUTES


=head2 AuthenticationMethod => Str

The authentication method used during the device connection.

Valid values are: C<"X509ClientCertificate">, C<"SignatureVersion4">

=head2 CertificateArn => Str

The certificate ARN of the device. This is an optional parameter.



=head2 DeviceRoleArn => Str

The device role ARN of the device. This is an optional parameter.



=head2 ThingArn => Str

The thing ARN of the device. This is an optional parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEndpoint in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


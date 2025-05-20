
package Paws::IoTManagedIntegrations::GetManagedThingCapabilities;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedThingCapabilities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things-capabilities/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetManagedThingCapabilitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingCapabilities - Arguments for method GetManagedThingCapabilities on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedThingCapabilities on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetManagedThingCapabilities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedThingCapabilities.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetManagedThingCapabilitiesResponse =
      $api . iotmanagedintegrations->GetManagedThingCapabilities(
      Identifier => 'MyManagedThingId',

      );

    # Results:
    my $Capabilities = $GetManagedThingCapabilitiesResponse->Capabilities;
    my $CapabilityReport =
      $GetManagedThingCapabilitiesResponse->CapabilityReport;
    my $ManagedThingId = $GetManagedThingCapabilitiesResponse->ManagedThingId;

# Returns a L<Paws::IoTManagedIntegrations::GetManagedThingCapabilitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetManagedThingCapabilities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The id of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedThingCapabilities in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


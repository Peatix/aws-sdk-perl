
package Paws::IoTManagedIntegrations::GetManagedThingConnectivityData;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedThingConnectivityData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things-connectivity-data/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetManagedThingConnectivityDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingConnectivityData - Arguments for method GetManagedThingConnectivityData on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedThingConnectivityData on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetManagedThingConnectivityData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedThingConnectivityData.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetManagedThingConnectivityDataResponse =
      $api . iotmanagedintegrations->GetManagedThingConnectivityData(
      Identifier => 'MyManagedThingId',

      );

    # Results:
    my $Connected = $GetManagedThingConnectivityDataResponse->Connected;
    my $DisconnectReason =
      $GetManagedThingConnectivityDataResponse->DisconnectReason;
    my $ManagedThingId =
      $GetManagedThingConnectivityDataResponse->ManagedThingId;
    my $Timestamp = $GetManagedThingConnectivityDataResponse->Timestamp;

# Returns a L<Paws::IoTManagedIntegrations::GetManagedThingConnectivityDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetManagedThingConnectivityData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The identifier of a managed thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedThingConnectivityData in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


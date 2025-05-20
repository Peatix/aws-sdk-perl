
package Paws::IoTManagedIntegrations::GetManagedThingMetaData;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedThingMetaData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things-metadata/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetManagedThingMetaDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingMetaData - Arguments for method GetManagedThingMetaData on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedThingMetaData on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetManagedThingMetaData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedThingMetaData.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetManagedThingMetaDataResponse =
      $api . iotmanagedintegrations->GetManagedThingMetaData(
      Identifier => 'MyManagedThingId',

      );

    # Results:
    my $ManagedThingId = $GetManagedThingMetaDataResponse->ManagedThingId;
    my $MetaData       = $GetManagedThingMetaDataResponse->MetaData;

# Returns a L<Paws::IoTManagedIntegrations::GetManagedThingMetaDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetManagedThingMetaData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The managed thing id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedThingMetaData in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


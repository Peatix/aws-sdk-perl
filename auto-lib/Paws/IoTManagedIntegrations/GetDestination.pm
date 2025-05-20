
package Paws::IoTManagedIntegrations::GetDestination;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetDestination - Arguments for method GetDestination on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDestination on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDestination.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetDestinationResponse = $api . iotmanagedintegrations->GetDestination(
      Name => 'MyDestinationName',

    );

    # Results:
    my $CreatedAt = $GetDestinationResponse->CreatedAt;
    my $DeliveryDestinationArn =
      $GetDestinationResponse->DeliveryDestinationArn;
    my $DeliveryDestinationType =
      $GetDestinationResponse->DeliveryDestinationType;
    my $Description = $GetDestinationResponse->Description;
    my $Name        = $GetDestinationResponse->Name;
    my $RoleArn     = $GetDestinationResponse->RoleArn;
    my $Tags        = $GetDestinationResponse->Tags;
    my $UpdatedAt   = $GetDestinationResponse->UpdatedAt;

    # Returns a L<Paws::IoTManagedIntegrations::GetDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the customer-managed destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDestination in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


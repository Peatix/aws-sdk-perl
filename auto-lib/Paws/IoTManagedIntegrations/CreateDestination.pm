
package Paws::IoTManagedIntegrations::CreateDestination;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeliveryDestinationArn => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryDestinationType => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateDestination - Arguments for method CreateDestination on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDestination on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDestination.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateDestinationResponse =
      $api . iotmanagedintegrations->CreateDestination(
      DeliveryDestinationArn  => 'MyDeliveryDestinationArn',
      DeliveryDestinationType => 'KINESIS',
      Name                    => 'MyDestinationName',
      RoleArn                 => 'MyDeliveryDestinationRoleArn',
      ClientToken             => 'MyClientToken',                  # OPTIONAL
      Description             => 'MyDestinationDescription',       # OPTIONAL
      Tags                    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Name = $CreateDestinationResponse->Name;

  # Returns a L<Paws::IoTManagedIntegrations::CreateDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateDestination>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 B<REQUIRED> DeliveryDestinationArn => Str

The Amazon Resource Name (ARN) of the customer-managed destination.



=head2 B<REQUIRED> DeliveryDestinationType => Str

The destination type for the customer-managed destination.

Valid values are: C<"KINESIS">

=head2 Description => Str

The description of the customer-managed destination.



=head2 B<REQUIRED> Name => Str

The name of the customer-managed destination.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the delivery destination role.



=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDestination in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


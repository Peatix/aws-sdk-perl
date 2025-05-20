
package Paws::IoTManagedIntegrations::UpdateDestination;
  use Moose;
  has DeliveryDestinationArn => (is => 'ro', isa => 'Str');
  has DeliveryDestinationType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::UpdateDestination - Arguments for method UpdateDestination on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDestination on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method UpdateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDestination.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    $api . iotmanagedintegrations->UpdateDestination(
      Name                    => 'MyDestinationName',
      DeliveryDestinationArn  => 'MyDeliveryDestinationArn',        # OPTIONAL
      DeliveryDestinationType => 'KINESIS',                         # OPTIONAL
      Description             => 'MyDestinationDescription',        # OPTIONAL
      RoleArn                 => 'MyDeliveryDestinationRoleArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/UpdateDestination>

=head1 ATTRIBUTES


=head2 DeliveryDestinationArn => Str

The Amazon Resource Name (ARN) of the customer-managed destination.



=head2 DeliveryDestinationType => Str

The destination type for the customer-managed destination.

Valid values are: C<"KINESIS">

=head2 Description => Str

The description of the customer-managed destination.



=head2 B<REQUIRED> Name => Str

The name of the customer-managed destination.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the delivery destination role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


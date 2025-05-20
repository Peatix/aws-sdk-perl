
package Paws::IoTManagedIntegrations::ResetRuntimeLogConfiguration;
  use Moose;
  has ManagedThingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ManagedThingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetRuntimeLogConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime-log-configurations/{ManagedThingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ResetRuntimeLogConfiguration - Arguments for method ResetRuntimeLogConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetRuntimeLogConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method ResetRuntimeLogConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetRuntimeLogConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    $api . iotmanagedintegrations->ResetRuntimeLogConfiguration(
      ManagedThingId => 'MyManagedThingId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/ResetRuntimeLogConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedThingId => Str

The id of a managed thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetRuntimeLogConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTManagedIntegrations::UpdateOtaTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has TaskConfigurationId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOtaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ota-tasks/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::UpdateOtaTask - Arguments for method UpdateOtaTask on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOtaTask on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method UpdateOtaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOtaTask.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    $api . iotmanagedintegrations->UpdateOtaTask(
      Identifier          => 'MyOtaTaskId',
      Description         => 'MyOtaDescription',            # OPTIONAL
      TaskConfigurationId => 'MyOtaTaskConfigurationId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/UpdateOtaTask>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the over-the-air (OTA) task.



=head2 B<REQUIRED> Identifier => Str

The over-the-air (OTA) task id.



=head2 TaskConfigurationId => Str

The identifier for the over-the-air (OTA) task configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOtaTask in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTWireless::UpdateWirelessDeviceImportTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkUpdateImportInfo', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWirelessDeviceImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless_device_import_task/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateWirelessDeviceImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateWirelessDeviceImportTask - Arguments for method UpdateWirelessDeviceImportTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWirelessDeviceImportTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateWirelessDeviceImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWirelessDeviceImportTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateWirelessDeviceImportTaskResponse =
      $api . iotwireless->UpdateWirelessDeviceImportTask(
      Id       => 'MyImportTaskId',
      Sidewalk => {
        DeviceCreationFile => 'MyDeviceCreationFile',    # max: 1024; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateWirelessDeviceImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the import task to be updated.



=head2 B<REQUIRED> Sidewalk => L<Paws::IoTWireless::SidewalkUpdateImportInfo>

The Sidewalk-related parameters of the import task to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWirelessDeviceImportTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTWireless::StartWirelessDeviceImportTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str', required => 1);
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkStartImportInfo', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartWirelessDeviceImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless_device_import_task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::StartWirelessDeviceImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::StartWirelessDeviceImportTask - Arguments for method StartWirelessDeviceImportTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartWirelessDeviceImportTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method StartWirelessDeviceImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartWirelessDeviceImportTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $StartWirelessDeviceImportTaskResponse =
      $api . iotwireless->StartWirelessDeviceImportTask(
      DestinationName => 'MyDestinationName',
      Sidewalk        => {
        DeviceCreationFile => 'MyDeviceCreationFile',    # max: 1024; OPTIONAL
        Role               => 'MyRole',                  # max: 2048; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',      # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn = $StartWirelessDeviceImportTaskResponse->Arn;
    my $Id  = $StartWirelessDeviceImportTaskResponse->Id;

 # Returns a L<Paws::IoTWireless::StartWirelessDeviceImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/StartWirelessDeviceImportTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> DestinationName => Str

The name of the Sidewalk destination that describes the IoT rule to
route messages from the devices in the import task that are onboarded
to AWS IoT Wireless.



=head2 B<REQUIRED> Sidewalk => L<Paws::IoTWireless::SidewalkStartImportInfo>

The Sidewalk-related parameters for importing wireless devices that
need to be provisioned in bulk.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartWirelessDeviceImportTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTWireless::StartSingleWirelessDeviceImportTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DestinationName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkSingleStartImportInfo', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSingleWirelessDeviceImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless_single_device_import_task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::StartSingleWirelessDeviceImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::StartSingleWirelessDeviceImportTask - Arguments for method StartSingleWirelessDeviceImportTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSingleWirelessDeviceImportTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method StartSingleWirelessDeviceImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSingleWirelessDeviceImportTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $StartSingleWirelessDeviceImportTaskResponse =
      $api . iotwireless->StartSingleWirelessDeviceImportTask(
      DestinationName => 'MyDestinationName',
      Sidewalk        => {
        SidewalkManufacturingSn =>
          'MySidewalkManufacturingSn',    # max: 64; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      DeviceName         => 'MyDeviceName',            # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn = $StartSingleWirelessDeviceImportTaskResponse->Arn;
    my $Id  = $StartSingleWirelessDeviceImportTaskResponse->Id;

# Returns a L<Paws::IoTWireless::StartSingleWirelessDeviceImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/StartSingleWirelessDeviceImportTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> DestinationName => Str

The name of the Sidewalk destination that describes the IoT rule to
route messages from the device in the import task that will be
onboarded to AWS IoT Wireless.



=head2 DeviceName => Str

The name of the wireless device for which an import task is being
started.



=head2 B<REQUIRED> Sidewalk => L<Paws::IoTWireless::SidewalkSingleStartImportInfo>

The Sidewalk-related parameters for importing a single wireless device.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSingleWirelessDeviceImportTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


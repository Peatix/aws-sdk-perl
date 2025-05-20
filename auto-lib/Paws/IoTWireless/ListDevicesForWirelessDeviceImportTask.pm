
package Paws::IoTWireless::ListDevicesForWirelessDeviceImportTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevicesForWirelessDeviceImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless_device_import_task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::ListDevicesForWirelessDeviceImportTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListDevicesForWirelessDeviceImportTask - Arguments for method ListDevicesForWirelessDeviceImportTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevicesForWirelessDeviceImportTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method ListDevicesForWirelessDeviceImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevicesForWirelessDeviceImportTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $ListDevicesForWirelessDeviceImportTaskResponse =
      $api . iotwireless->ListDevicesForWirelessDeviceImportTask(
      Id         => 'MyImportTaskId',
      MaxResults => 1,                  # OPTIONAL
      NextToken  => 'MyNextToken',      # OPTIONAL
      Status     => 'INITIALIZED',      # OPTIONAL
      );

    # Results:
    my $DestinationName =
      $ListDevicesForWirelessDeviceImportTaskResponse->DestinationName;
    my $ImportedWirelessDeviceList =
      $ListDevicesForWirelessDeviceImportTaskResponse
      ->ImportedWirelessDeviceList;
    my $NextToken = $ListDevicesForWirelessDeviceImportTaskResponse->NextToken;

# Returns a L<Paws::IoTWireless::ListDevicesForWirelessDeviceImportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/ListDevicesForWirelessDeviceImportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the import task for which wireless devices are
listed.



=head2 MaxResults => Int





=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise C<null> to receive the first set of
results.



=head2 Status => Str

The status of the devices in the import task.

Valid values are: C<"INITIALIZED">, C<"PENDING">, C<"ONBOARDED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevicesForWirelessDeviceImportTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


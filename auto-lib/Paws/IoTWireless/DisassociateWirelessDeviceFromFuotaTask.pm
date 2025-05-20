
package Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has WirelessDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WirelessDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateWirelessDeviceFromFuotaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::DisassociateWirelessDeviceFromFuotaTask - Arguments for method DisassociateWirelessDeviceFromFuotaTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateWirelessDeviceFromFuotaTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method DisassociateWirelessDeviceFromFuotaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateWirelessDeviceFromFuotaTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $DisassociateWirelessDeviceFromFuotaTaskResponse =
      $api . iotwireless->DisassociateWirelessDeviceFromFuotaTask(
      Id               => 'MyFuotaTaskId',
      WirelessDeviceId => 'MyWirelessDeviceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/DisassociateWirelessDeviceFromFuotaTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> WirelessDeviceId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateWirelessDeviceFromFuotaTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


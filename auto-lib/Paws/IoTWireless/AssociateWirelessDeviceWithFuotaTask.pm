
package Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has WirelessDeviceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateWirelessDeviceWithFuotaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fuota-tasks/{Id}/wireless-device');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateWirelessDeviceWithFuotaTask - Arguments for method AssociateWirelessDeviceWithFuotaTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateWirelessDeviceWithFuotaTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method AssociateWirelessDeviceWithFuotaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateWirelessDeviceWithFuotaTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $AssociateWirelessDeviceWithFuotaTaskResponse =
      $api . iotwireless->AssociateWirelessDeviceWithFuotaTask(
      Id               => 'MyFuotaTaskId',
      WirelessDeviceId => 'MyWirelessDeviceId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/AssociateWirelessDeviceWithFuotaTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> WirelessDeviceId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateWirelessDeviceWithFuotaTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


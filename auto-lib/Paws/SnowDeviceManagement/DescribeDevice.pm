
package Paws::SnowDeviceManagement::DescribeDevice;
  use Moose;
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'managedDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-device/{managedDeviceId}/describe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::DescribeDeviceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeDevice - Arguments for method DescribeDevice on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevice on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method DescribeDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevice.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $DescribeDeviceOutput = $snow -device-management->DescribeDevice(
      ManagedDeviceId => 'MyManagedDeviceId',

    );

    # Results:
    my $AssociatedWithJob = $DescribeDeviceOutput->AssociatedWithJob;
    my $DeviceCapacities  = $DescribeDeviceOutput->DeviceCapacities;
    my $DeviceState       = $DescribeDeviceOutput->DeviceState;
    my $DeviceType        = $DescribeDeviceOutput->DeviceType;
    my $LastReachedOutAt  = $DescribeDeviceOutput->LastReachedOutAt;
    my $LastUpdatedAt     = $DescribeDeviceOutput->LastUpdatedAt;
    my $ManagedDeviceArn  = $DescribeDeviceOutput->ManagedDeviceArn;
    my $ManagedDeviceId   = $DescribeDeviceOutput->ManagedDeviceId;
    my $PhysicalNetworkInterfaces =
      $DescribeDeviceOutput->PhysicalNetworkInterfaces;
    my $Software = $DescribeDeviceOutput->Software;
    my $Tags     = $DescribeDeviceOutput->Tags;

    # Returns a L<Paws::SnowDeviceManagement::DescribeDeviceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/DescribeDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedDeviceId => Str

The ID of the device that you are checking the information of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevice in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


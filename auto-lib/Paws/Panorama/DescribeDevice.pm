
package Paws::Panorama::DescribeDevice;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices/{DeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::DescribeDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeDevice - Arguments for method DescribeDevice on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDevice on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method DescribeDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDevice.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $DescribeDeviceResponse = $panorama->DescribeDevice(
      DeviceId => 'MyDeviceId',

    );

    # Results:
    my $AlternateSoftwares = $DescribeDeviceResponse->AlternateSoftwares;
    my $Arn                = $DescribeDeviceResponse->Arn;
    my $Brand              = $DescribeDeviceResponse->Brand;
    my $CreatedTime        = $DescribeDeviceResponse->CreatedTime;
    my $CurrentNetworkingStatus =
      $DescribeDeviceResponse->CurrentNetworkingStatus;
    my $CurrentSoftware = $DescribeDeviceResponse->CurrentSoftware;
    my $Description     = $DescribeDeviceResponse->Description;
    my $DeviceAggregatedStatus =
      $DescribeDeviceResponse->DeviceAggregatedStatus;
    my $DeviceConnectionStatus =
      $DescribeDeviceResponse->DeviceConnectionStatus;
    my $DeviceId = $DescribeDeviceResponse->DeviceId;
    my $LatestAlternateSoftware =
      $DescribeDeviceResponse->LatestAlternateSoftware;
    my $LatestDeviceJob     = $DescribeDeviceResponse->LatestDeviceJob;
    my $LatestSoftware      = $DescribeDeviceResponse->LatestSoftware;
    my $LeaseExpirationTime = $DescribeDeviceResponse->LeaseExpirationTime;
    my $Name                = $DescribeDeviceResponse->Name;
    my $NetworkingConfiguration =
      $DescribeDeviceResponse->NetworkingConfiguration;
    my $ProvisioningStatus = $DescribeDeviceResponse->ProvisioningStatus;
    my $SerialNumber       = $DescribeDeviceResponse->SerialNumber;
    my $Tags               = $DescribeDeviceResponse->Tags;
    my $Type               = $DescribeDeviceResponse->Type;

    # Returns a L<Paws::Panorama::DescribeDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/DescribeDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The device's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDevice in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


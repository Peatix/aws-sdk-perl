
package Paws::SnowDeviceManagement::ListDevices;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'jobId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::ListDevicesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListDevices - Arguments for method ListDevices on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $ListDevicesOutput = $snow -device-management->ListDevices(
      JobId      => 'MyJobId',        # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Devices   = $ListDevicesOutput->Devices;
    my $NextToken = $ListDevicesOutput->NextToken;

    # Returns a L<Paws::SnowDeviceManagement::ListDevicesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/ListDevices>

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of the job used to order the device.



=head2 MaxResults => Int

The maximum number of devices to list per page.



=head2 NextToken => Str

A pagination token to continue to the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


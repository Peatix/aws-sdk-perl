
package Paws::SnowDeviceManagement::DescribeDeviceEc2Instances;
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceIds', required => 1);
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'managedDeviceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeviceEc2Instances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-device/{managedDeviceId}/resources/ec2/describe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::DescribeDeviceEc2Output');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeDeviceEc2Instances - Arguments for method DescribeDeviceEc2Instances on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeviceEc2Instances on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method DescribeDeviceEc2Instances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeviceEc2Instances.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $DescribeDeviceEc2Output =
      $snow -device-management->DescribeDeviceEc2Instances(
      InstanceIds     => [ 'MyString', ... ],
      ManagedDeviceId => 'MyManagedDeviceId',

      );

    # Results:
    my $Instances = $DescribeDeviceEc2Output->Instances;

    # Returns a L<Paws::SnowDeviceManagement::DescribeDeviceEc2Output> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/DescribeDeviceEc2Instances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

A list of instance IDs associated with the managed device.



=head2 B<REQUIRED> ManagedDeviceId => Str

The ID of the managed device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeviceEc2Instances in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


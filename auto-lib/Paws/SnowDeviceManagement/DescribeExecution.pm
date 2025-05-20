
package Paws::SnowDeviceManagement::DescribeExecution;
  use Moose;
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'managedDeviceId', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/task/{taskId}/execution/{managedDeviceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::DescribeExecutionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeExecution - Arguments for method DescribeExecution on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExecution on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method DescribeExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExecution.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $DescribeExecutionOutput = $snow -device-management->DescribeExecution(
      ManagedDeviceId => 'MyManagedDeviceId',
      TaskId          => 'MyTaskId',

    );

    # Results:
    my $ExecutionId     = $DescribeExecutionOutput->ExecutionId;
    my $LastUpdatedAt   = $DescribeExecutionOutput->LastUpdatedAt;
    my $ManagedDeviceId = $DescribeExecutionOutput->ManagedDeviceId;
    my $StartedAt       = $DescribeExecutionOutput->StartedAt;
    my $State           = $DescribeExecutionOutput->State;
    my $TaskId          = $DescribeExecutionOutput->TaskId;

    # Returns a L<Paws::SnowDeviceManagement::DescribeExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/DescribeExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedDeviceId => Str

The ID of the managed device.



=head2 B<REQUIRED> TaskId => Str

The ID of the task that the action is describing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExecution in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


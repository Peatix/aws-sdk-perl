
package Paws::SnowDeviceManagement::DescribeTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/task/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::DescribeTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeTask - Arguments for method DescribeTask on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTask on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method DescribeTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTask.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $DescribeTaskOutput = $snow -device-management->DescribeTask(
      TaskId => 'MyTaskId',

    );

    # Results:
    my $CompletedAt   = $DescribeTaskOutput->CompletedAt;
    my $CreatedAt     = $DescribeTaskOutput->CreatedAt;
    my $Description   = $DescribeTaskOutput->Description;
    my $LastUpdatedAt = $DescribeTaskOutput->LastUpdatedAt;
    my $State         = $DescribeTaskOutput->State;
    my $Tags          = $DescribeTaskOutput->Tags;
    my $Targets       = $DescribeTaskOutput->Targets;
    my $TaskArn       = $DescribeTaskOutput->TaskArn;
    my $TaskId        = $DescribeTaskOutput->TaskId;

    # Returns a L<Paws::SnowDeviceManagement::DescribeTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/DescribeTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the task to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTask in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


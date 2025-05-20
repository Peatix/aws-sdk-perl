
package Paws::SnowDeviceManagement::CancelTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/task/{taskId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::CancelTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::CancelTask - Arguments for method CancelTask on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelTask on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method CancelTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelTask.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $CancelTaskOutput = $snow -device-management->CancelTask(
      TaskId => 'MyTaskId',

    );

    # Results:
    my $TaskId = $CancelTaskOutput->TaskId;

    # Returns a L<Paws::SnowDeviceManagement::CancelTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/CancelTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the task that you are attempting to cancel. You can retrieve
a task ID by using the C<ListTasks> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelTask in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


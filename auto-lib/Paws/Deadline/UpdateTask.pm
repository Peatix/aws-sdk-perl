
package Paws::Deadline::UpdateTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has StepId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stepId', required => 1);
  has TargetRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetRunStatus', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateTask - Arguments for method UpdateTask on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTask on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTask.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateTaskResponse = $deadline->UpdateTask(
      FarmId          => 'MyFarmId',
      JobId           => 'MyJobId',
      QueueId         => 'MyQueueId',
      StepId          => 'MyStepId',
      TargetRunStatus => 'READY',
      TaskId          => 'MyTaskId',
      ClientToken     => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID to update.



=head2 B<REQUIRED> JobId => Str

The job ID to update.



=head2 B<REQUIRED> QueueId => Str

The queue ID to update.



=head2 B<REQUIRED> StepId => Str

The step ID to update.



=head2 B<REQUIRED> TargetRunStatus => Str

The run status with which to start the task.

Valid values are: C<"READY">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"SUSPENDED">, C<"PENDING">

=head2 B<REQUIRED> TaskId => Str

The task ID to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTask in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


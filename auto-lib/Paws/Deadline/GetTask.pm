
package Paws::Deadline::GetTask;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has StepId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stepId', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetTask - Arguments for method GetTask on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTask on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTask.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetTaskResponse = $deadline->GetTask(
      FarmId  => 'MyFarmId',
      JobId   => 'MyJobId',
      QueueId => 'MyQueueId',
      StepId  => 'MyStepId',
      TaskId  => 'MyTaskId',

    );

    # Results:
    my $CreatedAt             = $GetTaskResponse->CreatedAt;
    my $CreatedBy             = $GetTaskResponse->CreatedBy;
    my $EndedAt               = $GetTaskResponse->EndedAt;
    my $FailureRetryCount     = $GetTaskResponse->FailureRetryCount;
    my $LatestSessionActionId = $GetTaskResponse->LatestSessionActionId;
    my $Parameters            = $GetTaskResponse->Parameters;
    my $RunStatus             = $GetTaskResponse->RunStatus;
    my $StartedAt             = $GetTaskResponse->StartedAt;
    my $TargetRunStatus       = $GetTaskResponse->TargetRunStatus;
    my $TaskId                = $GetTaskResponse->TaskId;
    my $UpdatedAt             = $GetTaskResponse->UpdatedAt;
    my $UpdatedBy             = $GetTaskResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm connected to the task.



=head2 B<REQUIRED> JobId => Str

The job ID of the job connected to the task.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the queue connected to the task.



=head2 B<REQUIRED> StepId => Str

The step ID for the step connected to the task.



=head2 B<REQUIRED> TaskId => Str

The task ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTask in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


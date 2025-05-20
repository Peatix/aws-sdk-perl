
package Paws::Deadline::UpdateJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has LifecycleStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStatus');
  has MaxFailedTasksCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxFailedTasksCount');
  has MaxRetriesPerTask => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRetriesPerTask');
  has MaxWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxWorkerCount');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has TargetTaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetTaskRunStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateJob - Arguments for method UpdateJob on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateJobResponse = $deadline->UpdateJob(
      FarmId              => 'MyFarmId',
      JobId               => 'MyJobId',
      QueueId             => 'MyQueueId',
      ClientToken         => 'MyClientToken',    # OPTIONAL
      LifecycleStatus     => 'ARCHIVED',         # OPTIONAL
      MaxFailedTasksCount => 1,                  # OPTIONAL
      MaxRetriesPerTask   => 1,                  # OPTIONAL
      MaxWorkerCount      => 1,                  # OPTIONAL
      Priority            => 1,                  # OPTIONAL
      TargetTaskRunStatus => 'READY',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the job to update.



=head2 B<REQUIRED> JobId => Str

The job ID to update.



=head2 LifecycleStatus => Str

The status of a job in its lifecycle. When you change the status of the
job to C<ARCHIVED>, the job can't be scheduled or archived.

An archived jobs and its steps and tasks are deleted after 120 days.
The job can't be recovered.

Valid values are: C<"ARCHIVED">

=head2 MaxFailedTasksCount => Int

The number of task failures before the job stops running and is marked
as C<FAILED>.



=head2 MaxRetriesPerTask => Int

The maximum number of retries for a job.



=head2 MaxWorkerCount => Int

The maximum number of worker hosts that can concurrently process a job.
When the C<maxWorkerCount> is reached, no more workers will be assigned
to process the job, even if the fleets assigned to the job's queue has
available workers.

You can't set the C<maxWorkerCount> to 0. If you set it to -1, there is
no maximum number of workers.

If you don't specify the C<maxWorkerCount>, the default is -1.

The maximum number of workers that can process tasks in the job.



=head2 Priority => Int

The job priority to update.



=head2 B<REQUIRED> QueueId => Str

The queue ID of the job to update.



=head2 TargetTaskRunStatus => Str

The task status to update the job's tasks to.

Valid values are: C<"READY">, C<"FAILED">, C<"SUCCEEDED">, C<"CANCELED">, C<"SUSPENDED">, C<"PENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


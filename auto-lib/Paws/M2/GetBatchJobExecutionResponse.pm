
package Paws::M2::GetBatchJobExecutionResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has BatchJobIdentifier => (is => 'ro', isa => 'Paws::M2::BatchJobIdentifier', traits => ['NameInRequest'], request_name => 'batchJobIdentifier');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName');
  has JobStepRestartMarker => (is => 'ro', isa => 'Paws::M2::JobStepRestartMarker', traits => ['NameInRequest'], request_name => 'jobStepRestartMarker');
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType');
  has JobUser => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobUser');
  has ReturnCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'returnCode');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetBatchJobExecutionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application.


=head2 BatchJobIdentifier => L<Paws::M2::BatchJobIdentifier>

The unique identifier of this batch job.


=head2 EndTime => Str

The timestamp when the batch job execution ended.


=head2 B<REQUIRED> ExecutionId => Str

The unique identifier for this batch job execution.


=head2 JobId => Str

The unique identifier for this batch job.


=head2 JobName => Str

The name of this batch job.


=head2 JobStepRestartMarker => L<Paws::M2::JobStepRestartMarker>

The step/procedure step information for the restart batch job
operation.


=head2 JobType => Str

The type of job.

Valid values are: C<"VSE">, C<"JES2">, C<"JES3">
=head2 JobUser => Str

The user for the job.


=head2 ReturnCode => Str

The batch job return code from either the Blu Age or Micro Focus
runtime engines. For more information, see Batch return codes
(https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes)
in the I<IBM WebSphere Application Server> documentation.


=head2 B<REQUIRED> StartTime => Str

The timestamp when the batch job execution started.


=head2 B<REQUIRED> Status => Str

The status of the batch job execution.

Valid values are: C<"Submitting">, C<"Holding">, C<"Dispatching">, C<"Running">, C<"Cancelling">, C<"Cancelled">, C<"Succeeded">, C<"Failed">, C<"Purged">, C<"Succeeded With Warning">
=head2 StatusReason => Str

The reason for the reported status.


=head2 _request_id => Str


=cut



package Paws::Batch::SubmitJob;
  use Moose;
  has ArrayProperties => (is => 'ro', isa => 'Paws::Batch::ArrayProperties', traits => ['NameInRequest'], request_name => 'arrayProperties');
  has ConsumableResourcePropertiesOverride => (is => 'ro', isa => 'Paws::Batch::ConsumableResourceProperties', traits => ['NameInRequest'], request_name => 'consumableResourcePropertiesOverride');
  has ContainerOverrides => (is => 'ro', isa => 'Paws::Batch::ContainerOverrides', traits => ['NameInRequest'], request_name => 'containerOverrides');
  has DependsOn => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDependency]', traits => ['NameInRequest'], request_name => 'dependsOn');
  has EcsPropertiesOverride => (is => 'ro', isa => 'Paws::Batch::EcsPropertiesOverride', traits => ['NameInRequest'], request_name => 'ecsPropertiesOverride');
  has EksPropertiesOverride => (is => 'ro', isa => 'Paws::Batch::EksPropertiesOverride', traits => ['NameInRequest'], request_name => 'eksPropertiesOverride');
  has JobDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDefinition', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue', required => 1);
  has NodeOverrides => (is => 'ro', isa => 'Paws::Batch::NodeOverrides', traits => ['NameInRequest'], request_name => 'nodeOverrides');
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap', traits => ['NameInRequest'], request_name => 'parameters');
  has PropagateTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'propagateTags');
  has RetryStrategy => (is => 'ro', isa => 'Paws::Batch::RetryStrategy', traits => ['NameInRequest'], request_name => 'retryStrategy');
  has SchedulingPriorityOverride => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'schedulingPriorityOverride');
  has ShareIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shareIdentifier');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Timeout => (is => 'ro', isa => 'Paws::Batch::JobTimeout', traits => ['NameInRequest'], request_name => 'timeout');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/submitjob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::SubmitJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::SubmitJob - Arguments for method SubmitJob on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitJob on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method SubmitJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitJob.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
# To submit a job to a queue
# This example submits a simple container job called example to the HighPriority
# job queue.
    my $SubmitJobResponse = $batch->SubmitJob(
      'JobDefinition' => 'sleep60',
      'JobName'       => 'example',
      'JobQueue'      => 'HighPriority'
    );

    # Results:
    my $jobId   = $SubmitJobResponse->jobId;
    my $jobName = $SubmitJobResponse->jobName;

    # Returns a L<Paws::Batch::SubmitJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/SubmitJob>

=head1 ATTRIBUTES


=head2 ArrayProperties => L<Paws::Batch::ArrayProperties>

The array properties for the submitted job, such as the size of the
array. The array size can be between 2 and 10,000. If you specify array
properties for a job, it becomes an array job. For more information,
see Array Jobs
(https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html) in
the I<Batch User Guide>.



=head2 ConsumableResourcePropertiesOverride => L<Paws::Batch::ConsumableResourceProperties>

An object that contains overrides for the consumable resources of a
job.



=head2 ContainerOverrides => L<Paws::Batch::ContainerOverrides>

An object with properties that override the defaults for the job
definition that specify the name of a container in the specified job
definition and the overrides it should receive. You can override the
default command for a container, which is specified in the job
definition or the Docker image, with a C<command> override. You can
also override existing environment variables on a container or add new
environment variables to it with an C<environment> override.



=head2 DependsOn => ArrayRef[L<Paws::Batch::JobDependency>]

A list of dependencies for the job. A job can depend upon a maximum of
20 jobs. You can specify a C<SEQUENTIAL> type dependency without
specifying a job ID for array jobs so that each child array job
completes sequentially, starting at index 0. You can also specify an
C<N_TO_N> type dependency with a job ID for array jobs. In that case,
each index child of this job must wait for the corresponding index
child of each dependency to complete before it can begin.



=head2 EcsPropertiesOverride => L<Paws::Batch::EcsPropertiesOverride>

An object, with properties that override defaults for the job
definition, can only be specified for jobs that are run on Amazon ECS
resources.



=head2 EksPropertiesOverride => L<Paws::Batch::EksPropertiesOverride>

An object, with properties that override defaults for the job
definition, can only be specified for jobs that are run on Amazon EKS
resources.



=head2 B<REQUIRED> JobDefinition => Str

The job definition used by this job. This value can be one of
C<definition-name>, C<definition-name:revision>, or the Amazon Resource
Name (ARN) for the job definition, with or without the revision
(C<arn:aws:batch:I<region>:I<account>:job-definition/I<definition-name>:I<revision>
>, or
C<arn:aws:batch:I<region>:I<account>:job-definition/I<definition-name>
>).

If the revision is not specified, then the latest active revision is
used.



=head2 B<REQUIRED> JobName => Str

The name of the job. It can be up to 128 letters long. The first
character must be alphanumeric, can contain uppercase and lowercase
letters, numbers, hyphens (-), and underscores (_).



=head2 B<REQUIRED> JobQueue => Str

The job queue where the job is submitted. You can specify either the
name or the Amazon Resource Name (ARN) of the queue.



=head2 NodeOverrides => L<Paws::Batch::NodeOverrides>

A list of node overrides in JSON format that specify the node range to
target and the container overrides for that node range.

This parameter isn't applicable to jobs that are running on Fargate
resources; use C<containerOverrides> instead.



=head2 Parameters => L<Paws::Batch::ParametersMap>

Additional parameters passed to the job that replace parameter
substitution placeholders that are set in the job definition.
Parameters are specified as a key and value pair mapping. Parameters in
a C<SubmitJob> request override any corresponding parameter defaults
from the job definition.



=head2 PropagateTags => Bool

Specifies whether to propagate the tags from the job or job definition
to the corresponding Amazon ECS task. If no value is specified, the
tags aren't propagated. Tags can only be propagated to the tasks during
task creation. For tags with the same name, job tags are given priority
over job definitions tags. If the total number of combined tags from
the job and job definition is over 50, the job is moved to the
C<FAILED> state. When specified, this overrides the tag propagation
setting in the job definition.



=head2 RetryStrategy => L<Paws::Batch::RetryStrategy>

The retry strategy to use for failed jobs from this SubmitJob
operation. When a retry strategy is specified here, it overrides the
retry strategy defined in the job definition.



=head2 SchedulingPriorityOverride => Int

The scheduling priority for the job. This only affects jobs in job
queues with a fair-share policy. Jobs with a higher scheduling priority
are scheduled before jobs with a lower scheduling priority. This
overrides any scheduling priority in the job definition and works only
within a single share identifier.

The minimum supported value is 0 and the maximum supported value is
9999.



=head2 ShareIdentifier => Str

The share identifier for the job. Don't specify this parameter if the
job queue doesn't have a fair-share scheduling policy. If the job queue
has a fair-share scheduling policy, then this parameter must be
specified.

This string is limited to 255 alphanumeric characters, and can be
followed by an asterisk (*).



=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the job request to help you categorize and
organize your resources. Each tag consists of a key and an optional
value. For more information, see Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
I<Amazon Web Services General Reference>.



=head2 Timeout => L<Paws::Batch::JobTimeout>

The timeout configuration for this SubmitJob operation. You can specify
a timeout duration after which Batch terminates your jobs if they
haven't finished. If a job is terminated due to a timeout, it isn't
retried. The minimum value for the timeout is 60 seconds. This
configuration overrides any timeout configuration specified in the job
definition. For array jobs, child jobs have the same timeout
configuration as the parent job. For more information, see Job Timeouts
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html)
in the I<Amazon Elastic Container Service Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


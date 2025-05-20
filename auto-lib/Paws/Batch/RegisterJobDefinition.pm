
package Paws::Batch::RegisterJobDefinition;
  use Moose;
  has ConsumableResourceProperties => (is => 'ro', isa => 'Paws::Batch::ConsumableResourceProperties', traits => ['NameInRequest'], request_name => 'consumableResourceProperties');
  has ContainerProperties => (is => 'ro', isa => 'Paws::Batch::ContainerProperties', traits => ['NameInRequest'], request_name => 'containerProperties');
  has EcsProperties => (is => 'ro', isa => 'Paws::Batch::EcsProperties', traits => ['NameInRequest'], request_name => 'ecsProperties');
  has EksProperties => (is => 'ro', isa => 'Paws::Batch::EksProperties', traits => ['NameInRequest'], request_name => 'eksProperties');
  has JobDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDefinitionName', required => 1);
  has NodeProperties => (is => 'ro', isa => 'Paws::Batch::NodeProperties', traits => ['NameInRequest'], request_name => 'nodeProperties');
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap', traits => ['NameInRequest'], request_name => 'parameters');
  has PlatformCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'platformCapabilities');
  has PropagateTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'propagateTags');
  has RetryStrategy => (is => 'ro', isa => 'Paws::Batch::RetryStrategy', traits => ['NameInRequest'], request_name => 'retryStrategy');
  has SchedulingPriority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'schedulingPriority');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Timeout => (is => 'ro', isa => 'Paws::Batch::JobTimeout', traits => ['NameInRequest'], request_name => 'timeout');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterJobDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registerjobdefinition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::RegisterJobDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::RegisterJobDefinition - Arguments for method RegisterJobDefinition on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterJobDefinition on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method RegisterJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterJobDefinition.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To register a job definition
    # This example registers a job definition for a simple container job.
    my $RegisterJobDefinitionResponse = $batch->RegisterJobDefinition(
      'ContainerProperties' => {
        'Command'              => [ 'sleep', 10 ],
        'Image'                => 'busybox',
        'ResourceRequirements' => [

          {
            'Type'  => 'MEMORY',
            'Value' => 128
          },

          {
            'Type'  => 'VCPU',
            'Value' => 1
          }
        ]
      },
      'JobDefinitionName' => 'sleep10',
      'Type'              => 'container'
    );

    # Results:
    my $jobDefinitionArn  = $RegisterJobDefinitionResponse->jobDefinitionArn;
    my $jobDefinitionName = $RegisterJobDefinitionResponse->jobDefinitionName;
    my $revision          = $RegisterJobDefinitionResponse->revision;

   # Returns a L<Paws::Batch::RegisterJobDefinitionResponse> object.
   # RegisterJobDefinition with tags
   # This demonstrates calling the RegisterJobDefinition action, including tags.
    my $RegisterJobDefinitionResponse = $batch->RegisterJobDefinition(
      'ContainerProperties' => {
        'Command'              => [ 'sleep', 30 ],
        'Image'                => 'busybox',
        'ResourceRequirements' => [

          {
            'Type'  => 'MEMORY',
            'Value' => 128
          },

          {
            'Type'  => 'VCPU',
            'Value' => 1
          }
        ]
      },
      'JobDefinitionName' => 'sleep30',
      'Tags'              => {
        'Department' => 'Engineering',
        'User'       => 'JaneDoe'
      },
      'Type' => 'container'
    );

    # Results:
    my $jobDefinitionArn  = $RegisterJobDefinitionResponse->jobDefinitionArn;
    my $jobDefinitionName = $RegisterJobDefinitionResponse->jobDefinitionName;
    my $revision          = $RegisterJobDefinitionResponse->revision;

    # Returns a L<Paws::Batch::RegisterJobDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/RegisterJobDefinition>

=head1 ATTRIBUTES


=head2 ConsumableResourceProperties => L<Paws::Batch::ConsumableResourceProperties>

Contains a list of consumable resources required by the job.



=head2 ContainerProperties => L<Paws::Batch::ContainerProperties>

An object with properties specific to Amazon ECS-based single-node
container-based jobs. If the job definition's C<type> parameter is
C<container>, then you must specify either C<containerProperties> or
C<nodeProperties>. This must not be specified for Amazon EKS-based job
definitions.

If the job runs on Fargate resources, then you must not specify
C<nodeProperties>; use only C<containerProperties>.



=head2 EcsProperties => L<Paws::Batch::EcsProperties>

An object with properties that are specific to Amazon ECS-based jobs.
This must not be specified for Amazon EKS-based job definitions.



=head2 EksProperties => L<Paws::Batch::EksProperties>

An object with properties that are specific to Amazon EKS-based jobs.
This must not be specified for Amazon ECS based job definitions.



=head2 B<REQUIRED> JobDefinitionName => Str

The name of the job definition to register. It can be up to 128 letters
long. It can contain uppercase and lowercase letters, numbers, hyphens
(-), and underscores (_).



=head2 NodeProperties => L<Paws::Batch::NodeProperties>

An object with properties specific to multi-node parallel jobs. If you
specify node properties for a job, it becomes a multi-node parallel
job. For more information, see Multi-node Parallel Jobs
(https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html)
in the I<Batch User Guide>.

If the job runs on Fargate resources, then you must not specify
C<nodeProperties>; use C<containerProperties> instead.

If the job runs on Amazon EKS resources, then you must not specify
C<nodeProperties>.



=head2 Parameters => L<Paws::Batch::ParametersMap>

Default parameter substitution placeholders to set in the job
definition. Parameters are specified as a key-value pair mapping.
Parameters in a C<SubmitJob> request override any corresponding
parameter defaults from the job definition.



=head2 PlatformCapabilities => ArrayRef[Str|Undef]

The platform capabilities required by the job definition. If no value
is specified, it defaults to C<EC2>. To run the job on Fargate
resources, specify C<FARGATE>.

If the job runs on Amazon EKS resources, then you must not specify
C<platformCapabilities>.



=head2 PropagateTags => Bool

Specifies whether to propagate the tags from the job or job definition
to the corresponding Amazon ECS task. If no value is specified, the
tags are not propagated. Tags can only be propagated to the tasks
during task creation. For tags with the same name, job tags are given
priority over job definitions tags. If the total number of combined
tags from the job and job definition is over 50, the job is moved to
the C<FAILED> state.

If the job runs on Amazon EKS resources, then you must not specify
C<propagateTags>.



=head2 RetryStrategy => L<Paws::Batch::RetryStrategy>

The retry strategy to use for failed jobs that are submitted with this
job definition. Any retry strategy that's specified during a SubmitJob
operation overrides the retry strategy defined here. If a job is
terminated due to a timeout, it isn't retried.



=head2 SchedulingPriority => Int

The scheduling priority for jobs that are submitted with this job
definition. This only affects jobs in job queues with a fair-share
policy. Jobs with a higher scheduling priority are scheduled before
jobs with a lower scheduling priority.

The minimum supported value is 0 and the maximum supported value is
9999.



=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the job definition to help you categorize
and organize your resources. Each tag consists of a key and an optional
value. For more information, see Tagging Amazon Web Services Resources
(https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html) in
I<Batch User Guide>.



=head2 Timeout => L<Paws::Batch::JobTimeout>

The timeout configuration for jobs that are submitted with this job
definition, after which Batch terminates your jobs if they have not
finished. If a job is terminated due to a timeout, it isn't retried.
The minimum value for the timeout is 60 seconds. Any timeout
configuration that's specified during a SubmitJob operation overrides
the timeout configuration defined here. For more information, see Job
Timeouts
(https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html)
in the I<Batch User Guide>.



=head2 B<REQUIRED> Type => Str

The type of job definition. For more information about multi-node
parallel jobs, see Creating a multi-node parallel job definition
(https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html)
in the I<Batch User Guide>.

=over

=item *

If the value is C<container>, then one of the following is required:
C<containerProperties>, C<ecsProperties>, or C<eksProperties>.

=item *

If the value is C<multinode>, then C<nodeProperties> is required.

=back

If the job is run on Fargate resources, then C<multinode> isn't
supported.

Valid values are: C<"container">, C<"multinode">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterJobDefinition in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


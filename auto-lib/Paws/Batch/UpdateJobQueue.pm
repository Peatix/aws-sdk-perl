
package Paws::Batch::UpdateJobQueue;
  use Moose;
  has ComputeEnvironmentOrder => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentOrder]', traits => ['NameInRequest'], request_name => 'computeEnvironmentOrder');
  has JobQueue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobQueue', required => 1);
  has JobStateTimeLimitActions => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobStateTimeLimitAction]', traits => ['NameInRequest'], request_name => 'jobStateTimeLimitActions');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has SchedulingPolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schedulingPolicyArn');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJobQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/updatejobqueue');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::UpdateJobQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateJobQueue - Arguments for method UpdateJobQueue on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobQueue on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method UpdateJobQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobQueue.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To update a job queue
    # This example disables a job queue so that it can be deleted.
    my $UpdateJobQueueResponse = $batch->UpdateJobQueue(
      'JobQueue' => 'GPGPU',
      'State'    => 'DISABLED'
    );

    # Results:
    my $jobQueueArn  = $UpdateJobQueueResponse->jobQueueArn;
    my $jobQueueName = $UpdateJobQueueResponse->jobQueueName;

    # Returns a L<Paws::Batch::UpdateJobQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/UpdateJobQueue>

=head1 ATTRIBUTES


=head2 ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

Details the set of compute environments mapped to a job queue and their
order relative to each other. This is one of the parameters used by the
job scheduler to determine which compute environment runs a given job.
Compute environments must be in the C<VALID> state before you can
associate them with a job queue. All of the compute environments must
be either EC2 (C<EC2> or C<SPOT>) or Fargate (C<FARGATE> or
C<FARGATE_SPOT>). EC2 and Fargate compute environments can't be mixed.

All compute environments that are associated with a job queue must
share the same architecture. Batch doesn't support mixing compute
environment architecture types in a single job queue.



=head2 B<REQUIRED> JobQueue => Str

The name or the Amazon Resource Name (ARN) of the job queue.



=head2 JobStateTimeLimitActions => ArrayRef[L<Paws::Batch::JobStateTimeLimitAction>]

The set of actions that Batch perform on jobs that remain at the head
of the job queue in the specified state longer than specified times.
Batch will perform each action after C<maxTimeSeconds> has passed.
(B<Note>: The minimum value for maxTimeSeconds is 600 (10 minutes) and
its maximum value is 86,400 (24 hours).)



=head2 Priority => Int

The priority of the job queue. Job queues with a higher priority (or a
higher integer value for the C<priority> parameter) are evaluated first
when associated with the same compute environment. Priority is
determined in descending order. For example, a job queue with a
priority value of C<10> is given scheduling preference over a job queue
with a priority value of C<1>. All of the compute environments must be
either EC2 (C<EC2> or C<SPOT>) or Fargate (C<FARGATE> or
C<FARGATE_SPOT>). EC2 and Fargate compute environments can't be mixed.



=head2 SchedulingPolicyArn => Str

Amazon Resource Name (ARN) of the fair-share scheduling policy. Once a
job queue is created, the fair-share scheduling policy can be replaced
but not removed. The format is
C<aws:I<Partition>:batch:I<Region>:I<Account>:scheduling-policy/I<Name>
>. For example,
C<aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy>.



=head2 State => Str

Describes the queue's ability to accept new jobs. If the job queue
state is C<ENABLED>, it can accept jobs. If the job queue state is
C<DISABLED>, new jobs can't be added to the queue, but jobs already in
the queue can finish.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobQueue in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


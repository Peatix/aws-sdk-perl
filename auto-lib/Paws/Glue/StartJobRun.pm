
package Paws::Glue::StartJobRun;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Arguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has ExecutionClass => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobRunId => (is => 'ro', isa => 'Str');
  has JobRunQueuingEnabled => (is => 'ro', isa => 'Bool');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has NotificationProperty => (is => 'ro', isa => 'Paws::Glue::NotificationProperty');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJobRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartJobRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartJobRun - Arguments for method StartJobRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJobRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJobRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartJobRunResponse = $glue->StartJobRun(
      JobName           => 'MyNameString',
      AllocatedCapacity => 1,                # OPTIONAL
      Arguments      => { 'MyGenericString' => 'MyGenericString', },  # OPTIONAL
      ExecutionClass => 'FLEX',                                       # OPTIONAL
      JobRunId       => 'MyIdString',                                 # OPTIONAL
      JobRunQueuingEnabled => 1,                                      # OPTIONAL
      MaxCapacity          => 1,                                      # OPTIONAL
      NotificationProperty => {
        NotifyDelayAfter => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      NumberOfWorkers       => 1,                 # OPTIONAL
      SecurityConfiguration => 'MyNameString',    # OPTIONAL
      Timeout               => 1,                 # OPTIONAL
      WorkerType            => 'Standard',        # OPTIONAL
    );

    # Results:
    my $JobRunId = $StartJobRunResponse->JobRunId;

    # Returns a L<Paws::Glue::StartJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartJobRun>

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

This field is deprecated. Use C<MaxCapacity> instead.

The number of Glue data processing units (DPUs) to allocate to this
JobRun. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
is a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the
Glue pricing page (https://aws.amazon.com/glue/pricing/).



=head2 Arguments => L<Paws::Glue::GenericMap>

The job arguments associated with this run. For this job run, they
replace the default arguments set in the job definition itself.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that Glue itself consumes.

Job arguments may be logged. Do not pass plaintext secrets as
arguments. Retrieve secrets from a Glue Connection, Secrets Manager or
other secret management mechanism if you intend to keep them within the
Job.

For information about how to specify and consume your own Job
arguments, see the Calling Glue APIs in Python
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Spark jobs, see the Special Parameters Used by Glue
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Ray jobs, see Using job parameters in Ray jobs
(https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html)
in the developer guide.



=head2 ExecutionClass => Str

Indicates whether the job is run with a standard or flexible execution
class. The standard execution-class is ideal for time-sensitive
workloads that require fast job startup and dedicated resources.

The flexible execution class is appropriate for time-insensitive jobs
whose start and completion times may vary.

Only jobs with Glue version 3.0 and above and command type C<glueetl>
will be allowed to set C<ExecutionClass> to C<FLEX>. The flexible
execution class is available for Spark jobs.

Valid values are: C<"FLEX">, C<"STANDARD">

=head2 B<REQUIRED> JobName => Str

The name of the job definition to use.



=head2 JobRunId => Str

The ID of a previous C<JobRun> to retry.



=head2 JobRunQueuingEnabled => Bool

Specifies whether job run queuing is enabled for the job run.

A value of true means job run queuing is enabled for the job run. If
false or not populated, the job run will not be considered for
queueing.



=head2 MaxCapacity => Num

For Glue version 1.0 or earlier jobs, using the standard worker type,
the number of Glue data processing units (DPUs) that can be allocated
when this job runs. A DPU is a relative measure of processing power
that consists of 4 vCPUs of compute capacity and 16 GB of memory. For
more information, see the Glue pricing page
(https://aws.amazon.com/glue/pricing/).

For Glue version 2.0+ jobs, you cannot specify a C<Maximum capacity>.
Instead, you should specify a C<Worker type> and the C<Number of
workers>.

Do not set C<MaxCapacity> if using C<WorkerType> and
C<NumberOfWorkers>.

The value that can be allocated for C<MaxCapacity> depends on whether
you are running a Python shell job, an Apache Spark ETL job, or an
Apache Spark streaming ETL job:

=over

=item *

When you specify a Python shell job (C<JobCommand.Name>="pythonshell"),
you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.

=item *

When you specify an Apache Spark ETL job (C<JobCommand.Name>="glueetl")
or Apache Spark streaming ETL job (C<JobCommand.Name>="gluestreaming"),
you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job
type cannot have a fractional DPU allocation.

=back




=head2 NotificationProperty => L<Paws::Glue::NotificationProperty>

Specifies configuration properties of a job run notification.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when a job runs.



=head2 SecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used with this
job run.



=head2 Timeout => Int

The C<JobRun> timeout in minutes. This is the maximum time that a job
run can consume resources before it is terminated and enters C<TIMEOUT>
status. This value overrides the timeout value set in the parent job.

Jobs must have timeout values less than 7 days or 10080 minutes.
Otherwise, the jobs will throw an exception.

When the value is left blank, the timeout is defaulted to 2880 minutes.

Any existing Glue jobs that had a timeout value greater than 7 days
will be defaulted to 7 days. For instance if you have specified a
timeout of 20 days for a batch job, it will be stopped on the 7th day.

For streaming jobs, if you have set up a maintenance window, it will be
restarted during the maintenance window after 7 days.



=head2 WorkerType => Str

The type of predefined worker that is allocated when a job runs.
Accepts a value of G.1X, G.2X, G.4X, G.8X or G.025X for Spark jobs.
Accepts the value Z.2X for Ray jobs.

=over

=item *

For the C<G.1X> worker type, each worker maps to 1 DPU (4 vCPUs, 16 GB
of memory) with 94GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.2X> worker type, each worker maps to 2 DPU (8 vCPUs, 32 GB
of memory) with 138GB disk, and provides 1 executor per worker. We
recommend this worker type for workloads such as data transforms,
joins, and queries, to offers a scalable and cost effective way to run
most jobs.

=item *

For the C<G.4X> worker type, each worker maps to 4 DPU (16 vCPUs, 64 GB
of memory) with 256GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs in
the following Amazon Web Services Regions: US East (Ohio), US East (N.
Virginia), US West (Oregon), Asia Pacific (Singapore), Asia Pacific
(Sydney), Asia Pacific (Tokyo), Canada (Central), Europe (Frankfurt),
Europe (Ireland), and Europe (Stockholm).

=item *

For the C<G.8X> worker type, each worker maps to 8 DPU (32 vCPUs, 128
GB of memory) with 512GB disk, and provides 1 executor per worker. We
recommend this worker type for jobs whose workloads contain your most
demanding transforms, aggregations, joins, and queries. This worker
type is available only for Glue version 3.0 or later Spark ETL jobs, in
the same Amazon Web Services Regions as supported for the C<G.4X>
worker type.

=item *

For the C<G.025X> worker type, each worker maps to 0.25 DPU (2 vCPUs, 4
GB of memory) with 84GB disk, and provides 1 executor per worker. We
recommend this worker type for low volume streaming jobs. This worker
type is only available for Glue version 3.0 or later streaming jobs.

=item *

For the C<Z.2X> worker type, each worker maps to 2 M-DPU (8vCPUs, 64 GB
of memory) with 128 GB disk, and provides up to 8 Ray workers based on
the autoscaler.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">, C<"G.025X">, C<"G.4X">, C<"G.8X">, C<"Z.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJobRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


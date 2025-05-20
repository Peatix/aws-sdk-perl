
package Paws::Omics::StartRun;
  use Moose;
  has CacheBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBehavior');
  has CacheId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheId');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OutputUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputUri');
  has Parameters => (is => 'ro', isa => 'Paws::Omics::RunParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has RetentionMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retentionMode');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has RunGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runGroupId');
  has RunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runId');
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');
  has WorkflowOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowOwnerId');
  has WorkflowType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowType');
  has WorkflowVersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowVersionName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/run');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::StartRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartRun - Arguments for method StartRun on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRun on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method StartRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRun.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $StartRunResponse = $omics->StartRun(
      RequestId     => 'MyRunRequestId',
      RoleArn       => 'MyRunRoleArn',
      CacheBehavior => 'CACHE_ON_FAILURE',    # OPTIONAL
      CacheId       => 'MyNumericIdInArn',    # OPTIONAL
      LogLevel      => 'OFF',                 # OPTIONAL
      Name          => 'MyRunName',           # OPTIONAL
      OutputUri     => 'MyRunOutputUri',      # OPTIONAL
      Parameters    => {

      },                                      # OPTIONAL
      Priority        => 1,                   # OPTIONAL
      RetentionMode   => 'RETAIN',            # OPTIONAL
      RunGroupId      => 'MyRunGroupId',      # OPTIONAL
      RunId           => 'MyRunId',           # OPTIONAL
      StorageCapacity => 1,                   # OPTIONAL
      StorageType     => 'STATIC',            # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkflowId          => 'MyWorkflowId',             # OPTIONAL
      WorkflowOwnerId     => 'MyWorkflowOwnerId',        # OPTIONAL
      WorkflowType        => 'PRIVATE',                  # OPTIONAL
      WorkflowVersionName => 'MyWorkflowVersionName',    # OPTIONAL
    );

    # Results:
    my $Arn          = $StartRunResponse->Arn;
    my $Id           = $StartRunResponse->Id;
    my $RunOutputUri = $StartRunResponse->RunOutputUri;
    my $Status       = $StartRunResponse->Status;
    my $Tags         = $StartRunResponse->Tags;
    my $Uuid         = $StartRunResponse->Uuid;

    # Returns a L<Paws::Omics::StartRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/StartRun>

=head1 ATTRIBUTES


=head2 CacheBehavior => Str

The cache behavior for the run. You specify this value if you want to
override the default behavior for the cache. You had set the default
value when you created the cache. For more information, see Run cache
behavior
(https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior)
in the Amazon Web Services HealthOmics User Guide.

Valid values are: C<"CACHE_ON_FAILURE">, C<"CACHE_ALWAYS">

=head2 CacheId => Str

Identifier of the cache associated with this run. If you don't specify
a cache ID, no task outputs are cached for this run.



=head2 LogLevel => Str

A log level for the run.

Valid values are: C<"OFF">, C<"FATAL">, C<"ERROR">, C<"ALL">

=head2 Name => Str

A name for the run.



=head2 OutputUri => Str

An output URI for the run.



=head2 Parameters => L<Paws::Omics::RunParameters>

Parameters for the run.



=head2 Priority => Int

A priority for the run.



=head2 B<REQUIRED> RequestId => Str

To ensure that requests don't run multiple times, specify a unique ID
for each request.



=head2 RetentionMode => Str

The retention mode for the run. The default value is RETAIN.

Amazon Web Services HealthOmics stores a fixed number of runs that are
available to the console and API. In the default mode (RETAIN), you
need to remove runs manually when the number of run exceeds the
maximum. If you set the retention mode to C<REMOVE>, Amazon Web
Services HealthOmics automatically removes runs (that have mode set to
REMOVE) when the number of run exceeds the maximum. All run logs are
available in CloudWatch logs, if you need information about a run that
is no longer available to the API.

For more information about retention mode, see Specifying run retention
mode (https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html)
in the I<Amazon Web Services HealthOmics User Guide>.

Valid values are: C<"RETAIN">, C<"REMOVE">

=head2 B<REQUIRED> RoleArn => Str

A service role for the run.



=head2 RunGroupId => Str

The run's group ID.



=head2 RunId => Str

The ID of a run to duplicate.



=head2 StorageCapacity => Int

The static storage capacity (in gibibytes) for this run. This field is
not required if the storage type is dynamic (the system ignores any
value that you enter).



=head2 StorageType => Str

The storage type for the run. By default, the run uses STATIC storage
type, which allocates a fixed amount of storage. If you set the storage
type to DYNAMIC, Amazon Web Services HealthOmics dynamically scales the
storage up or down, based on file system utilization. For more
information about static and dynamic storage, see Running workflows
(https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html) in
the I<Amazon Web Services HealthOmics User Guide>.

Valid values are: C<"STATIC">, C<"DYNAMIC">

=head2 Tags => L<Paws::Omics::TagMap>

Tags for the run.



=head2 WorkflowId => Str

The run's workflow ID.



=head2 WorkflowOwnerId => Str

The ID of the workflow owner.



=head2 WorkflowType => Str

The run's workflow type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">

=head2 WorkflowVersionName => Str

The name of the workflow version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRun in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


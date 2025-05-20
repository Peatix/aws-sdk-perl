
package Paws::Deadline::CreateJob;
  use Moose;
  has Attachments => (is => 'ro', isa => 'Paws::Deadline::Attachments', traits => ['NameInRequest'], request_name => 'attachments');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxFailedTasksCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxFailedTasksCount');
  has MaxRetriesPerTask => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRetriesPerTask');
  has MaxWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxWorkerCount');
  has Parameters => (is => 'ro', isa => 'Paws::Deadline::JobParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has SourceJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceJobId');
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageProfileId');
  has TargetTaskRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetTaskRunStatus');
  has Template => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'template');
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateJob - Arguments for method CreateJob on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateJobResponse = $deadline->CreateJob(
      FarmId      => 'MyFarmId',
      Priority    => 1,
      QueueId     => 'MyQueueId',
      Attachments => {
        Manifests => [
          {
            RootPath =>
              'MyManifestPropertiesRootPathString',    # min: 1, max: 1024
            RootPathFormat         => 'windows',       # values: windows, posix
            FileSystemLocationName =>
              'MyFileSystemLocationName',    # min: 1, max: 64; OPTIONAL
            InputManifestHash => 'MyManifestPropertiesInputManifestHashString'
            ,                                # min: 1, max: 256; OPTIONAL
            InputManifestPath => 'MyManifestPropertiesInputManifestPathString'
            ,                                # min: 1, max: 512; OPTIONAL
            OutputRelativeDirectories => [
              'MyOutputRelativeDirectoriesListMemberString',
              ...                            # min: 1, max: 1024
            ],    # max: 100; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10
        FileSystem => 'COPIED',    # values: COPIED, VIRTUAL; OPTIONAL
      },    # OPTIONAL
      ClientToken         => 'MyClientToken',    # OPTIONAL
      MaxFailedTasksCount => 1,                  # OPTIONAL
      MaxRetriesPerTask   => 1,                  # OPTIONAL
      MaxWorkerCount      => 1,                  # OPTIONAL
      Parameters          => {
        'MyJobParametersKeyString' => {
          Float  => 'MyFloatString',        # min: 1, max: 26; OPTIONAL
          Int    => 'MyIntString',          # min: 1, max: 20; OPTIONAL
          Path   => 'MyPathString',         # max: 1024; OPTIONAL
          String => 'MyParameterString',    # max: 1024; OPTIONAL
        },    # key: min: 1, max: 1024
      },    # OPTIONAL
      SourceJobId         => 'MyJobId',               # OPTIONAL
      StorageProfileId    => 'MyStorageProfileId',    # OPTIONAL
      TargetTaskRunStatus => 'READY',                 # OPTIONAL
      Template            => 'MyJobTemplate',         # OPTIONAL
      TemplateType        => 'JSON',                  # OPTIONAL
    );

    # Results:
    my $JobId = $CreateJobResponse->JobId;

    # Returns a L<Paws::Deadline::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateJob>

=head1 ATTRIBUTES


=head2 Attachments => L<Paws::Deadline::Attachments>

The attachments for the job. Attach files required for the job to run
to a render job.



=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm to connect to the job.



=head2 MaxFailedTasksCount => Int

The number of task failures before the job stops running and is marked
as C<FAILED>.



=head2 MaxRetriesPerTask => Int

The maximum number of retries for each task.



=head2 MaxWorkerCount => Int

The maximum number of worker hosts that can concurrently process a job.
When the C<maxWorkerCount> is reached, no more workers will be assigned
to process the job, even if the fleets assigned to the job's queue has
available workers.

You can't set the C<maxWorkerCount> to 0. If you set it to -1, there is
no maximum number of workers.

If you don't specify the C<maxWorkerCount>, Deadline Cloud won't
throttle the number of workers used to process the job.



=head2 Parameters => L<Paws::Deadline::JobParameters>

The parameters for the job.



=head2 B<REQUIRED> Priority => Int

The priority of the job. The highest priority (first scheduled) is 100.
When two jobs have the same priority, the oldest job is scheduled
first.



=head2 B<REQUIRED> QueueId => Str

The ID of the queue that the job is submitted to.



=head2 SourceJobId => Str

The job ID for the source job.



=head2 StorageProfileId => Str

The storage profile ID for the storage profile to connect to the job.



=head2 TargetTaskRunStatus => Str

The initial job status when it is created. Jobs that are created with a
C<SUSPENDED> status will not run until manually requeued.

Valid values are: C<"READY">, C<"SUSPENDED">

=head2 Template => Str

The job template to use for this job.



=head2 TemplateType => Str

The file type for the job template.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


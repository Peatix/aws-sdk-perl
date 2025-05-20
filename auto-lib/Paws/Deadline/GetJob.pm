
package Paws::Deadline::GetJob;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetJob - Arguments for method GetJob on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetJobResponse = $deadline->GetJob(
      FarmId  => 'MyFarmId',
      JobId   => 'MyJobId',
      QueueId => 'MyQueueId',

    );

    # Results:
    my $Attachments            = $GetJobResponse->Attachments;
    my $CreatedAt              = $GetJobResponse->CreatedAt;
    my $CreatedBy              = $GetJobResponse->CreatedBy;
    my $Description            = $GetJobResponse->Description;
    my $EndedAt                = $GetJobResponse->EndedAt;
    my $JobId                  = $GetJobResponse->JobId;
    my $LifecycleStatus        = $GetJobResponse->LifecycleStatus;
    my $LifecycleStatusMessage = $GetJobResponse->LifecycleStatusMessage;
    my $MaxFailedTasksCount    = $GetJobResponse->MaxFailedTasksCount;
    my $MaxRetriesPerTask      = $GetJobResponse->MaxRetriesPerTask;
    my $MaxWorkerCount         = $GetJobResponse->MaxWorkerCount;
    my $Name                   = $GetJobResponse->Name;
    my $Parameters             = $GetJobResponse->Parameters;
    my $Priority               = $GetJobResponse->Priority;
    my $SourceJobId            = $GetJobResponse->SourceJobId;
    my $StartedAt              = $GetJobResponse->StartedAt;
    my $StorageProfileId       = $GetJobResponse->StorageProfileId;
    my $TargetTaskRunStatus    = $GetJobResponse->TargetTaskRunStatus;
    my $TaskRunStatus          = $GetJobResponse->TaskRunStatus;
    my $TaskRunStatusCounts    = $GetJobResponse->TaskRunStatusCounts;
    my $UpdatedAt              = $GetJobResponse->UpdatedAt;
    my $UpdatedBy              = $GetJobResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm in the job.



=head2 B<REQUIRED> JobId => Str

The job ID.



=head2 B<REQUIRED> QueueId => Str

The queue ID associated with the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


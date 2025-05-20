
package Paws::Omics::GetRunTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRunTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/run/{id}/task/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetRunTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRunTask - Arguments for method GetRunTask on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRunTask on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetRunTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRunTask.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetRunTaskResponse = $omics->GetRunTask(
      Id     => 'MyRunId',
      TaskId => 'MyTaskId',

    );

    # Results:
    my $CacheHit      = $GetRunTaskResponse->CacheHit;
    my $CacheS3Uri    = $GetRunTaskResponse->CacheS3Uri;
    my $Cpus          = $GetRunTaskResponse->Cpus;
    my $CreationTime  = $GetRunTaskResponse->CreationTime;
    my $FailureReason = $GetRunTaskResponse->FailureReason;
    my $Gpus          = $GetRunTaskResponse->Gpus;
    my $InstanceType  = $GetRunTaskResponse->InstanceType;
    my $LogStream     = $GetRunTaskResponse->LogStream;
    my $Memory        = $GetRunTaskResponse->Memory;
    my $Name          = $GetRunTaskResponse->Name;
    my $StartTime     = $GetRunTaskResponse->StartTime;
    my $Status        = $GetRunTaskResponse->Status;
    my $StatusMessage = $GetRunTaskResponse->StatusMessage;
    my $StopTime      = $GetRunTaskResponse->StopTime;
    my $TaskId        = $GetRunTaskResponse->TaskId;

    # Returns a L<Paws::Omics::GetRunTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetRunTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The workflow run ID.



=head2 B<REQUIRED> TaskId => Str

The task's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRunTask in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


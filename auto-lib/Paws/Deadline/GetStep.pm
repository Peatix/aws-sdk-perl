
package Paws::Deadline::GetStep;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queueId', required => 1);
  has StepId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stepId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::GetStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetStep - Arguments for method GetStep on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStep on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method GetStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStep.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $GetStepResponse = $deadline->GetStep(
      FarmId  => 'MyFarmId',
      JobId   => 'MyJobId',
      QueueId => 'MyQueueId',
      StepId  => 'MyStepId',

    );

    # Results:
    my $CreatedAt              = $GetStepResponse->CreatedAt;
    my $CreatedBy              = $GetStepResponse->CreatedBy;
    my $DependencyCounts       = $GetStepResponse->DependencyCounts;
    my $Description            = $GetStepResponse->Description;
    my $EndedAt                = $GetStepResponse->EndedAt;
    my $LifecycleStatus        = $GetStepResponse->LifecycleStatus;
    my $LifecycleStatusMessage = $GetStepResponse->LifecycleStatusMessage;
    my $Name                   = $GetStepResponse->Name;
    my $ParameterSpace         = $GetStepResponse->ParameterSpace;
    my $RequiredCapabilities   = $GetStepResponse->RequiredCapabilities;
    my $StartedAt              = $GetStepResponse->StartedAt;
    my $StepId                 = $GetStepResponse->StepId;
    my $TargetTaskRunStatus    = $GetStepResponse->TargetTaskRunStatus;
    my $TaskRunStatus          = $GetStepResponse->TaskRunStatus;
    my $TaskRunStatusCounts    = $GetStepResponse->TaskRunStatusCounts;
    my $UpdatedAt              = $GetStepResponse->UpdatedAt;
    my $UpdatedBy              = $GetStepResponse->UpdatedBy;

    # Returns a L<Paws::Deadline::GetStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/GetStep>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID for the step.



=head2 B<REQUIRED> JobId => Str

The job ID for the step.



=head2 B<REQUIRED> QueueId => Str

The queue ID for the step.



=head2 B<REQUIRED> StepId => Str

The step ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStep in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


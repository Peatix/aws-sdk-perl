
package Paws::Deadline::BatchGetJobEntity;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has Identifiers => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::JobEntityIdentifiersUnion]', traits => ['NameInRequest'], request_name => 'identifiers', required => 1);
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetJobEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::BatchGetJobEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::BatchGetJobEntity - Arguments for method BatchGetJobEntity on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetJobEntity on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method BatchGetJobEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetJobEntity.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $BatchGetJobEntityResponse = $deadline->BatchGetJobEntity(
      FarmId      => 'MyFarmId',
      FleetId     => 'MyFleetId',
      Identifiers => [
        {
          EnvironmentDetails => {
            EnvironmentId => 'MyEnvironmentId',    # min: 1, max: 1024
            JobId         => 'MyJobId',

          },    # OPTIONAL
          JobAttachmentDetails => {
            JobId => 'MyJobId',

          },    # OPTIONAL
          JobDetails => {
            JobId => 'MyJobId',

          },    # OPTIONAL
          StepDetails => {
            JobId  => 'MyJobId',
            StepId => 'MyStepId',

          },    # OPTIONAL
        },
        ...
      ],
      WorkerId => 'MyWorkerId',

    );

    # Results:
    my $Entities = $BatchGetJobEntityResponse->Entities;
    my $Errors   = $BatchGetJobEntityResponse->Errors;

    # Returns a L<Paws::Deadline::BatchGetJobEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/BatchGetJobEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the worker that's fetching job details. The worker must
have an assignment on a job to fetch job details.



=head2 B<REQUIRED> FleetId => Str

The fleet ID of the worker that's fetching job details. The worker must
have an assignment on a job to fetch job details.



=head2 B<REQUIRED> Identifiers => ArrayRef[L<Paws::Deadline::JobEntityIdentifiersUnion>]

The job identifiers to include within the job entity batch details.



=head2 B<REQUIRED> WorkerId => Str

The worker ID of the worker containing the job details to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetJobEntity in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


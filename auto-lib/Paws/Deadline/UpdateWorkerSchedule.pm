
package Paws::Deadline::UpdateWorkerSchedule;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has UpdatedSessionActions => (is => 'ro', isa => 'Paws::Deadline::UpdatedSessionActions', traits => ['NameInRequest'], request_name => 'updatedSessionActions');
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workerId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkerSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::UpdateWorkerScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateWorkerSchedule - Arguments for method UpdateWorkerSchedule on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkerSchedule on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method UpdateWorkerSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkerSchedule.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $UpdateWorkerScheduleResponse = $deadline->UpdateWorkerSchedule(
      FarmId                => 'MyFarmId',
      FleetId               => 'MyFleetId',
      WorkerId              => 'MyWorkerId',
      UpdatedSessionActions => {
        'MySessionActionId' => {
          CompletedStatus => 'SUCCEEDED'
          , # values: SUCCEEDED, FAILED, INTERRUPTED, CANCELED, NEVER_ATTEMPTED; OPTIONAL
          EndedAt         => '1970-01-01T01:00:00',    # OPTIONAL
          ProcessExitCode => 1,    # min: -2147483648, max: 2147483647; OPTIONAL
          ProgressMessage =>
            'MySessionActionProgressMessage',    # max: 4096; OPTIONAL
          ProgressPercent => 1.0,                      # max: 100; OPTIONAL
          StartedAt       => '1970-01-01T01:00:00',    # OPTIONAL
          UpdatedAt       => '1970-01-01T01:00:00',    # OPTIONAL
        },
      },    # OPTIONAL
    );

    # Results:
    my $AssignedSessions = $UpdateWorkerScheduleResponse->AssignedSessions;
    my $CancelSessionActions =
      $UpdateWorkerScheduleResponse->CancelSessionActions;
    my $DesiredWorkerStatus =
      $UpdateWorkerScheduleResponse->DesiredWorkerStatus;
    my $UpdateIntervalSeconds =
      $UpdateWorkerScheduleResponse->UpdateIntervalSeconds;

    # Returns a L<Paws::Deadline::UpdateWorkerScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/UpdateWorkerSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID to update.



=head2 B<REQUIRED> FleetId => Str

The fleet ID to update.



=head2 UpdatedSessionActions => L<Paws::Deadline::UpdatedSessionActions>

The session actions associated with the worker schedule to update.



=head2 B<REQUIRED> WorkerId => Str

The worker ID to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkerSchedule in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


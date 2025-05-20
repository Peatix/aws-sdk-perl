
package Paws::Deadline::GetWorkerResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetId', required => 1);
  has HostProperties => (is => 'ro', isa => 'Paws::Deadline::HostPropertiesResponse', traits => ['NameInRequest'], request_name => 'hostProperties');
  has Log => (is => 'ro', isa => 'Paws::Deadline::LogConfiguration', traits => ['NameInRequest'], request_name => 'log');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetWorkerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 B<REQUIRED> FarmId => Str

The farm ID.


=head2 B<REQUIRED> FleetId => Str

The fleet ID.


=head2 HostProperties => L<Paws::Deadline::HostPropertiesResponse>

The host properties for the worker.


=head2 Log => L<Paws::Deadline::LogConfiguration>

The logs for the associated worker.


=head2 B<REQUIRED> Status => Str

The status of the worker.

Valid values are: C<"CREATED">, C<"STARTED">, C<"STOPPING">, C<"STOPPED">, C<"NOT_RESPONDING">, C<"NOT_COMPATIBLE">, C<"RUNNING">, C<"IDLE">
=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 B<REQUIRED> WorkerId => Str

The worker ID.


=head2 _request_id => Str


=cut


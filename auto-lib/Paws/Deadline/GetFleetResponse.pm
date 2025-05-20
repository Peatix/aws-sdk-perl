
package Paws::Deadline::GetFleetResponse;
  use Moose;
  has AutoScalingStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoScalingStatus');
  has Capabilities => (is => 'ro', isa => 'Paws::Deadline::FleetCapabilities', traits => ['NameInRequest'], request_name => 'capabilities');
  has Configuration => (is => 'ro', isa => 'Paws::Deadline::FleetConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetId', required => 1);
  has HostConfiguration => (is => 'ro', isa => 'Paws::Deadline::HostConfiguration', traits => ['NameInRequest'], request_name => 'hostConfiguration');
  has MaxWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxWorkerCount', required => 1);
  has MinWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minWorkerCount', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TargetWorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'targetWorkerCount');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has WorkerCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'workerCount', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetFleetResponse

=head1 ATTRIBUTES


=head2 AutoScalingStatus => Str

The Auto Scaling status of the fleet. Either C<GROWING>, C<STEADY>, or
C<SHRINKING>.

Valid values are: C<"GROWING">, C<"STEADY">, C<"SHRINKING">
=head2 Capabilities => L<Paws::Deadline::FleetCapabilities>

Outlines what the fleet is capable of for minimums, maximums, and
naming, in addition to attribute names and values.


=head2 B<REQUIRED> Configuration => L<Paws::Deadline::FleetConfiguration>

The configuration setting for the fleet.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 Description => Str

The description of the fleet.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> DisplayName => Str

The display name of the fleet.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm in the fleet.


=head2 B<REQUIRED> FleetId => Str

The fleet ID.


=head2 HostConfiguration => L<Paws::Deadline::HostConfiguration>

The script that runs as a worker is starting up that you can use to
provide additional configuration for workers in your fleet.


=head2 B<REQUIRED> MaxWorkerCount => Int

The maximum number of workers specified in the fleet.


=head2 B<REQUIRED> MinWorkerCount => Int

The minimum number of workers specified in the fleet.


=head2 B<REQUIRED> RoleArn => Str

The IAM role ARN.


=head2 B<REQUIRED> Status => Str

The Auto Scaling status of the fleet.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">
=head2 TargetWorkerCount => Int

The number of target workers in the fleet.


=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 B<REQUIRED> WorkerCount => Int

The number of workers in the fleet.


=head2 _request_id => Str


=cut


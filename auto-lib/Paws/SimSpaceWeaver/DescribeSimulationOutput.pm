
package Paws::SimSpaceWeaver::DescribeSimulationOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionId => (is => 'ro', isa => 'Str');
  has LiveSimulationState => (is => 'ro', isa => 'Paws::SimSpaceWeaver::LiveSimulationState');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::SimSpaceWeaver::LoggingConfiguration');
  has MaximumDuration => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SchemaError => (is => 'ro', isa => 'Str');
  has SchemaS3Location => (is => 'ro', isa => 'Paws::SimSpaceWeaver::S3Location');
  has SnapshotS3Location => (is => 'ro', isa => 'Paws::SimSpaceWeaver::S3Location');
  has StartError => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::DescribeSimulationOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation. For more information
about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.


=head2 CreationTime => Str

The time when the simulation was created, expressed as the number of
seconds and milliseconds in UTC since the Unix epoch (0:0:0.000,
January 1, 1970).


=head2 Description => Str

The description of the simulation.


=head2 ExecutionId => Str

A universally unique identifier (UUID) for this simulation.


=head2 LiveSimulationState => L<Paws::SimSpaceWeaver::LiveSimulationState>

A collection of additional state information, such as domain and clock
configuration.


=head2 LoggingConfiguration => L<Paws::SimSpaceWeaver::LoggingConfiguration>

Settings that control how SimSpace Weaver handles your simulation log
data.


=head2 MaximumDuration => Str

The maximum running time of the simulation, specified as a number of
minutes (m or M), hours (h or H), or days (d or D). The simulation
stops when it reaches this limit. The maximum value is C<14D>, or its
equivalent in the other units. The default value is C<14D>. A value
equivalent to C<0> makes the simulation immediately transition to
C<Stopping> as soon as it reaches C<Started>.


=head2 Name => Str

The name of the simulation.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that the simulation assumes to perform actions. For more
information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>. For more information
about IAM roles, see IAM roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the
I<Identity and Access Management User Guide>.


=head2 SchemaError => Str

An error message that SimSpace Weaver returns only if there is a
problem with the simulation schema.


=head2 SchemaS3Location => L<Paws::SimSpaceWeaver::S3Location>

The location of the simulation schema in Amazon Simple Storage Service
(Amazon S3). For more information about Amazon S3, see the I<Amazon
Simple Storage Service User Guide>
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html).


=head2 SnapshotS3Location => L<Paws::SimSpaceWeaver::S3Location>




=head2 StartError => Str

An error message that SimSpace Weaver returns only if a problem occurs
when the simulation is in the C<STARTING> state.


=head2 Status => Str

The current lifecycle state of the simulation.

Valid values are: C<"UNKNOWN">, C<"STARTING">, C<"STARTED">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">, C<"DELETING">, C<"DELETED">, C<"SNAPSHOT_IN_PROGRESS">
=head2 TargetStatus => Str

The desired lifecycle state of the simulation.

Valid values are: C<"UNKNOWN">, C<"STARTED">, C<"STOPPED">, C<"DELETED">
=head2 _request_id => Str


=cut


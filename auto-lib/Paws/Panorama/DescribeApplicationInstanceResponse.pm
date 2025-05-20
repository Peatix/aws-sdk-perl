
package Paws::Panorama::DescribeApplicationInstanceResponse;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str');
  has ApplicationInstanceIdToReplace => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DefaultRuntimeContextDevice => (is => 'ro', isa => 'Str');
  has DefaultRuntimeContextDeviceName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has HealthStatus => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RuntimeContextStates => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::ReportedRuntimeContextState]');
  has RuntimeRoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDescription => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeApplicationInstanceResponse

=head1 ATTRIBUTES


=head2 ApplicationInstanceId => Str

The application instance's ID.


=head2 ApplicationInstanceIdToReplace => Str

The ID of the application instance that this instance replaced.


=head2 Arn => Str

The application instance's ARN.


=head2 CreatedTime => Str

When the application instance was created.


=head2 DefaultRuntimeContextDevice => Str

The device's ID.


=head2 DefaultRuntimeContextDeviceName => Str

The device's bane.


=head2 Description => Str

The application instance's description.


=head2 HealthStatus => Str

The application instance's health status.

Valid values are: C<"RUNNING">, C<"ERROR">, C<"NOT_AVAILABLE">
=head2 LastUpdatedTime => Str

The application instance was updated.


=head2 Name => Str

The application instance's name.


=head2 RuntimeContextStates => ArrayRef[L<Paws::Panorama::ReportedRuntimeContextState>]

The application instance's state.


=head2 RuntimeRoleArn => Str

The application instance's runtime role ARN.


=head2 Status => Str

The application instance's status.

Valid values are: C<"DEPLOYMENT_PENDING">, C<"DEPLOYMENT_REQUESTED">, C<"DEPLOYMENT_IN_PROGRESS">, C<"DEPLOYMENT_ERROR">, C<"DEPLOYMENT_SUCCEEDED">, C<"REMOVAL_PENDING">, C<"REMOVAL_REQUESTED">, C<"REMOVAL_IN_PROGRESS">, C<"REMOVAL_FAILED">, C<"REMOVAL_SUCCEEDED">, C<"DEPLOYMENT_FAILED">
=head2 StatusDescription => Str

The application instance's status description.


=head2 Tags => L<Paws::Panorama::TagMap>

The application instance's tags.


=head2 _request_id => Str


=cut


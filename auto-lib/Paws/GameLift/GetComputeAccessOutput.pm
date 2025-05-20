
package Paws::GameLift::GetComputeAccessOutput;
  use Moose;
  has ComputeArn => (is => 'ro', isa => 'Str');
  has ComputeName => (is => 'ro', isa => 'Str');
  has ContainerIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ContainerIdentifier]');
  has Credentials => (is => 'ro', isa => 'Paws::GameLift::AwsCredentials');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetComputeAccessOutput

=head1 ATTRIBUTES


=head2 ComputeArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to an Amazon GameLift compute resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 ComputeName => Str

The identifier of the compute resource to be accessed. This value might
be either a compute name or an instance ID.


=head2 ContainerIdentifiers => ArrayRef[L<Paws::GameLift::ContainerIdentifier>]

For a managed container fleet, a list of containers on the compute. Use
the container runtime ID with Docker commands to connect to a specific
container.


=head2 Credentials => L<Paws::GameLift::AwsCredentials>

A set of temporary Amazon Web Services credentials for use when
connecting to the compute resource with Amazon EC2 Systems Manager
(SSM).


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a Amazon GameLift fleet resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

The ID of the fleet that holds the compute resource to be accessed.


=head2 Target => Str

The instance ID where the compute resource is running.


=head2 _request_id => Str


=cut

1;
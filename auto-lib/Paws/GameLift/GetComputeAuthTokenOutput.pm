
package Paws::GameLift::GetComputeAuthTokenOutput;
  use Moose;
  has AuthToken => (is => 'ro', isa => 'Str');
  has ComputeArn => (is => 'ro', isa => 'Str');
  has ComputeName => (is => 'ro', isa => 'Str');
  has ExpirationTimestamp => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetComputeAuthTokenOutput

=head1 ATTRIBUTES


=head2 AuthToken => Str

A valid temporary authentication token.


=head2 ComputeArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to an Amazon GameLift compute resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::compute/compute-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 ComputeName => Str

The name of the compute resource that the authentication token is
issued to.


=head2 ExpirationTimestamp => Str

The amount of time until the authentication token is no longer valid.


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a Amazon GameLift fleet resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet that the compute is registered to.


=head2 _request_id => Str


=cut

1;
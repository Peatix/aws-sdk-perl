
package Paws::ECS::DescribeServiceDeploymentsResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ServiceDeployments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceDeployment]', traits => ['NameInRequest'], request_name => 'serviceDeployments' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServiceDeploymentsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.

If you decsribe a deployment with a service revision created before
October 25, 2024, the call fails. The failure includes the service
revision ARN and the reason set to C<MISSING>.


=head2 ServiceDeployments => ArrayRef[L<Paws::ECS::ServiceDeployment>]

The list of service deployments described.


=head2 _request_id => Str


=cut

1;
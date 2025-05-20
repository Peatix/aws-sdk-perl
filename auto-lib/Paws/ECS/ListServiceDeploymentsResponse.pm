
package Paws::ECS::ListServiceDeploymentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceDeployments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceDeploymentBrief]', traits => ['NameInRequest'], request_name => 'serviceDeployments' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListServiceDeploymentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListServiceDeployments>
request. When the results of a C<ListServiceDeployments> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is null when there are no more results to return.


=head2 ServiceDeployments => ArrayRef[L<Paws::ECS::ServiceDeploymentBrief>]

An overview of the service deployment, including the following
properties:

=over

=item *

The ARN of the service deployment.

=item *

The ARN of the service being deployed.

=item *

The ARN of the cluster that hosts the service in the service
deployment.

=item *

The time that the service deployment started.

=item *

The time that the service deployment completed.

=item *

The service deployment status.

=item *

Information about why the service deployment is in the current state.

=item *

The ARN of the service revision that is being deployed.

=back



=head2 _request_id => Str


=cut

1;